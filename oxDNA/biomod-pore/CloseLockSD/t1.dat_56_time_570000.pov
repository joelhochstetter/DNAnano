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
	<4.464912, 15.229412, 15.071210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.419045, 15.023942, 14.731094>,  <4.391524, 14.900661, 14.527025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.419045, 15.023942, 14.731094>,  <4.464912, 15.229412, 15.071210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.419045, 15.023942, 14.731094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965554, 0.143621, -0.216977,
		0.233575, -0.845879, 0.479511,
		-0.114668, -0.513674, -0.850288,
		4.384645, 14.869840, 14.476007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.871301, 14.674021, 15.142300>,  <4.464912, 15.229412, 15.071210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.871301, 14.674021, 15.142300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.820474, 14.767738, 14.756769>,  <4.789978, 14.823969, 14.525451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.820474, 14.767738, 14.756769>,  <4.871301, 14.674021, 15.142300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.820474, 14.767738, 14.756769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985710, 0.138167, -0.096367,
		0.110591, -0.962298, -0.248502,
		-0.127068, 0.234293, -0.963826,
		4.782354, 14.838026, 14.467622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.203153, 14.180656, 14.563302>,  <4.871301, 14.674021, 15.142300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.203153, 14.180656, 14.563302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171864, 14.569528, 14.474984>,  <5.153090, 14.802851, 14.421993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.171864, 14.569528, 14.474984>,  <5.203153, 14.180656, 14.563302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171864, 14.569528, 14.474984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996474, 0.082985, 0.012361,
		0.030339, -0.219048, -0.975242,
		-0.078223, 0.972179, -0.220794,
		5.148397, 14.861181, 14.408746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.286595, 13.847566, 13.945848>,  <5.203153, 14.180656, 14.563302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.286595, 13.847566, 13.945848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.251664, 14.244080, 13.985296>,  <5.230705, 14.481988, 14.008965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.251664, 14.244080, 13.985296>,  <5.286595, 13.847566, 13.945848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.251664, 14.244080, 13.985296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034959, 0.101989, -0.994171,
		-0.995566, -0.083372, -0.043561,
		-0.087329, 0.991286, 0.098623,
		5.225465, 14.541466, 14.014883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.659641, 14.156780, 13.572522>,  <5.286595, 13.847566, 13.945848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.659641, 14.156780, 13.572522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.953482, 14.423151, 13.624519>,  <5.129787, 14.582973, 13.655718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.953482, 14.423151, 13.624519>,  <4.659641, 14.156780, 13.572522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.953482, 14.423151, 13.624519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056863, 0.251341, -0.966227,
		-0.676110, 0.702402, 0.222503,
		0.734604, 0.665928, 0.129993,
		5.173863, 14.622930, 13.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412805, 14.663066, 13.197307>,  <4.659641, 14.156780, 13.572522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412805, 14.663066, 13.197307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.803362, 14.742847, 13.230470>,  <5.037697, 14.790716, 13.250367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.803362, 14.742847, 13.230470>,  <4.412805, 14.663066, 13.197307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.803362, 14.742847, 13.230470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019843, 0.299385, -0.953926,
		-0.215086, 0.933052, 0.288360,
		0.976393, 0.199455, 0.082908,
		5.096281, 14.802684, 13.255342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.556156, 15.425253, 13.069989>,  <4.412805, 14.663066, 13.197307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.556156, 15.425253, 13.069989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.876981, 15.199303, 12.992414>,  <5.069476, 15.063732, 12.945869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.876981, 15.199303, 12.992414>,  <4.556156, 15.425253, 13.069989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.876981, 15.199303, 12.992414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022286, 0.352801, -0.935433,
		0.596824, 0.745953, 0.295558,
		0.802063, -0.564876, -0.193936,
		5.117600, 15.029840, 12.934234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.838858, 15.866407, 12.563367>,  <4.556156, 15.425253, 13.069989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.838858, 15.866407, 12.563367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.042953, 15.524118, 12.528969>,  <5.165410, 15.318745, 12.508330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.042953, 15.524118, 12.528969>,  <4.838858, 15.866407, 12.563367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.042953, 15.524118, 12.528969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227522, 0.230734, -0.946042,
		0.829392, 0.463141, 0.312425,
		0.510238, -0.855723, -0.085995,
		5.196024, 15.267402, 12.503170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.500210, 16.037216, 12.359911>,  <4.838858, 15.866407, 12.563367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.500210, 16.037216, 12.359911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.434995, 15.658335, 12.249476>,  <5.395866, 15.431005, 12.183216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.434995, 15.658335, 12.249476>,  <5.500210, 16.037216, 12.359911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.434995, 15.658335, 12.249476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354807, 0.204821, -0.912228,
		0.920615, -0.246684, 0.302681,
		-0.163037, -0.947204, -0.276087,
		5.386084, 15.374173, 12.166651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.064608, 15.946890, 12.008559>,  <5.500210, 16.037216, 12.359911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.064608, 15.946890, 12.008559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.825612, 15.659227, 11.866674>,  <5.682214, 15.486630, 11.781544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.825612, 15.659227, 11.866674>,  <6.064608, 15.946890, 12.008559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.825612, 15.659227, 11.866674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459554, 0.055406, -0.886420,
		0.657127, -0.692636, 0.297386,
		-0.597490, -0.719156, -0.354713,
		5.646365, 15.443480, 11.760261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.397657, 15.571010, 11.513351>,  <6.064608, 15.946890, 12.008559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.397657, 15.571010, 11.513351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.027346, 15.448947, 11.424075>,  <5.805160, 15.375710, 11.370509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.027346, 15.448947, 11.424075>,  <6.397657, 15.571010, 11.513351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.027346, 15.448947, 11.424075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188500, 0.139166, -0.972163,
		0.327724, -0.942078, -0.071314,
		-0.925778, -0.305158, -0.223190,
		5.749613, 15.357400, 11.357118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.458346, 15.303391, 10.721716>,  <6.397657, 15.571010, 11.513351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.458346, 15.303391, 10.721716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.070735, 15.366271, 10.797898>,  <5.838169, 15.403999, 10.843608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.070735, 15.366271, 10.797898>,  <6.458346, 15.303391, 10.721716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.070735, 15.366271, 10.797898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133509, 0.315313, -0.939549,
		-0.207751, -0.935877, -0.284560,
		-0.969028, 0.157201, 0.190455,
		5.780027, 15.413431, 10.855035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.004392, 15.032567, 10.120130>,  <6.458346, 15.303391, 10.721716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.004392, 15.032567, 10.120130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.817442, 15.335103, 10.303219>,  <5.705272, 15.516624, 10.413073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.817442, 15.335103, 10.303219>,  <6.004392, 15.032567, 10.120130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.817442, 15.335103, 10.303219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185217, 0.422489, -0.887242,
		-0.864440, -0.499452, -0.057373,
		-0.467374, 0.756341, 0.457723,
		5.677230, 15.562005, 10.440536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.500994, 15.134389, 9.612914>,  <6.004392, 15.032567, 10.120130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.500994, 15.134389, 9.612914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.466854, 15.454961, 9.849701>,  <5.446369, 15.647305, 9.991773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.466854, 15.454961, 9.849701>,  <5.500994, 15.134389, 9.612914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.466854, 15.454961, 9.849701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362064, 0.528570, -0.767805,
		-0.928238, -0.279863, 0.245055,
		-0.085351, 0.801431, 0.591966,
		5.441248, 15.695390, 10.027291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.803865, 15.497200, 9.483490>,  <5.500994, 15.134389, 9.612914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.803865, 15.497200, 9.483490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.057539, 15.763991, 9.639926>,  <5.209743, 15.924067, 9.733788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.057539, 15.763991, 9.639926>,  <4.803865, 15.497200, 9.483490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.057539, 15.763991, 9.639926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128011, 0.589412, -0.797625,
		-0.762513, 0.455776, 0.459176,
		0.634183, 0.666979, 0.391090,
		5.247793, 15.964085, 9.757253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.617185, 16.165743, 9.360874>,  <4.803865, 15.497200, 9.483490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.617185, 16.165743, 9.360874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.000067, 16.245520, 9.444761>,  <5.229796, 16.293386, 9.495093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.000067, 16.245520, 9.444761>,  <4.617185, 16.165743, 9.360874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.000067, 16.245520, 9.444761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048608, 0.603548, -0.795844,
		-0.285301, 0.771979, 0.568024,
		0.957205, 0.199444, 0.209717,
		5.287228, 16.305353, 9.507676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.636081, 16.776785, 9.223495>,  <4.617185, 16.165743, 9.360874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.636081, 16.776785, 9.223495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.025694, 16.686237, 9.225133>,  <5.259462, 16.631908, 9.226115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.025694, 16.686237, 9.225133>,  <4.636081, 16.776785, 9.223495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.025694, 16.686237, 9.225133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168622, 0.713253, -0.680321,
		0.151083, 0.663346, 0.732903,
		0.974033, -0.226369, 0.004094,
		5.317904, 16.618326, 9.226361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.022028, 17.500538, 9.260255>,  <4.636081, 16.776785, 9.223495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.022028, 17.500538, 9.260255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.287252, 17.227200, 9.138015>,  <5.446387, 17.063196, 9.064671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.287252, 17.227200, 9.138015>,  <5.022028, 17.500538, 9.260255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.287252, 17.227200, 9.138015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248149, 0.585817, -0.771519,
		0.706239, 0.435728, 0.558002,
		0.663060, -0.683345, -0.305601,
		5.486170, 17.022196, 9.046334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.698212, 17.887747, 9.218117>,  <5.022028, 17.500538, 9.260255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.698212, 17.887747, 9.218117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.687829, 17.562544, 8.985448>,  <5.681600, 17.367422, 8.845846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.687829, 17.562544, 8.985448>,  <5.698212, 17.887747, 9.218117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.687829, 17.562544, 8.985448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174483, 0.569252, -0.803435,
		0.984318, -0.122346, 0.127081,
		-0.025956, -0.813009, -0.581673,
		5.680042, 17.318642, 8.810946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.325923, 18.021223, 8.858025>,  <5.698212, 17.887747, 9.218117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.325923, 18.021223, 8.858025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114655, 17.763689, 8.636571>,  <5.987894, 17.609169, 8.503699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.114655, 17.763689, 8.636571>,  <6.325923, 18.021223, 8.858025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.114655, 17.763689, 8.636571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220345, 0.525741, -0.821611,
		0.820051, -0.555941, -0.135814,
		-0.528171, -0.643837, -0.553633,
		5.956204, 17.570538, 8.470481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.695693, 17.975410, 8.217480>,  <6.325923, 18.021223, 8.858025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.695693, 17.975410, 8.217480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.333465, 17.831711, 8.127252>,  <6.116128, 17.745491, 8.073115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.333465, 17.831711, 8.127252>,  <6.695693, 17.975410, 8.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.333465, 17.831711, 8.127252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017207, 0.500211, -0.865733,
		0.423845, -0.787864, -0.446795,
		-0.905571, -0.359248, -0.225568,
		6.061794, 17.723936, 8.059581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.663083, 17.507589, 7.539055>,  <6.695693, 17.975410, 8.217480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.663083, 17.507589, 7.539055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.296765, 17.656075, 7.600404>,  <6.076975, 17.745167, 7.637214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.296765, 17.656075, 7.600404>,  <6.663083, 17.507589, 7.539055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.296765, 17.656075, 7.600404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050861, 0.485962, -0.872499,
		-0.398418, -0.791227, -0.463921,
		-0.915793, 0.371215, 0.153373,
		6.022027, 17.767439, 7.646416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.291671, 17.589397, 6.858745>,  <6.663083, 17.507589, 7.539055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.291671, 17.589397, 6.858745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.073169, 17.838669, 7.082621>,  <5.942068, 17.988232, 7.216947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.073169, 17.838669, 7.082621>,  <6.291671, 17.589397, 6.858745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.073169, 17.838669, 7.082621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129719, 0.597193, -0.791538,
		-0.827513, -0.504985, -0.245382,
		-0.546255, 0.623178, 0.559692,
		5.909292, 18.025621, 7.250529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.674507, 17.841362, 6.427345>,  <6.291671, 17.589397, 6.858745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.674507, 17.841362, 6.427345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.702746, 18.096733, 6.733920>,  <5.719690, 18.249956, 6.917864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.702746, 18.096733, 6.733920>,  <5.674507, 17.841362, 6.427345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.702746, 18.096733, 6.733920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093754, 0.769198, -0.632095,
		-0.993089, -0.027231, 0.114160,
		0.070599, 0.638430, 0.766435,
		5.723926, 18.288261, 6.963850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040979, 18.241547, 6.425683>,  <5.674507, 17.841362, 6.427345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040979, 18.241547, 6.425683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.336395, 18.460032, 6.583777>,  <5.513645, 18.591124, 6.678633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.336395, 18.460032, 6.583777>,  <5.040979, 18.241547, 6.425683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.336395, 18.460032, 6.583777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345881, 0.810150, -0.473310,
		-0.578727, 0.212855, 0.787253,
		0.738540, 0.546214, 0.395234,
		5.557957, 18.623896, 6.702347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.763296, 18.857618, 6.553076>,  <5.040979, 18.241547, 6.425683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.763296, 18.857618, 6.553076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.154075, 18.942739, 6.559838>,  <5.388543, 18.993813, 6.563895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.154075, 18.942739, 6.559838>,  <4.763296, 18.857618, 6.553076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.154075, 18.942739, 6.559838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187349, 0.892650, -0.409971,
		-0.102333, 0.397354, 0.911942,
		0.976949, 0.212805, 0.016904,
		5.447160, 19.006580, 6.564909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.866165, 19.500095, 6.981908>,  <4.763296, 18.857618, 6.553076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.866165, 19.500095, 6.981908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148902, 19.436863, 6.706116>,  <5.318544, 19.398924, 6.540640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.148902, 19.436863, 6.706116>,  <4.866165, 19.500095, 6.981908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148902, 19.436863, 6.706116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207947, 0.885204, -0.416140,
		0.676115, 0.437521, 0.592827,
		0.706843, -0.158082, -0.689481,
		5.360955, 19.389439, 6.499271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.466518, 20.033302, 7.054222>,  <4.866165, 19.500095, 6.981908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.466518, 20.033302, 7.054222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.442222, 19.897013, 6.678942>,  <5.427644, 19.815239, 6.453774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.442222, 19.897013, 6.678942>,  <5.466518, 20.033302, 7.054222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.442222, 19.897013, 6.678942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010571, 0.940102, -0.340731,
		0.998098, -0.010779, -0.060704,
		-0.060741, -0.340724, -0.938199,
		5.423999, 19.794796, 6.397482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.844217, 20.402334, 6.960354>,  <5.466518, 20.033302, 7.054222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.844217, 20.402334, 6.960354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.825245, 20.762434, 7.133469>,  <4.813862, 20.978493, 7.237337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.825245, 20.762434, 7.133469>,  <4.844217, 20.402334, 6.960354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.825245, 20.762434, 7.133469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964377, 0.154155, -0.214973,
		-0.260245, 0.407173, -0.875490,
		-0.047430, 0.900248, 0.432786,
		4.811017, 21.032509, 7.263305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.930024, 21.004259, 6.452362>,  <4.844217, 20.402334, 6.960354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.930024, 21.004259, 6.452362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.060577, 21.050560, 6.827611>,  <5.138909, 21.078341, 7.052761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.060577, 21.050560, 6.827611>,  <4.930024, 21.004259, 6.452362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.060577, 21.050560, 6.827611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941861, 0.043992, -0.333112,
		-0.079829, 0.992303, -0.094666,
		0.326383, 0.115754, 0.938123,
		5.158492, 21.085287, 7.109048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.653239, 21.269670, 6.251716>,  <4.930024, 21.004259, 6.452362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.653239, 21.269670, 6.251716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.645121, 21.172279, 6.639594>,  <5.640249, 21.113846, 6.872320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.645121, 21.172279, 6.639594>,  <5.653239, 21.269670, 6.251716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.645121, 21.172279, 6.639594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959408, -0.277623, -0.049626,
		0.281292, 0.929325, 0.239228,
		-0.020296, -0.243476, 0.969694,
		5.639032, 21.099236, 6.930502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.269128, 21.568182, 6.626135>,  <5.653239, 21.269670, 6.251716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.269128, 21.568182, 6.626135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.140582, 21.249430, 6.830763>,  <6.063454, 21.058178, 6.953540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.140582, 21.249430, 6.830763>,  <6.269128, 21.568182, 6.626135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.140582, 21.249430, 6.830763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855581, -0.475868, -0.203792,
		0.405838, 0.372198, 0.834724,
		-0.321367, -0.796880, 0.511571,
		6.044171, 21.010366, 6.984235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.847197, 21.322618, 7.084688>,  <6.269128, 21.568182, 6.626135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.847197, 21.322618, 7.084688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.607812, 21.012249, 7.004899>,  <6.464182, 20.826027, 6.957026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.607812, 21.012249, 7.004899>,  <6.847197, 21.322618, 7.084688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.607812, 21.012249, 7.004899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787260, -0.615729, 0.033160,
		-0.148549, -0.137191, 0.979342,
		-0.598460, -0.775923, -0.199471,
		6.428275, 20.779472, 6.945057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.841812, 21.893167, 7.615201>,  <6.847197, 21.322618, 7.084688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.841812, 21.893167, 7.615201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478309, 21.960907, 7.462634>,  <6.260207, 22.001551, 7.371093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.478309, 21.960907, 7.462634>,  <6.841812, 21.893167, 7.615201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.478309, 21.960907, 7.462634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414925, 0.464485, -0.782362,
		0.044672, -0.869238, -0.492372,
		-0.908758, 0.169348, -0.381418,
		6.205681, 22.011711, 7.348208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.101065, 21.296701, 7.957320>,  <6.841812, 21.893167, 7.615201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.101065, 21.296701, 7.957320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.914738, 21.535030, 8.219009>,  <6.802941, 21.678028, 8.376023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.914738, 21.535030, 8.219009>,  <7.101065, 21.296701, 7.957320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.914738, 21.535030, 8.219009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462835, -0.466082, 0.754023,
		0.754186, 0.654035, -0.058658,
		-0.465818, 0.595823, 0.654223,
		6.774992, 21.713778, 8.415277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594189, 21.365187, 8.517073>,  <7.101065, 21.296701, 7.957320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594189, 21.365187, 8.517073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211415, 21.395678, 8.629119>,  <6.981751, 21.413971, 8.696346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211415, 21.395678, 8.629119>,  <7.594189, 21.365187, 8.517073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211415, 21.395678, 8.629119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152097, -0.690232, 0.707422,
		0.247269, 0.719562, 0.648913,
		-0.956935, 0.076226, 0.280116,
		6.924335, 21.418545, 8.713154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.528959, 21.654055, 9.243403>,  <7.594189, 21.365187, 8.517073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.528959, 21.654055, 9.243403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.191930, 21.454643, 9.161878>,  <6.989713, 21.334995, 9.112962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.191930, 21.454643, 9.161878>,  <7.528959, 21.654055, 9.243403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.191930, 21.454643, 9.161878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124585, -0.548573, 0.826769,
		-0.523976, 0.671220, 0.524321,
		-0.842572, -0.498529, -0.203815,
		6.939158, 21.305084, 9.100733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.205414, 21.517328, 9.959605>,  <7.528959, 21.654055, 9.243403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.205414, 21.517328, 9.959605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.036783, 21.251390, 9.712946>,  <6.935605, 21.091827, 9.564951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.036783, 21.251390, 9.712946>,  <7.205414, 21.517328, 9.959605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.036783, 21.251390, 9.712946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073239, -0.702774, 0.707633,
		-0.903830, 0.253159, 0.344966,
		-0.421576, -0.664845, -0.616647,
		6.910310, 21.051937, 9.527951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.678878, 21.295113, 10.380334>,  <7.205414, 21.517328, 9.959605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.678878, 21.295113, 10.380334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.750541, 21.036177, 10.083995>,  <6.793539, 20.880816, 9.906192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.750541, 21.036177, 10.083995>,  <6.678878, 21.295113, 10.380334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.750541, 21.036177, 10.083995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208429, -0.710964, 0.671631,
		-0.961488, -0.274742, 0.007550,
		0.179158, -0.647339, -0.740847,
		6.804288, 20.841974, 9.861741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.432940, 20.708509, 10.568144>,  <6.678878, 21.295113, 10.380334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.432940, 20.708509, 10.568144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.674050, 20.586809, 10.273093>,  <6.818716, 20.513788, 10.096063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.674050, 20.586809, 10.273093>,  <6.432940, 20.708509, 10.568144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.674050, 20.586809, 10.273093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183898, -0.846587, 0.499471,
		-0.776431, -0.436717, -0.454350,
		0.602774, -0.304251, -0.737628,
		6.854882, 20.495533, 10.051805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.145259, 20.077139, 10.394087>,  <6.432940, 20.708509, 10.568144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.145259, 20.077139, 10.394087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.527329, 20.102095, 10.278328>,  <6.756571, 20.117067, 10.208873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.527329, 20.102095, 10.278328>,  <6.145259, 20.077139, 10.394087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.527329, 20.102095, 10.278328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175238, -0.907040, 0.382844,
		-0.238610, -0.416396, -0.877314,
		0.955174, 0.062389, -0.289398,
		6.813881, 20.120811, 10.191508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.316623, 19.347065, 10.124309>,  <6.145259, 20.077139, 10.394087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.316623, 19.347065, 10.124309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.665596, 19.520281, 10.214942>,  <6.874979, 19.624210, 10.269322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.665596, 19.520281, 10.214942>,  <6.316623, 19.347065, 10.124309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.665596, 19.520281, 10.214942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330435, -0.864226, 0.379377,
		0.360105, -0.256109, -0.897069,
		0.872432, 0.433038, 0.226585,
		6.927326, 19.650192, 10.282917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.935427, 18.856861, 9.931560>,  <6.316623, 19.347065, 10.124309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.935427, 18.856861, 9.931560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.083928, 19.107599, 10.205564>,  <7.173028, 19.258041, 10.369966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.083928, 19.107599, 10.205564>,  <6.935427, 18.856861, 9.931560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.083928, 19.107599, 10.205564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434311, -0.769287, 0.468585,
		0.820698, 0.123544, -0.557845,
		0.371252, 0.626845, 0.685009,
		7.195303, 19.295652, 10.411066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.534616, 18.597479, 10.054686>,  <6.935427, 18.856861, 9.931560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.534616, 18.597479, 10.054686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507092, 18.842972, 10.369290>,  <7.490577, 18.990267, 10.558053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507092, 18.842972, 10.369290>,  <7.534616, 18.597479, 10.054686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507092, 18.842972, 10.369290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441127, -0.688402, 0.575768,
		0.894803, 0.386571, -0.223363,
		-0.068811, 0.613731, 0.786511,
		7.486449, 19.027092, 10.605244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209572, 18.519190, 10.526170>,  <7.534616, 18.597479, 10.054686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209572, 18.519190, 10.526170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.900996, 18.656523, 10.740460>,  <7.715850, 18.738922, 10.869035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.900996, 18.656523, 10.740460>,  <8.209572, 18.519190, 10.526170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.900996, 18.656523, 10.740460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214867, -0.651922, 0.727207,
		0.598926, 0.676106, 0.429148,
		-0.771440, 0.343334, 0.535726,
		7.669564, 18.759523, 10.901178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.432088, 18.682388, 11.150075>,  <8.209572, 18.519190, 10.526170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.432088, 18.682388, 11.150075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.044665, 18.651375, 11.244638>,  <7.812212, 18.632767, 11.301376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.044665, 18.651375, 11.244638>,  <8.432088, 18.682388, 11.150075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.044665, 18.651375, 11.244638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237953, -0.566163, 0.789201,
		0.072657, 0.820639, 0.566810,
		-0.968555, -0.077533, 0.236409,
		7.754099, 18.628115, 11.315561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.417003, 18.560717, 11.950357>,  <8.432088, 18.682388, 11.150075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.417003, 18.560717, 11.950357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.046425, 18.458792, 11.839528>,  <7.824078, 18.397636, 11.773030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.046425, 18.458792, 11.839528>,  <8.417003, 18.560717, 11.950357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.046425, 18.458792, 11.839528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039971, -0.665305, 0.745501,
		-0.374302, 0.701741, 0.606183,
		-0.926445, -0.254813, -0.277074,
		7.768491, 18.382347, 11.756406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.057758, 18.501663, 12.536077>,  <8.417003, 18.560717, 11.950357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.057758, 18.501663, 12.536077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.886998, 18.252008, 12.274325>,  <7.784542, 18.102217, 12.117274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.886998, 18.252008, 12.274325>,  <8.057758, 18.501663, 12.536077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.886998, 18.252008, 12.274325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002482, -0.724436, 0.689337,
		-0.904295, 0.292655, 0.310811,
		-0.426901, -0.624136, -0.654378,
		7.758927, 18.064768, 12.078012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.650159, 18.060368, 12.935485>,  <8.057758, 18.501663, 12.536077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.650159, 18.060368, 12.935485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.684683, 17.836260, 12.605965>,  <7.705397, 17.701796, 12.408253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.684683, 17.836260, 12.605965>,  <7.650159, 18.060368, 12.935485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.684683, 17.836260, 12.605965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122414, -0.826585, 0.549338,
		-0.988719, 0.053433, -0.139926,
		0.086308, -0.560270, -0.823801,
		7.710576, 17.668179, 12.358825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.241354, 17.544788, 13.038383>,  <7.650159, 18.060368, 12.935485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.241354, 17.544788, 13.038383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.450651, 17.399420, 12.730061>,  <7.576230, 17.312199, 12.545068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.450651, 17.399420, 12.730061>,  <7.241354, 17.544788, 13.038383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.450651, 17.399420, 12.730061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018556, -0.899433, 0.436666,
		-0.851980, -0.242786, -0.463881,
		0.523246, -0.363423, -0.770803,
		7.607625, 17.290392, 12.498819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.884211, 16.978390, 12.735807>,  <7.241354, 17.544788, 13.038383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.884211, 16.978390, 12.735807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.269227, 16.925371, 12.641194>,  <7.500237, 16.893560, 12.584426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.269227, 16.925371, 12.641194>,  <6.884211, 16.978390, 12.735807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.269227, 16.925371, 12.641194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039941, -0.932167, 0.359820,
		-0.268181, -0.336894, -0.902542,
		0.962540, -0.132545, -0.236534,
		7.557989, 16.885607, 12.570234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.799407, 16.304697, 12.558676>,  <6.884211, 16.978390, 12.735807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.799407, 16.304697, 12.558676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.192001, 16.366346, 12.604159>,  <7.427558, 16.403336, 12.631450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.192001, 16.366346, 12.604159>,  <6.799407, 16.304697, 12.558676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.192001, 16.366346, 12.604159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096624, -0.911041, 0.400834,
		0.165373, -0.382426, -0.909067,
		0.981487, 0.154125, 0.113710,
		7.486447, 16.412584, 12.638272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.056686, 15.696053, 12.378548>,  <6.799407, 16.304697, 12.558676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.056686, 15.696053, 12.378548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.365039, 15.867949, 12.566618>,  <7.550051, 15.971086, 12.679461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.365039, 15.867949, 12.566618>,  <7.056686, 15.696053, 12.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.365039, 15.867949, 12.566618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160419, -0.845322, 0.509604,
		0.616447, -0.317419, -0.720582,
		0.770882, 0.429739, 0.470176,
		7.596304, 15.996870, 12.707671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.678802, 15.230164, 12.363964>,  <7.056686, 15.696053, 12.378548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.678802, 15.230164, 12.363964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.720705, 15.457156, 12.690642>,  <7.745846, 15.593351, 12.886649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.720705, 15.457156, 12.690642>,  <7.678802, 15.230164, 12.363964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.720705, 15.457156, 12.690642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212938, -0.814967, 0.538967,
		0.971434, 0.117444, -0.206213,
		0.104758, 0.567482, 0.816695,
		7.752132, 15.627400, 12.935651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.185913, 14.953812, 12.643811>,  <7.678802, 15.230164, 12.363964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.185913, 14.953812, 12.643811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.997901, 15.153924, 12.934683>,  <7.885094, 15.273992, 13.109206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.997901, 15.153924, 12.934683>,  <8.185913, 14.953812, 12.643811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.997901, 15.153924, 12.934683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029940, -0.814349, 0.579603,
		0.882142, 0.294203, 0.367791,
		-0.470031, 0.500281, 0.727180,
		7.856892, 15.304008, 13.152837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617110, 14.854354, 13.259562>,  <8.185913, 14.953812, 12.643811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617110, 14.854354, 13.259562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.245728, 14.960108, 13.363923>,  <8.022900, 15.023561, 13.426540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.245728, 14.960108, 13.363923>,  <8.617110, 14.854354, 13.259562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.245728, 14.960108, 13.363923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023354, -0.742567, 0.669365,
		0.370710, 0.615382, 0.695614,
		-0.928455, 0.264386, 0.260905,
		7.967192, 15.039424, 13.442195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.103114, 14.732331, 12.752825>,  <8.617110, 14.854354, 13.259562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.103114, 14.732331, 12.752825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.201011, 14.894459, 12.400502>,  <9.259748, 14.991735, 12.189109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.201011, 14.894459, 12.400502>,  <9.103114, 14.732331, 12.752825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.201011, 14.894459, 12.400502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655486, -0.738553, -0.157725,
		-0.714451, -0.538754, -0.446435,
		0.244741, 0.405318, -0.880806,
		9.274433, 15.016054, 12.136260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.817569, 14.232244, 12.277476>,  <9.103114, 14.732331, 12.752825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.817569, 14.232244, 12.277476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133340, 14.435908, 12.140328>,  <9.322803, 14.558107, 12.058040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.133340, 14.435908, 12.140328>,  <8.817569, 14.232244, 12.277476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.133340, 14.435908, 12.140328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430920, -0.857465, -0.281180,
		-0.437164, 0.074222, -0.896314,
		0.789427, 0.509161, -0.342869,
		9.370168, 14.588656, 12.037468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.923607, 13.933561, 11.588713>,  <8.817569, 14.232244, 12.277476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.923607, 13.933561, 11.588713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312974, 14.024204, 11.575392>,  <9.546594, 14.078590, 11.567399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312974, 14.024204, 11.575392>,  <8.923607, 13.933561, 11.588713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.312974, 14.024204, 11.575392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228728, -0.969359, 0.089595,
		-0.011978, -0.094831, -0.995422,
		0.973417, 0.226608, -0.033301,
		9.604999, 14.092187, 11.565401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.283760, 13.578473, 11.054090>,  <8.923607, 13.933561, 11.588713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.283760, 13.578473, 11.054090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.551182, 13.644194, 11.344205>,  <9.711635, 13.683626, 11.518274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.551182, 13.644194, 11.344205>,  <9.283760, 13.578473, 11.054090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.551182, 13.644194, 11.344205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350330, -0.929872, -0.112281,
		0.655977, 0.329156, -0.679228,
		0.668553, 0.164301, 0.725287,
		9.751748, 13.693484, 11.561791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.946245, 13.460386, 10.698120>,  <9.283760, 13.578473, 11.054090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.946245, 13.460386, 10.698120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.881723, 13.405269, 11.089015>,  <9.843011, 13.372198, 11.323552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.881723, 13.405269, 11.089015>,  <9.946245, 13.460386, 10.698120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.881723, 13.405269, 11.089015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450147, -0.891474, -0.051400,
		0.878265, 0.431610, 0.205826,
		-0.161304, -0.137795, 0.977238,
		9.833332, 13.363930, 11.382186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.519564, 12.978607, 10.795622>,  <9.946245, 13.460386, 10.698120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.519564, 12.978607, 10.795622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.305595, 12.986559, 11.133489>,  <10.177215, 12.991330, 11.336209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.305595, 12.986559, 11.133489>,  <10.519564, 12.978607, 10.795622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.305595, 12.986559, 11.133489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100638, -0.991107, 0.087058,
		0.838887, 0.131574, 0.528164,
		-0.534922, 0.019879, 0.844668,
		10.145119, 12.992522, 11.386889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.968141, 12.648297, 11.455765>,  <10.519564, 12.978607, 10.795622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.968141, 12.648297, 11.455765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.573291, 12.606528, 11.407294>,  <10.336381, 12.581467, 11.378212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.573291, 12.606528, 11.407294>,  <10.968141, 12.648297, 11.455765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.573291, 12.606528, 11.407294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073496, -0.968913, 0.236231,
		-0.142077, 0.224283, 0.964112,
		-0.987123, -0.104422, -0.121176,
		10.277154, 12.575202, 11.370941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.639153, 12.398715, 12.058386>,  <10.968141, 12.648297, 11.455765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.639153, 12.398715, 12.058386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.375186, 12.302951, 11.773517>,  <10.216805, 12.245492, 11.602595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.375186, 12.302951, 11.773517>,  <10.639153, 12.398715, 12.058386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.375186, 12.302951, 11.773517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073487, -0.922762, 0.378299,
		-0.747735, 0.301982, 0.591354,
		-0.659919, -0.239411, -0.712173,
		10.177211, 12.231128, 11.559865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.919144, 12.896909, 12.585070>,  <10.639153, 12.398715, 12.058386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.919144, 12.896909, 12.585070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292757, 12.908866, 12.727442>,  <11.516925, 12.916040, 12.812865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292757, 12.908866, 12.727442>,  <10.919144, 12.896909, 12.585070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292757, 12.908866, 12.727442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342454, 0.358161, 0.868588,
		-0.101516, -0.933181, 0.344771,
		0.934034, 0.029893, 0.355931,
		11.572968, 12.917834, 12.834221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.835002, 12.684994, 13.289868>,  <10.919144, 12.896909, 12.585070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.835002, 12.684994, 13.289868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.190096, 12.868960, 13.281805>,  <11.403152, 12.979341, 13.276967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.190096, 12.868960, 13.281805>,  <10.835002, 12.684994, 13.289868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.190096, 12.868960, 13.281805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237918, 0.495841, 0.835187,
		0.394108, -0.736629, 0.549597,
		0.887735, 0.459913, -0.020157,
		11.456416, 13.006935, 13.275757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.071683, 12.713465, 13.987241>,  <10.835002, 12.684994, 13.289868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.071683, 12.713465, 13.987241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.290690, 12.985095, 13.791657>,  <11.422095, 13.148073, 13.674308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.290690, 12.985095, 13.791657>,  <11.071683, 12.713465, 13.987241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290690, 12.985095, 13.791657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024288, 0.596974, 0.801893,
		0.836440, -0.427176, 0.343348,
		0.547520, 0.679074, -0.488958,
		11.454947, 13.188817, 13.644970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.584282, 12.838113, 14.380844>,  <11.071683, 12.713465, 13.987241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.584282, 12.838113, 14.380844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582825, 13.158791, 14.141755>,  <11.581950, 13.351197, 13.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.582825, 13.158791, 14.141755>,  <11.584282, 12.838113, 14.380844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.582825, 13.158791, 14.141755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084145, 0.595853, 0.798673,
		0.996447, -0.047386, -0.069629,
		-0.003643, 0.801694, -0.597723,
		11.581732, 13.399299, 13.962439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.086700, 13.200368, 14.681294>,  <11.584282, 12.838113, 14.380844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.086700, 13.200368, 14.681294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.889945, 13.468984, 14.459635>,  <11.771892, 13.630154, 14.326639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.889945, 13.468984, 14.459635>,  <12.086700, 13.200368, 14.681294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.889945, 13.468984, 14.459635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023124, 0.626169, 0.779345,
		0.870352, 0.396164, -0.292476,
		-0.491888, 0.671540, -0.554148,
		11.742379, 13.670445, 14.293390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.433960, 13.872494, 14.727153>,  <12.086700, 13.200368, 14.681294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.433960, 13.872494, 14.727153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054627, 13.945003, 14.622994>,  <11.827027, 13.988508, 14.560499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054627, 13.945003, 14.622994>,  <12.433960, 13.872494, 14.727153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.054627, 13.945003, 14.622994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062302, 0.698347, 0.713043,
		0.311102, 0.692424, -0.650971,
		-0.948332, 0.181272, -0.260397,
		11.770128, 13.999384, 14.544875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.360365, 14.635091, 14.767379>,  <12.433960, 13.872494, 14.727153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.360365, 14.635091, 14.767379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.995312, 14.475014, 14.800721>,  <11.776280, 14.378967, 14.820726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.995312, 14.475014, 14.800721>,  <12.360365, 14.635091, 14.767379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.995312, 14.475014, 14.800721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117848, 0.452830, 0.883774,
		-0.391426, 0.796738, -0.460429,
		-0.912632, -0.400193, 0.083355,
		11.721522, 14.354956, 14.825727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.898629, 15.183639, 14.981106>,  <12.360365, 14.635091, 14.767379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.898629, 15.183639, 14.981106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699205, 14.844345, 15.052590>,  <11.579552, 14.640769, 15.095481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.699205, 14.844345, 15.052590>,  <11.898629, 15.183639, 14.981106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699205, 14.844345, 15.052590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178310, 0.302101, 0.936451,
		-0.848319, 0.435010, -0.301864,
		-0.498559, -0.848235, 0.178711,
		11.549638, 14.589874, 15.106204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.297485, 15.313630, 15.319649>,  <11.898629, 15.183639, 14.981106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.297485, 15.313630, 15.319649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397500, 14.939397, 15.419379>,  <11.457509, 14.714857, 15.479218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397500, 14.939397, 15.419379>,  <11.297485, 15.313630, 15.319649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397500, 14.939397, 15.419379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271586, 0.179400, 0.945546,
		-0.929367, -0.304135, -0.209235,
		0.250037, -0.935584, 0.249327,
		11.472511, 14.658722, 15.494178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.748850, 15.276312, 15.730337>,  <11.297485, 15.313630, 15.319649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.748850, 15.276312, 15.730337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.987286, 14.968425, 15.821736>,  <11.130347, 14.783692, 15.876575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.987286, 14.968425, 15.821736>,  <10.748850, 15.276312, 15.730337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.987286, 14.968425, 15.821736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200620, 0.132774, 0.970630,
		-0.777451, -0.624423, -0.075275,
		0.596089, -0.769719, 0.228497,
		11.166112, 14.737509, 15.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293865, 14.847831, 16.135265>,  <10.748850, 15.276312, 15.730337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293865, 14.847831, 16.135265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665351, 14.726175, 16.220108>,  <10.888243, 14.653182, 16.271013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665351, 14.726175, 16.220108>,  <10.293865, 14.847831, 16.135265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.665351, 14.726175, 16.220108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233690, -0.035974, 0.971645,
		-0.287885, -0.951948, -0.104484,
		0.928715, -0.304139, 0.212104,
		10.943966, 14.634934, 16.283739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.227782, 14.410216, 16.690382>,  <10.293865, 14.847831, 16.135265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.227782, 14.410216, 16.690382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.613895, 14.513136, 16.708384>,  <10.845563, 14.574888, 16.719185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.613895, 14.513136, 16.708384>,  <10.227782, 14.410216, 16.690382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.613895, 14.513136, 16.708384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049394, 0.010627, 0.998723,
		0.256494, -0.966273, 0.022967,
		0.965283, 0.257301, 0.045002,
		10.903481, 14.590326, 16.721884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.476689, 13.922532, 17.185400>,  <10.227782, 14.410216, 16.690382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.476689, 13.922532, 17.185400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735826, 14.226025, 17.158197>,  <10.891309, 14.408120, 17.141876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.735826, 14.226025, 17.158197>,  <10.476689, 13.922532, 17.185400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.735826, 14.226025, 17.158197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070263, 0.148408, 0.986427,
		0.758527, -0.634272, 0.149456,
		0.647843, 0.758732, -0.068006,
		10.930180, 14.453644, 17.137796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.022003, 13.808002, 17.671543>,  <10.476689, 13.922532, 17.185400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.022003, 13.808002, 17.671543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.007602, 14.199260, 17.589628>,  <10.998960, 14.434014, 17.540480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.007602, 14.199260, 17.589628>,  <11.022003, 13.808002, 17.671543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.007602, 14.199260, 17.589628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017071, 0.204290, 0.978761,
		0.999206, 0.038735, 0.009343,
		-0.036004, 0.978144, -0.204789,
		10.996800, 14.492702, 17.528191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.452117, 14.038479, 18.237040>,  <11.022003, 13.808002, 17.671543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.452117, 14.038479, 18.237040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.245741, 14.346502, 18.086939>,  <11.121916, 14.531317, 17.996878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.245741, 14.346502, 18.086939>,  <11.452117, 14.038479, 18.237040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.245741, 14.346502, 18.086939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281225, 0.261518, 0.923321,
		0.809147, 0.581908, 0.081632,
		-0.515939, 0.770059, -0.375253,
		11.090959, 14.577520, 17.974363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.789160, 14.614161, 18.590183>,  <11.452117, 14.038479, 18.237040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.789160, 14.614161, 18.590183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422637, 14.729327, 18.478840>,  <11.202724, 14.798428, 18.412033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422637, 14.729327, 18.478840>,  <11.789160, 14.614161, 18.590183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.422637, 14.729327, 18.478840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172677, 0.343089, 0.923294,
		0.361334, 0.894088, -0.264658,
		-0.916308, 0.287917, -0.278358,
		11.147744, 14.815702, 18.395332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.694919, 15.286633, 18.854002>,  <11.789160, 14.614161, 18.590183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.694919, 15.286633, 18.854002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323996, 15.145327, 18.804516>,  <11.101442, 15.060543, 18.774824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.323996, 15.145327, 18.804516>,  <11.694919, 15.286633, 18.854002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.323996, 15.145327, 18.804516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298086, 0.497079, 0.814897,
		-0.226377, 0.792538, -0.566248,
		-0.927307, -0.353265, -0.123717,
		11.045803, 15.039348, 18.767401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.309315, 15.844116, 19.187819>,  <11.694919, 15.286633, 18.854002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.309315, 15.844116, 19.187819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.069409, 15.532519, 19.114655>,  <10.925467, 15.345561, 19.070757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.069409, 15.532519, 19.114655>,  <11.309315, 15.844116, 19.187819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.069409, 15.532519, 19.114655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574727, 0.260328, 0.775834,
		-0.556752, 0.570440, -0.603842,
		-0.599764, -0.778992, -0.182909,
		10.889481, 15.298821, 19.059782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.629950, 16.140553, 19.243444>,  <11.309315, 15.844116, 19.187819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.629950, 16.140553, 19.243444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.593613, 15.742453, 19.257452>,  <10.571811, 15.503592, 19.265858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.593613, 15.742453, 19.257452>,  <10.629950, 16.140553, 19.243444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.593613, 15.742453, 19.257452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583452, 0.081688, 0.808029,
		-0.807051, 0.052971, -0.588101,
		-0.090843, -0.995250, 0.035020,
		10.566360, 15.443878, 19.267958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.020706, 16.100565, 19.578922>,  <10.629950, 16.140553, 19.243444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.020706, 16.100565, 19.578922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192507, 15.745157, 19.643492>,  <10.295588, 15.531912, 19.682234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.192507, 15.745157, 19.643492>,  <10.020706, 16.100565, 19.578922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192507, 15.745157, 19.643492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376882, -0.013918, 0.926157,
		-0.820663, -0.458624, -0.340845,
		0.429502, -0.888521, 0.161425,
		10.321358, 15.478601, 19.691919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.507418, 15.628152, 19.512068>,  <10.020706, 16.100565, 19.578922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.507418, 15.628152, 19.512068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.818679, 15.527788, 19.742378>,  <10.005436, 15.467569, 19.880566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.818679, 15.527788, 19.742378>,  <9.507418, 15.628152, 19.512068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.818679, 15.527788, 19.742378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597771, -0.014552, 0.801535,
		-0.192736, -0.967901, -0.161311,
		0.778154, -0.250912, 0.575778,
		10.052125, 15.452516, 19.915112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.188232, 15.278388, 20.029030>,  <9.507418, 15.628152, 19.512068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.188232, 15.278388, 20.029030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.558336, 15.329643, 20.171844>,  <9.780399, 15.360396, 20.257532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.558336, 15.329643, 20.171844>,  <9.188232, 15.278388, 20.029030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.558336, 15.329643, 20.171844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342494, -0.122410, 0.931511,
		0.163067, -0.984173, -0.069374,
		0.925260, 0.128138, 0.357034,
		9.835915, 15.368084, 20.278955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.179889, 14.899985, 20.660198>,  <9.188232, 15.278388, 20.029030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.179889, 14.899985, 20.660198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.499221, 15.139492, 20.685955>,  <9.690821, 15.283195, 20.701408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.499221, 15.139492, 20.685955>,  <9.179889, 14.899985, 20.660198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499221, 15.139492, 20.685955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134856, 0.073540, 0.988133,
		0.586925, -0.797541, 0.139456,
		0.798331, 0.598766, 0.064391,
		9.738720, 15.319122, 20.705273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.594451, 14.717996, 21.294909>,  <9.179889, 14.899985, 20.660198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.594451, 14.717996, 21.294909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.674226, 15.096725, 21.193911>,  <9.722091, 15.323961, 21.133312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.674226, 15.096725, 21.193911>,  <9.594451, 14.717996, 21.294909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.674226, 15.096725, 21.193911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106584, 0.277103, 0.954910,
		0.974097, -0.163534, 0.156181,
		0.199438, 0.946822, -0.252495,
		9.734057, 15.380771, 21.118162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.951964, 14.989062, 21.958942>,  <9.594451, 14.717996, 21.294909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.951964, 14.989062, 21.958942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.865596, 15.331504, 21.771128>,  <9.813775, 15.536968, 21.658440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.865596, 15.331504, 21.771128>,  <9.951964, 14.989062, 21.958942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.865596, 15.331504, 21.771128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028415, 0.475168, 0.879436,
		0.975997, 0.203231, -0.078273,
		-0.215921, 0.856103, -0.469537,
		9.800819, 15.588335, 21.630266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.358623, 15.530105, 22.353184>,  <9.951964, 14.989062, 21.958942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.358623, 15.530105, 22.353184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.058485, 15.702331, 22.152546>,  <9.878403, 15.805666, 22.032164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.058485, 15.702331, 22.152546>,  <10.358623, 15.530105, 22.353184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.058485, 15.702331, 22.152546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311772, 0.438594, 0.842872,
		0.582907, 0.788828, -0.194859,
		-0.750345, 0.430564, -0.501594,
		9.833382, 15.831500, 22.002068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.541240, 16.237797, 22.413132>,  <10.358623, 15.530105, 22.353184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.541240, 16.237797, 22.413132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148229, 16.205910, 22.345858>,  <9.912422, 16.186777, 22.305492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.148229, 16.205910, 22.345858>,  <10.541240, 16.237797, 22.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.148229, 16.205910, 22.345858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185985, 0.454897, 0.870906,
		0.007082, 0.886969, -0.461774,
		-0.982527, -0.079716, -0.168185,
		9.853471, 16.181995, 22.295403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.296280, 16.870434, 22.562592>,  <10.541240, 16.237797, 22.413132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.296280, 16.870434, 22.562592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981312, 16.625679, 22.592436>,  <9.792331, 16.478827, 22.610342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981312, 16.625679, 22.592436>,  <10.296280, 16.870434, 22.562592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.981312, 16.625679, 22.592436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344234, 0.536900, 0.770221,
		-0.511345, 0.580805, -0.633398,
		-0.787420, -0.611885, 0.074608,
		9.745086, 16.442114, 22.614819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.888920, 17.282022, 22.905951>,  <10.296280, 16.870434, 22.562592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.888920, 17.282022, 22.905951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.653461, 16.959173, 22.924047>,  <9.512185, 16.765465, 22.934906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.653461, 16.959173, 22.924047>,  <9.888920, 17.282022, 22.905951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.653461, 16.959173, 22.924047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384991, 0.329112, 0.862246,
		-0.710827, 0.490142, -0.504466,
		-0.588648, -0.807122, 0.045242,
		9.476866, 16.717037, 22.937620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.254869, 17.501829, 23.108799>,  <9.888920, 17.282022, 22.905951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.254869, 17.501829, 23.108799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.333471, 17.126369, 23.222162>,  <9.380633, 16.901093, 23.290180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.333471, 17.126369, 23.222162>,  <9.254869, 17.501829, 23.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.333471, 17.126369, 23.222162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261436, 0.228420, 0.937803,
		-0.945006, -0.258379, -0.200511,
		0.196508, -0.938650, 0.283408,
		9.392424, 16.844774, 23.307184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.632453, 17.313154, 23.367699>,  <9.254869, 17.501829, 23.108799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.632453, 17.313154, 23.367699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.875316, 17.039211, 23.528860>,  <9.021033, 16.874846, 23.625557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.875316, 17.039211, 23.528860>,  <8.632453, 17.313154, 23.367699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.875316, 17.039211, 23.528860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574572, -0.028168, 0.817969,
		-0.548843, -0.728132, -0.410603,
		0.607156, -0.684858, 0.402905,
		9.057463, 16.833754, 23.649731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.200620, 16.900999, 23.662006>,  <8.632453, 17.313154, 23.367699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.200620, 16.900999, 23.662006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.554538, 16.860636, 23.843975>,  <8.766889, 16.836418, 23.953156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.554538, 16.860636, 23.843975>,  <8.200620, 16.900999, 23.662006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.554538, 16.860636, 23.843975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464710, -0.119069, 0.877421,
		-0.034369, -0.987745, -0.152243,
		0.884796, -0.100905, 0.454922,
		8.819977, 16.830362, 23.980452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.143080, 16.287346, 24.165133>,  <8.200620, 16.900999, 23.662006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.143080, 16.287346, 24.165133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445272, 16.513651, 24.297291>,  <8.626588, 16.649433, 24.376585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.445272, 16.513651, 24.297291>,  <8.143080, 16.287346, 24.165133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.445272, 16.513651, 24.297291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383428, -0.027113, 0.923173,
		0.531255, -0.824122, 0.196446,
		0.755481, 0.565763, 0.330396,
		8.671917, 16.683380, 24.396410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372780, 15.884535, 24.738533>,  <8.143080, 16.287346, 24.165133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372780, 15.884535, 24.738533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562532, 16.226057, 24.824305>,  <8.676384, 16.430969, 24.875769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.562532, 16.226057, 24.824305>,  <8.372780, 15.884535, 24.738533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.562532, 16.226057, 24.824305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217843, -0.122152, 0.968310,
		0.852940, -0.506060, 0.128049,
		0.474381, 0.853805, 0.214430,
		8.704846, 16.482199, 24.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.887629, 15.751239, 25.313473>,  <8.372780, 15.884535, 24.738533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.887629, 15.751239, 25.313473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.767699, 16.131676, 25.343224>,  <8.695742, 16.359938, 25.361074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.767699, 16.131676, 25.343224>,  <8.887629, 15.751239, 25.313473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.767699, 16.131676, 25.343224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243108, -0.151560, 0.958086,
		0.922499, 0.269174, 0.276659,
		-0.299823, 0.951091, 0.074376,
		8.677752, 16.417004, 25.365536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.078438, 16.019121, 25.974562>,  <8.887629, 15.751239, 25.313473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.078438, 16.019121, 25.974562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.811091, 16.298676, 25.872704>,  <8.650683, 16.466408, 25.811588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.811091, 16.298676, 25.872704>,  <9.078438, 16.019121, 25.974562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.811091, 16.298676, 25.872704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312463, 0.046875, 0.948773,
		0.675021, 0.713695, 0.187046,
		-0.668366, 0.698887, -0.254645,
		8.610581, 16.508341, 25.796310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.116302, 16.500051, 26.561361>,  <9.078438, 16.019121, 25.974562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.116302, 16.500051, 26.561361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.776060, 16.561852, 26.360323>,  <8.571915, 16.598930, 26.239700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.776060, 16.561852, 26.360323>,  <9.116302, 16.500051, 26.561361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.776060, 16.561852, 26.360323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525106, -0.200315, 0.827126,
		0.027112, 0.967473, 0.251517,
		-0.850605, 0.154498, -0.502595,
		8.520879, 16.608200, 26.209545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.878921, 17.155533, 26.868992>,  <9.116302, 16.500051, 26.561361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.878921, 17.155533, 26.868992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.570397, 16.948063, 26.721445>,  <8.385283, 16.823582, 26.632917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.570397, 16.948063, 26.721445>,  <8.878921, 17.155533, 26.868992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570397, 16.948063, 26.721445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390781, -0.071523, 0.917701,
		-0.502369, 0.851976, -0.147521,
		-0.771308, -0.518673, -0.368867,
		8.339005, 16.792461, 26.610785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.384985, 17.284639, 27.283216>,  <8.878921, 17.155533, 26.868992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.384985, 17.284639, 27.283216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.187529, 16.995928, 27.089165>,  <8.069055, 16.822701, 26.972733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.187529, 16.995928, 27.089165>,  <8.384985, 17.284639, 27.283216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.187529, 16.995928, 27.089165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517572, -0.204464, 0.830851,
		-0.698884, 0.661232, -0.272642,
		-0.493640, -0.721780, -0.485131,
		8.039436, 16.779394, 26.943624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.643149, 17.335342, 27.398804>,  <8.384985, 17.284639, 27.283216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.643149, 17.335342, 27.398804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738086, 16.956490, 27.312450>,  <7.795048, 16.729177, 27.260637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.738086, 16.956490, 27.312450>,  <7.643149, 17.335342, 27.398804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.738086, 16.956490, 27.312450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491196, -0.308741, 0.814497,
		-0.838090, -0.087271, -0.538506,
		0.237341, -0.947134, -0.215885,
		7.809288, 16.672350, 27.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.130877, 16.898893, 27.583036>,  <7.643149, 17.335342, 27.398804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.130877, 16.898893, 27.583036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.438579, 16.644445, 27.559040>,  <7.623200, 16.491777, 27.544643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.438579, 16.644445, 27.559040>,  <7.130877, 16.898893, 27.583036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.438579, 16.644445, 27.559040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193215, -0.321086, 0.927131,
		-0.609027, -0.701610, -0.369905,
		0.769256, -0.636119, -0.059989,
		7.669356, 16.453609, 27.541044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.871989, 16.202177, 27.791740>,  <7.130877, 16.898893, 27.583036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.871989, 16.202177, 27.791740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.265243, 16.241230, 27.853594>,  <7.501196, 16.264662, 27.890705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.265243, 16.241230, 27.853594>,  <6.871989, 16.202177, 27.791740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.265243, 16.241230, 27.853594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121828, -0.280954, 0.951958,
		0.136389, -0.954742, -0.264321,
		0.983136, 0.097635, 0.154633,
		7.560184, 16.270521, 27.899984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.955541, 15.597998, 28.069216>,  <6.871989, 16.202177, 27.791740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.955541, 15.597998, 28.069216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.269136, 15.817344, 28.185602>,  <7.457293, 15.948952, 28.255434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.269136, 15.817344, 28.185602>,  <6.955541, 15.597998, 28.069216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.269136, 15.817344, 28.185602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009305, -0.458275, 0.888762,
		0.620708, -0.699484, -0.354179,
		0.783986, 0.548366, 0.290964,
		7.504332, 15.981853, 28.272892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.597373, 15.202840, 28.365746>,  <6.955541, 15.597998, 28.069216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.597373, 15.202840, 28.365746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.570189, 15.572941, 28.515030>,  <7.553879, 15.795002, 28.604601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.570189, 15.572941, 28.515030>,  <7.597373, 15.202840, 28.365746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.570189, 15.572941, 28.515030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040990, -0.376351, 0.925570,
		0.996846, 0.047603, 0.063502,
		-0.067959, 0.925254, 0.373213,
		7.549802, 15.850517, 28.626993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.007916, 15.303141, 28.914986>,  <7.597373, 15.202840, 28.365746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.007916, 15.303141, 28.914986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.695349, 15.547307, 28.966799>,  <7.507809, 15.693807, 28.997887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.695349, 15.547307, 28.966799>,  <8.007916, 15.303141, 28.914986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.695349, 15.547307, 28.966799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172603, -0.410918, 0.895184,
		0.599663, 0.677154, 0.426458,
		-0.781417, 0.610416, 0.129534,
		7.460924, 15.730432, 29.005659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.891794, 15.341189, 29.622328>,  <8.007916, 15.303141, 28.914986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.891794, 15.341189, 29.622328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.270432, 15.368273, 29.496235>,  <8.497616, 15.384523, 29.420580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.270432, 15.368273, 29.496235>,  <7.891794, 15.341189, 29.622328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.270432, 15.368273, 29.496235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300573, 0.539096, -0.786785,
		0.116668, 0.839518, 0.530658,
		0.946596, 0.067709, -0.315232,
		8.554411, 15.388585, 29.401665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.060853, 16.019894, 29.297939>,  <7.891794, 15.341189, 29.622328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.060853, 16.019894, 29.297939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314801, 15.756798, 29.135794>,  <8.467170, 15.598941, 29.038507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.314801, 15.756798, 29.135794>,  <8.060853, 16.019894, 29.297939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.314801, 15.756798, 29.135794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115220, 0.438195, -0.891465,
		0.763979, 0.612671, 0.202412,
		0.634871, -0.657738, -0.405363,
		8.505262, 15.559476, 29.014185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.545338, 16.429686, 28.821882>,  <8.060853, 16.019894, 29.297939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.545338, 16.429686, 28.821882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.596934, 16.050743, 28.704662>,  <8.627892, 15.823378, 28.634331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.596934, 16.050743, 28.704662>,  <8.545338, 16.429686, 28.821882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.596934, 16.050743, 28.704662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261069, 0.317537, -0.911599,
		0.956663, 0.041082, 0.288284,
		0.128991, -0.947355, -0.293051,
		8.635632, 15.766537, 28.616747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.232754, 16.287916, 28.439157>,  <8.545338, 16.429686, 28.821882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.232754, 16.287916, 28.439157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.953945, 16.028727, 28.316330>,  <8.786660, 15.873213, 28.242634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.953945, 16.028727, 28.316330>,  <9.232754, 16.287916, 28.439157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.953945, 16.028727, 28.316330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259602, 0.171144, -0.950430,
		0.668407, -0.742185, 0.048924,
		-0.697022, -0.647974, -0.307067,
		8.744839, 15.834334, 28.224211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.766639, 15.748943, 28.324770>,  <9.232754, 16.287916, 28.439157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.766639, 15.748943, 28.324770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.500268, 15.592541, 28.578905>,  <9.340446, 15.498699, 28.731386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.500268, 15.592541, 28.578905>,  <9.766639, 15.748943, 28.324770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.500268, 15.592541, 28.578905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493393, -0.407943, -0.768209,
		0.559557, -0.825043, 0.078740,
		-0.665927, -0.391007, 0.635338,
		9.300489, 15.475239, 28.769506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.836561, 15.052439, 28.449863>,  <9.766639, 15.748943, 28.324770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.836561, 15.052439, 28.449863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.451516, 15.137230, 28.517319>,  <9.220489, 15.188105, 28.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.451516, 15.137230, 28.517319>,  <9.836561, 15.052439, 28.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.451516, 15.137230, 28.517319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240218, -0.380334, -0.893108,
		-0.125180, -0.900229, 0.417035,
		-0.962614, 0.211979, 0.168640,
		9.162732, 15.200824, 28.567911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.335064, 14.395764, 28.524137>,  <9.836561, 15.052439, 28.449863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.335064, 14.395764, 28.524137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.203500, 14.741586, 28.372154>,  <9.124561, 14.949079, 28.280964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.203500, 14.741586, 28.372154>,  <9.335064, 14.395764, 28.524137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.203500, 14.741586, 28.372154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041265, -0.415115, -0.908833,
		-0.943459, -0.283245, 0.172211,
		-0.328910, 0.864553, -0.379956,
		9.104827, 15.000952, 28.258167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.831547, 14.200254, 28.088827>,  <9.335064, 14.395764, 28.524137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.831547, 14.200254, 28.088827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915966, 14.568099, 27.956301>,  <8.966618, 14.788806, 27.876785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.915966, 14.568099, 27.956301>,  <8.831547, 14.200254, 28.088827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.915966, 14.568099, 27.956301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231932, -0.376385, -0.896963,
		-0.949561, 0.112459, -0.292722,
		0.211048, 0.919613, -0.331318,
		8.979280, 14.843983, 27.856905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.427770, 14.279736, 27.496426>,  <8.831547, 14.200254, 28.088827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.427770, 14.279736, 27.496426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.759379, 14.503417, 27.495050>,  <8.958345, 14.637626, 27.494225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.759379, 14.503417, 27.495050>,  <8.427770, 14.279736, 27.496426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.759379, 14.503417, 27.495050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218481, -0.329549, -0.918511,
		-0.514768, 0.760716, -0.395380,
		0.829024, 0.559203, -0.003439,
		9.008086, 14.671178, 27.494019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.379519, 14.674492, 26.903753>,  <8.427770, 14.279736, 27.496426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.379519, 14.674492, 26.903753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.767099, 14.702020, 26.998743>,  <8.999648, 14.718536, 27.055737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.767099, 14.702020, 26.998743>,  <8.379519, 14.674492, 26.903753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.767099, 14.702020, 26.998743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243876, -0.108043, -0.963769,
		-0.040670, 0.991761, -0.121473,
		0.968953, 0.068820, 0.237473,
		9.057785, 14.722666, 27.069984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.596466, 15.182536, 26.387123>,  <8.379519, 14.674492, 26.903753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.596466, 15.182536, 26.387123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.897447, 14.967655, 26.539558>,  <9.078035, 14.838727, 26.631020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.897447, 14.967655, 26.539558>,  <8.596466, 15.182536, 26.387123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.897447, 14.967655, 26.539558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405902, -0.077455, -0.910628,
		0.518708, 0.839890, 0.159770,
		0.752453, -0.537201, 0.381090,
		9.123182, 14.806495, 26.653885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.066950, 15.199644, 25.821547>,  <8.596466, 15.182536, 26.387123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.066950, 15.199644, 25.821547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.223818, 14.932803, 26.074900>,  <9.317939, 14.772698, 26.226912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.223818, 14.932803, 26.074900>,  <9.066950, 15.199644, 25.821547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.223818, 14.932803, 26.074900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613651, -0.323227, -0.720387,
		0.685299, 0.671192, 0.282608,
		0.392171, -0.667103, 0.633385,
		9.341469, 14.732673, 26.264915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.738807, 15.222865, 25.705414>,  <9.066950, 15.199644, 25.821547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.738807, 15.222865, 25.705414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694044, 14.864880, 25.878164>,  <9.667187, 14.650088, 25.981815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.694044, 14.864880, 25.878164>,  <9.738807, 15.222865, 25.705414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.694044, 14.864880, 25.878164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565790, -0.414666, -0.712695,
		0.816921, 0.164596, 0.552765,
		-0.111906, -0.894964, 0.431876,
		9.660472, 14.596391, 26.007727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.427807, 14.983095, 25.732111>,  <9.738807, 15.222865, 25.705414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.427807, 14.983095, 25.732111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.165668, 14.681467, 25.749552>,  <10.008386, 14.500490, 25.760017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.165668, 14.681467, 25.749552>,  <10.427807, 14.983095, 25.732111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.165668, 14.681467, 25.749552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365746, -0.367311, -0.855168,
		0.660872, -0.544483, 0.516514,
		-0.655346, -0.754070, 0.043603,
		9.969065, 14.455246, 25.762632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.776258, 14.435224, 25.575100>,  <10.427807, 14.983095, 25.732111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.776258, 14.435224, 25.575100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.414106, 14.275964, 25.516090>,  <10.196815, 14.180408, 25.480684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.414106, 14.275964, 25.516090>,  <10.776258, 14.435224, 25.575100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.414106, 14.275964, 25.516090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286698, -0.316958, -0.904070,
		0.313196, -0.860822, 0.401116,
		-0.905380, -0.398150, -0.147526,
		10.142492, 14.156519, 25.471832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.916533, 13.689008, 25.423168>,  <10.776258, 14.435224, 25.575100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.916533, 13.689008, 25.423168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.573213, 13.812871, 25.259495>,  <10.367220, 13.887189, 25.161291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.573213, 13.812871, 25.259495>,  <10.916533, 13.689008, 25.423168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.573213, 13.812871, 25.259495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324627, -0.289897, -0.900321,
		-0.397412, -0.905578, 0.148295,
		-0.858301, 0.309658, -0.409184,
		10.315722, 13.905768, 25.136740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.743216, 13.179774, 24.814468>,  <10.916533, 13.689008, 25.423168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.743216, 13.179774, 24.814468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.525076, 13.509749, 24.755041>,  <10.394193, 13.707734, 24.719385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.525076, 13.509749, 24.755041>,  <10.743216, 13.179774, 24.814468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.525076, 13.509749, 24.755041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140175, -0.084996, -0.986472,
		-0.826406, -0.558797, -0.069284,
		-0.545348, 0.824938, -0.148570,
		10.361471, 13.757231, 24.710470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.294747, 12.871060, 24.364540>,  <10.743216, 13.179774, 24.814468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.294747, 12.871060, 24.364540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.327453, 13.266044, 24.310516>,  <10.347075, 13.503034, 24.278103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.327453, 13.266044, 24.310516>,  <10.294747, 12.871060, 24.364540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.327453, 13.266044, 24.310516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013960, -0.134363, -0.990834,
		-0.996554, 0.082898, 0.002799,
		0.081762, 0.987458, -0.135057,
		10.351981, 13.562282, 24.269999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.813675, 13.077814, 23.935429>,  <10.294747, 12.871060, 24.364540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.813675, 13.077814, 23.935429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030668, 13.411854, 23.898943>,  <10.160864, 13.612278, 23.877050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030668, 13.411854, 23.898943>,  <9.813675, 13.077814, 23.935429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030668, 13.411854, 23.898943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075054, -0.156328, -0.984849,
		-0.836707, 0.527418, -0.147483,
		0.542484, 0.835100, -0.091216,
		10.193414, 13.662384, 23.871578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.527716, 13.384535, 23.431372>,  <9.813675, 13.077814, 23.935429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.527716, 13.384535, 23.431372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.865584, 13.598433, 23.421762>,  <10.068306, 13.726771, 23.415997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.865584, 13.598433, 23.421762>,  <9.527716, 13.384535, 23.431372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.865584, 13.598433, 23.421762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137601, -0.260289, -0.955675,
		-0.517295, 0.803927, -0.293441,
		0.844673, 0.534744, -0.024025,
		10.118986, 13.758856, 23.414555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.703126, 13.713762, 22.767040>,  <9.527716, 13.384535, 23.431372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.703126, 13.713762, 22.767040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071785, 13.693295, 22.920897>,  <10.292980, 13.681015, 23.013210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071785, 13.693295, 22.920897>,  <9.703126, 13.713762, 22.767040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.071785, 13.693295, 22.920897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375868, -0.128508, -0.917720,
		0.096386, 0.990388, -0.099207,
		0.921647, -0.051167, 0.384641,
		10.348279, 13.677945, 23.036289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.031061, 14.180008, 22.480122>,  <9.703126, 13.713762, 22.767040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.031061, 14.180008, 22.480122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.319207, 13.925992, 22.591692>,  <10.492095, 13.773582, 22.658634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.319207, 13.925992, 22.591692>,  <10.031061, 14.180008, 22.480122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.319207, 13.925992, 22.591692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286583, -0.093698, -0.953463,
		0.631621, 0.766777, 0.114495,
		0.720365, -0.635039, 0.278926,
		10.535316, 13.735480, 22.675369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.643689, 14.358792, 22.103872>,  <10.031061, 14.180008, 22.480122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.643689, 14.358792, 22.103872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706248, 13.980943, 22.219267>,  <10.743784, 13.754232, 22.288504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706248, 13.980943, 22.219267>,  <10.643689, 14.358792, 22.103872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706248, 13.980943, 22.219267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400130, -0.206441, -0.892904,
		0.903015, 0.255081, 0.345686,
		0.156399, -0.944625, 0.288485,
		10.753168, 13.697556, 22.305813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.329162, 14.257073, 21.817627>,  <10.643689, 14.358792, 22.103872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.329162, 14.257073, 21.817627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.195755, 13.889799, 21.903139>,  <11.115711, 13.669435, 21.954447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.195755, 13.889799, 21.903139>,  <11.329162, 14.257073, 21.817627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195755, 13.889799, 21.903139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373354, -0.336866, -0.864366,
		0.865663, -0.208465, 0.455159,
		-0.333517, -0.918185, 0.213782,
		11.095699, 13.614344, 21.967274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.842991, 13.865160, 21.575670>,  <11.329162, 14.257073, 21.817627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.842991, 13.865160, 21.575670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534494, 13.612157, 21.604294>,  <11.349397, 13.460355, 21.621468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534494, 13.612157, 21.604294>,  <11.842991, 13.865160, 21.575670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534494, 13.612157, 21.604294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202801, -0.350717, -0.914259,
		0.603372, -0.690603, 0.398761,
		-0.771242, -0.632507, 0.071558,
		11.303122, 13.422404, 21.625761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076744, 13.242765, 21.510939>,  <11.842991, 13.865160, 21.575670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076744, 13.242765, 21.510939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687387, 13.204724, 21.427544>,  <11.453773, 13.181899, 21.377506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687387, 13.204724, 21.427544>,  <12.076744, 13.242765, 21.510939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.687387, 13.204724, 21.427544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229138, -0.393627, -0.890255,
		0.002601, -0.914337, 0.404945,
		-0.973391, -0.095104, -0.208486,
		11.395370, 13.176193, 21.364998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.020700, 12.613711, 21.276611>,  <12.076744, 13.242765, 21.510939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.020700, 12.613711, 21.276611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.691941, 12.796160, 21.140120>,  <11.494686, 12.905629, 21.058224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.691941, 12.796160, 21.140120>,  <12.020700, 12.613711, 21.276611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.691941, 12.796160, 21.140120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120090, -0.446823, -0.886525,
		-0.556833, -0.769611, 0.312467,
		-0.821897, 0.456122, -0.341229,
		11.445372, 12.932996, 21.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.738280, 12.056173, 20.878357>,  <12.020700, 12.613711, 21.276611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.738280, 12.056173, 20.878357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.567530, 12.405470, 20.784355>,  <11.465079, 12.615047, 20.727955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.567530, 12.405470, 20.784355>,  <11.738280, 12.056173, 20.878357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.567530, 12.405470, 20.784355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114774, -0.205452, -0.971914,
		-0.896997, -0.441859, -0.012523,
		-0.426876, 0.873241, -0.235004,
		11.439467, 12.667442, 20.713854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.163316, 11.878057, 20.339390>,  <11.738280, 12.056173, 20.878357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.163316, 11.878057, 20.339390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268393, 12.260284, 20.285906>,  <11.331438, 12.489621, 20.253815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.268393, 12.260284, 20.285906>,  <11.163316, 11.878057, 20.339390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.268393, 12.260284, 20.285906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120759, -0.170048, -0.978009,
		-0.957293, 0.240768, -0.160064,
		0.262691, 0.955570, -0.133711,
		11.347200, 12.546955, 20.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.934021, 11.886323, 19.738041>,  <11.163316, 11.878057, 20.339390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.934021, 11.886323, 19.738041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157234, 12.217267, 19.763569>,  <11.291162, 12.415833, 19.778887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157234, 12.217267, 19.763569>,  <10.934021, 11.886323, 19.738041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.157234, 12.217267, 19.763569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343514, -0.160310, -0.925364,
		-0.755379, 0.538308, -0.373668,
		0.558033, 0.827361, 0.063822,
		11.324644, 12.465475, 19.782715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.821024, 12.134059, 19.143112>,  <10.934021, 11.886323, 19.738041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.821024, 12.134059, 19.143112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.150146, 12.327437, 19.262627>,  <11.347618, 12.443464, 19.334335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.150146, 12.327437, 19.262627>,  <10.821024, 12.134059, 19.143112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150146, 12.327437, 19.262627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384411, -0.086194, -0.919129,
		-0.418595, 0.871121, -0.256763,
		0.822804, 0.483446, 0.298788,
		11.396987, 12.472471, 19.352262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.953133, 12.758429, 18.690733>,  <10.821024, 12.134059, 19.143112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.953133, 12.758429, 18.690733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.305852, 12.652672, 18.846952>,  <11.517484, 12.589218, 18.940683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.305852, 12.652672, 18.846952>,  <10.953133, 12.758429, 18.690733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.305852, 12.652672, 18.846952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454799, 0.257467, -0.852566,
		0.124858, 0.929413, 0.347279,
		0.881798, -0.264391, 0.390549,
		11.570392, 12.573355, 18.964117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.529852, 13.279776, 18.490814>,  <10.953133, 12.758429, 18.690733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.529852, 13.279776, 18.490814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.679545, 12.914595, 18.555887>,  <11.769361, 12.695486, 18.594931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.679545, 12.914595, 18.555887>,  <11.529852, 13.279776, 18.490814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.679545, 12.914595, 18.555887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618575, 0.115061, -0.777255,
		0.690878, 0.391508, 0.607790,
		0.374235, -0.912952, 0.162684,
		11.791816, 12.640709, 18.604692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.179493, 13.384248, 18.226358>,  <11.529852, 13.279776, 18.490814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.179493, 13.384248, 18.226358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.151842, 12.987906, 18.272717>,  <12.135252, 12.750102, 18.300531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.151842, 12.987906, 18.272717>,  <12.179493, 13.384248, 18.226358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.151842, 12.987906, 18.272717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553143, -0.134750, -0.822116,
		0.830213, 0.007276, 0.557398,
		-0.069127, -0.990853, 0.115896,
		12.131104, 12.690651, 18.307486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.818092, 13.064279, 17.937248>,  <12.179493, 13.384248, 18.226358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.818092, 13.064279, 17.937248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.578968, 12.743772, 17.946976>,  <12.435493, 12.551467, 17.952812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.578968, 12.743772, 17.946976>,  <12.818092, 13.064279, 17.937248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.578968, 12.743772, 17.946976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434737, -0.349539, -0.829956,
		0.673517, -0.485585, 0.557299,
		-0.597812, -0.801268, 0.024319,
		12.399625, 12.503391, 17.954271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195681, 12.618165, 17.688274>,  <12.818092, 13.064279, 17.937248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195681, 12.618165, 17.688274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841973, 12.439048, 17.635284>,  <12.629748, 12.331577, 17.603491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841973, 12.439048, 17.635284>,  <13.195681, 12.618165, 17.688274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841973, 12.439048, 17.635284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321446, -0.377908, -0.868250,
		0.338735, -0.810349, 0.478114,
		-0.884269, -0.447794, -0.132472,
		12.576693, 12.304709, 17.595543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.411369, 11.967721, 17.527475>,  <13.195681, 12.618165, 17.688274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.411369, 11.967721, 17.527475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031571, 12.012749, 17.410318>,  <12.803693, 12.039765, 17.340025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.031571, 12.012749, 17.410318>,  <13.411369, 11.967721, 17.527475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.031571, 12.012749, 17.410318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259531, -0.242883, -0.934693,
		-0.176354, -0.963502, 0.201402,
		-0.949496, 0.112567, -0.292892,
		12.746723, 12.046520, 17.322451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.141977, 11.335230, 17.323004>,  <13.411369, 11.967721, 17.527475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.141977, 11.335230, 17.323004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894516, 11.589497, 17.138311>,  <12.746039, 11.742057, 17.027496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894516, 11.589497, 17.138311>,  <13.141977, 11.335230, 17.323004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894516, 11.589497, 17.138311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319009, -0.333828, -0.887013,
		-0.717984, -0.696049, 0.003740,
		-0.618653, 0.635668, -0.461729,
		12.708920, 11.780197, 16.999792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840370, 10.993335, 16.797291>,  <13.141977, 11.335230, 17.323004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840370, 10.993335, 16.797291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.765518, 11.367791, 16.678213>,  <12.720607, 11.592465, 16.606766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.765518, 11.367791, 16.678213>,  <12.840370, 10.993335, 16.797291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.765518, 11.367791, 16.678213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231032, -0.252606, -0.939582,
		-0.954781, -0.244600, -0.169009,
		-0.187129, 0.936142, -0.297694,
		12.709379, 11.648634, 16.588905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463183, 10.944726, 16.160143>,  <12.840370, 10.993335, 16.797291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463183, 10.944726, 16.160143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622762, 11.311084, 16.177940>,  <12.718509, 11.530898, 16.188620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622762, 11.311084, 16.177940>,  <12.463183, 10.944726, 16.160143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.622762, 11.311084, 16.177940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288970, -0.079523, -0.954030,
		-0.870252, 0.393463, -0.296392,
		0.398945, 0.915895, 0.044494,
		12.742445, 11.585853, 16.191288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.181732, 11.251729, 15.643006>,  <12.463183, 10.944726, 16.160143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.181732, 11.251729, 15.643006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.514174, 11.451558, 15.740733>,  <12.713639, 11.571456, 15.799369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.514174, 11.451558, 15.740733>,  <12.181732, 11.251729, 15.643006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.514174, 11.451558, 15.740733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255826, 0.046627, -0.965598,
		-0.493779, 0.865016, -0.089051,
		0.831105, 0.499573, 0.244317,
		12.763506, 11.601430, 15.814028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.224595, 11.721074, 15.054297>,  <12.181732, 11.251729, 15.643006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.224595, 11.721074, 15.054297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581128, 11.701496, 15.234577>,  <12.795048, 11.689749, 15.342745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581128, 11.701496, 15.234577>,  <12.224595, 11.721074, 15.054297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581128, 11.701496, 15.234577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437988, 0.349566, -0.828233,
		-0.117010, 0.935632, 0.333018,
		0.891333, -0.048946, 0.450699,
		12.848528, 11.686812, 15.369787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.518540, 12.085850, 14.603481>,  <12.224595, 11.721074, 15.054297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.518540, 12.085850, 14.603481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.826604, 11.935269, 14.809448>,  <13.011442, 11.844921, 14.933028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.826604, 11.935269, 14.809448>,  <12.518540, 12.085850, 14.603481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.826604, 11.935269, 14.809448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615119, 0.224742, -0.755724,
		0.168770, 0.898763, 0.404650,
		0.770159, -0.376452, 0.514917,
		13.057652, 11.822333, 14.963923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.001720, 12.528151, 14.738237>,  <12.518540, 12.085850, 14.603481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.001720, 12.528151, 14.738237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187008, 12.173889, 14.725306>,  <13.298181, 11.961332, 14.717546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187008, 12.173889, 14.725306>,  <13.001720, 12.528151, 14.738237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187008, 12.173889, 14.725306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487621, 0.285160, -0.825173,
		0.740036, 0.366472, 0.563955,
		0.463219, -0.885654, -0.032329,
		13.325974, 11.908193, 14.715607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.554844, 12.652914, 14.483826>,  <13.001720, 12.528151, 14.738237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.554844, 12.652914, 14.483826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595210, 12.259356, 14.424812>,  <13.619430, 12.023221, 14.389404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.595210, 12.259356, 14.424812>,  <13.554844, 12.652914, 14.483826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595210, 12.259356, 14.424812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429560, 0.176846, -0.885553,
		0.897382, 0.025993, 0.440489,
		0.100917, -0.983895, -0.147533,
		13.625485, 11.964187, 14.380552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.340492, 12.513659, 14.294124>,  <13.554844, 12.652914, 14.483826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.340492, 12.513659, 14.294124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151313, 12.187215, 14.161286>,  <14.037805, 11.991348, 14.081584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151313, 12.187215, 14.161286>,  <14.340492, 12.513659, 14.294124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151313, 12.187215, 14.161286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384278, 0.148115, -0.911259,
		0.792874, -0.558595, 0.243562,
		-0.472949, -0.816109, -0.332093,
		14.009428, 11.942382, 14.061659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.570851, 12.390512, 15.095901>,  <14.340492, 12.513659, 14.294124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.570851, 12.390512, 15.095901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.902927, 12.170433, 15.059971>,  <15.102173, 12.038386, 15.038413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.902927, 12.170433, 15.059971>,  <14.570851, 12.390512, 15.095901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.902927, 12.170433, 15.059971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083067, -0.037244, 0.995848,
		-0.551257, -0.834204, 0.014784,
		0.830190, -0.550196, -0.089826,
		15.151984, 12.005374, 15.033023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599955, 11.892105, 15.647964>,  <14.570851, 12.390512, 15.095901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599955, 11.892105, 15.647964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.986930, 11.873173, 15.548509>,  <15.219115, 11.861814, 15.488835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.986930, 11.873173, 15.548509>,  <14.599955, 11.892105, 15.647964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986930, 11.873173, 15.548509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252387, 0.106443, 0.961754,
		-0.019056, -0.993192, 0.114923,
		0.967439, -0.047332, -0.248640,
		15.277162, 11.858974, 15.473916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891026, 11.310295, 15.986037>,  <14.599955, 11.892105, 15.647964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891026, 11.310295, 15.986037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.187634, 11.565548, 15.903157>,  <15.365600, 11.718699, 15.853430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.187634, 11.565548, 15.903157>,  <14.891026, 11.310295, 15.986037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187634, 11.565548, 15.903157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204745, 0.078866, 0.975633,
		0.638924, -0.765876, -0.072174,
		0.741522, 0.638133, -0.207199,
		15.410091, 11.756988, 15.840998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455039, 11.169348, 16.498598>,  <14.891026, 11.310295, 15.986037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455039, 11.169348, 16.498598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.555139, 11.533501, 16.366795>,  <15.615198, 11.751992, 16.287712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.555139, 11.533501, 16.366795>,  <15.455039, 11.169348, 16.498598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.555139, 11.533501, 16.366795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296326, 0.251987, 0.921246,
		0.921719, -0.328184, -0.206711,
		0.250250, 0.910383, -0.329510,
		15.630214, 11.806616, 16.267941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075237, 11.399107, 16.751585>,  <15.455039, 11.169348, 16.498598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075237, 11.399107, 16.751585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893625, 11.750924, 16.694653>,  <15.784657, 11.962015, 16.660492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.893625, 11.750924, 16.694653>,  <16.075237, 11.399107, 16.751585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893625, 11.750924, 16.694653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034519, 0.176991, 0.983607,
		0.890317, 0.441675, -0.110720,
		-0.454031, 0.879544, -0.142332,
		15.757416, 12.014788, 16.651953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321587, 11.893126, 17.231548>,  <16.075237, 11.399107, 16.751585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321587, 11.893126, 17.231548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.002739, 12.107136, 17.119583>,  <15.811431, 12.235542, 17.052404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.002739, 12.107136, 17.119583>,  <16.321587, 11.893126, 17.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002739, 12.107136, 17.119583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110092, 0.327022, 0.938582,
		0.593703, 0.778977, -0.201773,
		-0.797118, 0.535025, -0.279913,
		15.763603, 12.267643, 17.035610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374784, 12.595218, 17.615772>,  <16.321587, 11.893126, 17.231548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374784, 12.595218, 17.615772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986423, 12.543628, 17.535070>,  <15.753405, 12.512673, 17.486649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986423, 12.543628, 17.535070>,  <16.374784, 12.595218, 17.615772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986423, 12.543628, 17.535070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234605, 0.343603, 0.909339,
		-0.047959, 0.930216, -0.363865,
		-0.970907, -0.128976, -0.201754,
		15.695150, 12.504935, 17.474545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154015, 13.194529, 17.820732>,  <16.374784, 12.595218, 17.615772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154015, 13.194529, 17.820732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823318, 12.972109, 17.786530>,  <15.624901, 12.838657, 17.766008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823318, 12.972109, 17.786530>,  <16.154015, 13.194529, 17.820732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.823318, 12.972109, 17.786530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337286, 0.368248, 0.866390,
		-0.450267, 0.745120, -0.491992,
		-0.826739, -0.556049, -0.085509,
		15.575296, 12.805294, 17.760878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571738, 13.609993, 17.970135>,  <16.154015, 13.194529, 17.820732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571738, 13.609993, 17.970135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421147, 13.242934, 18.021025>,  <15.330792, 13.022698, 18.051559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421147, 13.242934, 18.021025>,  <15.571738, 13.609993, 17.970135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421147, 13.242934, 18.021025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303603, 0.251955, 0.918882,
		-0.875265, 0.307312, -0.373456,
		-0.376478, -0.917648, 0.127226,
		15.308204, 12.967640, 18.059193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711350, 13.642776, 18.185240>,  <15.571738, 13.609993, 17.970135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711350, 13.642776, 18.185240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872051, 13.307257, 18.332214>,  <14.968472, 13.105945, 18.420399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872051, 13.307257, 18.332214>,  <14.711350, 13.642776, 18.185240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872051, 13.307257, 18.332214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421502, 0.186830, 0.887373,
		-0.812977, -0.511380, -0.278496,
		0.401753, -0.838800, 0.367436,
		14.992577, 13.055616, 18.442446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.139750, 13.230858, 18.617807>,  <14.711350, 13.642776, 18.185240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.139750, 13.230858, 18.617807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490631, 13.077192, 18.732998>,  <14.701160, 12.984993, 18.802113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490631, 13.077192, 18.732998>,  <14.139750, 13.230858, 18.617807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490631, 13.077192, 18.732998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256258, 0.132598, 0.957470,
		-0.406013, -0.913693, 0.017870,
		0.877203, -0.384166, 0.287978,
		14.753792, 12.961943, 18.819391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.957947, 13.023254, 19.308374>,  <14.139750, 13.230858, 18.617807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.957947, 13.023254, 19.308374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357088, 12.997224, 19.311319>,  <14.596573, 12.981606, 19.313086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357088, 12.997224, 19.311319>,  <13.957947, 13.023254, 19.308374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357088, 12.997224, 19.311319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008275, 0.236775, 0.971529,
		-0.064968, -0.969383, 0.236805,
		0.997853, -0.065078, 0.007361,
		14.656444, 12.977701, 19.313528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.093885, 12.673374, 19.877403>,  <13.957947, 13.023254, 19.308374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.093885, 12.673374, 19.877403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434246, 12.862473, 19.785772>,  <14.638462, 12.975933, 19.730793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.434246, 12.862473, 19.785772>,  <14.093885, 12.673374, 19.877403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434246, 12.862473, 19.785772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205719, 0.101378, 0.973346,
		0.483371, -0.875347, -0.010991,
		0.850901, 0.472748, -0.229079,
		14.689516, 13.004297, 19.717049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.553632, 12.364530, 20.312948>,  <14.093885, 12.673374, 19.877403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.553632, 12.364530, 20.312948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659819, 12.732498, 20.197521>,  <14.723531, 12.953279, 20.128265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659819, 12.732498, 20.197521>,  <14.553632, 12.364530, 20.312948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659819, 12.732498, 20.197521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088257, 0.321237, 0.942877,
		0.960072, -0.224835, 0.166467,
		0.265467, 0.919922, -0.288567,
		14.739459, 13.008474, 20.110950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985209, 12.580271, 20.773262>,  <14.553632, 12.364530, 20.312948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985209, 12.580271, 20.773262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836532, 12.905808, 20.594601>,  <14.747326, 13.101131, 20.487404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836532, 12.905808, 20.594601>,  <14.985209, 12.580271, 20.773262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836532, 12.905808, 20.594601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326996, 0.335519, 0.883460,
		0.868861, 0.474429, 0.141414,
		-0.371692, 0.813845, -0.446656,
		14.725024, 13.149962, 20.460604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223441, 13.198005, 21.175915>,  <14.985209, 12.580271, 20.773262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223441, 13.198005, 21.175915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911736, 13.329249, 20.962339>,  <14.724712, 13.407996, 20.834194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.911736, 13.329249, 20.962339>,  <15.223441, 13.198005, 21.175915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.911736, 13.329249, 20.962339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371651, 0.444053, 0.815287,
		0.504602, 0.833762, -0.224091,
		-0.779264, 0.328112, -0.533938,
		14.677957, 13.427683, 20.802158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206837, 13.910673, 21.309280>,  <15.223441, 13.198005, 21.175915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206837, 13.910673, 21.309280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842508, 13.811209, 21.177479>,  <14.623912, 13.751530, 21.098398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.842508, 13.811209, 21.177479>,  <15.206837, 13.910673, 21.309280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842508, 13.811209, 21.177479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406310, 0.681045, 0.609172,
		0.072930, 0.688727, -0.721343,
		-0.910820, -0.248662, -0.329505,
		14.569263, 13.736610, 21.078627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869364, 14.539323, 21.059891>,  <15.206837, 13.910673, 21.309280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869364, 14.539323, 21.059891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583913, 14.268646, 21.132360>,  <14.412642, 14.106240, 21.175842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583913, 14.268646, 21.132360>,  <14.869364, 14.539323, 21.059891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583913, 14.268646, 21.132360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514289, 0.681689, 0.520391,
		-0.475650, 0.278189, -0.834487,
		-0.713627, -0.676692, 0.181175,
		14.369824, 14.065639, 21.186712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232415, 14.930028, 21.014486>,  <14.869364, 14.539323, 21.059891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232415, 14.930028, 21.014486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129642, 14.590722, 21.199713>,  <14.067978, 14.387138, 21.310848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129642, 14.590722, 21.199713>,  <14.232415, 14.930028, 21.014486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.129642, 14.590722, 21.199713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671669, 0.501250, 0.545536,
		-0.694871, -0.170861, -0.698542,
		-0.256934, -0.848266, 0.463066,
		14.052562, 14.336243, 21.338633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.522491, 14.784877, 20.976059>,  <14.232415, 14.930028, 21.014486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.522491, 14.784877, 20.976059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631552, 14.575123, 21.298717>,  <13.696988, 14.449270, 21.492313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.631552, 14.575123, 21.298717>,  <13.522491, 14.784877, 20.976059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631552, 14.575123, 21.298717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696966, 0.470323, 0.541327,
		-0.663249, -0.709800, -0.237245,
		0.272652, -0.524386, 0.806647,
		13.713347, 14.417807, 21.540712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965693, 14.723173, 21.385120>,  <13.522491, 14.784877, 20.976059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965693, 14.723173, 21.385120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.213795, 14.580147, 21.664385>,  <13.362656, 14.494331, 21.831944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.213795, 14.580147, 21.664385>,  <12.965693, 14.723173, 21.385120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213795, 14.580147, 21.664385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694371, 0.163732, 0.700743,
		-0.364874, -0.919423, -0.146728,
		0.620255, -0.357566, 0.698162,
		13.399871, 14.472877, 21.873833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.528046, 14.228740, 21.835575>,  <12.965693, 14.723173, 21.385120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.528046, 14.228740, 21.835575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.840611, 14.377349, 22.036119>,  <13.028151, 14.466515, 22.156446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.840611, 14.377349, 22.036119>,  <12.528046, 14.228740, 21.835575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.840611, 14.377349, 22.036119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612575, 0.303579, 0.729789,
		0.118929, -0.877389, 0.464805,
		0.781414, 0.371521, 0.501362,
		13.075036, 14.488806, 22.186527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346907, 14.045801, 22.635071>,  <12.528046, 14.228740, 21.835575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346907, 14.045801, 22.635071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.631107, 14.327123, 22.625675>,  <12.801628, 14.495915, 22.620037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.631107, 14.327123, 22.625675>,  <12.346907, 14.045801, 22.635071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.631107, 14.327123, 22.625675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409980, 0.440843, 0.798483,
		0.571930, -0.557694, 0.601560,
		0.710502, 0.703303, -0.023488,
		12.844257, 14.538114, 22.618629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566350, 14.114569, 23.364290>,  <12.346907, 14.045801, 22.635071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566350, 14.114569, 23.364290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672503, 14.463375, 23.199774>,  <12.736194, 14.672659, 23.101065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672503, 14.463375, 23.199774>,  <12.566350, 14.114569, 23.364290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672503, 14.463375, 23.199774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295804, 0.479653, 0.826095,
		0.917645, -0.097568, 0.385237,
		0.265381, 0.872016, -0.411291,
		12.752117, 14.724980, 23.076387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.129020, 14.400937, 23.784723>,  <12.566350, 14.114569, 23.364290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.129020, 14.400937, 23.784723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977923, 14.715142, 23.588650>,  <12.887266, 14.903666, 23.471006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977923, 14.715142, 23.588650>,  <13.129020, 14.400937, 23.784723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.977923, 14.715142, 23.588650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231190, 0.432623, 0.871429,
		0.896584, 0.442500, 0.018184,
		-0.377740, 0.785514, -0.490184,
		12.864601, 14.950796, 23.441595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513896, 14.998300, 24.113117>,  <13.129020, 14.400937, 23.784723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513896, 14.998300, 24.113117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.169172, 15.140493, 23.968388>,  <12.962337, 15.225809, 23.881550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.169172, 15.140493, 23.968388>,  <13.513896, 14.998300, 24.113117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.169172, 15.140493, 23.968388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198499, 0.420076, 0.885513,
		0.466778, 0.834965, -0.291463,
		-0.861810, 0.355483, -0.361822,
		12.910629, 15.247138, 23.859840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.444869, 15.595393, 24.421263>,  <13.513896, 14.998300, 24.113117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.444869, 15.595393, 24.421263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.079431, 15.517545, 24.278454>,  <12.860168, 15.470836, 24.192768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.079431, 15.517545, 24.278454>,  <13.444869, 15.595393, 24.421263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079431, 15.517545, 24.278454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382363, 0.112427, 0.917147,
		-0.138357, 0.974414, -0.177128,
		-0.913595, -0.194621, -0.357025,
		12.805352, 15.459159, 24.171347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.041784, 16.137402, 24.559275>,  <13.444869, 15.595393, 24.421263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.041784, 16.137402, 24.559275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800623, 15.818958, 24.538424>,  <12.655927, 15.627892, 24.525913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800623, 15.818958, 24.538424>,  <13.041784, 16.137402, 24.559275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800623, 15.818958, 24.538424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238150, 0.117226, 0.964128,
		-0.761442, 0.593689, -0.260270,
		-0.602902, -0.796110, -0.052126,
		12.619752, 15.580125, 24.522785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.481914, 16.328575, 24.914780>,  <13.041784, 16.137402, 24.559275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.481914, 16.328575, 24.914780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.444110, 15.930414, 24.921036>,  <12.421428, 15.691518, 24.924789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.444110, 15.930414, 24.921036>,  <12.481914, 16.328575, 24.914780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444110, 15.930414, 24.921036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371226, 0.049813, 0.927206,
		-0.923720, 0.081825, -0.374226,
		-0.094510, -0.995401, 0.015638,
		12.415757, 15.631794, 24.925728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.770692, 16.133038, 25.324219>,  <12.481914, 16.328575, 24.914780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.770692, 16.133038, 25.324219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.980619, 15.792560, 25.321840>,  <12.106576, 15.588273, 25.320414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.980619, 15.792560, 25.321840>,  <11.770692, 16.133038, 25.324219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.980619, 15.792560, 25.321840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152491, -0.100888, 0.983142,
		-0.837444, -0.515064, -0.182747,
		0.524818, -0.851193, -0.005946,
		12.138065, 15.537202, 25.320057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.278333, 15.675692, 25.719587>,  <11.770692, 16.133038, 25.324219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.278333, 15.675692, 25.719587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651691, 15.533184, 25.702402>,  <11.875707, 15.447680, 25.692091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.651691, 15.533184, 25.702402>,  <11.278333, 15.675692, 25.719587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.651691, 15.533184, 25.702402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042108, -0.010154, 0.999061,
		-0.356369, -0.934329, 0.005524,
		0.933396, -0.356268, -0.042961,
		11.931710, 15.426304, 25.689514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287157, 15.058110, 26.107494>,  <11.278333, 15.675692, 25.719587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287157, 15.058110, 26.107494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638046, 15.250128, 26.109964>,  <11.848579, 15.365338, 26.111446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.638046, 15.250128, 26.109964>,  <11.287157, 15.058110, 26.107494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.638046, 15.250128, 26.109964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045383, -0.095721, 0.994373,
		0.477935, -0.872006, -0.105754,
		0.877222, 0.480045, 0.006174,
		11.901213, 15.394141, 26.111816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.507396, 14.747552, 26.609964>,  <11.287157, 15.058110, 26.107494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.507396, 14.747552, 26.609964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.793250, 15.024350, 26.569098>,  <11.964763, 15.190429, 26.544577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.793250, 15.024350, 26.569098>,  <11.507396, 14.747552, 26.609964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.793250, 15.024350, 26.569098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146569, -0.005317, 0.989186,
		0.683969, -0.721883, -0.105224,
		0.714636, 0.691995, -0.102169,
		12.007641, 15.231949, 26.538446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201381, 14.619385, 26.770266>,  <11.507396, 14.747552, 26.609964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201381, 14.619385, 26.770266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.150342, 15.010549, 26.836493>,  <12.119719, 15.245247, 26.876228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.150342, 15.010549, 26.836493>,  <12.201381, 14.619385, 26.770266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150342, 15.010549, 26.836493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131171, -0.148829, 0.980124,
		0.983114, 0.146779, -0.109283,
		-0.127598, 0.977909, 0.165569,
		12.112062, 15.303922, 26.886164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721959, 14.904254, 27.285927>,  <12.201381, 14.619385, 26.770266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721959, 14.904254, 27.285927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374765, 15.100874, 27.314163>,  <12.166450, 15.218846, 27.331104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.374765, 15.100874, 27.314163>,  <12.721959, 14.904254, 27.285927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.374765, 15.100874, 27.314163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045249, -0.219847, 0.974484,
		0.494527, 0.842642, 0.213066,
		-0.867983, 0.491550, 0.070592,
		12.114370, 15.248339, 27.335340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695364, 15.366110, 27.912037>,  <12.721959, 14.904254, 27.285927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695364, 15.366110, 27.912037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314873, 15.307856, 27.803257>,  <12.086578, 15.272903, 27.737989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314873, 15.307856, 27.803257>,  <12.695364, 15.366110, 27.912037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314873, 15.307856, 27.803257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214967, -0.319356, 0.922931,
		-0.221260, 0.936377, 0.272473,
		-0.951227, -0.145635, -0.271951,
		12.029505, 15.264165, 27.721672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.178397, 15.878489, 28.108625>,  <12.695364, 15.366110, 27.912037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.178397, 15.878489, 28.108625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054504, 15.498899, 28.084913>,  <11.980169, 15.271145, 28.070686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.054504, 15.498899, 28.084913>,  <12.178397, 15.878489, 28.108625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.054504, 15.498899, 28.084913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049718, -0.046096, 0.997699,
		-0.949523, 0.311966, -0.032904,
		-0.309731, -0.948974, -0.059280,
		11.961585, 15.214206, 28.067129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.157801, 16.495754, 27.790516>,  <12.178397, 15.878489, 28.108625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.157801, 16.495754, 27.790516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499189, 16.321543, 27.676041>,  <12.704022, 16.217016, 27.607355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499189, 16.321543, 27.676041>,  <12.157801, 16.495754, 27.790516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.499189, 16.321543, 27.676041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361681, 0.890387, -0.276402,
		0.375199, 0.132393, 0.917441,
		0.853471, -0.435526, -0.286188,
		12.755231, 16.190886, 27.590183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486856, 17.121498, 27.897112>,  <12.157801, 16.495754, 27.790516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486856, 17.121498, 27.897112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862208, 17.208231, 28.004761>,  <13.087420, 17.260271, 28.069349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862208, 17.208231, 28.004761>,  <12.486856, 17.121498, 27.897112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862208, 17.208231, 28.004761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338722, -0.731648, -0.591573,
		0.068631, 0.646278, -0.760009,
		0.938380, 0.216832, 0.269123,
		13.143723, 17.273281, 28.085497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.872842, 17.053921, 27.305252>,  <12.486856, 17.121498, 27.897112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.872842, 17.053921, 27.305252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.164999, 17.019287, 27.576260>,  <13.340293, 16.998507, 27.738863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.164999, 17.019287, 27.576260>,  <12.872842, 17.053921, 27.305252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.164999, 17.019287, 27.576260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501357, -0.605687, -0.617887,
		0.463862, 0.790978, -0.398980,
		0.730392, -0.086583, 0.677518,
		13.384117, 16.993313, 27.779514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.586360, 17.136116, 27.018412>,  <12.872842, 17.053921, 27.305252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.586360, 17.136116, 27.018412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.643212, 16.920732, 27.350643>,  <13.677324, 16.791502, 27.549982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.643212, 16.920732, 27.350643>,  <13.586360, 17.136116, 27.018412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.643212, 16.920732, 27.350643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599778, -0.620669, -0.505012,
		0.787442, 0.569941, 0.234739,
		0.142131, -0.538459, 0.830579,
		13.685852, 16.759195, 27.599817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323743, 17.068247, 27.030849>,  <13.586360, 17.136116, 27.018412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323743, 17.068247, 27.030849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215866, 16.789335, 27.296501>,  <14.151140, 16.621988, 27.455893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215866, 16.789335, 27.296501>,  <14.323743, 17.068247, 27.030849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215866, 16.789335, 27.296501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641999, -0.644235, -0.415690,
		0.717707, 0.314261, 0.621399,
		-0.269691, -0.697281, 0.664128,
		14.134958, 16.580151, 27.495739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.958937, 16.845768, 27.386835>,  <14.323743, 17.068247, 27.030849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.958937, 16.845768, 27.386835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694851, 16.546484, 27.413052>,  <14.536399, 16.366913, 27.428782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.694851, 16.546484, 27.413052>,  <14.958937, 16.845768, 27.386835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.694851, 16.546484, 27.413052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609893, -0.584995, -0.534614,
		0.438345, -0.312987, 0.842551,
		-0.660215, -0.748211, 0.065541,
		14.496786, 16.322021, 27.432714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360601, 16.261526, 27.700407>,  <14.958937, 16.845768, 27.386835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360601, 16.261526, 27.700407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.040618, 16.120695, 27.506042>,  <14.848628, 16.036196, 27.389423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.040618, 16.120695, 27.506042>,  <15.360601, 16.261526, 27.700407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040618, 16.120695, 27.506042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590505, -0.605803, -0.533205,
		-0.106636, -0.713474, 0.692520,
		-0.799958, -0.352077, -0.485910,
		14.800631, 16.015072, 27.360270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383740, 15.456806, 27.622112>,  <15.360601, 16.261526, 27.700407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383740, 15.456806, 27.622112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116874, 15.564713, 27.344374>,  <14.956754, 15.629457, 27.177731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116874, 15.564713, 27.344374>,  <15.383740, 15.456806, 27.622112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116874, 15.564713, 27.344374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429233, -0.622594, -0.654321,
		-0.608801, -0.734580, 0.299589,
		-0.667174, 0.269758, -0.694342,
		14.916723, 15.645642, 27.136070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281812, 14.902168, 27.204502>,  <15.383740, 15.456806, 27.622112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281812, 14.902168, 27.204502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118420, 15.186704, 26.975718>,  <15.020385, 15.357425, 26.838448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118420, 15.186704, 26.975718>,  <15.281812, 14.902168, 27.204502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118420, 15.186704, 26.975718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250973, -0.514943, -0.819663,
		-0.877586, -0.478362, 0.031817,
		-0.408480, 0.711339, -0.571962,
		14.995875, 15.400105, 26.804129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947291, 14.480336, 26.658302>,  <15.281812, 14.902168, 27.204502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.947291, 14.480336, 26.658302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.966248, 14.840955, 26.486271>,  <14.977621, 15.057326, 26.383053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.966248, 14.840955, 26.486271>,  <14.947291, 14.480336, 26.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.966248, 14.840955, 26.486271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314462, -0.422135, -0.850244,
		-0.948086, -0.094950, -0.303508,
		0.047391, 0.901547, -0.430078,
		14.980465, 15.111419, 26.357248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.584321, 14.464482, 25.983892>,  <14.947291, 14.480336, 26.658302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.584321, 14.464482, 25.983892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861751, 14.752576, 25.977983>,  <15.028209, 14.925432, 25.974438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861751, 14.752576, 25.977983>,  <14.584321, 14.464482, 25.983892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861751, 14.752576, 25.977983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397299, -0.399540, -0.826149,
		-0.600923, 0.567126, -0.563259,
		0.693575, 0.720233, -0.014774,
		15.069823, 14.968646, 25.973551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487631, 14.716176, 25.299292>,  <14.584321, 14.464482, 25.983892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487631, 14.716176, 25.299292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.837276, 14.842336, 25.447048>,  <15.047064, 14.918032, 25.535702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.837276, 14.842336, 25.447048>,  <14.487631, 14.716176, 25.299292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.837276, 14.842336, 25.447048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398847, -0.032039, -0.916458,
		-0.277214, 0.948418, -0.153801,
		0.874113, 0.315398, 0.369392,
		15.099510, 14.936955, 25.557865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.692730, 15.236949, 24.851803>,  <14.487631, 14.716176, 25.299292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.692730, 15.236949, 24.851803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.024231, 15.126187, 25.046324>,  <15.223132, 15.059731, 25.163036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.024231, 15.126187, 25.046324>,  <14.692730, 15.236949, 24.851803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.024231, 15.126187, 25.046324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507635, 0.006246, -0.861549,
		0.235530, 0.960877, 0.145743,
		0.828753, -0.276905, 0.486304,
		15.272857, 15.043116, 25.192215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198722, 15.710431, 24.658306>,  <14.692730, 15.236949, 24.851803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198722, 15.710431, 24.658306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419628, 15.398966, 24.777426>,  <15.552172, 15.212087, 24.848898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419628, 15.398966, 24.777426>,  <15.198722, 15.710431, 24.658306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419628, 15.398966, 24.777426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641705, 0.169020, -0.748096,
		0.532181, 0.604248, 0.593016,
		0.552267, -0.778664, 0.297799,
		15.585308, 15.165367, 24.866766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826803, 15.959576, 24.609144>,  <15.198722, 15.710431, 24.658306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826803, 15.959576, 24.609144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.846197, 15.560053, 24.611450>,  <15.857834, 15.320339, 24.612833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.846197, 15.560053, 24.611450>,  <15.826803, 15.959576, 24.609144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846197, 15.560053, 24.611450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634620, 0.026349, -0.772375,
		0.771302, 0.041106, 0.635140,
		0.048485, -0.998807, 0.005764,
		15.860743, 15.260410, 24.613180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443548, 15.854193, 24.334490>,  <15.826803, 15.959576, 24.609144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443548, 15.854193, 24.334490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.284822, 15.489000, 24.296528>,  <16.189587, 15.269885, 24.273750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.284822, 15.489000, 24.296528>,  <16.443548, 15.854193, 24.334490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.284822, 15.489000, 24.296528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470021, -0.113295, -0.875354,
		0.788429, -0.391958, 0.474076,
		-0.396812, -0.912980, -0.094904,
		16.165779, 15.215106, 24.268057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.945911, 15.540619, 23.967060>,  <16.443548, 15.854193, 24.334490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.945911, 15.540619, 23.967060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.622177, 15.313421, 23.907251>,  <16.427937, 15.177103, 23.871367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.622177, 15.313421, 23.907251>,  <16.945911, 15.540619, 23.967060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622177, 15.313421, 23.907251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394479, -0.337059, -0.854855,
		0.435155, -0.750849, 0.496857,
		-0.809337, -0.567994, -0.149521,
		16.379375, 15.143023, 23.862394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107035, 14.800760, 23.711109>,  <16.945911, 15.540619, 23.967060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107035, 14.800760, 23.711109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738951, 14.874070, 23.572763>,  <16.518101, 14.918056, 23.489756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.738951, 14.874070, 23.572763>,  <17.107035, 14.800760, 23.711109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.738951, 14.874070, 23.572763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249701, -0.405602, -0.879282,
		-0.301433, -0.895488, 0.327476,
		-0.920211, 0.183273, -0.345866,
		16.462887, 14.929052, 23.469004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009872, 14.196650, 23.293612>,  <17.107035, 14.800760, 23.711109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009872, 14.196650, 23.293612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735624, 14.468355, 23.188904>,  <16.571075, 14.631379, 23.126080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735624, 14.468355, 23.188904>,  <17.009872, 14.196650, 23.293612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735624, 14.468355, 23.188904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117558, -0.251557, -0.960677,
		-0.718404, -0.689433, 0.092620,
		-0.685621, 0.679266, -0.261768,
		16.529938, 14.672134, 23.110374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549500, 13.862626, 22.772608>,  <17.009872, 14.196650, 23.293612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.549500, 13.862626, 22.772608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518471, 14.257772, 22.718792>,  <16.499853, 14.494861, 22.686502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518471, 14.257772, 22.718792>,  <16.549500, 13.862626, 22.772608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518471, 14.257772, 22.718792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115556, -0.142947, -0.982961,
		-0.990267, -0.060705, 0.125243,
		-0.077574, 0.987867, -0.134540,
		16.495199, 14.554132, 22.678431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980623, 13.970980, 22.411472>,  <16.549500, 13.862626, 22.772608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980623, 13.970980, 22.411472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.176439, 14.309773, 22.328558>,  <16.293928, 14.513050, 22.278809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.176439, 14.309773, 22.328558>,  <15.980623, 13.970980, 22.411472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176439, 14.309773, 22.328558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065223, -0.201486, -0.977317,
		-0.869539, 0.491955, -0.043392,
		0.489539, 0.846985, -0.207287,
		16.323301, 14.563869, 22.266373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661935, 14.194397, 21.848833>,  <15.980623, 13.970980, 22.411472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661935, 14.194397, 21.848833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.008087, 14.393255, 21.823660>,  <16.215778, 14.512570, 21.808556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.008087, 14.393255, 21.823660>,  <15.661935, 14.194397, 21.848833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.008087, 14.393255, 21.823660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032913, -0.068923, -0.997079,
		-0.500032, 0.864925, -0.043282,
		0.865382, 0.497146, -0.062931,
		16.267702, 14.542399, 21.804781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583351, 14.728302, 21.292795>,  <15.661935, 14.194397, 21.848833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583351, 14.728302, 21.292795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976398, 14.669197, 21.337749>,  <16.212225, 14.633734, 21.364721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976398, 14.669197, 21.337749>,  <15.583351, 14.728302, 21.292795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976398, 14.669197, 21.337749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090592, -0.146746, -0.985017,
		0.162041, 0.978076, -0.130809,
		0.982617, -0.147763, 0.112385,
		16.271183, 14.624868, 21.371466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846740, 15.145761, 20.751036>,  <15.583351, 14.728302, 21.292795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846740, 15.145761, 20.751036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122126, 14.876185, 20.858236>,  <16.287357, 14.714440, 20.922556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.122126, 14.876185, 20.858236>,  <15.846740, 15.145761, 20.751036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.122126, 14.876185, 20.858236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210774, -0.167651, -0.963051,
		0.693967, 0.719515, 0.026627,
		0.688465, -0.673937, 0.267999,
		16.328665, 14.674005, 20.938637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272791, 15.195428, 20.284851>,  <15.846740, 15.145761, 20.751036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272791, 15.195428, 20.284851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387079, 14.840238, 20.428999>,  <16.455652, 14.627124, 20.515488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.387079, 14.840238, 20.428999>,  <16.272791, 15.195428, 20.284851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.387079, 14.840238, 20.428999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217242, -0.306238, -0.926835,
		0.933365, 0.343102, 0.105407,
		0.285719, -0.887975, 0.360368,
		16.472795, 14.573845, 20.537109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.011747, 15.059508, 20.017696>,  <16.272791, 15.195428, 20.284851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.011747, 15.059508, 20.017696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860203, 14.710485, 20.141052>,  <16.769276, 14.501070, 20.215067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.860203, 14.710485, 20.141052>,  <17.011747, 15.059508, 20.017696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860203, 14.710485, 20.141052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406825, -0.456334, -0.791361,
		0.831239, -0.174354, 0.527866,
		-0.378860, -0.872559, 0.308391,
		16.746544, 14.448717, 20.233570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546469, 14.689813, 19.895575>,  <17.011747, 15.059508, 20.017696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546469, 14.689813, 19.895575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253126, 14.419283, 19.923199>,  <17.077120, 14.256965, 19.939774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253126, 14.419283, 19.923199>,  <17.546469, 14.689813, 19.895575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253126, 14.419283, 19.923199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435061, -0.544941, -0.716771,
		0.522405, -0.495604, 0.693880,
		-0.733358, -0.676325, 0.069062,
		17.033119, 14.216385, 19.943918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895218, 14.043482, 19.974779>,  <17.546469, 14.689813, 19.895575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.895218, 14.043482, 19.974779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523663, 14.015017, 19.829393>,  <17.300730, 13.997937, 19.742163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.523663, 14.015017, 19.829393>,  <17.895218, 14.043482, 19.974779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523663, 14.015017, 19.829393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342910, -0.536044, -0.771407,
		-0.139935, -0.841185, 0.522327,
		-0.928887, -0.071164, -0.363462,
		17.244997, 13.993668, 19.720354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845976, 13.358688, 19.802799>,  <17.895218, 14.043482, 19.974779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845976, 13.358688, 19.802799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547737, 13.532152, 19.600405>,  <17.368793, 13.636230, 19.478968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547737, 13.532152, 19.600405>,  <17.845976, 13.358688, 19.802799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547737, 13.532152, 19.600405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259181, -0.510801, -0.819700,
		-0.613929, -0.742309, 0.268456,
		-0.745598, 0.433659, -0.505988,
		17.324059, 13.662251, 19.448608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698086, 12.808069, 19.404667>,  <17.845976, 13.358688, 19.802799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698086, 12.808069, 19.404667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.555378, 13.147178, 19.247696>,  <17.469753, 13.350642, 19.153513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.555378, 13.147178, 19.247696>,  <17.698086, 12.808069, 19.404667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555378, 13.147178, 19.247696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331123, -0.278042, -0.901693,
		-0.873540, -0.451639, -0.181519,
		-0.356770, 0.847770, -0.392429,
		17.448347, 13.401509, 19.129967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515921, 12.709255, 18.723560>,  <17.698086, 12.808069, 19.404667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515921, 12.709255, 18.723560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547802, 13.107168, 18.698088>,  <17.566931, 13.345916, 18.682804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.547802, 13.107168, 18.698088>,  <17.515921, 12.709255, 18.723560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547802, 13.107168, 18.698088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362967, -0.088462, -0.927593,
		-0.928387, 0.050816, -0.368124,
		0.079702, 0.994782, -0.063682,
		17.571712, 13.405603, 18.678984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130663, 12.768403, 18.103884>,  <17.515921, 12.709255, 18.723560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130663, 12.768403, 18.103884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361280, 13.081630, 18.197182>,  <17.499651, 13.269566, 18.253160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.361280, 13.081630, 18.197182>,  <17.130663, 12.768403, 18.103884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.361280, 13.081630, 18.197182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400278, -0.021829, -0.916134,
		-0.712303, 0.621553, -0.326030,
		0.576543, 0.783068, 0.233245,
		17.534243, 13.316550, 18.267155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105814, 13.068397, 17.460030>,  <17.130663, 12.768403, 18.103884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105814, 13.068397, 17.460030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411535, 13.217433, 17.670559>,  <17.594969, 13.306855, 17.796877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411535, 13.217433, 17.670559>,  <17.105814, 13.068397, 17.460030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.411535, 13.217433, 17.670559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596440, -0.098160, -0.796633,
		-0.245154, 0.922790, -0.297252,
		0.764303, 0.372591, 0.526324,
		17.640825, 13.329210, 17.828457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417959, 13.638576, 17.035286>,  <17.105814, 13.068397, 17.460030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417959, 13.638576, 17.035286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679218, 13.504831, 17.307051>,  <17.835974, 13.424584, 17.470110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679218, 13.504831, 17.307051>,  <17.417959, 13.638576, 17.035286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679218, 13.504831, 17.307051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736268, 0.070760, -0.672981,
		0.176944, 0.939785, 0.292396,
		0.653147, -0.334361, 0.679413,
		17.875162, 13.404523, 17.510874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.022148, 14.051373, 16.938122>,  <17.417959, 13.638576, 17.035286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.022148, 14.051373, 16.938122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155247, 13.722914, 17.123592>,  <18.235106, 13.525839, 17.234875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155247, 13.722914, 17.123592>,  <18.022148, 14.051373, 16.938122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155247, 13.722914, 17.123592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747313, -0.070276, -0.660745,
		0.575155, 0.566373, 0.590270,
		0.332747, -0.821147, 0.463678,
		18.255072, 13.476569, 17.262695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.701397, 14.133897, 17.019526>,  <18.022148, 14.051373, 16.938122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.701397, 14.133897, 17.019526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.672703, 13.736630, 17.056351>,  <18.655487, 13.498271, 17.078445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.672703, 13.736630, 17.056351>,  <18.701397, 14.133897, 17.019526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672703, 13.736630, 17.056351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816649, -0.111475, -0.566267,
		0.572660, 0.034561, 0.819064,
		-0.071734, -0.993166, 0.092062,
		18.651182, 13.438681, 17.083969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396807, 13.887121, 17.132523>,  <18.701397, 14.133897, 17.019526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396807, 13.887121, 17.132523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206156, 13.557829, 17.009157>,  <19.091764, 13.360253, 16.935139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.206156, 13.557829, 17.009157>,  <19.396807, 13.887121, 17.132523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206156, 13.557829, 17.009157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659336, -0.102709, -0.744800,
		0.581465, -0.558339, 0.591740,
		-0.476628, -0.823231, -0.308411,
		19.063168, 13.310860, 16.916634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832090, 13.458132, 17.093542>,  <19.396807, 13.887121, 17.132523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832090, 13.458132, 17.093542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560116, 13.308750, 16.841124>,  <19.396931, 13.219121, 16.689672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560116, 13.308750, 16.841124>,  <19.832090, 13.458132, 17.093542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560116, 13.308750, 16.841124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678230, 0.006831, -0.734818,
		0.278731, -0.927624, 0.248643,
		-0.679937, -0.373453, -0.631046,
		19.356134, 13.196714, 16.651810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150190, 13.011443, 16.693031>,  <19.832090, 13.458132, 17.093542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150190, 13.011443, 16.693031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.834473, 13.103786, 16.465445>,  <19.645042, 13.159191, 16.328894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.834473, 13.103786, 16.465445>,  <20.150190, 13.011443, 16.693031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834473, 13.103786, 16.465445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554446, -0.130181, -0.821975,
		-0.263827, -0.964239, -0.025247,
		-0.789294, 0.230857, -0.568964,
		19.597685, 13.173042, 16.294756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320732, 12.565015, 16.083494>,  <20.150190, 13.011443, 16.693031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320732, 12.565015, 16.083494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.062597, 12.840282, 15.950852>,  <19.907717, 13.005443, 15.871267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.062597, 12.840282, 15.950852>,  <20.320732, 12.565015, 16.083494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.062597, 12.840282, 15.950852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417294, -0.046020, -0.907605,
		-0.639846, -0.724090, -0.257470,
		-0.645339, 0.688168, -0.331605,
		19.868996, 13.046733, 15.851371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.202188, 12.311927, 15.326158>,  <20.320732, 12.565015, 16.083494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.202188, 12.311927, 15.326158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111847, 12.700640, 15.353378>,  <20.057642, 12.933867, 15.369711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.111847, 12.700640, 15.353378>,  <20.202188, 12.311927, 15.326158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111847, 12.700640, 15.353378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519678, 0.179277, -0.835341,
		-0.823969, -0.153299, -0.545503,
		-0.225854, 0.971781, 0.068053,
		20.044090, 12.992174, 15.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996313, 12.436959, 14.642512>,  <20.202188, 12.311927, 15.326158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996313, 12.436959, 14.642512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.116423, 12.757129, 14.850035>,  <20.188488, 12.949230, 14.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.116423, 12.757129, 14.850035>,  <19.996313, 12.436959, 14.642512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116423, 12.757129, 14.850035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533272, 0.310091, -0.787061,
		-0.790859, 0.512996, -0.333732,
		0.300272, 0.800424, 0.518805,
		20.206505, 12.997256, 15.005676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.895935, 13.074129, 14.326262>,  <19.996313, 12.436959, 14.642512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.895935, 13.074129, 14.326262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.218891, 13.181205, 14.536580>,  <20.412664, 13.245450, 14.662771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.218891, 13.181205, 14.536580>,  <19.895935, 13.074129, 14.326262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218891, 13.181205, 14.536580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456544, 0.281057, -0.844141,
		-0.373746, 0.921602, 0.104712,
		0.807392, 0.267689, 0.525796,
		20.461109, 13.261512, 14.694319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.513054, 13.216856, 14.051228>,  <19.895935, 13.074129, 14.326262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.513054, 13.216856, 14.051228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657612, 13.458726, 13.767323>,  <20.744347, 13.603848, 13.596980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657612, 13.458726, 13.767323>,  <20.513054, 13.216856, 14.051228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657612, 13.458726, 13.767323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152721, 0.712543, 0.684806,
		0.919820, -0.355883, 0.165164,
		0.361397, 0.604674, -0.709762,
		20.766031, 13.640128, 13.554394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.309736, 13.535246, 14.207451>,  <20.513054, 13.216856, 14.051228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.309736, 13.535246, 14.207451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059032, 13.764625, 13.996421>,  <20.908611, 13.902251, 13.869803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059032, 13.764625, 13.996421>,  <21.309736, 13.535246, 14.207451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059032, 13.764625, 13.996421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122222, 0.741027, 0.660258,
		0.769569, 0.349340, -0.534532,
		-0.626758, 0.573446, -0.527574,
		20.871006, 13.936659, 13.838149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.526655, 14.132130, 14.111082>,  <21.309736, 13.535246, 14.207451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.526655, 14.132130, 14.111082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137278, 14.205552, 14.056366>,  <20.903650, 14.249606, 14.023536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137278, 14.205552, 14.056366>,  <21.526655, 14.132130, 14.111082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137278, 14.205552, 14.056366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074198, 0.818277, 0.570015,
		0.216563, 0.544728, -0.810167,
		-0.973445, 0.183557, -0.136791,
		20.845243, 14.260619, 14.015328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449436, 14.830722, 13.880714>,  <21.526655, 14.132130, 14.111082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449436, 14.830722, 13.880714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.123587, 14.717546, 14.083232>,  <20.928076, 14.649641, 14.204742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.123587, 14.717546, 14.083232>,  <21.449436, 14.830722, 13.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123587, 14.717546, 14.083232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186363, 0.698950, 0.690462,
		-0.549231, 0.656821, -0.516653,
		-0.814625, -0.282938, 0.506293,
		20.879200, 14.632665, 14.235120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660070, 14.946152, 13.049245>,  <21.449436, 14.830722, 13.880714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660070, 14.946152, 13.049245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826370, 14.776017, 12.727688>,  <21.926149, 14.673937, 12.534754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826370, 14.776017, 12.727688>,  <21.660070, 14.946152, 13.049245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826370, 14.776017, 12.727688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385719, 0.718012, -0.579378,
		0.823635, 0.550952, 0.134453,
		0.415748, -0.425335, -0.803893,
		21.951096, 14.648417, 12.486520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.771656, 15.522443, 12.626109>,  <21.660070, 14.946152, 13.049245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.771656, 15.522443, 12.626109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783123, 15.218002, 12.366909>,  <21.790003, 15.035338, 12.211390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783123, 15.218002, 12.366909>,  <21.771656, 15.522443, 12.626109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783123, 15.218002, 12.366909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335322, 0.603379, -0.723528,
		0.941667, 0.238032, -0.237916,
		0.028669, -0.761101, -0.647999,
		21.791723, 14.989672, 12.172509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101971, 15.683536, 12.098906>,  <21.771656, 15.522443, 12.626109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101971, 15.683536, 12.098906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862846, 15.389803, 11.970294>,  <21.719372, 15.213563, 11.893127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.862846, 15.389803, 11.970294>,  <22.101971, 15.683536, 12.098906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.862846, 15.389803, 11.970294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342925, 0.596797, -0.725422,
		0.724587, -0.323404, -0.608591,
		-0.597809, -0.734332, -0.321528,
		21.683504, 15.169503, 11.873836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087061, 15.764339, 11.291456>,  <22.101971, 15.683536, 12.098906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087061, 15.764339, 11.291456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776453, 15.531872, 11.388831>,  <21.590088, 15.392391, 11.447256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.776453, 15.531872, 11.388831>,  <22.087061, 15.764339, 11.291456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.776453, 15.531872, 11.388831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539752, 0.414198, -0.732876,
		0.325091, -0.700489, -0.635319,
		-0.776520, -0.581167, 0.243439,
		21.543497, 15.357521, 11.461863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.910320, 15.491806, 10.732690>,  <22.087061, 15.764339, 11.291456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.910320, 15.491806, 10.732690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574465, 15.436071, 10.942677>,  <21.372952, 15.402631, 11.068668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574465, 15.436071, 10.942677>,  <21.910320, 15.491806, 10.732690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574465, 15.436071, 10.942677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532954, 0.397702, -0.746855,
		-0.104716, -0.906873, -0.408187,
		-0.839640, -0.139337, 0.524967,
		21.322573, 15.394271, 11.100166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.431292, 15.134459, 10.309428>,  <21.910320, 15.491806, 10.732690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.431292, 15.134459, 10.309428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.185671, 15.297394, 10.579841>,  <21.038298, 15.395155, 10.742088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.185671, 15.297394, 10.579841>,  <21.431292, 15.134459, 10.309428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185671, 15.297394, 10.579841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435573, 0.539392, -0.720647,
		-0.658192, -0.736975, -0.153789,
		-0.614051, 0.407338, 0.676030,
		21.001455, 15.419595, 10.782650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834953, 15.139012, 9.936928>,  <21.431292, 15.134459, 10.309428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834953, 15.139012, 9.936928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.759802, 15.400752, 10.229920>,  <20.714710, 15.557796, 10.405716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.759802, 15.400752, 10.229920>,  <20.834953, 15.139012, 9.936928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759802, 15.400752, 10.229920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416405, 0.622358, -0.662780,
		-0.889555, -0.429531, 0.155547,
		-0.187879, 0.654350, 0.732481,
		20.703438, 15.597057, 10.449664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089643, 15.391297, 9.765669>,  <20.834953, 15.139012, 9.936928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089643, 15.391297, 9.765669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276758, 15.662188, 9.992840>,  <20.389027, 15.824722, 10.129142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.276758, 15.662188, 9.992840>,  <20.089643, 15.391297, 9.765669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.276758, 15.662188, 9.992840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211413, 0.709649, -0.672088,
		-0.858185, 0.194326, 0.475139,
		0.467786, 0.677227, 0.567927,
		20.417093, 15.865355, 10.163218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610243, 15.940276, 9.728441>,  <20.089643, 15.391297, 9.765669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610243, 15.940276, 9.728441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959330, 16.083872, 9.860801>,  <20.168781, 16.170029, 9.940216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959330, 16.083872, 9.860801>,  <19.610243, 15.940276, 9.728441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959330, 16.083872, 9.860801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153909, 0.845484, -0.511340,
		-0.463336, 0.395326, 0.793119,
		0.872715, 0.358990, 0.330899,
		20.221144, 16.191568, 9.960071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433268, 16.603748, 9.919320>,  <19.610243, 15.940276, 9.728441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433268, 16.603748, 9.919320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.822388, 16.605062, 9.826672>,  <20.055861, 16.605850, 9.771083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.822388, 16.605062, 9.826672>,  <19.433268, 16.603748, 9.919320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822388, 16.605062, 9.826672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180733, 0.636203, -0.750054,
		0.144896, 0.771515, 0.619492,
		0.972800, 0.003283, -0.231621,
		20.114227, 16.606047, 9.757185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515783, 17.219820, 9.814178>,  <19.433268, 16.603748, 9.919320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515783, 17.219820, 9.814178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829464, 17.049765, 9.633387>,  <20.017673, 16.947731, 9.524912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829464, 17.049765, 9.633387>,  <19.515783, 17.219820, 9.814178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829464, 17.049765, 9.633387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097388, 0.635048, -0.766309,
		0.612815, 0.644959, 0.456603,
		0.784202, -0.425138, -0.451978,
		20.064724, 16.922224, 9.497793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834656, 17.715155, 9.531082>,  <19.515783, 17.219820, 9.814178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834656, 17.715155, 9.531082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.016977, 17.414764, 9.339968>,  <20.126369, 17.234529, 9.225299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.016977, 17.414764, 9.339968>,  <19.834656, 17.715155, 9.531082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016977, 17.414764, 9.339968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122557, 0.584628, -0.801991,
		0.881603, 0.306993, 0.358512,
		0.455802, -0.750976, -0.477786,
		20.153717, 17.189472, 9.196632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371920, 17.980412, 9.205314>,  <19.834656, 17.715155, 9.531082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371920, 17.980412, 9.205314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.338856, 17.645409, 8.989259>,  <20.319017, 17.444407, 8.859626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.338856, 17.645409, 8.989259>,  <20.371920, 17.980412, 9.205314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338856, 17.645409, 8.989259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245610, 0.508154, -0.825503,
		0.965838, -0.200900, 0.163696,
		-0.082661, -0.837507, -0.540137,
		20.314058, 17.394156, 8.827218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828175, 18.070759, 8.762182>,  <20.371920, 17.980412, 9.205314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828175, 18.070759, 8.762182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595694, 17.794262, 8.590420>,  <20.456205, 17.628365, 8.487362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.595694, 17.794262, 8.590420>,  <20.828175, 18.070759, 8.762182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.595694, 17.794262, 8.590420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307172, 0.302288, -0.902368,
		0.753557, -0.656361, 0.036639,
		-0.581203, -0.691240, -0.429407,
		20.421333, 17.586889, 8.461597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210617, 17.858562, 8.296421>,  <20.828175, 18.070759, 8.762182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210617, 17.858562, 8.296421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849377, 17.753845, 8.160262>,  <20.632631, 17.691015, 8.078567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.849377, 17.753845, 8.160262>,  <21.210617, 17.858562, 8.296421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849377, 17.753845, 8.160262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147561, 0.555228, -0.818503,
		0.403276, -0.789421, -0.462798,
		-0.903103, -0.261792, -0.340398,
		20.578445, 17.675308, 8.058143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.296679, 17.625753, 7.619531>,  <21.210617, 17.858562, 8.296421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.296679, 17.625753, 7.619531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.908152, 17.715868, 7.649953>,  <20.675035, 17.769938, 7.668206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.908152, 17.715868, 7.649953>,  <21.296679, 17.625753, 7.619531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.908152, 17.715868, 7.649953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080028, 0.610938, -0.787623,
		-0.223906, -0.758947, -0.611445,
		-0.971320, 0.225287, 0.076056,
		20.616756, 17.783455, 7.672770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.965599, 17.367863, 6.915015>,  <21.296679, 17.625753, 7.619531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.965599, 17.367863, 6.915015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.723352, 17.648251, 7.065679>,  <20.578005, 17.816483, 7.156077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.723352, 17.648251, 7.065679>,  <20.965599, 17.367863, 6.915015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.723352, 17.648251, 7.065679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004524, 0.470293, -0.882499,
		-0.795746, -0.536157, -0.281645,
		-0.605614, 0.700971, 0.376659,
		20.541668, 17.858541, 7.178676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345150, 17.422981, 6.475858>,  <20.965599, 17.367863, 6.915015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345150, 17.422981, 6.475858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372875, 17.761822, 6.686616>,  <20.389511, 17.965126, 6.813071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.372875, 17.761822, 6.686616>,  <20.345150, 17.422981, 6.475858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372875, 17.761822, 6.686616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020599, 0.529268, -0.848204,
		-0.997382, 0.047940, 0.054136,
		0.069315, 0.847099, 0.526895,
		20.393669, 18.015951, 6.844685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784321, 17.833687, 6.296023>,  <20.345150, 17.422981, 6.475858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784321, 17.833687, 6.296023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.082098, 18.065744, 6.428226>,  <20.260765, 18.204979, 6.507547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.082098, 18.065744, 6.428226>,  <19.784321, 17.833687, 6.296023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.082098, 18.065744, 6.428226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082415, 0.571060, -0.816761,
		-0.662580, 0.580793, 0.472934,
		0.744443, 0.580146, 0.330507,
		20.305431, 18.239788, 6.527378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.729187, 18.325142, 5.846128>,  <19.784321, 17.833687, 6.296023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.729187, 18.325142, 5.846128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.070578, 18.414040, 6.034675>,  <20.275412, 18.467379, 6.147802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.070578, 18.414040, 6.034675>,  <19.729187, 18.325142, 5.846128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070578, 18.414040, 6.034675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244498, 0.628011, -0.738799,
		-0.460215, 0.745795, 0.481654,
		0.853477, 0.222243, 0.471365,
		20.326620, 18.480713, 6.176084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713001, 19.028879, 5.964494>,  <19.729187, 18.325142, 5.846128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713001, 19.028879, 5.964494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.096979, 18.916805, 5.964069>,  <20.327366, 18.849560, 5.963815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.096979, 18.916805, 5.964069>,  <19.713001, 19.028879, 5.964494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.096979, 18.916805, 5.964069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180806, 0.622342, -0.761577,
		0.214044, 0.730880, 0.648074,
		0.959945, -0.280187, -0.001061,
		20.384962, 18.832748, 5.963751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077177, 19.626646, 6.081441>,  <19.713001, 19.028879, 5.964494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077177, 19.626646, 6.081441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340961, 19.365324, 5.932684>,  <20.499231, 19.208530, 5.843430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340961, 19.365324, 5.932684>,  <20.077177, 19.626646, 6.081441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340961, 19.365324, 5.932684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245324, 0.654656, -0.715012,
		0.710582, 0.380289, 0.591992,
		0.659462, -0.653304, -0.371893,
		20.538799, 19.169333, 5.821116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654432, 20.058256, 5.878731>,  <20.077177, 19.626646, 6.081441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654432, 20.058256, 5.878731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.724197, 19.713017, 5.689147>,  <20.766056, 19.505873, 5.575396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.724197, 19.713017, 5.689147>,  <20.654432, 20.058256, 5.878731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.724197, 19.713017, 5.689147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538268, 0.486627, -0.688086,
		0.824528, -0.135106, 0.549454,
		0.174415, -0.863100, -0.473961,
		20.776522, 19.454086, 5.546958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378365, 20.026901, 5.776585>,  <20.654432, 20.058256, 5.878731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378365, 20.026901, 5.776585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183790, 19.806717, 5.505181>,  <21.067045, 19.674606, 5.342340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.183790, 19.806717, 5.505181>,  <21.378365, 20.026901, 5.776585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183790, 19.806717, 5.505181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455625, 0.502810, -0.734567,
		0.745511, -0.666465, 0.006220,
		-0.486435, -0.550461, -0.678508,
		21.037859, 19.641579, 5.301629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766174, 19.576500, 5.266995>,  <21.378365, 20.026901, 5.776585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766174, 19.576500, 5.266995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471359, 19.777292, 5.085979>,  <21.294470, 19.897768, 4.977368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471359, 19.777292, 5.085979>,  <21.766174, 19.576500, 5.266995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471359, 19.777292, 5.085979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647509, 0.332586, -0.685652,
		-0.193673, -0.798375, -0.570165,
		-0.737036, 0.501979, -0.452542,
		21.250248, 19.927887, 4.950216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437532, 19.604679, 5.121050>,  <21.766174, 19.576500, 5.266995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437532, 19.604679, 5.121050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745262, 19.736341, 4.902035>,  <22.929899, 19.815338, 4.770626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.745262, 19.736341, 4.902035>,  <22.437532, 19.604679, 5.121050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.745262, 19.736341, 4.902035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390724, 0.435658, 0.810887,
		0.505450, -0.837769, 0.206551,
		0.769321, 0.329158, -0.547539,
		22.976059, 19.835089, 4.737773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.044586, 19.302889, 5.399660>,  <22.437532, 19.604679, 5.121050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.044586, 19.302889, 5.399660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.128647, 19.653893, 5.227237>,  <23.179083, 19.864494, 5.123784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.128647, 19.653893, 5.227237>,  <23.044586, 19.302889, 5.399660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.128647, 19.653893, 5.227237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269229, 0.371913, 0.888367,
		0.939868, -0.302746, -0.158093,
		0.210153, 0.877511, -0.431057,
		23.191692, 19.917147, 5.097920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712084, 19.460608, 5.537405>,  <23.044586, 19.302889, 5.399660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712084, 19.460608, 5.537405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.482082, 19.779837, 5.465352>,  <23.344082, 19.971375, 5.422120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.482082, 19.779837, 5.465352>,  <23.712084, 19.460608, 5.537405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.482082, 19.779837, 5.465352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203573, 0.352810, 0.913281,
		0.792418, 0.488472, -0.365334,
		-0.575006, 0.798073, -0.180133,
		23.309580, 20.019258, 5.411312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.553537, 18.687838, 5.512709>,  <23.712084, 19.460608, 5.537405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.553537, 18.687838, 5.512709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.222076, 18.494574, 5.625772>,  <23.023201, 18.378616, 5.693609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.222076, 18.494574, 5.625772>,  <23.553537, 18.687838, 5.512709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.222076, 18.494574, 5.625772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373611, -0.101363, 0.922030,
		-0.416836, 0.869646, 0.264508,
		-0.828651, -0.483158, 0.282657,
		22.973480, 18.349627, 5.710569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.393145, 18.923481, 6.196124>,  <23.553537, 18.687838, 5.512709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.393145, 18.923481, 6.196124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.244055, 18.558157, 6.130469>,  <23.154600, 18.338963, 6.091076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.244055, 18.558157, 6.130469>,  <23.393145, 18.923481, 6.196124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.244055, 18.558157, 6.130469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327744, -0.295052, 0.897512,
		-0.868135, 0.280732, 0.409306,
		-0.372727, -0.913309, -0.164137,
		23.132236, 18.284164, 6.081228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825911, 18.844139, 6.592167>,  <23.393145, 18.923481, 6.196124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825911, 18.844139, 6.592167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036072, 18.511089, 6.522096>,  <23.162169, 18.311258, 6.480053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.036072, 18.511089, 6.522096>,  <22.825911, 18.844139, 6.592167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.036072, 18.511089, 6.522096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073542, -0.160676, 0.984264,
		-0.847670, -0.530017, -0.023187,
		0.525402, -0.832626, -0.175179,
		23.193693, 18.261301, 6.469542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.547462, 18.116686, 6.809799>,  <22.825911, 18.844139, 6.592167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.547462, 18.116686, 6.809799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.941973, 18.097107, 6.872874>,  <23.178679, 18.085360, 6.910719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.941973, 18.097107, 6.872874>,  <22.547462, 18.116686, 6.809799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.941973, 18.097107, 6.872874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165019, -0.324035, 0.931542,
		0.005499, -0.944778, -0.327665,
		0.986275, -0.048949, 0.157688,
		23.237856, 18.082422, 6.920181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.661467, 17.485065, 7.201744>,  <22.547462, 18.116686, 6.809799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.661467, 17.485065, 7.201744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.972916, 17.724239, 7.277873>,  <23.159784, 17.867743, 7.323550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.972916, 17.724239, 7.277873>,  <22.661467, 17.485065, 7.201744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.972916, 17.724239, 7.277873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055844, -0.368132, 0.928095,
		0.625003, -0.712007, -0.320027,
		0.778623, 0.597933, 0.190322,
		23.206503, 17.903620, 7.334970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115183, 17.107992, 7.654867>,  <22.661467, 17.485065, 7.201744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115183, 17.107992, 7.654867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251467, 17.479940, 7.710374>,  <23.333237, 17.703110, 7.743678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251467, 17.479940, 7.710374>,  <23.115183, 17.107992, 7.654867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.251467, 17.479940, 7.710374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103909, -0.183938, 0.977430,
		0.934408, -0.318602, -0.159292,
		0.340711, 0.929871, 0.138767,
		23.353680, 17.758902, 7.752004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.739471, 17.071484, 8.042286>,  <23.115183, 17.107992, 7.654867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.739471, 17.071484, 8.042286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.599901, 17.437187, 8.124630>,  <23.516159, 17.656610, 8.174037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.599901, 17.437187, 8.124630>,  <23.739471, 17.071484, 8.042286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.599901, 17.437187, 8.124630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138758, -0.166845, 0.976171,
		0.926821, 0.369175, -0.068645,
		-0.348925, 0.914261, 0.205861,
		23.495224, 17.711466, 8.186388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179588, 17.292524, 8.556301>,  <23.739471, 17.071484, 8.042286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179588, 17.292524, 8.556301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.848370, 17.514919, 8.585193>,  <23.649639, 17.648357, 8.602528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.848370, 17.514919, 8.585193>,  <24.179588, 17.292524, 8.556301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.848370, 17.514919, 8.585193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011920, -0.111340, 0.993711,
		0.560534, 0.823699, 0.085567,
		-0.828046, 0.555989, 0.072229,
		23.599957, 17.681715, 8.606861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421389, 17.823112, 8.922561>,  <24.179588, 17.292524, 8.556301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421389, 17.823112, 8.922561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026188, 17.777340, 8.964052>,  <23.789068, 17.749876, 8.988947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026188, 17.777340, 8.964052>,  <24.421389, 17.823112, 8.922561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026188, 17.777340, 8.964052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117329, -0.119338, 0.985897,
		-0.100438, 0.986237, 0.131332,
		-0.988001, -0.114430, 0.103728,
		23.729788, 17.743011, 8.995171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328270, 18.016550, 9.625297>,  <24.421389, 17.823112, 8.922561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328270, 18.016550, 9.625297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988934, 17.834970, 9.516301>,  <23.785332, 17.726023, 9.450904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.988934, 17.834970, 9.516301>,  <24.328270, 18.016550, 9.625297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.988934, 17.834970, 9.516301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154150, -0.280593, 0.947367,
		-0.506515, 0.845693, 0.168062,
		-0.848339, -0.453949, -0.272489,
		23.734432, 17.698786, 9.434554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.851839, 18.262831, 10.051714>,  <24.328270, 18.016550, 9.625297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.851839, 18.262831, 10.051714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.698519, 17.913044, 9.932791>,  <23.606527, 17.703173, 9.861437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.698519, 17.913044, 9.932791>,  <23.851839, 18.262831, 10.051714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.698519, 17.913044, 9.932791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301072, -0.186019, 0.935282,
		-0.873176, 0.448004, -0.191976,
		-0.383299, -0.874465, -0.297309,
		23.583529, 17.650705, 9.843598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340620, 18.092667, 10.574783>,  <23.851839, 18.262831, 10.051714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340620, 18.092667, 10.574783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.409634, 17.745220, 10.388992>,  <23.451042, 17.536753, 10.277517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.409634, 17.745220, 10.388992>,  <23.340620, 18.092667, 10.574783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.409634, 17.745220, 10.388992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214056, -0.493344, 0.843085,
		-0.961464, -0.046036, -0.271050,
		0.172533, -0.868615, -0.464478,
		23.461393, 17.484636, 10.249649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.753935, 17.571838, 10.742105>,  <23.340620, 18.092667, 10.574783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.753935, 17.571838, 10.742105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.051275, 17.335642, 10.616409>,  <23.229679, 17.193924, 10.540992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.051275, 17.335642, 10.616409>,  <22.753935, 17.571838, 10.742105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.051275, 17.335642, 10.616409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138176, -0.595208, 0.791602,
		-0.654474, -0.545018, -0.524041,
		0.743352, -0.590493, -0.314240,
		23.274281, 17.158495, 10.522138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499540, 16.936768, 10.832807>,  <22.753935, 17.571838, 10.742105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499540, 16.936768, 10.832807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.883036, 16.834078, 10.783962>,  <23.113132, 16.772465, 10.754656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.883036, 16.834078, 10.783962>,  <22.499540, 16.936768, 10.832807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.883036, 16.834078, 10.783962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084299, -0.666950, 0.740319,
		-0.271498, -0.699479, -0.661073,
		0.958740, -0.256723, -0.122110,
		23.170658, 16.757061, 10.747330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518427, 16.259666, 10.813272>,  <22.499540, 16.936768, 10.832807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518427, 16.259666, 10.813272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869017, 16.394640, 10.950639>,  <23.079370, 16.475624, 11.033058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869017, 16.394640, 10.950639>,  <22.518427, 16.259666, 10.813272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869017, 16.394640, 10.950639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095688, -0.576972, 0.811140,
		0.471848, -0.743802, -0.473411,
		0.876472, 0.337435, 0.343416,
		23.131958, 16.495871, 11.053663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825636, 15.684011, 11.296900>,  <22.518427, 16.259666, 10.813272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825636, 15.684011, 11.296900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044323, 16.001028, 11.404956>,  <23.175535, 16.191238, 11.469790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044323, 16.001028, 11.404956>,  <22.825636, 15.684011, 11.296900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044323, 16.001028, 11.404956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, -0.356600, 0.932568,
		0.835433, -0.494682, -0.239460,
		0.546716, 0.792544, 0.270139,
		23.208338, 16.238791, 11.485997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.327911, 15.537374, 11.716743>,  <22.825636, 15.684011, 11.296900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.327911, 15.537374, 11.716743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.303358, 15.918050, 11.837090>,  <23.288626, 16.146454, 11.909299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.303358, 15.918050, 11.837090>,  <23.327911, 15.537374, 11.716743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303358, 15.918050, 11.837090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146377, -0.289596, 0.945890,
		0.987322, 0.102104, -0.121528,
		-0.061385, 0.951687, 0.300870,
		23.284943, 16.203556, 11.927352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890532, 15.624565, 12.054652>,  <23.327911, 15.537374, 11.716743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890532, 15.624565, 12.054652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.633707, 15.894731, 12.199745>,  <23.479612, 16.056829, 12.286800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.633707, 15.894731, 12.199745>,  <23.890532, 15.624565, 12.054652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.633707, 15.894731, 12.199745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156918, -0.347343, 0.924516,
		0.750423, 0.650514, 0.117030,
		-0.642060, 0.675414, 0.362732,
		23.441090, 16.097355, 12.308565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.216349, 15.726681, 12.673857>,  <23.890532, 15.624565, 12.054652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.216349, 15.726681, 12.673857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.866434, 15.917630, 12.706988>,  <23.656485, 16.032200, 12.726867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.866434, 15.917630, 12.706988>,  <24.216349, 15.726681, 12.673857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.866434, 15.917630, 12.706988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064561, -0.054579, 0.996420,
		0.480186, 0.877003, 0.016926,
		-0.874787, 0.477375, 0.082829,
		23.603998, 16.060843, 12.731837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313623, 16.302292, 13.230772>,  <24.216349, 15.726681, 12.673857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313623, 16.302292, 13.230772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.931133, 16.196533, 13.180613>,  <23.701639, 16.133078, 13.150517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.931133, 16.196533, 13.180613>,  <24.313623, 16.302292, 13.230772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.931133, 16.196533, 13.180613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027409, -0.345719, 0.937938,
		-0.291340, 0.900318, 0.323339,
		-0.956227, -0.264396, -0.125399,
		23.644266, 16.117214, 13.142993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991451, 16.633278, 13.846213>,  <24.313623, 16.302292, 13.230772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991451, 16.633278, 13.846213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.754635, 16.327948, 13.742813>,  <23.612545, 16.144749, 13.680773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.754635, 16.327948, 13.742813>,  <23.991451, 16.633278, 13.846213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.754635, 16.327948, 13.742813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023268, -0.304432, 0.952250,
		-0.805573, 0.569785, 0.162475,
		-0.592040, -0.763326, -0.258500,
		23.577023, 16.098949, 13.665263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.679670, 16.263594, 14.326920>,  <23.991451, 16.633278, 13.846213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.679670, 16.263594, 14.326920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.587120, 15.971828, 14.584420>,  <23.531590, 15.796767, 14.738920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.587120, 15.971828, 14.584420>,  <23.679670, 16.263594, 14.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.587120, 15.971828, 14.584420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942590, 0.004291, -0.333924,
		0.240808, -0.684055, -0.688535,
		-0.231377, -0.729418, 0.643750,
		23.517708, 15.753002, 14.777545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202915, 15.833799, 13.969818>,  <23.679670, 16.263594, 14.326920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202915, 15.833799, 13.969818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.080219, 15.465101, 14.064726>,  <24.006601, 15.243882, 14.121671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.080219, 15.465101, 14.064726>,  <24.202915, 15.833799, 13.969818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.080219, 15.465101, 14.064726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951733, -0.299840, 0.065577,
		0.010698, 0.245931, 0.969228,
		-0.306741, -0.921745, 0.237269,
		23.988197, 15.188578, 14.135906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.840189, 15.318433, 14.169971>,  <24.202915, 15.833799, 13.969818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.840189, 15.318433, 14.169971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813721, 14.929890, 14.261262>,  <24.797840, 14.696764, 14.316036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813721, 14.929890, 14.261262>,  <24.840189, 15.318433, 14.169971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813721, 14.929890, 14.261262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836714, 0.070598, 0.543071,
		-0.543628, 0.226895, 0.808076,
		-0.066171, -0.971357, 0.228225,
		24.793869, 14.638482, 14.329729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762360, 15.301850, 14.905447>,  <24.840189, 15.318433, 14.169971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762360, 15.301850, 14.905447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978636, 15.021920, 14.718728>,  <25.108400, 14.853962, 14.606697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978636, 15.021920, 14.718728>,  <24.762360, 15.301850, 14.905447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.978636, 15.021920, 14.718728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795237, 0.244265, 0.554917,
		-0.274323, -0.671251, 0.688599,
		0.540689, -0.699826, -0.466796,
		25.140842, 14.811973, 14.578689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060123, 14.734222, 15.376415>,  <24.762360, 15.301850, 14.905447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060123, 14.734222, 15.376415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274385, 14.784340, 15.042378>,  <25.402943, 14.814410, 14.841956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.274385, 14.784340, 15.042378>,  <25.060123, 14.734222, 15.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274385, 14.784340, 15.042378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791267, 0.270902, 0.548187,
		0.294913, -0.954418, 0.045967,
		0.535652, 0.125296, -0.835092,
		25.435081, 14.821928, 14.791851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.715036, 14.389762, 15.395225>,  <25.060123, 14.734222, 15.376415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.715036, 14.389762, 15.395225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739798, 14.703403, 15.148210>,  <25.754654, 14.891587, 15.000001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739798, 14.703403, 15.148210>,  <25.715036, 14.389762, 15.395225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739798, 14.703403, 15.148210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773677, 0.353187, 0.526006,
		0.630549, -0.510335, -0.584779,
		0.061903, 0.784103, -0.617536,
		25.758369, 14.938633, 14.962949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276903, 14.336808, 14.928706>,  <25.715036, 14.389762, 15.395225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276903, 14.336808, 14.928706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196054, 14.716236, 15.026165>,  <26.147545, 14.943892, 15.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196054, 14.716236, 15.026165>,  <26.276903, 14.336808, 14.928706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196054, 14.716236, 15.026165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932909, 0.110770, 0.342653,
		0.298041, 0.296558, -0.907317,
		-0.202120, 0.948569, 0.243648,
		26.135418, 15.000807, 15.099259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966122, 14.839676, 14.783173>,  <26.276903, 14.336808, 14.928706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966122, 14.839676, 14.783173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684782, 14.966887, 15.037467>,  <26.515978, 15.043213, 15.190043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684782, 14.966887, 15.037467>,  <26.966122, 14.839676, 14.783173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684782, 14.966887, 15.037467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710211, 0.352201, 0.609553,
		-0.030052, 0.880235, -0.473585,
		-0.703347, 0.318027, 0.635737,
		26.473778, 15.062295, 15.228189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.913190, 18.131571, 21.125687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.518075, 18.100363, 21.071737>,  <11.281006, 18.081638, 21.039368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.518075, 18.100363, 21.071737>,  <11.913190, 18.131571, 21.125687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.518075, 18.100363, 21.071737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155761, -0.516463, -0.842024,
		-0.003963, -0.852748, 0.522307,
		-0.987787, -0.078019, -0.134872,
		11.221739, 18.076958, 21.031275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915757, 17.559826, 20.886278>,  <11.913190, 18.131571, 21.125687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915757, 17.559826, 20.886278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.568680, 17.710472, 20.756495>,  <11.360434, 17.800859, 20.678625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.568680, 17.710472, 20.756495>,  <11.915757, 17.559826, 20.886278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568680, 17.710472, 20.756495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114496, -0.483736, -0.867692,
		-0.483736, -0.790039, 0.376613,
		0.867692, -0.376613, 0.324457,
		11.308372, 17.823456, 20.659157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.570145, 16.932943, 20.602755>,  <11.915757, 17.559826, 20.886278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.570145, 16.932943, 20.602755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.428524, 17.272898, 20.446630>,  <11.343552, 17.476870, 20.352955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.428524, 17.272898, 20.446630>,  <11.570145, 16.932943, 20.602755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.428524, 17.272898, 20.446630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085511, -0.445016, -0.891431,
		-0.931308, -0.282237, 0.230233,
		-0.354052, 0.849884, -0.390312,
		11.322309, 17.527863, 20.329536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.102665, 16.724913, 20.112411>,  <11.570145, 16.932943, 20.602755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.102665, 16.724913, 20.112411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.189014, 17.095604, 19.989401>,  <11.240824, 17.318018, 19.915594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.189014, 17.095604, 19.989401>,  <11.102665, 16.724913, 20.112411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.189014, 17.095604, 19.989401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219231, -0.352913, -0.909610,
		-0.951492, 0.128941, -0.279352,
		0.215873, 0.926729, -0.307526,
		11.253777, 17.373623, 19.897142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664845, 16.905096, 19.518795>,  <11.102665, 16.724913, 20.112411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664845, 16.905096, 19.518795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.975718, 17.155756, 19.495819>,  <11.162241, 17.306152, 19.482033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.975718, 17.155756, 19.495819>,  <10.664845, 16.905096, 19.518795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.975718, 17.155756, 19.495819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173148, -0.300708, -0.937867,
		-0.604987, 0.718946, -0.342208,
		0.777181, 0.626650, -0.057441,
		11.208872, 17.343752, 19.478586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.654680, 17.106440, 18.836731>,  <10.664845, 16.905096, 19.518795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.654680, 17.106440, 18.836731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.016494, 17.229069, 18.955275>,  <11.233582, 17.302647, 19.026402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.016494, 17.229069, 18.955275>,  <10.654680, 17.106440, 18.836731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016494, 17.229069, 18.955275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316969, -0.018540, -0.948255,
		-0.285214, 0.951667, -0.113945,
		0.904535, 0.306573, 0.296361,
		11.287854, 17.321041, 19.044184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911416, 17.609533, 18.381289>,  <10.654680, 17.106440, 18.836731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911416, 17.609533, 18.381289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.251132, 17.478827, 18.547148>,  <11.454962, 17.400402, 18.646664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.251132, 17.478827, 18.547148>,  <10.911416, 17.609533, 18.381289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251132, 17.478827, 18.547148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347780, -0.244617, -0.905103,
		0.397186, 0.912900, -0.094108,
		0.849289, -0.326765, 0.414647,
		11.505919, 17.380796, 18.671541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473694, 17.878796, 17.916094>,  <10.911416, 17.609533, 18.381289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473694, 17.878796, 17.916094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.626005, 17.575367, 18.127594>,  <11.717392, 17.393311, 18.254494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.626005, 17.575367, 18.127594>,  <11.473694, 17.878796, 17.916094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626005, 17.575367, 18.127594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503023, -0.309877, -0.806811,
		0.775871, 0.573191, 0.263584,
		0.380778, -0.758570, 0.528752,
		11.740239, 17.347795, 18.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.158852, 17.880278, 17.769739>,  <11.473694, 17.878796, 17.916094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.158852, 17.880278, 17.769739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.096710, 17.503904, 17.890078>,  <12.059425, 17.278080, 17.962280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.096710, 17.503904, 17.890078>,  <12.158852, 17.880278, 17.769739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.096710, 17.503904, 17.890078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473481, -0.338206, -0.813285,
		0.866995, 0.016098, 0.498056,
		-0.155354, -0.940934, 0.300845,
		12.050104, 17.221624, 17.980331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.748214, 17.590309, 17.573812>,  <12.158852, 17.880278, 17.769739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.748214, 17.590309, 17.573812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.554949, 17.252069, 17.664598>,  <12.438990, 17.049126, 17.719070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.554949, 17.252069, 17.664598>,  <12.748214, 17.590309, 17.573812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.554949, 17.252069, 17.664598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451989, -0.462919, -0.762504,
		0.749840, -0.265828, 0.605867,
		-0.483162, -0.845601, 0.226964,
		12.410000, 16.998388, 17.732687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221629, 17.100163, 17.947546>,  <12.748214, 17.590309, 17.573812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221629, 17.100163, 17.947546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.920787, 16.936253, 17.741081>,  <12.740282, 16.837906, 17.617203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.920787, 16.936253, 17.741081>,  <13.221629, 17.100163, 17.947546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920787, 16.936253, 17.741081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654691, -0.374692, -0.656494,
		0.075615, -0.831678, 0.550086,
		-0.752105, -0.409777, -0.516160,
		12.695155, 16.813320, 17.586233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.493167, 16.504593, 17.776793>,  <13.221629, 17.100163, 17.947546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.493167, 16.504593, 17.776793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.176538, 16.542547, 17.535328>,  <12.986560, 16.565319, 17.390450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.176538, 16.542547, 17.535328>,  <13.493167, 16.504593, 17.776793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.176538, 16.542547, 17.535328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511182, -0.438456, -0.739222,
		-0.334821, -0.893730, 0.298567,
		-0.791573, 0.094885, -0.603663,
		12.939066, 16.571012, 17.354229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573965, 15.905798, 17.434488>,  <13.493167, 16.504593, 17.776793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573965, 15.905798, 17.434488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.341473, 16.154884, 17.224957>,  <13.201977, 16.304337, 17.099237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.341473, 16.154884, 17.224957>,  <13.573965, 15.905798, 17.434488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.341473, 16.154884, 17.224957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508977, -0.224058, -0.831108,
		-0.634911, -0.749683, -0.186718,
		-0.581232, 0.622715, -0.523828,
		13.167103, 16.341700, 17.067808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.306380, 15.539276, 16.861862>,  <13.573965, 15.905798, 17.434488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.306380, 15.539276, 16.861862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.316069, 15.930171, 16.777555>,  <13.321881, 16.164707, 16.726971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.316069, 15.930171, 16.777555>,  <13.306380, 15.539276, 16.861862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.316069, 15.930171, 16.777555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523999, -0.191957, -0.829806,
		-0.851374, -0.090342, -0.516721,
		0.024221, 0.977236, -0.210766,
		13.323335, 16.223343, 16.714325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.090899, 15.548221, 16.137415>,  <13.306380, 15.539276, 16.861862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.090899, 15.548221, 16.137415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.281879, 15.876776, 16.262228>,  <13.396467, 16.073908, 16.337116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.281879, 15.876776, 16.262228>,  <13.090899, 15.548221, 16.137415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281879, 15.876776, 16.262228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635607, -0.077671, -0.768095,
		-0.606667, 0.565058, -0.559164,
		0.477449, 0.821387, 0.312035,
		13.425115, 16.123192, 16.355839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299407, 15.969209, 15.498871>,  <13.090899, 15.548221, 16.137415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299407, 15.969209, 15.498871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.530669, 16.171473, 15.755010>,  <13.669427, 16.292831, 15.908693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.530669, 16.171473, 15.755010>,  <13.299407, 15.969209, 15.498871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530669, 16.171473, 15.755010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762602, -0.055825, -0.644455,
		-0.290127, 0.860925, -0.417893,
		0.578156, 0.505660, 0.640347,
		13.704116, 16.323170, 15.947114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613281, 16.485109, 15.123861>,  <13.299407, 15.969209, 15.498871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613281, 16.485109, 15.123861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.835846, 16.437082, 15.452736>,  <13.969385, 16.408266, 15.650061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.835846, 16.437082, 15.452736>,  <13.613281, 16.485109, 15.123861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.835846, 16.437082, 15.452736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830884, 0.087517, -0.549519,
		-0.005977, 0.988901, 0.148456,
		0.556413, -0.120066, 0.822185,
		14.002769, 16.401062, 15.699391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.179069, 16.904636, 14.961711>,  <13.613281, 16.485109, 15.123861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.179069, 16.904636, 14.961711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.295756, 16.653606, 15.250446>,  <14.365769, 16.502989, 15.423688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.295756, 16.653606, 15.250446>,  <14.179069, 16.904636, 14.961711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295756, 16.653606, 15.250446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899238, -0.077260, -0.430583,
		0.325992, 0.774714, 0.541800,
		0.291720, -0.627574, 0.721839,
		14.383272, 16.465334, 15.466998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807784, 17.231012, 15.340377>,  <14.179069, 16.904636, 14.961711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807784, 17.231012, 15.340377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.815722, 16.832733, 15.376570>,  <14.820486, 16.593765, 15.398286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.815722, 16.832733, 15.376570>,  <14.807784, 17.231012, 15.340377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815722, 16.832733, 15.376570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848585, -0.031080, -0.528145,
		0.528687, 0.087264, 0.844319,
		0.019847, -0.995700, 0.090483,
		14.821676, 16.534023, 15.403714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529568, 17.056606, 15.541471>,  <14.807784, 17.231012, 15.340377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529568, 17.056606, 15.541471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.377452, 16.702534, 15.434264>,  <15.286182, 16.490089, 15.369941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.377452, 16.702534, 15.434264>,  <15.529568, 17.056606, 15.541471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377452, 16.702534, 15.434264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849963, -0.220249, -0.478595,
		0.364614, -0.409808, 0.836130,
		-0.380289, -0.885183, -0.268016,
		15.263366, 16.436979, 15.353860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128090, 16.577551, 15.733567>,  <15.529568, 17.056606, 15.541471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128090, 16.577551, 15.733567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.881381, 16.384283, 15.485006>,  <15.733356, 16.268322, 15.335870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.881381, 16.384283, 15.485006>,  <16.128090, 16.577551, 15.733567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881381, 16.384283, 15.485006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787085, -0.388180, -0.479389,
		-0.009588, -0.784769, 0.619714,
		-0.616771, -0.483171, -0.621402,
		15.696350, 16.239332, 15.298586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428020, 15.983878, 15.653241>,  <16.128090, 16.577551, 15.733567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428020, 15.983878, 15.653241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.186352, 16.015589, 15.336081>,  <16.041351, 16.034615, 15.145784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.186352, 16.015589, 15.336081>,  <16.428020, 15.983878, 15.653241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186352, 16.015589, 15.336081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760137, -0.241226, -0.603325,
		-0.239047, -0.967232, 0.085547,
		-0.604192, 0.079196, -0.792893,
		16.005100, 16.039371, 15.098210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986662, 15.646965, 15.198380>,  <16.428020, 15.983878, 15.653241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986662, 15.646965, 15.198380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.338024, 15.550179, 15.363235>,  <17.548841, 15.492106, 15.462147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.338024, 15.550179, 15.363235>,  <16.986662, 15.646965, 15.198380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338024, 15.550179, 15.363235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216808, 0.566762, 0.794843,
		-0.425908, -0.787549, 0.445386,
		0.878406, -0.241966, 0.412135,
		17.601545, 15.477589, 15.486876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.881636, 15.306752, 15.882848>,  <16.986662, 15.646965, 15.198380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.881636, 15.306752, 15.882848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.254148, 15.452344, 15.889006>,  <17.477655, 15.539699, 15.892700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.254148, 15.452344, 15.889006>,  <16.881636, 15.306752, 15.882848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254148, 15.452344, 15.889006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166735, 0.388275, 0.906334,
		0.323905, -0.846619, 0.422281,
		0.931281, 0.363975, 0.015397,
		17.533533, 15.561538, 15.893624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.223248, 14.970561, 16.470253>,  <16.881636, 15.306752, 15.882848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.223248, 14.970561, 16.470253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.378841, 15.322330, 16.360483>,  <17.472198, 15.533391, 16.294621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.378841, 15.322330, 16.360483>,  <17.223248, 14.970561, 16.470253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.378841, 15.322330, 16.360483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215379, 0.376443, 0.901057,
		0.895714, -0.291391, 0.335839,
		0.388984, 0.879422, -0.274425,
		17.495537, 15.586156, 16.278156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.605604, 15.171752, 16.960239>,  <17.223248, 14.970561, 16.470253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.605604, 15.171752, 16.960239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.572557, 15.525965, 16.777370>,  <17.552729, 15.738493, 16.667648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.572557, 15.525965, 16.777370>,  <17.605604, 15.171752, 16.960239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572557, 15.525965, 16.777370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197917, 0.435024, 0.878398,
		0.976731, 0.163054, 0.139321,
		-0.082618, 0.885533, -0.457172,
		17.547771, 15.791624, 16.640219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975538, 15.697246, 17.332333>,  <17.605604, 15.171752, 16.960239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975538, 15.697246, 17.332333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.692711, 15.890625, 17.125904>,  <17.523014, 16.006653, 17.002047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.692711, 15.890625, 17.125904>,  <17.975538, 15.697246, 17.332333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692711, 15.890625, 17.125904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239109, 0.523360, 0.817876,
		0.665494, 0.701692, -0.254454,
		-0.707068, 0.483449, -0.516074,
		17.480591, 16.035660, 16.971083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026953, 16.359571, 17.602064>,  <17.975538, 15.697246, 17.332333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026953, 16.359571, 17.602064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.703527, 16.415258, 17.373384>,  <17.509472, 16.448671, 17.236176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.703527, 16.415258, 17.373384>,  <18.026953, 16.359571, 17.602064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703527, 16.415258, 17.373384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395748, 0.590346, 0.703473,
		0.435438, 0.795053, -0.422237,
		-0.808565, 0.139219, -0.571700,
		17.460958, 16.457024, 17.201874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873856, 17.158236, 17.532541>,  <18.026953, 16.359571, 17.602064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873856, 17.158236, 17.532541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.529087, 16.975328, 17.444908>,  <17.322226, 16.865583, 17.392328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.529087, 16.975328, 17.444908>,  <17.873856, 17.158236, 17.532541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.529087, 16.975328, 17.444908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472896, 0.569077, 0.672697,
		-0.182928, 0.683415, -0.706740,
		-0.861921, -0.457269, -0.219084,
		17.270512, 16.838148, 17.379183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.328873, 17.666279, 17.295723>,  <17.873856, 17.158236, 17.532541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.328873, 17.666279, 17.295723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.154161, 17.344776, 17.457314>,  <17.049335, 17.151875, 17.554268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.154161, 17.344776, 17.457314>,  <17.328873, 17.666279, 17.295723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154161, 17.344776, 17.457314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429558, 0.580924, 0.691381,
		-0.790383, 0.128448, -0.598995,
		-0.436777, -0.803759, 0.403977,
		17.023129, 17.103649, 17.578506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584703, 17.848747, 17.405651>,  <17.328873, 17.666279, 17.295723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584703, 17.848747, 17.405651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.646896, 17.517857, 17.621622>,  <16.684212, 17.319323, 17.751204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.646896, 17.517857, 17.621622>,  <16.584703, 17.848747, 17.405651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646896, 17.517857, 17.621622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711130, 0.285642, 0.642420,
		-0.685652, -0.483844, -0.543853,
		0.155483, -0.827227, 0.539927,
		16.693541, 17.269688, 17.783600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862477, 17.699020, 17.640650>,  <16.584703, 17.848747, 17.405651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862477, 17.699020, 17.640650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.103218, 17.482958, 17.875938>,  <16.247663, 17.353321, 18.017111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.103218, 17.482958, 17.875938>,  <15.862477, 17.699020, 17.640650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103218, 17.482958, 17.875938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548506, 0.255754, 0.796072,
		-0.580444, -0.801761, -0.142353,
		0.601852, -0.540157, 0.588221,
		16.283773, 17.320911, 18.052404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.472528, 17.132404, 18.098404>,  <15.862477, 17.699020, 17.640650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.472528, 17.132404, 18.098404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.827437, 17.157915, 18.281130>,  <16.040382, 17.173222, 18.390766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.827437, 17.157915, 18.281130>,  <15.472528, 17.132404, 18.098404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.827437, 17.157915, 18.281130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461122, 0.145622, 0.875306,
		-0.010701, -0.987283, 0.158614,
		0.887272, 0.063774, 0.456816,
		16.093618, 17.177048, 18.418175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468096, 16.726072, 18.714460>,  <15.472528, 17.132404, 18.098404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468096, 16.726072, 18.714460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.771290, 16.972523, 18.800106>,  <15.953206, 17.120394, 18.851494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.771290, 16.972523, 18.800106>,  <15.468096, 16.726072, 18.714460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771290, 16.972523, 18.800106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414076, 0.200885, 0.887799,
		0.503986, -0.761597, 0.407392,
		0.757984, 0.616129, 0.214116,
		15.998685, 17.157362, 18.864342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823277, 16.577579, 19.404009>,  <15.468096, 16.726072, 18.714460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.823277, 16.577579, 19.404009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.901949, 16.964329, 19.338923>,  <15.949153, 17.196379, 19.299871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.901949, 16.964329, 19.338923>,  <15.823277, 16.577579, 19.404009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901949, 16.964329, 19.338923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381848, 0.228389, 0.895562,
		0.903055, -0.114009, 0.414117,
		0.196682, 0.966871, -0.162714,
		15.960954, 17.254391, 19.290108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855444, 16.750378, 20.074251>,  <15.823277, 16.577579, 19.404009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855444, 16.750378, 20.074251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.873688, 17.096298, 19.874235>,  <15.884634, 17.303850, 19.754227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.873688, 17.096298, 19.874235>,  <15.855444, 16.750378, 20.074251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873688, 17.096298, 19.874235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265716, 0.493030, 0.828442,
		0.962972, 0.095084, 0.252279,
		0.045609, 0.864801, -0.500039,
		15.887371, 17.355738, 19.724224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286903, 17.323118, 20.436651>,  <15.855444, 16.750378, 20.074251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.286903, 17.323118, 20.436651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.993604, 17.472403, 20.209297>,  <15.817624, 17.561974, 20.072886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.993604, 17.472403, 20.209297>,  <16.286903, 17.323118, 20.436651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993604, 17.472403, 20.209297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430777, 0.391783, 0.812980,
		0.526096, 0.840964, -0.126505,
		-0.733249, 0.373210, -0.568383,
		15.773629, 17.584366, 20.038782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128963, 18.033762, 20.714106>,  <16.286903, 17.323118, 20.436651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128963, 18.033762, 20.714106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.792364, 17.932707, 20.523085>,  <15.590405, 17.872074, 20.408472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.792364, 17.932707, 20.523085>,  <16.128963, 18.033762, 20.714106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792364, 17.932707, 20.523085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534833, 0.514521, 0.670240,
		0.076381, 0.819416, -0.568088,
		-0.841498, -0.252638, -0.477550,
		15.539915, 17.856915, 20.379820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654088, 18.570356, 20.820925>,  <16.128963, 18.033762, 20.714106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654088, 18.570356, 20.820925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.411245, 18.283127, 20.684814>,  <15.265539, 18.110788, 20.603148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.411245, 18.283127, 20.684814>,  <15.654088, 18.570356, 20.820925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411245, 18.283127, 20.684814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679570, 0.247255, 0.690688,
		-0.411831, 0.650563, -0.638093,
		-0.607108, -0.718075, -0.340276,
		15.229113, 18.067703, 20.582731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021904, 18.958862, 20.789694>,  <15.654088, 18.570356, 20.820925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021904, 18.958862, 20.789694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.925423, 18.570763, 20.798038>,  <14.867534, 18.337902, 20.803045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.925423, 18.570763, 20.798038>,  <15.021904, 18.958862, 20.789694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.925423, 18.570763, 20.798038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635303, 0.174114, 0.752379,
		-0.733628, 0.168223, -0.658400,
		-0.241204, -0.970250, 0.020863,
		14.853062, 18.279688, 20.804296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.173407, 18.828613, 20.629631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.299562, 18.495010, 20.810722>,  <14.375255, 18.294847, 20.919376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.299562, 18.495010, 20.810722>,  <14.173407, 18.828613, 20.629631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.299562, 18.495010, 20.810722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651831, 0.156328, 0.742077,
		-0.689673, -0.529141, -0.494329,
		0.315386, -0.834009, 0.452726,
		14.394177, 18.244808, 20.946541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.484612, 18.417040, 20.783806>,  <14.173407, 18.828613, 20.629631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.484612, 18.417040, 20.783806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.789967, 18.289991, 21.008789>,  <13.973179, 18.213762, 21.143780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.789967, 18.289991, 21.008789>,  <13.484612, 18.417040, 20.783806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789967, 18.289991, 21.008789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609645, -0.066488, 0.789881,
		-0.213486, -0.945884, -0.244392,
		0.763385, -0.317621, 0.562459,
		14.018982, 18.194706, 21.177526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.192207, 17.977856, 21.352030>,  <13.484612, 18.417040, 20.783806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.192207, 17.977856, 21.352030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.558145, 18.025549, 21.506351>,  <13.777707, 18.054165, 21.598944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.558145, 18.025549, 21.506351>,  <13.192207, 17.977856, 21.352030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558145, 18.025549, 21.506351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392348, 0.036469, 0.919094,
		0.095522, -0.992196, 0.080147,
		0.914844, 0.119239, 0.385802,
		13.832598, 18.061319, 21.622093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373975, 17.371826, 21.862505>,  <13.192207, 17.977856, 21.352030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373975, 17.371826, 21.862505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.597693, 17.696619, 21.929287>,  <13.731925, 17.891495, 21.969357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.597693, 17.696619, 21.929287>,  <13.373975, 17.371826, 21.862505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.597693, 17.696619, 21.929287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413490, 0.098706, 0.905143,
		0.718480, -0.575277, 0.390952,
		0.559297, 0.811981, 0.166953,
		13.765483, 17.940214, 21.979372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593265, 17.253061, 22.575888>,  <13.373975, 17.371826, 21.862505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593265, 17.253061, 22.575888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.657901, 17.643616, 22.518536>,  <13.696683, 17.877949, 22.484125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.657901, 17.643616, 22.518536>,  <13.593265, 17.253061, 22.575888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657901, 17.643616, 22.518536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264712, 0.182848, 0.946833,
		0.950692, -0.115045, 0.288008,
		0.161590, 0.976387, -0.143379,
		13.706378, 17.936531, 22.475521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866502, 17.514696, 23.254004>,  <13.593265, 17.253061, 22.575888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.866502, 17.514696, 23.254004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.718933, 17.823542, 23.047031>,  <13.630392, 18.008850, 22.922848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.718933, 17.823542, 23.047031>,  <13.866502, 17.514696, 23.254004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.718933, 17.823542, 23.047031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348896, 0.400951, 0.847060,
		0.861492, 0.493028, 0.121469,
		-0.368921, 0.772115, -0.517431,
		13.608256, 18.055176, 22.891802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001265, 18.121700, 23.642206>,  <13.866502, 17.514696, 23.254004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001265, 18.121700, 23.642206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.716293, 18.270546, 23.404222>,  <13.545311, 18.359854, 23.261433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.716293, 18.270546, 23.404222>,  <14.001265, 18.121700, 23.642206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.716293, 18.270546, 23.404222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364014, 0.528880, 0.766668,
		0.599950, 0.762769, -0.241335,
		-0.712428, 0.372113, -0.594961,
		13.502565, 18.382179, 23.225735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.963085, 18.779516, 23.841574>,  <14.001265, 18.121700, 23.642206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.963085, 18.779516, 23.841574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.616117, 18.721926, 23.651058>,  <13.407935, 18.687372, 23.536749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.616117, 18.721926, 23.651058>,  <13.963085, 18.779516, 23.841574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.616117, 18.721926, 23.651058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478293, 0.505145, 0.718376,
		0.137166, 0.850940, -0.507037,
		-0.867422, -0.143975, -0.476288,
		13.355890, 18.678734, 23.508171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729775, 19.409319, 23.724218>,  <13.963085, 18.779516, 23.841574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729775, 19.409319, 23.724218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.400950, 19.184994, 23.684814>,  <13.203655, 19.050400, 23.661173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.400950, 19.184994, 23.684814>,  <13.729775, 19.409319, 23.724218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.400950, 19.184994, 23.684814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493496, 0.615437, 0.614572,
		-0.284033, 0.553830, -0.782686,
		-0.822063, -0.560811, -0.098509,
		13.154331, 19.016750, 23.655262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115479, 19.898420, 23.783657>,  <13.729775, 19.409319, 23.724218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115479, 19.898420, 23.783657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.990815, 19.531139, 23.881453>,  <12.916017, 19.310770, 23.940130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.990815, 19.531139, 23.881453>,  <13.115479, 19.898420, 23.783657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.990815, 19.531139, 23.881453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568894, 0.386402, 0.725985,
		-0.761071, 0.087173, -0.642785,
		-0.311659, -0.918202, 0.244487,
		12.897317, 19.255678, 23.954798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.581926, 20.094290, 24.101763>,  <13.115479, 19.898420, 23.783657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.581926, 20.094290, 24.101763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.640734, 19.711418, 24.201515>,  <12.676018, 19.481695, 24.261368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.640734, 19.711418, 24.201515>,  <12.581926, 20.094290, 24.101763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640734, 19.711418, 24.201515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276647, 0.202270, 0.939443,
		-0.949659, -0.207106, -0.235063,
		0.147018, -0.957180, 0.249383,
		12.684839, 19.424265, 24.276329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082512, 19.937683, 24.571684>,  <12.581926, 20.094290, 24.101763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082512, 19.937683, 24.571684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.349706, 19.644238, 24.621660>,  <12.510022, 19.468170, 24.651646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.349706, 19.644238, 24.621660>,  <12.082512, 19.937683, 24.571684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349706, 19.644238, 24.621660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251933, -0.064951, 0.965563,
		-0.700233, -0.676458, -0.228208,
		0.667984, -0.733612, 0.124941,
		12.550101, 19.424154, 24.659143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.663105, 19.484833, 24.957682>,  <12.082512, 19.937683, 24.571684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.663105, 19.484833, 24.957682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.040493, 19.380178, 25.039082>,  <12.266926, 19.317387, 25.087921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.040493, 19.380178, 25.039082>,  <11.663105, 19.484833, 24.957682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040493, 19.380178, 25.039082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253278, -0.173033, 0.951793,
		-0.213816, -0.949528, -0.229519,
		0.943469, -0.261640, 0.203497,
		12.323534, 19.301687, 25.100132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.561415, 18.983459, 25.534695>,  <11.663105, 19.484833, 24.957682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.561415, 18.983459, 25.534695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.947728, 19.085253, 25.514688>,  <12.179516, 19.146328, 25.502686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.947728, 19.085253, 25.514688>,  <11.561415, 18.983459, 25.534695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.947728, 19.085253, 25.514688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047047, 0.017735, 0.998735,
		0.255049, -0.966914, 0.005156,
		0.965783, 0.254484, -0.050013,
		12.237463, 19.161598, 25.499685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.051600, 18.485544, 25.824642>,  <11.561415, 18.983459, 25.534695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.051600, 18.485544, 25.824642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.220580, 18.845610, 25.867052>,  <12.321969, 19.061649, 25.892498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.220580, 18.845610, 25.867052>,  <12.051600, 18.485544, 25.824642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.220580, 18.845610, 25.867052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011412, -0.111684, 0.993678,
		0.906313, -0.420992, -0.036908,
		0.422453, 0.900162, 0.106026,
		12.347316, 19.115658, 25.898859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.607260, 18.422535, 26.280054>,  <12.051600, 18.485544, 25.824642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.607260, 18.422535, 26.280054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.488733, 18.804245, 26.295843>,  <12.417618, 19.033270, 26.305317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.488733, 18.804245, 26.295843>,  <12.607260, 18.422535, 26.280054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488733, 18.804245, 26.295843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050638, -0.025573, 0.998390,
		0.953746, 0.297838, -0.040745,
		-0.296317, 0.954274, 0.039473,
		12.399838, 19.090527, 26.307686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.012673, 18.739937, 26.822416>,  <12.607260, 18.422535, 26.280054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.012673, 18.739937, 26.822416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.717742, 19.002226, 26.757458>,  <12.540783, 19.159599, 26.718483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.717742, 19.002226, 26.757458>,  <13.012673, 18.739937, 26.822416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.717742, 19.002226, 26.757458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128479, 0.099890, 0.986669,
		0.663204, 0.748364, 0.010595,
		-0.737329, 0.655724, -0.162396,
		12.496544, 19.198944, 26.708738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.108031, 19.182846, 27.327768>,  <13.012673, 18.739937, 26.822416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.108031, 19.182846, 27.327768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.744759, 19.307182, 27.215637>,  <12.526794, 19.381784, 27.148359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.744759, 19.307182, 27.215637>,  <13.108031, 19.182846, 27.327768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744759, 19.307182, 27.215637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211857, 0.236242, 0.948317,
		0.361000, 0.920635, -0.148698,
		-0.908183, 0.310840, -0.280326,
		12.472303, 19.400434, 27.131538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.979115, 19.852549, 27.588217>,  <13.108031, 19.182846, 27.327768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.979115, 19.852549, 27.588217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.620729, 19.684887, 27.529488>,  <12.405698, 19.584290, 27.494249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.620729, 19.684887, 27.529488>,  <12.979115, 19.852549, 27.588217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.620729, 19.684887, 27.529488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204002, 0.094758, 0.974374,
		-0.394500, 0.902957, -0.170408,
		-0.895965, -0.419154, -0.146823,
		12.351940, 19.559141, 27.485441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511020, 20.322531, 27.853497>,  <12.979115, 19.852549, 27.588217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511020, 20.322531, 27.853497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.316632, 19.974215, 27.883324>,  <12.200000, 19.765224, 27.901220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.316632, 19.974215, 27.883324>,  <12.511020, 20.322531, 27.853497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316632, 19.974215, 27.883324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261846, 0.226467, 0.938163,
		-0.833829, 0.436393, -0.338069,
		-0.485970, -0.870789, 0.074567,
		12.170841, 19.712978, 27.905693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970727, 20.553101, 28.259560>,  <12.511020, 20.322531, 27.853497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970727, 20.553101, 28.259560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.973400, 20.154488, 28.292727>,  <11.975004, 19.915319, 28.312626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.973400, 20.154488, 28.292727>,  <11.970727, 20.553101, 28.259560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.973400, 20.154488, 28.292727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238548, 0.078934, 0.967917,
		-0.971108, -0.026248, -0.237194,
		0.006683, -0.996534, 0.082915,
		11.975405, 19.855528, 28.317600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.374384, 20.224714, 28.568462>,  <11.970727, 20.553101, 28.259560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.374384, 20.224714, 28.568462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.632602, 19.924994, 28.627548>,  <11.787532, 19.745161, 28.663000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.632602, 19.924994, 28.627548>,  <11.374384, 20.224714, 28.568462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.632602, 19.924994, 28.627548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211754, 0.010220, 0.977269,
		-0.733780, -0.662149, -0.152070,
		0.645544, -0.749303, 0.147712,
		11.826265, 19.700203, 28.671862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.105624, 19.814281, 29.087603>,  <11.374384, 20.224714, 28.568462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.105624, 19.814281, 29.087603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.502965, 19.769232, 29.078075>,  <11.741369, 19.742203, 29.072359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.502965, 19.769232, 29.078075>,  <11.105624, 19.814281, 29.087603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.502965, 19.769232, 29.078075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016727, -0.063517, 0.997841,
		-0.113900, -0.991605, -0.061211,
		0.993351, -0.112630, -0.023821,
		11.800971, 19.735445, 29.070929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.430095, 19.526382, 29.203943>,  <11.105624, 19.814281, 29.087603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.430095, 19.526382, 29.203943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.035209, 19.464211, 29.218067>,  <9.798277, 19.426907, 29.226542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.035209, 19.464211, 29.218067>,  <10.430095, 19.526382, 29.203943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.035209, 19.464211, 29.218067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025256, -0.066184, -0.997488,
		0.157380, -0.985627, 0.061412,
		-0.987215, -0.155434, 0.035309,
		9.739044, 19.417582, 29.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.220144, 18.905035, 28.810459>,  <10.430095, 19.526382, 29.203943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.220144, 18.905035, 28.810459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.904773, 19.150963, 28.818228>,  <9.715549, 19.298519, 28.822889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.904773, 19.150963, 28.818228>,  <10.220144, 18.905035, 28.810459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.904773, 19.150963, 28.818228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113917, -0.114912, -0.986822,
		-0.604487, -0.780251, 0.160638,
		-0.788428, 0.614820, 0.019422,
		9.668244, 19.335409, 28.824055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.646719, 18.499235, 28.465246>,  <10.220144, 18.905035, 28.810459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.646719, 18.499235, 28.465246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.568144, 18.891016, 28.446980>,  <9.520999, 19.126085, 28.436020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.568144, 18.891016, 28.446980>,  <9.646719, 18.499235, 28.465246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.568144, 18.891016, 28.446980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278965, -0.100477, -0.955030,
		-0.939995, -0.174863, 0.292970,
		-0.196437, 0.979452, -0.045668,
		9.509212, 19.184853, 28.433279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092371, 18.486200, 27.950830>,  <9.646719, 18.499235, 28.465246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092371, 18.486200, 27.950830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.262965, 18.847836, 27.940002>,  <9.365321, 19.064817, 27.933506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.262965, 18.847836, 27.940002>,  <9.092371, 18.486200, 27.950830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.262965, 18.847836, 27.940002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025155, -0.041773, -0.998810,
		-0.904145, 0.425297, -0.040558,
		0.426485, 0.904089, -0.027071,
		9.390911, 19.119062, 27.931881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.642979, 18.896442, 27.632090>,  <9.092371, 18.486200, 27.950830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.642979, 18.896442, 27.632090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.978744, 19.102058, 27.561491>,  <9.180202, 19.225428, 27.519131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.978744, 19.102058, 27.561491>,  <8.642979, 18.896442, 27.632090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.978744, 19.102058, 27.561491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142747, -0.104827, -0.984192,
		-0.524416, 0.851336, -0.014616,
		0.839411, 0.514040, -0.176498,
		9.230567, 19.256271, 27.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.486223, 19.334007, 26.998371>,  <8.642979, 18.896442, 27.632090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.486223, 19.334007, 26.998371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.878946, 19.401743, 27.032730>,  <9.114580, 19.442385, 27.053345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.878946, 19.401743, 27.032730>,  <8.486223, 19.334007, 26.998371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.878946, 19.401743, 27.032730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113130, -0.158368, -0.980878,
		-0.152500, 0.972750, -0.174645,
		0.981807, 0.169341, 0.085896,
		9.173489, 19.452545, 27.058498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.756064, 19.798658, 26.528988>,  <8.486223, 19.334007, 26.998371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.756064, 19.798658, 26.528988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.056214, 19.546408, 26.608234>,  <9.236304, 19.395058, 26.655783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.056214, 19.546408, 26.608234>,  <8.756064, 19.798658, 26.528988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.056214, 19.546408, 26.608234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114906, -0.170713, -0.978598,
		0.650949, 0.757079, -0.055637,
		0.750374, -0.630625, 0.198119,
		9.281326, 19.357220, 26.667669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.044291, 19.909889, 25.908325>,  <8.756064, 19.798658, 26.528988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.044291, 19.909889, 25.908325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.291959, 19.636889, 26.063667>,  <9.440559, 19.473087, 26.156872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.291959, 19.636889, 26.063667>,  <9.044291, 19.909889, 25.908325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291959, 19.636889, 26.063667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334906, -0.217808, -0.916732,
		0.710258, 0.697676, 0.093713,
		0.619170, -0.682501, 0.388356,
		9.477710, 19.432138, 26.180174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.775151, 20.068022, 25.718075>,  <9.044291, 19.909889, 25.908325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.775151, 20.068022, 25.718075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.706674, 19.679134, 25.781935>,  <9.665587, 19.445803, 25.820251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.706674, 19.679134, 25.781935>,  <9.775151, 20.068022, 25.718075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.706674, 19.679134, 25.781935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360937, -0.212664, -0.908019,
		0.916743, -0.097823, 0.387315,
		-0.171193, -0.972216, 0.159651,
		9.655315, 19.387470, 25.829830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.267335, 19.851578, 25.365725>,  <9.775151, 20.068022, 25.718075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.267335, 19.851578, 25.365725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.032954, 19.530735, 25.411829>,  <9.892325, 19.338230, 25.439491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.032954, 19.530735, 25.411829>,  <10.267335, 19.851578, 25.365725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.032954, 19.530735, 25.411829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314630, -0.356269, -0.879818,
		0.746772, -0.479267, 0.461124,
		-0.585952, -0.802107, 0.115260,
		9.857168, 19.290104, 25.446407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710266, 19.284954, 25.308666>,  <10.267335, 19.851578, 25.365725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710266, 19.284954, 25.308666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.336405, 19.156404, 25.247816>,  <10.112088, 19.079275, 25.211306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.336405, 19.156404, 25.247816>,  <10.710266, 19.284954, 25.308666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.336405, 19.156404, 25.247816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283508, -0.415393, -0.864334,
		0.214582, -0.850981, 0.479360,
		-0.934654, -0.321373, -0.152124,
		10.056008, 19.059994, 25.202179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.818540, 18.631487, 25.119070>,  <10.710266, 19.284954, 25.308666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.818540, 18.631487, 25.119070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.452633, 18.734459, 24.994535>,  <10.233088, 18.796242, 24.919815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.452633, 18.734459, 24.994535>,  <10.818540, 18.631487, 25.119070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.452633, 18.734459, 24.994535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230594, -0.300061, -0.925630,
		-0.331712, -0.918526, 0.215122,
		-0.914765, 0.257436, -0.311340,
		10.178203, 18.811687, 24.901134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.624118, 18.100664, 24.740042>,  <10.818540, 18.631487, 25.119070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.624118, 18.100664, 24.740042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.377186, 18.384508, 24.604183>,  <10.229027, 18.554815, 24.522669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.377186, 18.384508, 24.604183>,  <10.624118, 18.100664, 24.740042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.377186, 18.384508, 24.604183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182296, -0.290950, -0.939210,
		-0.765293, -0.641718, 0.050253,
		-0.617329, 0.709610, -0.339645,
		10.191987, 18.597391, 24.502289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.384801, 17.768473, 24.131979>,  <10.624118, 18.100664, 24.740042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.384801, 17.768473, 24.131979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.317649, 18.161070, 24.095127>,  <10.277358, 18.396627, 24.073015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.317649, 18.161070, 24.095127>,  <10.384801, 17.768473, 24.131979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.317649, 18.161070, 24.095127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223869, -0.053058, -0.973174,
		-0.960052, -0.184000, -0.210818,
		-0.167879, 0.981493, -0.092130,
		10.267285, 18.455519, 24.067488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.005475, 17.814054, 23.527662>,  <10.384801, 17.768473, 24.131979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.005475, 17.814054, 23.527662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.159371, 18.179701, 23.578831>,  <10.251709, 18.399090, 23.609531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.159371, 18.179701, 23.578831>,  <10.005475, 17.814054, 23.527662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.159371, 18.179701, 23.578831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362066, -0.021981, -0.931893,
		-0.849048, 0.404853, -0.339428,
		0.384740, 0.914118, 0.127920,
		10.274794, 18.453936, 23.617207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.745316, 18.189442, 22.933310>,  <10.005475, 17.814054, 23.527662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.745316, 18.189442, 22.933310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.060335, 18.401390, 23.059168>,  <10.249348, 18.528559, 23.134682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.060335, 18.401390, 23.059168>,  <9.745316, 18.189442, 22.933310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.060335, 18.401390, 23.059168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345003, 0.043963, -0.937572,
		-0.510625, 0.846938, -0.148184,
		0.787550, 0.529871, 0.314645,
		10.296600, 18.560352, 23.153561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.809848, 18.684574, 22.534414>,  <9.745316, 18.189442, 22.933310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.809848, 18.684574, 22.534414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.190081, 18.687233, 22.658575>,  <10.418221, 18.688828, 22.733072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.190081, 18.687233, 22.658575>,  <9.809848, 18.684574, 22.534414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.190081, 18.687233, 22.658575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307324, 0.121880, -0.943768,
		-0.044104, 0.992523, 0.113814,
		0.950582, 0.006646, 0.310402,
		10.475255, 18.689226, 22.751696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.115170, 19.322510, 22.169537>,  <9.809848, 18.684574, 22.534414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.115170, 19.322510, 22.169537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.410445, 19.075331, 22.277771>,  <10.587610, 18.927023, 22.342710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.410445, 19.075331, 22.277771>,  <10.115170, 19.322510, 22.169537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.410445, 19.075331, 22.277771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338538, -0.007595, -0.940922,
		0.583498, 0.786181, 0.203593,
		0.738189, -0.617950, 0.270584,
		10.631902, 18.889946, 22.358946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.642949, 19.535398, 21.765327>,  <10.115170, 19.322510, 22.169537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.642949, 19.535398, 21.765327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.772797, 19.169720, 21.862377>,  <10.850705, 18.950312, 21.920607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.772797, 19.169720, 21.862377>,  <10.642949, 19.535398, 21.765327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772797, 19.169720, 21.862377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133084, -0.209819, -0.968641,
		0.936436, 0.346728, 0.053553,
		0.324619, -0.914197, 0.242626,
		10.870182, 18.895460, 21.935165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287398, 19.394844, 21.408928>,  <10.642949, 19.535398, 21.765327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287398, 19.394844, 21.408928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.149037, 19.032213, 21.505650>,  <11.066021, 18.814634, 21.563683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.149037, 19.032213, 21.505650>,  <11.287398, 19.394844, 21.408928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.149037, 19.032213, 21.505650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210495, -0.326125, -0.921593,
		0.914354, -0.267882, 0.303637,
		-0.345902, -0.906577, 0.241807,
		11.045267, 18.760241, 21.578192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.793736, 18.835012, 21.168404>,  <11.287398, 19.394844, 21.408928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.793736, 18.835012, 21.168404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.433498, 18.664236, 21.201015>,  <11.217356, 18.561769, 21.220583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.433498, 18.664236, 21.201015>,  <11.793736, 18.835012, 21.168404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.433498, 18.664236, 21.201015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097857, -0.381911, -0.919004,
		0.423499, -0.819673, 0.385727,
		-0.900596, -0.426943, 0.081528,
		11.163320, 18.536154, 21.225473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.645739, 19.954094, 1.883727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955952, 19.751511, 2.034484>,  <21.142080, 19.629961, 2.124938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.955952, 19.751511, 2.034484>,  <20.645739, 19.954094, 1.883727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955952, 19.751511, 2.034484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204490, 0.766345, 0.609015,
		-0.597270, -0.395241, 0.697892,
		0.775534, -0.506458, 0.376892,
		21.188612, 19.599573, 2.147552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.611031, 20.523874, 2.404569>,  <20.645739, 19.954094, 1.883727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.611031, 20.523874, 2.404569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.001390, 20.596315, 2.355868>,  <21.235605, 20.639780, 2.326647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.001390, 20.596315, 2.355868>,  <20.611031, 20.523874, 2.404569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001390, 20.596315, 2.355868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059722, 0.314981, 0.947217,
		0.209894, -0.931659, 0.296573,
		0.975899, 0.181103, -0.121753,
		21.294161, 20.650646, 2.319342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098589, 20.164038, 2.934672>,  <20.611031, 20.523874, 2.404569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098589, 20.164038, 2.934672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.302879, 20.483967, 2.808533>,  <21.425453, 20.675924, 2.732849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.302879, 20.483967, 2.808533>,  <21.098589, 20.164038, 2.934672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302879, 20.483967, 2.808533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220450, 0.232701, 0.947234,
		0.830999, -0.553297, -0.057474,
		0.510727, 0.799821, -0.315348,
		21.456097, 20.723913, 2.713928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726873, 20.178921, 3.650573>,  <21.098589, 20.164038, 2.934672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726873, 20.178921, 3.650573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.360739, 20.290855, 3.534745>,  <20.141058, 20.358017, 3.465247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.360739, 20.290855, 3.534745>,  <20.726873, 20.178921, 3.650573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.360739, 20.290855, 3.534745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401087, 0.569384, -0.717587,
		-0.035932, -0.772976, -0.633417,
		-0.915335, 0.279839, -0.289571,
		20.086138, 20.374807, 3.447873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861853, 20.837948, 3.887596>,  <20.726873, 20.178921, 3.650573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861853, 20.837948, 3.887596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.063967, 20.509998, 3.779900>,  <21.185236, 20.313229, 3.715283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.063967, 20.509998, 3.779900>,  <20.861853, 20.837948, 3.887596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.063967, 20.509998, 3.779900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045210, -0.286421, 0.957037,
		-0.861766, -0.495750, -0.107658,
		0.505287, -0.819875, -0.269240,
		21.215553, 20.264036, 3.699128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.626133, 20.614330, 4.487172>,  <20.861853, 20.837948, 3.887596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.626133, 20.614330, 4.487172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.860003, 20.325052, 4.340124>,  <21.000324, 20.151485, 4.251895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.860003, 20.325052, 4.340124>,  <20.626133, 20.614330, 4.487172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860003, 20.325052, 4.340124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117226, -0.523698, 0.843800,
		-0.802754, -0.450253, -0.390970,
		0.584674, -0.723196, -0.367620,
		21.035404, 20.108093, 4.229838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290674, 19.959938, 4.546651>,  <20.626133, 20.614330, 4.487172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290674, 19.959938, 4.546651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.684639, 19.894409, 4.524333>,  <20.921017, 19.855091, 4.510942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.684639, 19.894409, 4.524333>,  <20.290674, 19.959938, 4.546651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684639, 19.894409, 4.524333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061546, -0.632875, 0.771804,
		-0.161751, -0.756724, -0.633408,
		0.984910, -0.163824, -0.055795,
		20.980112, 19.845263, 4.507595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.405010, 19.244038, 4.382631>,  <20.290674, 19.959938, 4.546651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.405010, 19.244038, 4.382631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.721912, 19.392097, 4.576671>,  <20.912054, 19.480932, 4.693094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.721912, 19.392097, 4.576671>,  <20.405010, 19.244038, 4.382631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.721912, 19.392097, 4.576671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065639, -0.738687, 0.670845,
		0.606647, -0.563323, -0.560933,
		0.792257, 0.370147, 0.485098,
		20.959589, 19.503141, 4.722200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.970654, 18.785404, 4.394903>,  <20.405010, 19.244038, 4.382631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.970654, 18.785404, 4.394903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.966791, 19.037401, 4.705520>,  <20.964474, 19.188599, 4.891890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.966791, 19.037401, 4.705520>,  <20.970654, 18.785404, 4.394903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.966791, 19.037401, 4.705520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085500, -0.774254, 0.627073,
		0.996291, -0.060340, 0.061339,
		-0.009654, 0.629992, 0.776542,
		20.963896, 19.226398, 4.938482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.032066, 18.340357, 4.943863>,  <20.970654, 18.785404, 4.394903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.032066, 18.340357, 4.943863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991337, 18.688288, 5.136957>,  <20.966900, 18.897047, 5.252812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991337, 18.688288, 5.136957>,  <21.032066, 18.340357, 4.943863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991337, 18.688288, 5.136957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045365, -0.488810, 0.871210,
		0.993768, 0.066810, 0.089232,
		-0.101823, 0.869828, 0.482733,
		20.960791, 18.949236, 5.281776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.548159, 18.414312, 5.401704>,  <21.032066, 18.340357, 4.943863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.548159, 18.414312, 5.401704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.255806, 18.648537, 5.541953>,  <21.080395, 18.789070, 5.626102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.255806, 18.648537, 5.541953>,  <21.548159, 18.414312, 5.401704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255806, 18.648537, 5.541953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036005, -0.479932, 0.876567,
		0.681556, 0.653288, 0.329690,
		-0.730879, 0.585559, 0.350622,
		21.036543, 18.824203, 5.647140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647724, 18.441059, 6.158233>,  <21.548159, 18.414312, 5.401704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647724, 18.441059, 6.158233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.273991, 18.563238, 6.084778>,  <21.049751, 18.636545, 6.040706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.273991, 18.563238, 6.084778>,  <21.647724, 18.441059, 6.158233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.273991, 18.563238, 6.084778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291653, -0.359149, 0.886539,
		0.204837, 0.881881, 0.424649,
		-0.934334, 0.305446, -0.183636,
		20.993690, 18.654873, 6.029687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539518, 18.784122, 6.715030>,  <21.647724, 18.441059, 6.158233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539518, 18.784122, 6.715030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.182981, 18.687212, 6.561767>,  <20.969059, 18.629065, 6.469809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.182981, 18.687212, 6.561767>,  <21.539518, 18.784122, 6.715030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182981, 18.687212, 6.561767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227384, -0.492253, 0.840228,
		-0.392179, 0.836055, 0.383676,
		-0.891343, -0.242278, -0.383157,
		20.915579, 18.614529, 6.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.079540, 19.069334, 7.210854>,  <21.539518, 18.784122, 6.715030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.079540, 19.069334, 7.210854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.869249, 18.799520, 7.003541>,  <20.743074, 18.637632, 6.879154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.869249, 18.799520, 7.003541>,  <21.079540, 19.069334, 7.210854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.869249, 18.799520, 7.003541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329014, -0.400617, 0.855135,
		-0.784450, 0.620089, -0.011316,
		-0.525726, -0.674534, -0.518282,
		20.711531, 18.597160, 6.848057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.338497, 19.159714, 7.531198>,  <21.079540, 19.069334, 7.210854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.338497, 19.159714, 7.531198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.381514, 18.808081, 7.345445>,  <20.407324, 18.597101, 7.233994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.381514, 18.808081, 7.345445>,  <20.338497, 19.159714, 7.531198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.381514, 18.808081, 7.345445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420395, -0.463485, 0.780031,
		-0.900946, 0.111340, -0.419404,
		0.107539, -0.879082, -0.464382,
		20.413774, 18.544355, 7.206131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728836, 18.805628, 7.585639>,  <20.338497, 19.159714, 7.531198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728836, 18.805628, 7.585639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.986534, 18.521942, 7.471120>,  <20.141153, 18.351730, 7.402409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.986534, 18.521942, 7.471120>,  <19.728836, 18.805628, 7.585639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986534, 18.521942, 7.471120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399055, -0.631044, 0.665236,
		-0.652462, -0.314324, -0.689561,
		0.644243, -0.709213, -0.286300,
		20.179808, 18.309179, 7.385231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392866, 18.199854, 7.634075>,  <19.728836, 18.805628, 7.585639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392866, 18.199854, 7.634075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.761915, 18.046259, 7.619555>,  <19.983345, 17.954102, 7.610843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.761915, 18.046259, 7.619555>,  <19.392866, 18.199854, 7.634075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761915, 18.046259, 7.619555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290760, -0.754274, 0.588668,
		-0.253420, -0.532565, -0.807560,
		0.922625, -0.383986, -0.036300,
		20.038702, 17.931063, 7.608665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368584, 17.420897, 7.641056>,  <19.392866, 18.199854, 7.634075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368584, 17.420897, 7.641056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.738913, 17.479328, 7.780494>,  <19.961109, 17.514387, 7.864156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.738913, 17.479328, 7.780494>,  <19.368584, 17.420897, 7.641056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738913, 17.479328, 7.780494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218348, -0.546116, 0.808753,
		0.308514, -0.824875, -0.473710,
		0.925820, 0.146078, 0.348594,
		20.016659, 17.523151, 7.885072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.659325, 16.742012, 7.858754>,  <19.368584, 17.420897, 7.641056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.659325, 16.742012, 7.858754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.915350, 16.982975, 8.049512>,  <20.068964, 17.127552, 8.163967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.915350, 16.982975, 8.049512>,  <19.659325, 16.742012, 7.858754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915350, 16.982975, 8.049512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081901, -0.670654, 0.737235,
		0.763946, -0.432817, -0.478597,
		0.640061, 0.602405, 0.476896,
		20.107368, 17.163696, 8.192580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204069, 16.328482, 8.081032>,  <19.659325, 16.742012, 7.858754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204069, 16.328482, 8.081032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.243969, 16.653625, 8.310573>,  <20.267908, 16.848713, 8.448298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.243969, 16.653625, 8.310573>,  <20.204069, 16.328482, 8.081032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243969, 16.653625, 8.310573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276951, -0.576620, 0.768640,
		0.955693, 0.082259, -0.282639,
		0.099748, 0.812861, 0.573853,
		20.273893, 16.897484, 8.482729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.702372, 16.182894, 8.549468>,  <20.204069, 16.328482, 8.081032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.702372, 16.182894, 8.549468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.539768, 16.500418, 8.730407>,  <20.442205, 16.690931, 8.838970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.539768, 16.500418, 8.730407>,  <20.702372, 16.182894, 8.549468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.539768, 16.500418, 8.730407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236077, -0.387028, 0.891335,
		0.882620, 0.469126, -0.030069,
		-0.406510, 0.793808, 0.452348,
		20.417814, 16.738560, 8.866111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176443, 16.284475, 9.041515>,  <20.702372, 16.182894, 8.549468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176443, 16.284475, 9.041515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.839325, 16.469147, 9.152187>,  <20.637054, 16.579950, 9.218591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.839325, 16.469147, 9.152187>,  <21.176443, 16.284475, 9.041515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839325, 16.469147, 9.152187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136401, -0.314063, 0.939553,
		0.520667, 0.829588, 0.201716,
		-0.842793, 0.461680, 0.276679,
		20.586487, 16.607651, 9.235191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407993, 16.688545, 9.441970>,  <21.176443, 16.284475, 9.041515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407993, 16.688545, 9.441970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021772, 16.646910, 9.537359>,  <20.790039, 16.621927, 9.594593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.021772, 16.646910, 9.537359>,  <21.407993, 16.688545, 9.441970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021772, 16.646910, 9.537359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260191, -0.378398, 0.888322,
		-0.002227, 0.919772, 0.392447,
		-0.965555, -0.104090, 0.238474,
		20.732105, 16.615683, 9.608901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.282639, 16.858665, 10.244596>,  <21.407993, 16.688545, 9.441970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.282639, 16.858665, 10.244596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952448, 16.645546, 10.170071>,  <20.754333, 16.517675, 10.125356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952448, 16.645546, 10.170071>,  <21.282639, 16.858665, 10.244596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952448, 16.645546, 10.170071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117599, -0.485190, 0.866465,
		-0.552047, 0.693338, 0.463170,
		-0.825479, -0.532797, -0.186312,
		20.704803, 16.485706, 10.114177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.926077, 16.853319, 10.861253>,  <21.282639, 16.858665, 10.244596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.926077, 16.853319, 10.861253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.752850, 16.547995, 10.669497>,  <20.648914, 16.364799, 10.554444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.752850, 16.547995, 10.669497>,  <20.926077, 16.853319, 10.861253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752850, 16.547995, 10.669497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149531, -0.585318, 0.796896,
		-0.888872, 0.273426, 0.367620,
		-0.433067, -0.763309, -0.479388,
		20.622931, 16.319002, 10.525681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516037, 16.464252, 11.362155>,  <20.926077, 16.853319, 10.861253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516037, 16.464252, 11.362155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.571531, 16.195175, 11.071436>,  <20.604828, 16.033730, 10.897004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.571531, 16.195175, 11.071436>,  <20.516037, 16.464252, 11.362155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571531, 16.195175, 11.071436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015684, -0.732311, 0.680789,
		-0.990205, -0.105849, -0.091047,
		0.138736, -0.672693, -0.726799,
		20.613152, 15.993367, 10.853396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128445, 15.971260, 11.548286>,  <20.516037, 16.464252, 11.362155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128445, 15.971260, 11.548286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.416630, 15.799900, 11.330145>,  <20.589540, 15.697084, 11.199260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.416630, 15.799900, 11.330145>,  <20.128445, 15.971260, 11.548286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416630, 15.799900, 11.330145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096395, -0.716886, 0.690494,
		-0.686757, -0.550047, -0.475197,
		0.720467, -0.428395, -0.545349,
		20.632769, 15.671380, 11.166539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206890, 15.249768, 11.866961>,  <20.128445, 15.971260, 11.548286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206890, 15.249768, 11.866961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.528088, 15.287319, 11.631541>,  <20.720806, 15.309850, 11.490290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.528088, 15.287319, 11.631541>,  <20.206890, 15.249768, 11.866961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528088, 15.287319, 11.631541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422591, -0.786032, 0.451188,
		-0.420262, -0.611017, -0.670849,
		0.802992, 0.093878, -0.588550,
		20.768986, 15.315482, 11.454976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497869, 14.731505, 11.842688>,  <20.206890, 15.249768, 11.866961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497869, 14.731505, 11.842688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827734, 14.915032, 11.710371>,  <21.025652, 15.025148, 11.630980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827734, 14.915032, 11.710371>,  <20.497869, 14.731505, 11.842688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827734, 14.915032, 11.710371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564415, -0.629176, 0.534390,
		0.037061, -0.627394, -0.777820,
		0.824659, 0.458818, -0.330792,
		21.075132, 15.052678, 11.611134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.946856, 14.127375, 11.706204>,  <20.497869, 14.731505, 11.842688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.946856, 14.127375, 11.706204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157896, 14.465633, 11.738500>,  <21.284519, 14.668589, 11.757876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.157896, 14.465633, 11.738500>,  <20.946856, 14.127375, 11.706204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.157896, 14.465633, 11.738500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655696, -0.465821, 0.594200,
		0.540093, -0.260560, -0.800255,
		0.527600, 0.845647, 0.080738,
		21.316175, 14.719328, 11.762721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.550056, 13.985095, 11.403479>,  <20.946856, 14.127375, 11.706204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.550056, 13.985095, 11.403479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.657028, 14.292272, 11.636287>,  <21.721212, 14.476578, 11.775971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.657028, 14.292272, 11.636287>,  <21.550056, 13.985095, 11.403479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657028, 14.292272, 11.636287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688992, -0.574662, 0.441648,
		0.673625, 0.282897, -0.682788,
		0.267431, 0.767941, 0.582020,
		21.737257, 14.522654, 11.810893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291546, 14.036959, 11.395044>,  <21.550056, 13.985095, 11.403479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291546, 14.036959, 11.395044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.151705, 14.217109, 11.723663>,  <22.067801, 14.325199, 11.920835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.151705, 14.217109, 11.723663>,  <22.291546, 14.036959, 11.395044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151705, 14.217109, 11.723663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729900, -0.418833, 0.540208,
		0.587388, 0.788505, -0.182305,
		-0.349602, 0.450376, 0.821547,
		22.046824, 14.352221, 11.970127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.787952, 14.434582, 11.721560>,  <22.291546, 14.036959, 11.395044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.787952, 14.434582, 11.721560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.522667, 14.319030, 11.997734>,  <22.363497, 14.249699, 12.163438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.522667, 14.319030, 11.997734>,  <22.787952, 14.434582, 11.721560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.522667, 14.319030, 11.997734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701744, -0.560739, 0.439463,
		0.260201, 0.775964, 0.574609,
		-0.663213, -0.288880, 0.690433,
		22.323704, 14.232366, 12.204864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.074909, 14.561263, 12.360673>,  <22.787952, 14.434582, 11.721560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.074909, 14.561263, 12.360673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.809494, 14.262403, 12.376098>,  <22.650246, 14.083086, 12.385352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.809494, 14.262403, 12.376098>,  <23.074909, 14.561263, 12.360673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.809494, 14.262403, 12.376098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648240, -0.548433, 0.528211,
		-0.373505, 0.375484, 0.848237,
		-0.663536, -0.747150, 0.038561,
		22.610434, 14.038258, 12.387666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244116, 14.533515, 13.181981>,  <23.074909, 14.561263, 12.360673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244116, 14.533515, 13.181981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.937765, 14.617951, 12.939040>,  <22.753956, 14.668613, 12.793276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.937765, 14.617951, 12.939040>,  <23.244116, 14.533515, 13.181981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.937765, 14.617951, 12.939040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392671, 0.594428, 0.701759,
		0.509161, 0.775949, -0.372369,
		-0.765875, 0.211090, -0.607352,
		22.708002, 14.681278, 12.756835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.855501, 15.109698, 13.043859>,  <23.244116, 14.533515, 13.181981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.855501, 15.109698, 13.043859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.009361, 15.420524, 13.243144>,  <23.101677, 15.607019, 13.362715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.009361, 15.420524, 13.243144>,  <22.855501, 15.109698, 13.043859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.009361, 15.420524, 13.243144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080761, 0.509337, -0.856769,
		-0.919522, 0.369793, 0.133161,
		0.384651, 0.777064, 0.498212,
		23.124756, 15.653643, 13.392608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.430269, 15.731370, 13.076264>,  <22.855501, 15.109698, 13.043859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.430269, 15.731370, 13.076264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.799736, 15.882733, 13.100427>,  <23.021416, 15.973552, 13.114923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.799736, 15.882733, 13.100427>,  <22.430269, 15.731370, 13.076264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.799736, 15.882733, 13.100427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145893, 0.493028, -0.857694,
		-0.354340, 0.783410, 0.510600,
		0.923666, 0.378408, 0.060405,
		23.076836, 15.996256, 13.118548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.375675, 16.446909, 12.832575>,  <22.430269, 15.731370, 13.076264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.375675, 16.446909, 12.832575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.762550, 16.347893, 12.809696>,  <22.994675, 16.288483, 12.795969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.762550, 16.347893, 12.809696>,  <22.375675, 16.446909, 12.832575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.762550, 16.347893, 12.809696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060077, 0.441583, -0.895207,
		0.246857, 0.862397, 0.441965,
		0.967188, -0.247540, -0.057197,
		23.052708, 16.273630, 12.792537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.583813, 17.024216, 12.563829>,  <22.375675, 16.446909, 12.832575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.583813, 17.024216, 12.563829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869549, 16.748867, 12.513443>,  <23.040991, 16.583658, 12.483212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869549, 16.748867, 12.513443>,  <22.583813, 17.024216, 12.563829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869549, 16.748867, 12.513443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267012, 0.434493, -0.860186,
		0.646857, 0.580830, 0.494178,
		0.714339, -0.688369, -0.125966,
		23.083851, 16.542356, 12.475653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.220497, 17.396816, 12.367341>,  <22.583813, 17.024216, 12.563829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.220497, 17.396816, 12.367341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.245054, 17.026686, 12.217671>,  <23.259789, 16.804607, 12.127870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.245054, 17.026686, 12.217671>,  <23.220497, 17.396816, 12.367341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.245054, 17.026686, 12.217671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428746, 0.362980, -0.827298,
		0.901337, -0.109636, 0.419013,
		0.061391, -0.925324, -0.374173,
		23.263472, 16.749088, 12.105419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.713846, 17.425581, 11.853654>,  <23.220497, 17.396816, 12.367341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.713846, 17.425581, 11.853654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.574680, 17.066402, 11.745844>,  <23.491180, 16.850895, 11.681158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.574680, 17.066402, 11.745844>,  <23.713846, 17.425581, 11.853654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.574680, 17.066402, 11.745844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302278, 0.164693, -0.938885,
		0.887459, -0.408125, 0.214131,
		-0.347916, -0.897948, -0.269525,
		23.470306, 16.797018, 11.664987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.275642, 17.092184, 11.465734>,  <23.713846, 17.425581, 11.853654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.275642, 17.092184, 11.465734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.919893, 16.938473, 11.366662>,  <23.706444, 16.846245, 11.307219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.919893, 16.938473, 11.366662>,  <24.275642, 17.092184, 11.465734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.919893, 16.938473, 11.366662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242238, 0.063366, -0.968145,
		0.387734, -0.921039, 0.036731,
		-0.889372, -0.384281, -0.247680,
		23.653082, 16.823189, 11.292358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393942, 16.671896, 10.852496>,  <24.275642, 17.092184, 11.465734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393942, 16.671896, 10.852496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997217, 16.722717, 10.847311>,  <23.759182, 16.753210, 10.844200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.997217, 16.722717, 10.847311>,  <24.393942, 16.671896, 10.852496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.997217, 16.722717, 10.847311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042599, 0.233425, -0.971441,
		-0.120399, -0.964038, -0.236926,
		-0.991811, 0.127053, -0.012963,
		23.699675, 16.760834, 10.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.266035, 16.443319, 10.202749>,  <24.393942, 16.671896, 10.852496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.266035, 16.443319, 10.202749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961798, 16.679296, 10.311165>,  <23.779255, 16.820883, 10.376214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.961798, 16.679296, 10.311165>,  <24.266035, 16.443319, 10.202749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.961798, 16.679296, 10.311165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000711, 0.418236, -0.908338,
		-0.649227, -0.690684, -0.318528,
		-0.760595, 0.589943, 0.271039,
		23.733620, 16.856279, 10.392477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.630583, 16.294851, 9.717415>,  <24.266035, 16.443319, 10.202749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.630583, 16.294851, 9.717415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.603136, 16.666595, 9.862510>,  <23.586668, 16.889643, 9.949567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.603136, 16.666595, 9.862510>,  <23.630583, 16.294851, 9.717415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.603136, 16.666595, 9.862510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093741, 0.355979, -0.929780,
		-0.993229, -0.097802, 0.062693,
		-0.068617, 0.929362, 0.362737,
		23.582550, 16.945404, 9.971331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163046, 16.536541, 9.348631>,  <23.630583, 16.294851, 9.717415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163046, 16.536541, 9.348631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.280764, 16.881083, 9.514262>,  <23.351395, 17.087807, 9.613642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.280764, 16.881083, 9.514262>,  <23.163046, 16.536541, 9.348631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.280764, 16.881083, 9.514262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092334, 0.456866, -0.884731,
		-0.951244, 0.222139, 0.213986,
		0.294296, 0.861353, 0.414079,
		23.369053, 17.139488, 9.638486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.659986, 17.054752, 9.192137>,  <23.163046, 16.536541, 9.348631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.659986, 17.054752, 9.192137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.996290, 17.260155, 9.260760>,  <23.198072, 17.383396, 9.301934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.996290, 17.260155, 9.260760>,  <22.659986, 17.054752, 9.192137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.996290, 17.260155, 9.260760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074073, 0.422998, -0.903098,
		-0.536317, 0.746580, 0.393677,
		0.840760, 0.513508, 0.171560,
		23.248518, 17.414207, 9.312228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.434196, 17.709276, 9.156894>,  <22.659986, 17.054752, 9.192137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.434196, 17.709276, 9.156894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.829987, 17.706259, 9.099095>,  <23.067461, 17.704449, 9.064417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.829987, 17.706259, 9.099095>,  <22.434196, 17.709276, 9.156894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.829987, 17.706259, 9.099095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118778, 0.527938, -0.840936,
		0.082629, 0.849250, 0.521486,
		0.989477, -0.007545, -0.144495,
		23.126829, 17.703995, 9.055747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.507326, 18.312523, 8.796516>,  <22.434196, 17.709276, 9.156894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.507326, 18.312523, 8.796516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.861561, 18.133709, 8.746084>,  <23.074102, 18.026421, 8.715825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.861561, 18.133709, 8.746084>,  <22.507326, 18.312523, 8.796516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.861561, 18.133709, 8.746084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008594, 0.255631, -0.966736,
		0.464393, 0.857213, 0.222542,
		0.885587, -0.447033, -0.126080,
		23.127237, 17.999599, 8.708261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999128, 18.855764, 8.520948>,  <22.507326, 18.312523, 8.796516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999128, 18.855764, 8.520948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156717, 18.504517, 8.412362>,  <23.251270, 18.293768, 8.347210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156717, 18.504517, 8.412362>,  <22.999128, 18.855764, 8.520948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156717, 18.504517, 8.412362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146520, 0.351578, -0.924621,
		0.907369, 0.324498, 0.267174,
		0.393970, -0.878119, -0.271466,
		23.274908, 18.241081, 8.330922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624088, 18.992722, 7.920499>,  <22.999128, 18.855764, 8.520948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624088, 18.992722, 7.920499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.555832, 18.600988, 7.877069>,  <23.514877, 18.365948, 7.851010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.555832, 18.600988, 7.877069>,  <23.624088, 18.992722, 7.920499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.555832, 18.600988, 7.877069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162422, 0.080728, -0.983414,
		0.971854, -0.185447, 0.145289,
		-0.170642, -0.979332, -0.108577,
		23.504639, 18.307188, 7.844495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199400, 18.777082, 7.298524>,  <23.624088, 18.992722, 7.920499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199400, 18.777082, 7.298524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.901983, 18.511400, 7.329439>,  <23.723534, 18.351990, 7.347987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.901983, 18.511400, 7.329439>,  <24.199400, 18.777082, 7.298524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.901983, 18.511400, 7.329439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274774, 0.198115, -0.940877,
		0.609625, -0.720819, -0.329814,
		-0.743543, -0.664207, 0.077286,
		23.678921, 18.312138, 7.352624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.906672, 17.992804, 19.165665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619814, 17.729971, 19.072756>,  <16.447701, 17.572271, 19.017010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619814, 17.729971, 19.072756>,  <16.906672, 17.992804, 19.165665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619814, 17.729971, 19.072756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513087, -0.272235, -0.814021,
		0.471645, -0.702945, 0.532371,
		-0.717142, -0.657082, -0.232274,
		16.404671, 17.532846, 19.003073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252985, 17.410986, 19.100664>,  <16.906672, 17.992804, 19.165665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252985, 17.410986, 19.100664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912626, 17.379293, 18.892933>,  <16.708412, 17.360277, 18.768295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912626, 17.379293, 18.892933>,  <17.252985, 17.410986, 19.100664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912626, 17.379293, 18.892933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517456, -0.296982, -0.802522,
		-0.090646, -0.951590, 0.293699,
		-0.850895, -0.079231, -0.519327,
		16.657358, 17.355524, 18.737135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199793, 16.685516, 18.773197>,  <17.252985, 17.410986, 19.100664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199793, 16.685516, 18.773197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915850, 16.888927, 18.578262>,  <16.745483, 17.010975, 18.461302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.915850, 16.888927, 18.578262>,  <17.199793, 16.685516, 18.773197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915850, 16.888927, 18.578262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254482, -0.459993, -0.850673,
		-0.656763, -0.727878, 0.197120,
		-0.709860, 0.508527, -0.487338,
		16.702892, 17.041485, 18.432060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634302, 16.221445, 18.509085>,  <17.199793, 16.685516, 18.773197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634302, 16.221445, 18.509085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671951, 16.542484, 18.273466>,  <16.694542, 16.735107, 18.132095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671951, 16.542484, 18.273466>,  <16.634302, 16.221445, 18.509085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671951, 16.542484, 18.273466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149714, -0.596358, -0.788634,
		-0.984239, -0.013959, -0.176292,
		0.094124, 0.802597, -0.589049,
		16.700188, 16.783264, 18.096752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459028, 15.993422, 17.850719>,  <16.634302, 16.221445, 18.509085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459028, 15.993422, 17.850719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627871, 16.348944, 17.779331>,  <16.729176, 16.562258, 17.736498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627871, 16.348944, 17.779331>,  <16.459028, 15.993422, 17.850719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627871, 16.348944, 17.779331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311042, -0.326912, -0.892402,
		-0.851517, 0.321174, -0.414447,
		0.422104, 0.888806, -0.178473,
		16.754501, 16.615585, 17.725790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.110846, 16.234945, 17.222454>,  <16.459028, 15.993422, 17.850719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.110846, 16.234945, 17.222454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479115, 16.381210, 17.277090>,  <16.700075, 16.468969, 17.309872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479115, 16.381210, 17.277090>,  <16.110846, 16.234945, 17.222454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479115, 16.381210, 17.277090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239701, -0.253454, -0.937179,
		-0.308073, 0.895574, -0.320997,
		0.920671, 0.365663, 0.136588,
		16.755316, 16.490910, 17.318066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.322363, 16.497942, 16.570192>,  <16.110846, 16.234945, 17.222454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.322363, 16.497942, 16.570192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.681044, 16.518972, 16.745995>,  <16.896252, 16.531591, 16.851477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.681044, 16.518972, 16.745995>,  <16.322363, 16.497942, 16.570192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681044, 16.518972, 16.745995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436683, -0.267412, -0.858952,
		0.072369, 0.962147, -0.262747,
		0.896700, 0.052576, 0.439506,
		16.950054, 16.534746, 16.877846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801844, 16.822237, 16.179150>,  <16.322363, 16.497942, 16.570192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801844, 16.822237, 16.179150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014986, 16.588928, 16.424379>,  <17.142872, 16.448942, 16.571518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.014986, 16.588928, 16.424379>,  <16.801844, 16.822237, 16.179150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014986, 16.588928, 16.424379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580720, -0.274912, -0.766282,
		0.615493, 0.764341, 0.192230,
		0.532854, -0.583273, 0.613074,
		17.174843, 16.413946, 16.608301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.484959, 16.971022, 15.924726>,  <16.801844, 16.822237, 16.179150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.484959, 16.971022, 15.924726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496685, 16.628754, 16.131401>,  <17.503721, 16.423393, 16.255405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496685, 16.628754, 16.131401>,  <17.484959, 16.971022, 15.924726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.496685, 16.628754, 16.131401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581878, -0.405689, -0.704865,
		0.812748, 0.321313, 0.486003,
		0.029316, -0.855672, 0.516687,
		17.505480, 16.372051, 16.286407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169600, 16.691004, 15.821989>,  <17.484959, 16.971022, 15.924726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169600, 16.691004, 15.821989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968870, 16.386194, 15.985692>,  <17.848433, 16.203308, 16.083914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968870, 16.386194, 15.985692>,  <18.169600, 16.691004, 15.821989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.968870, 16.386194, 15.985692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457776, -0.635428, -0.621831,
		0.733903, -0.124702, 0.667709,
		-0.501824, -0.762024, 0.409257,
		17.818323, 16.157587, 16.108469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704248, 16.092634, 15.864793>,  <18.169600, 16.691004, 15.821989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704248, 16.092634, 15.864793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356253, 15.902199, 15.916111>,  <18.147455, 15.787937, 15.946902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.356253, 15.902199, 15.916111>,  <18.704248, 16.092634, 15.864793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356253, 15.902199, 15.916111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362603, -0.794066, -0.487831,
		0.334127, -0.377886, 0.863459,
		-0.869987, -0.476090, 0.128297,
		18.095257, 15.759372, 15.954600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796976, 15.397575, 15.943078>,  <18.704248, 16.092634, 15.864793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796976, 15.397575, 15.943078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419086, 15.393573, 15.811992>,  <18.192352, 15.391171, 15.733340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419086, 15.393573, 15.811992>,  <18.796976, 15.397575, 15.943078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.419086, 15.393573, 15.811992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215946, -0.771101, -0.598975,
		-0.246707, -0.636634, 0.730638,
		-0.944724, -0.010007, -0.327715,
		18.135670, 15.390571, 15.713677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080891, 14.912973, 15.445884>,  <18.796976, 15.397575, 15.943078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080891, 14.912973, 15.445884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220146, 15.284980, 15.492990>,  <19.303699, 15.508183, 15.521254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.220146, 15.284980, 15.492990>,  <19.080891, 14.912973, 15.445884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220146, 15.284980, 15.492990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170010, 0.186177, -0.967696,
		-0.921898, 0.316870, 0.222927,
		0.348138, 0.930017, 0.117765,
		19.324587, 15.563985, 15.528319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427771, 14.706442, 14.791934>,  <19.080891, 14.912973, 15.445884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427771, 14.706442, 14.791934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208374, 14.374527, 14.750737>,  <19.076736, 14.175378, 14.726019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208374, 14.374527, 14.750737>,  <19.427771, 14.706442, 14.791934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.208374, 14.374527, 14.750737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577429, 0.286805, 0.764408,
		-0.604757, 0.478743, -0.636454,
		-0.548493, -0.829788, -0.102993,
		19.043825, 14.125590, 14.719839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689093, 14.170695, 15.312732>,  <19.427771, 14.706442, 14.791934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689093, 14.170695, 15.312732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789711, 13.783756, 15.325139>,  <19.850082, 13.551593, 15.332583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789711, 13.783756, 15.325139>,  <19.689093, 14.170695, 15.312732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789711, 13.783756, 15.325139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644929, -0.143637, 0.750623,
		-0.721658, -0.208821, -0.660003,
		0.251547, -0.967348, 0.031018,
		19.865175, 13.493552, 15.334444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.050163, 13.847943, 15.301073>,  <19.689093, 14.170695, 15.312732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.050163, 13.847943, 15.301073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304447, 13.627144, 15.516913>,  <19.457018, 13.494664, 15.646418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.304447, 13.627144, 15.516913>,  <19.050163, 13.847943, 15.301073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304447, 13.627144, 15.516913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693047, -0.100306, 0.713880,
		-0.339935, -0.827791, -0.446326,
		0.635712, -0.551998, 0.539601,
		19.495161, 13.461544, 15.678794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588247, 13.388704, 15.570173>,  <19.050163, 13.847943, 15.301073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588247, 13.388704, 15.570173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909239, 13.289533, 15.787266>,  <19.101833, 13.230030, 15.917521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909239, 13.289533, 15.787266>,  <18.588247, 13.388704, 15.570173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909239, 13.289533, 15.787266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588219, -0.176099, 0.789296,
		-0.100112, -0.952640, -0.287150,
		0.802481, -0.247925, 0.542731,
		19.149982, 13.215154, 15.950085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393030, 12.785128, 15.874574>,  <18.588247, 13.388704, 15.570173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393030, 12.785128, 15.874574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700871, 12.888804, 16.107996>,  <18.885574, 12.951011, 16.248049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700871, 12.888804, 16.107996>,  <18.393030, 12.785128, 15.874574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700871, 12.888804, 16.107996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586187, -0.075590, 0.806642,
		0.253186, -0.962863, 0.093761,
		0.769599, 0.259192, 0.583556,
		18.931749, 12.966562, 16.283062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424753, 12.282303, 16.489555>,  <18.393030, 12.785128, 15.874574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424753, 12.282303, 16.489555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623711, 12.607569, 16.610458>,  <18.743086, 12.802729, 16.683001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623711, 12.607569, 16.610458>,  <18.424753, 12.282303, 16.489555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623711, 12.607569, 16.610458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540174, 0.017669, 0.841368,
		0.678830, -0.581765, 0.448039,
		0.497395, 0.813165, 0.302260,
		18.772928, 12.851519, 16.701136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.510960, 12.156110, 17.219088>,  <18.424753, 12.282303, 16.489555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.510960, 12.156110, 17.219088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586481, 12.546645, 17.176912>,  <18.631794, 12.780967, 17.151608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586481, 12.546645, 17.176912>,  <18.510960, 12.156110, 17.219088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.586481, 12.546645, 17.176912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579928, 0.197501, 0.790365,
		0.792488, -0.088075, 0.603495,
		0.188802, 0.976338, -0.105440,
		18.643122, 12.839546, 17.145281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747719, 12.446378, 17.895906>,  <18.510960, 12.156110, 17.219088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.747719, 12.446378, 17.895906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585220, 12.753363, 17.697525>,  <18.487722, 12.937553, 17.578497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585220, 12.753363, 17.697525>,  <18.747719, 12.446378, 17.895906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.585220, 12.753363, 17.697525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565567, 0.215118, 0.796152,
		0.717705, 0.603926, 0.346660,
		-0.406244, 0.767462, -0.495952,
		18.463346, 12.983602, 17.548740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716372, 12.955511, 18.369913>,  <18.747719, 12.446378, 17.895906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716372, 12.955511, 18.369913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472229, 13.098314, 18.087069>,  <18.325743, 13.183996, 17.917362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472229, 13.098314, 18.087069>,  <18.716372, 12.955511, 18.369913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472229, 13.098314, 18.087069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611051, 0.355844, 0.707101,
		0.504063, 0.863666, 0.000958,
		-0.610358, 0.357009, -0.707112,
		18.289122, 13.205417, 17.874935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600414, 13.733820, 18.531740>,  <18.716372, 12.955511, 18.369913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600414, 13.733820, 18.531740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301210, 13.582599, 18.313543>,  <18.121689, 13.491866, 18.182625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.301210, 13.582599, 18.313543>,  <18.600414, 13.733820, 18.531740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301210, 13.582599, 18.313543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663407, 0.401918, 0.631152,
		-0.019366, 0.833989, -0.551441,
		-0.748008, -0.378053, -0.545491,
		18.076809, 13.469183, 18.149897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.261770, 14.358281, 18.398844>,  <18.600414, 13.733820, 18.531740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.261770, 14.358281, 18.398844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058414, 14.013866, 18.393913>,  <17.936401, 13.807218, 18.390955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058414, 14.013866, 18.393913>,  <18.261770, 14.358281, 18.398844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058414, 14.013866, 18.393913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537721, 0.306245, 0.785538,
		-0.672603, 0.405990, -0.618691,
		-0.508391, -0.861038, -0.012328,
		17.905897, 13.755555, 18.390215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595388, 14.658931, 18.491184>,  <18.261770, 14.358281, 18.398844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595388, 14.658931, 18.491184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565897, 14.270779, 18.583210>,  <17.548203, 14.037888, 18.638426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565897, 14.270779, 18.583210>,  <17.595388, 14.658931, 18.491184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565897, 14.270779, 18.583210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725406, 0.210487, 0.655349,
		-0.684362, -0.118572, -0.719437,
		-0.073727, -0.970379, 0.230062,
		17.543779, 13.979665, 18.652229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.990816, 14.463568, 18.546904>,  <17.595388, 14.658931, 18.491184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.990816, 14.463568, 18.546904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129864, 14.137759, 18.732685>,  <17.213291, 13.942274, 18.844154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129864, 14.137759, 18.732685>,  <16.990816, 14.463568, 18.546904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129864, 14.137759, 18.732685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751280, 0.054423, 0.657735,
		-0.561016, -0.577575, -0.593016,
		0.347618, -0.814522, 0.464453,
		17.234150, 13.893403, 18.872021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450190, 14.273803, 18.788923>,  <16.990816, 14.463568, 18.546904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.450190, 14.273803, 18.788923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712635, 14.051670, 18.993324>,  <16.870102, 13.918390, 19.115965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.712635, 14.051670, 18.993324>,  <16.450190, 14.273803, 18.788923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712635, 14.051670, 18.993324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536381, 0.133157, 0.833405,
		-0.530861, -0.820899, -0.210505,
		0.656111, -0.555333, 0.511002,
		16.909468, 13.885070, 19.146626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054836, 13.855544, 19.253817>,  <16.450190, 14.273803, 18.788923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054836, 13.855544, 19.253817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424112, 13.903356, 19.399929>,  <16.645678, 13.932042, 19.487597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424112, 13.903356, 19.399929>,  <16.054836, 13.855544, 19.253817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424112, 13.903356, 19.399929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384207, 0.311830, 0.868992,
		-0.010035, -0.942590, 0.333803,
		0.923193, 0.119529, 0.365279,
		16.701071, 13.939215, 19.509512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909300, 13.115380, 19.103308>,  <16.054836, 13.855544, 19.253817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909300, 13.115380, 19.103308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519979, 13.041306, 19.157551>,  <15.286386, 12.996861, 19.190096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519979, 13.041306, 19.157551>,  <15.909300, 13.115380, 19.103308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519979, 13.041306, 19.157551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022405, -0.511328, -0.859094,
		0.228431, -0.839196, 0.493527,
		-0.973302, -0.185186, 0.135606,
		15.227988, 12.985749, 19.198233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777119, 12.327038, 19.178518>,  <15.909300, 13.115380, 19.103308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777119, 12.327038, 19.178518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449564, 12.520322, 19.054626>,  <15.253031, 12.636292, 18.980291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449564, 12.520322, 19.054626>,  <15.777119, 12.327038, 19.178518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.449564, 12.520322, 19.054626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017870, -0.560843, -0.827729,
		-0.573683, -0.672278, 0.467900,
		-0.818883, 0.483215, -0.309733,
		15.203897, 12.665284, 18.961708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386206, 11.844424, 18.765675>,  <15.777119, 12.327038, 19.178518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386206, 11.844424, 18.765675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263186, 12.214207, 18.675526>,  <15.189373, 12.436076, 18.621437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263186, 12.214207, 18.675526>,  <15.386206, 11.844424, 18.765675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263186, 12.214207, 18.675526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050054, -0.220805, -0.974033,
		-0.950214, -0.310845, 0.021636,
		-0.307551, 0.924457, -0.225371,
		15.170920, 12.491544, 18.607914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815761, 11.797811, 18.257685>,  <15.386206, 11.844424, 18.765675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815761, 11.797811, 18.257685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969015, 12.160506, 18.187223>,  <15.060967, 12.378124, 18.144947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969015, 12.160506, 18.187223>,  <14.815761, 11.797811, 18.257685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969015, 12.160506, 18.187223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046596, -0.171488, -0.984084,
		-0.922516, 0.385245, -0.023453,
		0.383135, 0.906740, -0.176151,
		15.083956, 12.432528, 18.134378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.420479, 12.267045, 17.735220>,  <14.815761, 11.797811, 18.257685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.420479, 12.267045, 17.735220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811590, 12.344931, 17.704142>,  <15.046257, 12.391662, 17.685495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811590, 12.344931, 17.704142>,  <14.420479, 12.267045, 17.735220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.811590, 12.344931, 17.704142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046605, -0.159448, -0.986106,
		-0.204396, 0.967814, -0.146830,
		0.977778, 0.194713, -0.077695,
		15.104923, 12.403344, 17.680834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423286, 12.407164, 17.054371>,  <14.420479, 12.267045, 17.735220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423286, 12.407164, 17.054371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801396, 12.474286, 17.166298>,  <15.028262, 12.514560, 17.233454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.801396, 12.474286, 17.166298>,  <14.423286, 12.407164, 17.054371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801396, 12.474286, 17.166298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307361, -0.170199, -0.936249,
		-0.109483, 0.971017, -0.212461,
		0.945274, 0.167806, 0.279819,
		15.084978, 12.524628, 17.250244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646224, 12.919984, 16.660366>,  <14.423286, 12.407164, 17.054371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646224, 12.919984, 16.660366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989474, 12.743362, 16.765173>,  <15.195424, 12.637390, 16.828056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989474, 12.743362, 16.765173>,  <14.646224, 12.919984, 16.660366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.989474, 12.743362, 16.765173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192183, -0.196988, -0.961385,
		0.476116, 0.875344, -0.084181,
		0.858125, -0.441553, 0.262016,
		15.246912, 12.610897, 16.843777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254512, 13.123753, 16.223488>,  <14.646224, 12.919984, 16.660366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254512, 13.123753, 16.223488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397870, 12.778055, 16.364702>,  <15.483885, 12.570637, 16.449430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397870, 12.778055, 16.364702>,  <15.254512, 13.123753, 16.223488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.397870, 12.778055, 16.364702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325554, -0.238719, -0.914892,
		0.874967, 0.442826, 0.195802,
		0.358397, -0.864244, 0.353035,
		15.505389, 12.518782, 16.470613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884442, 12.943699, 15.759754>,  <15.254512, 13.123753, 16.223488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884442, 12.943699, 15.759754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792308, 12.585053, 15.911030>,  <15.737027, 12.369866, 16.001795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792308, 12.585053, 15.911030>,  <15.884442, 12.943699, 15.759754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792308, 12.585053, 15.911030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176490, -0.420686, -0.889873,
		0.956972, -0.138224, 0.255143,
		-0.230337, -0.896614, 0.378190,
		15.723207, 12.316069, 16.024487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443249, 12.481260, 15.506022>,  <15.884442, 12.943699, 15.759754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443249, 12.481260, 15.506022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123545, 12.256568, 15.591475>,  <15.931722, 12.121753, 15.642748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.123545, 12.256568, 15.591475>,  <16.443249, 12.481260, 15.506022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123545, 12.256568, 15.591475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014373, -0.337505, -0.941214,
		0.600812, -0.755346, 0.261681,
		-0.799261, -0.561732, 0.213634,
		15.883766, 12.088048, 15.655565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500051, 11.825153, 15.094353>,  <16.443249, 12.481260, 15.506022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500051, 11.825153, 15.094353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114693, 11.817015, 15.201275>,  <15.883477, 11.812132, 15.265429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114693, 11.817015, 15.201275>,  <16.500051, 11.825153, 15.094353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114693, 11.817015, 15.201275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260778, -0.159990, -0.952049,
		0.062137, -0.986909, 0.148828,
		-0.963397, -0.020346, 0.267306,
		15.825674, 11.810911, 15.281466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.164333, 11.200670, 14.809343>,  <16.500051, 11.825153, 15.094353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.164333, 11.200670, 14.809343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866777, 11.458402, 14.880304>,  <15.688244, 11.613041, 14.922881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866777, 11.458402, 14.880304>,  <16.164333, 11.200670, 14.809343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866777, 11.458402, 14.880304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386277, -0.197919, -0.900898,
		-0.545362, -0.738694, 0.396119,
		-0.743888, 0.644328, 0.177403,
		15.643611, 11.651700, 14.933525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<11.877324, 15.768575, 23.222160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.196618, 15.625669, 23.416143>,  <12.388195, 15.539927, 23.532534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.196618, 15.625669, 23.416143>,  <11.877324, 15.768575, 23.222160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196618, 15.625669, 23.416143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322649, -0.426262, -0.845102,
		0.508643, 0.831062, -0.224987,
		0.798236, -0.357263, 0.484957,
		12.436089, 15.518491, 23.561630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512892, 15.995379, 22.870831>,  <11.877324, 15.768575, 23.222160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512892, 15.995379, 22.870831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.632189, 15.661596, 23.056187>,  <12.703767, 15.461327, 23.167400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.632189, 15.661596, 23.056187>,  <12.512892, 15.995379, 22.870831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632189, 15.661596, 23.056187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506990, -0.272844, -0.817629,
		0.808710, 0.478787, 0.341688,
		0.298243, -0.834457, 0.463392,
		12.721662, 15.411259, 23.195204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195335, 15.851277, 22.556316>,  <12.512892, 15.995379, 22.870831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195335, 15.851277, 22.556316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.079608, 15.504817, 22.719328>,  <13.010172, 15.296941, 22.817135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.079608, 15.504817, 22.719328>,  <13.195335, 15.851277, 22.556316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079608, 15.504817, 22.719328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557106, -0.498564, -0.664128,
		0.778414, 0.034891, 0.626781,
		-0.289318, -0.866150, 0.407527,
		12.992812, 15.244972, 22.841585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.775237, 15.419415, 22.713840>,  <13.195335, 15.851277, 22.556316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.775237, 15.419415, 22.713840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.490175, 15.143161, 22.664616>,  <13.319138, 14.977408, 22.635080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.490175, 15.143161, 22.664616>,  <13.775237, 15.419415, 22.713840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.490175, 15.143161, 22.664616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612729, -0.527387, -0.588580,
		0.341593, -0.494858, 0.799018,
		-0.712655, -0.690636, -0.123062,
		13.276379, 14.935970, 22.627697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.203485, 14.850425, 22.735346>,  <13.775237, 15.419415, 22.713840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.203485, 14.850425, 22.735346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.853800, 14.740408, 22.575294>,  <13.643989, 14.674398, 22.479263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.853800, 14.740408, 22.575294>,  <14.203485, 14.850425, 22.735346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853800, 14.740408, 22.575294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467072, -0.701495, -0.538282,
		-0.132638, -0.657463, 0.741721,
		-0.874214, -0.275041, -0.400127,
		13.591536, 14.657896, 22.455256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.205783, 14.110749, 22.810743>,  <14.203485, 14.850425, 22.735346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.205783, 14.110749, 22.810743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.954366, 14.202615, 22.513506>,  <13.803515, 14.257734, 22.335163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.954366, 14.202615, 22.513506>,  <14.205783, 14.110749, 22.810743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954366, 14.202615, 22.513506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364986, -0.756585, -0.542554,
		-0.686818, -0.612237, 0.391722,
		-0.628543, 0.229663, -0.743094,
		13.765803, 14.271514, 22.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890805, 13.529619, 22.517126>,  <14.205783, 14.110749, 22.810743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890805, 13.529619, 22.517126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.857188, 13.811776, 22.235600>,  <13.837018, 13.981071, 22.066683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.857188, 13.811776, 22.235600>,  <13.890805, 13.529619, 22.517126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857188, 13.811776, 22.235600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281106, -0.660845, -0.695891,
		-0.955990, -0.256332, -0.142751,
		-0.084043, 0.705392, -0.703817,
		13.831975, 14.023394, 22.024454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767152, 13.189768, 21.916746>,  <13.890805, 13.529619, 22.517126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767152, 13.189768, 21.916746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.854133, 13.546401, 21.757854>,  <13.906322, 13.760381, 21.662519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.854133, 13.546401, 21.757854>,  <13.767152, 13.189768, 21.916746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.854133, 13.546401, 21.757854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297844, -0.448170, -0.842871,
		-0.929518, 0.064971, -0.363008,
		0.217452, 0.891584, -0.397231,
		13.919368, 13.813876, 21.638685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335990, 13.285183, 21.430506>,  <13.767152, 13.189768, 21.916746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335990, 13.285183, 21.430506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.636523, 13.525914, 21.322208>,  <13.816843, 13.670353, 21.257229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.636523, 13.525914, 21.322208>,  <13.335990, 13.285183, 21.430506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636523, 13.525914, 21.322208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137348, -0.543891, -0.827840,
		-0.645472, 0.584797, -0.491303,
		0.751333, 0.601827, -0.270746,
		13.861923, 13.706462, 21.240984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399880, 13.317464, 20.684196>,  <13.335990, 13.285183, 21.430506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399880, 13.317464, 20.684196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.747474, 13.477154, 20.801147>,  <13.956030, 13.572968, 20.871319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.747474, 13.477154, 20.801147>,  <13.399880, 13.317464, 20.684196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747474, 13.477154, 20.801147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433617, -0.329658, -0.838631,
		-0.238417, 0.855538, -0.459579,
		0.868984, 0.399225, 0.292380,
		14.008169, 13.596921, 20.888861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601314, 13.816552, 20.248032>,  <13.399880, 13.317464, 20.684196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601314, 13.816552, 20.248032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.937222, 13.676026, 20.413616>,  <14.138767, 13.591711, 20.512966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.937222, 13.676026, 20.413616>,  <13.601314, 13.816552, 20.248032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937222, 13.676026, 20.413616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381332, -0.161091, -0.910294,
		0.386484, 0.922295, -0.001313,
		0.839771, -0.351313, 0.413960,
		14.189154, 13.570632, 20.537804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177677, 14.159693, 19.848066>,  <13.601314, 13.816552, 20.248032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.177677, 14.159693, 19.848066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.337342, 13.844667, 20.035858>,  <14.433141, 13.655652, 20.148533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.337342, 13.844667, 20.035858>,  <14.177677, 14.159693, 19.848066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.337342, 13.844667, 20.035858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526473, -0.222344, -0.820603,
		0.750664, 0.574722, 0.325880,
		0.399162, -0.787564, 0.469481,
		14.457090, 13.608398, 20.176702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848250, 14.201216, 19.704918>,  <14.177677, 14.159693, 19.848066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848250, 14.201216, 19.704918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.820374, 13.823160, 19.832579>,  <14.803647, 13.596327, 19.909174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.820374, 13.823160, 19.832579>,  <14.848250, 14.201216, 19.704918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820374, 13.823160, 19.832579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345117, -0.323016, -0.881223,
		0.935968, 0.048729, 0.348695,
		-0.069693, -0.945138, 0.319151,
		14.799466, 13.539618, 19.928324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532034, 13.930737, 19.797121>,  <14.848250, 14.201216, 19.704918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532034, 13.930737, 19.797121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.266049, 13.639067, 19.732462>,  <15.106459, 13.464065, 19.693666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.266049, 13.639067, 19.732462>,  <15.532034, 13.930737, 19.797121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.266049, 13.639067, 19.732462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547926, -0.329189, -0.769033,
		0.507548, -0.599947, 0.618432,
		-0.664960, -0.729176, -0.161647,
		15.066562, 13.420314, 19.683968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.992723, 13.390992, 19.982759>,  <15.532034, 13.930737, 19.797121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.992723, 13.390992, 19.982759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.299696, 13.647443, 19.983564>,  <16.483879, 13.801313, 19.984047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.299696, 13.647443, 19.983564>,  <15.992723, 13.390992, 19.982759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299696, 13.647443, 19.983564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197417, 0.233321, 0.952149,
		0.609980, -0.731107, 0.305627,
		0.767432, 0.641128, 0.002012,
		16.529926, 13.839781, 19.984167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272564, 13.293313, 20.617537>,  <15.992723, 13.390992, 19.982759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272564, 13.293313, 20.617537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.437752, 13.639163, 20.503077>,  <16.536863, 13.846673, 20.434401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.437752, 13.639163, 20.503077>,  <16.272564, 13.293313, 20.617537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.437752, 13.639163, 20.503077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045504, 0.333389, 0.941691,
		0.909608, -0.375867, 0.177023,
		0.412968, 0.864625, -0.286150,
		16.561642, 13.898550, 20.417233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885857, 13.435031, 20.999792>,  <16.272564, 13.293313, 20.617537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885857, 13.435031, 20.999792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.774008, 13.792289, 20.858879>,  <16.706898, 14.006643, 20.774330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.774008, 13.792289, 20.858879>,  <16.885857, 13.435031, 20.999792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.774008, 13.792289, 20.858879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084753, 0.388450, 0.917564,
		0.956362, 0.226714, -0.184316,
		-0.279622, 0.893145, -0.352284,
		16.690121, 14.060232, 20.753195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.278725, 13.869344, 21.398027>,  <16.885857, 13.435031, 20.999792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.278725, 13.869344, 21.398027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.986889, 14.095831, 21.244616>,  <16.811787, 14.231723, 21.152569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.986889, 14.095831, 21.244616>,  <17.278725, 13.869344, 21.398027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986889, 14.095831, 21.244616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023800, 0.539448, 0.841682,
		0.683470, 0.623211, -0.380100,
		-0.729590, 0.566218, -0.383529,
		16.768011, 14.265697, 21.129557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.531439, 14.532609, 21.475298>,  <17.278725, 13.869344, 21.398027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.531439, 14.532609, 21.475298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.136684, 14.584559, 21.436953>,  <16.899832, 14.615729, 21.413946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.136684, 14.584559, 21.436953>,  <17.531439, 14.532609, 21.475298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.136684, 14.584559, 21.436953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018358, 0.499706, 0.866000,
		0.160377, 0.856403, -0.490768,
		-0.986885, 0.129876, -0.095863,
		16.840618, 14.623523, 21.408194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.394758, 15.156013, 21.706501>,  <17.531439, 14.532609, 21.475298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.394758, 15.156013, 21.706501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.044582, 14.965153, 21.737322>,  <16.834476, 14.850637, 21.755816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.044582, 14.965153, 21.737322>,  <17.394758, 15.156013, 21.706501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.044582, 14.965153, 21.737322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155086, 0.428301, 0.890228,
		-0.457773, 0.767390, -0.448950,
		-0.875438, -0.477148, 0.077053,
		16.781950, 14.822008, 21.760437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.994308, 15.647785, 22.100676>,  <17.394758, 15.156013, 21.706501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.994308, 15.647785, 22.100676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.777166, 15.314124, 22.139660>,  <16.646881, 15.113928, 22.163050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.777166, 15.314124, 22.139660>,  <16.994308, 15.647785, 22.100676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777166, 15.314124, 22.139660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152554, 0.212059, 0.965276,
		-0.825855, 0.509136, -0.242371,
		-0.542854, -0.834153, 0.097460,
		16.614309, 15.063878, 22.168898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375986, 15.827131, 22.499804>,  <16.994308, 15.647785, 22.100676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.375986, 15.827131, 22.499804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.404852, 15.430751, 22.545071>,  <16.422171, 15.192923, 22.572231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.404852, 15.430751, 22.545071>,  <16.375986, 15.827131, 22.499804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.404852, 15.430751, 22.545071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354567, 0.080566, 0.931553,
		-0.932242, -0.107350, -0.345545,
		0.072163, -0.990952, 0.113170,
		16.426500, 15.133466, 22.579021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685139, 15.609678, 22.715145>,  <16.375986, 15.827131, 22.499804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685139, 15.609678, 22.715145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.942809, 15.335872, 22.851660>,  <16.097412, 15.171588, 22.933569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.942809, 15.335872, 22.851660>,  <15.685139, 15.609678, 22.715145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942809, 15.335872, 22.851660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364722, 0.117307, 0.923697,
		-0.672321, -0.719497, -0.174092,
		0.644175, -0.684516, 0.341285,
		16.136063, 15.130517, 22.954044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265509, 15.189200, 23.117264>,  <15.685139, 15.609678, 22.715145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265509, 15.189200, 23.117264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.638751, 15.108484, 23.236324>,  <15.862697, 15.060055, 23.307760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.638751, 15.108484, 23.236324>,  <15.265509, 15.189200, 23.117264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638751, 15.108484, 23.236324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309319, -0.028234, 0.950539,
		-0.183406, -0.979022, -0.088762,
		0.933104, -0.201791, 0.297651,
		15.918682, 15.047947, 23.325621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301946, 14.517596, 23.438824>,  <15.265509, 15.189200, 23.117264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301946, 14.517596, 23.438824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.619349, 14.715511, 23.580545>,  <15.809791, 14.834260, 23.665579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.619349, 14.715511, 23.580545>,  <15.301946, 14.517596, 23.438824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.619349, 14.715511, 23.580545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286484, -0.209943, 0.934800,
		0.536912, -0.843273, -0.024842,
		0.793506, 0.494788, 0.354305,
		15.857401, 14.863948, 23.686836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.366086, 14.260636, 24.116104>,  <15.301946, 14.517596, 23.438824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.366086, 14.260636, 24.116104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.655312, 14.529870, 24.178247>,  <15.828847, 14.691410, 24.215532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.655312, 14.529870, 24.178247>,  <15.366086, 14.260636, 24.116104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.655312, 14.529870, 24.178247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077939, -0.143973, 0.986508,
		0.686370, -0.725417, -0.051642,
		0.723064, 0.673085, 0.155357,
		15.872231, 14.731795, 24.224854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842221, 13.956696, 24.510681>,  <15.366086, 14.260636, 24.116104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842221, 13.956696, 24.510681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.883028, 14.351825, 24.557671>,  <15.907513, 14.588902, 24.585863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.883028, 14.351825, 24.557671>,  <15.842221, 13.956696, 24.510681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.883028, 14.351825, 24.557671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133257, -0.103454, 0.985667,
		0.985817, -0.116209, 0.121080,
		0.102018, 0.987822, 0.117472,
		15.913633, 14.648171, 24.592913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238800, 14.112172, 25.197163>,  <15.842221, 13.956696, 24.510681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.238800, 14.112172, 25.197163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.044802, 14.446774, 25.095150>,  <15.928403, 14.647534, 25.033943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.044802, 14.446774, 25.095150>,  <16.238800, 14.112172, 25.197163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044802, 14.446774, 25.095150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103270, 0.234802, 0.966542,
		0.868399, 0.495104, -0.027491,
		-0.484994, 0.836505, -0.255031,
		15.899303, 14.697725, 25.018641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.584862, 16.232346, 22.035162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.972877, 16.192881, 22.123970>,  <9.205686, 16.169201, 22.177254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.972877, 16.192881, 22.123970>,  <8.584862, 16.232346, 22.035162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.972877, 16.192881, 22.123970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201690, -0.182460, -0.962304,
		0.135453, 0.978251, -0.157093,
		0.970038, -0.098663, 0.222018,
		9.263888, 16.163282, 22.190575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.865442, 16.490526, 21.419580>,  <8.584862, 16.232346, 22.035162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.865442, 16.490526, 21.419580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.157043, 16.282307, 21.597382>,  <9.332003, 16.157375, 21.704063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.157043, 16.282307, 21.597382>,  <8.865442, 16.490526, 21.419580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.157043, 16.282307, 21.597382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407107, -0.192331, -0.892901,
		0.550293, 0.831887, 0.071711,
		0.729000, -0.520551, 0.444505,
		9.375743, 16.126141, 21.730734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.482341, 16.694098, 20.994686>,  <8.865442, 16.490526, 21.419580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.482341, 16.694098, 20.994686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.562936, 16.350157, 21.182327>,  <9.611293, 16.143793, 21.294912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.562936, 16.350157, 21.182327>,  <9.482341, 16.694098, 20.994686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.562936, 16.350157, 21.182327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550698, -0.296616, -0.780224,
		0.810021, 0.415540, 0.413754,
		0.201488, -0.859852, 0.469103,
		9.623383, 16.092201, 21.323057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.127484, 16.620176, 20.885908>,  <9.482341, 16.694098, 20.994686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.127484, 16.620176, 20.885908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.011848, 16.242868, 20.951235>,  <9.942467, 16.016483, 20.990431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.011848, 16.242868, 20.951235>,  <10.127484, 16.620176, 20.885908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.011848, 16.242868, 20.951235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627563, -0.315566, -0.711746,
		0.722905, -0.103266, 0.683187,
		-0.289090, -0.943268, 0.163318,
		9.925121, 15.959888, 21.000231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708535, 16.169901, 20.872381>,  <10.127484, 16.620176, 20.885908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708535, 16.169901, 20.872381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.406606, 15.916439, 20.804594>,  <10.225448, 15.764361, 20.763922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.406606, 15.916439, 20.804594>,  <10.708535, 16.169901, 20.872381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406606, 15.916439, 20.804594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506152, -0.398360, -0.764931,
		0.417194, -0.663165, 0.621419,
		-0.754824, -0.633657, -0.169468,
		10.180159, 15.726342, 20.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.057138, 15.643416, 20.616655>,  <10.708535, 16.169901, 20.872381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.057138, 15.643416, 20.616655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.679775, 15.541499, 20.531746>,  <10.453357, 15.480349, 20.480801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.679775, 15.541499, 20.531746>,  <11.057138, 15.643416, 20.616655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.679775, 15.541499, 20.531746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314103, -0.481162, -0.818427,
		0.106391, -0.838787, 0.533964,
		-0.943409, -0.254793, -0.212274,
		10.396752, 15.465061, 20.468063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.018361, 14.915205, 20.539021>,  <11.057138, 15.643416, 20.616655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.018361, 14.915205, 20.539021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.724611, 15.102291, 20.342272>,  <10.548362, 15.214542, 20.224222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.724611, 15.102291, 20.342272>,  <11.018361, 14.915205, 20.539021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724611, 15.102291, 20.342272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257266, -0.478798, -0.839384,
		-0.628101, -0.742963, 0.231289,
		-0.734372, 0.467715, -0.491873,
		10.504299, 15.242605, 20.194710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006865, 14.468778, 20.002913>,  <11.018361, 14.915205, 20.539021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006865, 14.468778, 20.002913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.762092, 14.769084, 19.903404>,  <10.615228, 14.949268, 19.843699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.762092, 14.769084, 19.903404>,  <11.006865, 14.468778, 20.002913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.762092, 14.769084, 19.903404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030387, -0.291989, -0.955939,
		-0.790326, -0.592530, 0.155864,
		-0.611933, 0.750767, -0.248771,
		10.578511, 14.994314, 19.828773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.431250, 14.180197, 19.627415>,  <11.006865, 14.468778, 20.002913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.431250, 14.180197, 19.627415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.482593, 14.561590, 19.518316>,  <10.513398, 14.790426, 19.452856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.482593, 14.561590, 19.518316>,  <10.431250, 14.180197, 19.627415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.482593, 14.561590, 19.518316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132025, -0.289004, -0.948181,
		-0.982901, 0.085696, -0.162980,
		0.128357, 0.953485, -0.272748,
		10.521100, 14.847635, 19.436491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.993231, 14.306438, 18.972414>,  <10.431250, 14.180197, 19.627415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.993231, 14.306438, 18.972414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.266097, 14.597396, 19.002207>,  <10.429817, 14.771971, 19.020082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.266097, 14.597396, 19.002207>,  <9.993231, 14.306438, 18.972414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.266097, 14.597396, 19.002207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196856, -0.084601, -0.976776,
		-0.704199, 0.680985, -0.200903,
		0.682166, 0.727394, 0.074480,
		10.470747, 14.815614, 19.024551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.785547, 14.653221, 18.416523>,  <9.993231, 14.306438, 18.972414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.785547, 14.653221, 18.416523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.156920, 14.775128, 18.501497>,  <10.379745, 14.848272, 18.552483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.156920, 14.775128, 18.501497>,  <9.785547, 14.653221, 18.416523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156920, 14.775128, 18.501497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209926, 0.041385, -0.976841,
		-0.306501, 0.951527, -0.025555,
		0.928433, 0.304768, 0.212435,
		10.435451, 14.866559, 18.565228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.985167, 15.101261, 17.896057>,  <9.785547, 14.653221, 18.416523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.985167, 15.101261, 17.896057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.332676, 15.024808, 18.078791>,  <10.541182, 14.978936, 18.188431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.332676, 15.024808, 18.078791>,  <9.985167, 15.101261, 17.896057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.332676, 15.024808, 18.078791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467681, 0.013392, -0.883796,
		0.162805, 0.981473, 0.101024,
		0.868774, -0.191134, 0.456836,
		10.593308, 14.967468, 18.215841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.409595, 15.615474, 17.546436>,  <9.985167, 15.101261, 17.896057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.409595, 15.615474, 17.546436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.616643, 15.305073, 17.690599>,  <10.740871, 15.118833, 17.777098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.616643, 15.305073, 17.690599>,  <10.409595, 15.615474, 17.546436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616643, 15.305073, 17.690599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411371, -0.143636, -0.900079,
		0.750230, 0.614158, 0.244876,
		0.517618, -0.776002, 0.360407,
		10.771929, 15.072272, 17.798721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072595, 15.802206, 17.317863>,  <10.409595, 15.615474, 17.546436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072595, 15.802206, 17.317863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.043808, 15.408772, 17.384050>,  <11.026536, 15.172710, 17.423763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.043808, 15.408772, 17.384050>,  <11.072595, 15.802206, 17.317863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.043808, 15.408772, 17.384050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353049, -0.180278, -0.918072,
		0.932833, -0.007651, 0.360228,
		-0.071965, -0.983586, 0.165468,
		11.022219, 15.113696, 17.433691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665664, 15.966370, 17.808647>,  <11.072595, 15.802206, 17.317863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665664, 15.966370, 17.808647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.895184, 16.293940, 17.812988>,  <12.032895, 16.490482, 17.815594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.895184, 16.293940, 17.812988>,  <11.665664, 15.966370, 17.808647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.895184, 16.293940, 17.812988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475718, 0.322477, 0.818353,
		0.666669, -0.474734, 0.574614,
		0.573799, 0.818924, 0.010854,
		12.067324, 16.539618, 17.816244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836512, 16.049917, 18.490164>,  <11.665664, 15.966370, 17.808647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836512, 16.049917, 18.490164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.912835, 16.402952, 18.318289>,  <11.958630, 16.614773, 18.215164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.912835, 16.402952, 18.318289>,  <11.836512, 16.049917, 18.490164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.912835, 16.402952, 18.318289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312139, 0.469564, 0.825881,
		0.930678, -0.023463, 0.365087,
		0.190809, 0.882586, -0.429689,
		11.970078, 16.667728, 18.189383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.202844, 16.324844, 18.957571>,  <11.836512, 16.049917, 18.490164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.202844, 16.324844, 18.957571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.074409, 16.639910, 18.747242>,  <11.997349, 16.828949, 18.621044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.074409, 16.639910, 18.747242>,  <12.202844, 16.324844, 18.957571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074409, 16.639910, 18.747242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166381, 0.499670, 0.850086,
		0.932321, 0.360436, -0.029384,
		-0.321084, 0.787665, -0.525823,
		11.978085, 16.876209, 18.589495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681523, 17.047270, 19.127214>,  <12.202844, 16.324844, 18.957571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681523, 17.047270, 19.127214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.317383, 17.138178, 18.988876>,  <12.098899, 17.192722, 18.905874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.317383, 17.138178, 18.988876>,  <12.681523, 17.047270, 19.127214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.317383, 17.138178, 18.988876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200493, 0.488864, 0.849008,
		0.362027, 0.842234, -0.399472,
		-0.910351, 0.227272, -0.345844,
		12.044277, 17.206360, 18.885122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.463122, 17.664814, 19.462023>,  <12.681523, 17.047270, 19.127214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.463122, 17.664814, 19.462023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.101831, 17.582502, 19.311378>,  <11.885056, 17.533115, 19.220993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.101831, 17.582502, 19.311378>,  <12.463122, 17.664814, 19.462023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101831, 17.582502, 19.311378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428727, 0.472137, 0.770247,
		0.019311, 0.857171, -0.514670,
		-0.903228, -0.205778, -0.376610,
		11.830863, 17.520769, 19.198395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.122185, 18.297611, 19.364822>,  <12.463122, 17.664814, 19.462023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.122185, 18.297611, 19.364822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.857217, 18.001854, 19.412983>,  <11.698236, 17.824400, 19.441879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.857217, 18.001854, 19.412983>,  <12.122185, 18.297611, 19.364822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.857217, 18.001854, 19.412983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289127, 0.400602, 0.869438,
		-0.691091, 0.541121, -0.479146,
		-0.662419, -0.739395, 0.120400,
		11.658491, 17.780035, 19.449102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482284, 18.614149, 19.421255>,  <12.122185, 18.297611, 19.364822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482284, 18.614149, 19.421255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437462, 18.250023, 19.580641>,  <11.410569, 18.031548, 19.676271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437462, 18.250023, 19.580641>,  <11.482284, 18.614149, 19.421255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437462, 18.250023, 19.580641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408915, 0.407705, 0.816434,
		-0.905667, -0.071452, -0.417926,
		-0.112054, -0.910314, 0.398463,
		11.403846, 17.976929, 19.700180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.800705, 18.605743, 19.781239>,  <11.482284, 18.614149, 19.421255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.800705, 18.605743, 19.781239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.976652, 18.290648, 19.953741>,  <11.082221, 18.101589, 20.057241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.976652, 18.290648, 19.953741>,  <10.800705, 18.605743, 19.781239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.976652, 18.290648, 19.953741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426703, 0.239215, 0.872182,
		-0.790215, -0.567663, -0.230908,
		0.439869, -0.787740, 0.431255,
		11.108613, 18.054325, 20.083118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.258433, 18.385872, 20.264614>,  <10.800705, 18.605743, 19.781239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.258433, 18.385872, 20.264614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.581891, 18.186440, 20.389521>,  <10.775966, 18.066780, 20.464464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.581891, 18.186440, 20.389521>,  <10.258433, 18.385872, 20.264614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.581891, 18.186440, 20.389521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305183, 0.098271, 0.947210,
		-0.502949, -0.861254, -0.072693,
		0.808644, -0.498583, 0.312266,
		10.824485, 18.036865, 20.483200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.955488, 18.131227, 20.775089>,  <10.258433, 18.385872, 20.264614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.955488, 18.131227, 20.775089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.346754, 18.108759, 20.855127>,  <10.581513, 18.095278, 20.903151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.346754, 18.108759, 20.855127>,  <9.955488, 18.131227, 20.775089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.346754, 18.108759, 20.855127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185856, 0.194462, 0.963142,
		-0.093014, -0.979300, 0.179775,
		0.978165, -0.056173, 0.200096,
		10.640203, 18.091908, 20.915155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.004343, 17.879004, 21.399117>,  <9.955488, 18.131227, 20.775089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.004343, 17.879004, 21.399117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.348299, 18.071217, 21.330212>,  <10.554673, 18.186544, 21.288868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.348299, 18.071217, 21.330212>,  <10.004343, 17.879004, 21.399117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.348299, 18.071217, 21.330212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075355, 0.214270, 0.973863,
		0.504886, -0.850397, 0.148039,
		0.859891, 0.480535, -0.172263,
		10.606266, 18.215376, 21.278532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.420215, 17.713627, 21.981310>,  <10.004343, 17.879004, 21.399117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.420215, 17.713627, 21.981310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.620066, 18.021545, 21.822420>,  <10.739977, 18.206297, 21.727087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.620066, 18.021545, 21.822420>,  <10.420215, 17.713627, 21.981310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.620066, 18.021545, 21.822420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120757, 0.392188, 0.911924,
		0.857782, -0.503591, 0.102990,
		0.499628, 0.769795, -0.397224,
		10.769954, 18.252483, 21.703253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.066969, 17.732143, 22.492575>,  <10.420215, 17.713627, 21.981310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.066969, 17.732143, 22.492575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.038190, 18.079609, 22.296516>,  <11.020923, 18.288090, 22.178881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.038190, 18.079609, 22.296516>,  <11.066969, 17.732143, 22.492575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038190, 18.079609, 22.296516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012525, 0.490593, 0.871299,
		0.997330, 0.068828, -0.024418,
		-0.071949, 0.868666, -0.490145,
		11.016605, 18.340208, 22.149473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.582710, 18.163485, 22.821054>,  <11.066969, 17.732143, 22.492575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.582710, 18.163485, 22.821054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.273033, 18.375965, 22.683388>,  <11.087227, 18.503454, 22.600788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.273033, 18.375965, 22.683388>,  <11.582710, 18.163485, 22.821054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.273033, 18.375965, 22.683388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093858, 0.441388, 0.892394,
		0.625951, 0.723188, -0.291862,
		-0.774194, 0.531201, -0.344165,
		11.040775, 18.535326, 22.580139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159840, 18.581675, 23.013449>,  <11.582710, 18.163485, 22.821054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159840, 18.581675, 23.013449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.535045, 18.621601, 23.146215>,  <12.760168, 18.645557, 23.225876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.535045, 18.621601, 23.146215>,  <12.159840, 18.581675, 23.013449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535045, 18.621601, 23.146215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346601, -0.268002, -0.898912,
		-0.000771, 0.958233, -0.285986,
		0.938012, 0.099816, 0.331918,
		12.816448, 18.651546, 23.245790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.539278, 18.776730, 22.546934>,  <12.159840, 18.581675, 23.013449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.539278, 18.776730, 22.546934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.849216, 18.661413, 22.771969>,  <13.035180, 18.592224, 22.906990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.849216, 18.661413, 22.771969>,  <12.539278, 18.776730, 22.546934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849216, 18.661413, 22.771969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459837, -0.353635, -0.814550,
		0.433777, 0.889849, -0.141446,
		0.774847, -0.288291, 0.562585,
		13.081671, 18.574926, 22.940744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.227922, 19.144451, 22.380684>,  <12.539278, 18.776730, 22.546934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.227922, 19.144451, 22.380684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.320786, 18.778524, 22.512875>,  <13.376504, 18.558969, 22.592190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.320786, 18.778524, 22.512875>,  <13.227922, 19.144451, 22.380684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.320786, 18.778524, 22.512875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624532, -0.120280, -0.771682,
		0.745696, 0.385547, 0.543407,
		0.232158, -0.914815, 0.330479,
		13.390433, 18.504080, 22.612019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863361, 19.218779, 22.325155>,  <13.227922, 19.144451, 22.380684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863361, 19.218779, 22.325155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.816745, 18.823298, 22.362858>,  <13.788774, 18.586008, 22.385479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.816745, 18.823298, 22.362858>,  <13.863361, 19.218779, 22.325155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816745, 18.823298, 22.362858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652456, -0.147768, -0.743280,
		0.748812, -0.025124, 0.662307,
		-0.116542, -0.988703, 0.094258,
		13.781782, 18.526686, 22.391134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521096, 18.934729, 22.328096>,  <13.863361, 19.218779, 22.325155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521096, 18.934729, 22.328096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.281884, 18.636549, 22.210340>,  <14.138357, 18.457642, 22.139687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.281884, 18.636549, 22.210340>,  <14.521096, 18.934729, 22.328096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.281884, 18.636549, 22.210340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641773, -0.225373, -0.733031,
		0.480091, -0.627305, 0.613190,
		-0.598030, -0.745450, -0.294388,
		14.102475, 18.412914, 22.122025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931174, 18.395281, 22.142336>,  <14.521096, 18.934729, 22.328096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931174, 18.395281, 22.142336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.587566, 18.279530, 21.973412>,  <14.381402, 18.210079, 21.872057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.587566, 18.279530, 21.973412>,  <14.931174, 18.395281, 22.142336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587566, 18.279530, 21.973412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483855, -0.189429, -0.854401,
		0.167247, -0.938284, 0.302741,
		-0.859018, -0.289378, -0.422311,
		14.329861, 18.192717, 21.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986691, 17.691153, 21.965029>,  <14.931174, 18.395281, 22.142336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.986691, 17.691153, 21.965029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.704641, 17.846001, 21.727394>,  <14.535412, 17.938910, 21.584812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.704641, 17.846001, 21.727394>,  <14.986691, 17.691153, 21.965029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704641, 17.846001, 21.727394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466068, -0.378398, -0.799747,
		-0.534401, -0.840805, 0.086392,
		-0.705122, 0.387121, -0.594088,
		14.493105, 17.962137, 21.549168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874441, 17.147963, 21.458399>,  <14.986691, 17.691153, 21.965029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874441, 17.147963, 21.458399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.730439, 17.491495, 21.312628>,  <14.644038, 17.697615, 21.225164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.730439, 17.491495, 21.312628>,  <14.874441, 17.147963, 21.458399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730439, 17.491495, 21.312628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409697, -0.205407, -0.888795,
		-0.838179, -0.469276, -0.277913,
		-0.360005, 0.858830, -0.364429,
		14.622437, 17.749144, 21.203299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565930, 16.987926, 20.834873>,  <14.874441, 17.147963, 21.458399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565930, 16.987926, 20.834873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.642234, 17.380081, 20.815083>,  <14.688016, 17.615376, 20.803207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.642234, 17.380081, 20.815083>,  <14.565930, 16.987926, 20.834873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642234, 17.380081, 20.815083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452938, -0.132624, -0.881622,
		-0.870895, 0.145767, -0.469354,
		0.190759, 0.980389, -0.049478,
		14.699462, 17.674198, 20.800240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.511459, 17.112612, 20.134712>,  <14.565930, 16.987926, 20.834873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.511459, 17.112612, 20.134712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.701206, 17.431021, 20.285086>,  <14.815055, 17.622066, 20.375309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.701206, 17.431021, 20.285086>,  <14.511459, 17.112612, 20.134712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701206, 17.431021, 20.285086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619887, 0.001175, -0.784690,
		-0.625072, 0.605267, -0.492886,
		0.474368, 0.796022, 0.375932,
		14.843516, 17.669827, 20.397865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461458, 17.661093, 19.660154>,  <14.511459, 17.112612, 20.134712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461458, 17.661093, 19.660154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.791912, 17.689964, 19.883688>,  <14.990184, 17.707287, 20.017807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.791912, 17.689964, 19.883688>,  <14.461458, 17.661093, 19.660154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.791912, 17.689964, 19.883688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563036, -0.144844, -0.813640,
		0.022214, 0.986818, -0.160301,
		0.826134, 0.072181, 0.558832,
		15.039752, 17.711618, 20.051338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.863378, 18.043560, 19.291714>,  <14.461458, 17.661093, 19.660154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.863378, 18.043560, 19.291714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.147660, 17.894821, 19.530586>,  <15.318230, 17.805578, 19.673910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.147660, 17.894821, 19.530586>,  <14.863378, 18.043560, 19.291714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147660, 17.894821, 19.530586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606904, -0.105202, -0.787782,
		0.355758, 0.922314, 0.150906,
		0.710707, -0.371845, 0.597182,
		15.360872, 17.783268, 19.709742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439864, 18.446333, 19.044210>,  <14.863378, 18.043560, 19.291714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439864, 18.446333, 19.044210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.575633, 18.123272, 19.237078>,  <15.657094, 17.929436, 19.352798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.575633, 18.123272, 19.237078>,  <15.439864, 18.446333, 19.044210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575633, 18.123272, 19.237078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683362, -0.140521, -0.716429,
		0.646382, 0.572668, 0.504224,
		0.339422, -0.807654, 0.482170,
		15.677460, 17.880976, 19.381729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231934, 18.459103, 19.095634>,  <15.439864, 18.446333, 19.044210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231934, 18.459103, 19.095634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.105387, 18.083143, 19.147020>,  <16.029459, 17.857567, 19.177853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.105387, 18.083143, 19.147020>,  <16.231934, 18.459103, 19.095634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105387, 18.083143, 19.147020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403266, -0.255823, -0.878596,
		0.858656, -0.226152, 0.459963,
		-0.316366, -0.939899, 0.128465,
		16.010477, 17.801174, 19.185560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<6.285287, 18.892448, 4.967653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.263209, 19.166208, 4.676847>,  <6.249962, 19.330463, 4.502364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.263209, 19.166208, 4.676847>,  <6.285287, 18.892448, 4.967653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.263209, 19.166208, 4.676847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330126, 0.674666, 0.660184,
		0.942322, 0.276445, 0.188700,
		-0.055195, 0.684400, -0.727014,
		6.246651, 19.371529, 4.458743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.595816, 19.523703, 5.225911>,  <6.285287, 18.892448, 4.967653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.595816, 19.523703, 5.225911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.314320, 19.607567, 4.954384>,  <6.145422, 19.657885, 4.791468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.314320, 19.607567, 4.954384>,  <6.595816, 19.523703, 5.225911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.314320, 19.607567, 4.954384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272525, 0.802712, 0.530456,
		0.656109, 0.558298, -0.507764,
		-0.703740, 0.209659, -0.678817,
		6.103198, 19.670464, 4.750739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.551308, 20.291018, 5.264088>,  <6.595816, 19.523703, 5.225911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.551308, 20.291018, 5.264088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.212361, 20.156580, 5.099645>,  <6.008993, 20.075916, 5.000979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.212361, 20.156580, 5.099645>,  <6.551308, 20.291018, 5.264088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.212361, 20.156580, 5.099645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514074, 0.713187, 0.476542,
		0.133032, 0.615146, -0.777109,
		-0.847367, -0.336096, -0.411107,
		5.958151, 20.055752, 4.976313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.155411, 20.680485, 4.805081>,  <6.551308, 20.291018, 5.264088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.155411, 20.680485, 4.805081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.912378, 20.952688, 4.641250>,  <5.766559, 21.116011, 4.542952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.912378, 20.952688, 4.641250>,  <6.155411, 20.680485, 4.805081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.912378, 20.952688, 4.641250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783970, -0.431095, 0.446708,
		0.127422, 0.592508, 0.795423,
		-0.607581, 0.680508, -0.409578,
		5.730104, 21.156841, 4.518377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.520804, 20.648157, 5.246580>,  <6.155411, 20.680485, 4.805081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.520804, 20.648157, 5.246580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.407487, 20.814104, 4.900718>,  <5.339497, 20.913673, 4.693200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.407487, 20.814104, 4.900718>,  <5.520804, 20.648157, 5.246580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.407487, 20.814104, 4.900718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932497, -0.329779, 0.147289,
		-0.224040, 0.848015, 0.480288,
		-0.283292, 0.414869, -0.864656,
		5.322500, 20.938564, 4.641321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.011684, 20.367136, 5.609039>,  <5.520804, 20.648157, 5.246580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.011684, 20.367136, 5.609039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.411642, 20.369516, 5.603740>,  <5.651616, 20.370945, 5.600561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.411642, 20.369516, 5.603740>,  <5.011684, 20.367136, 5.609039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.411642, 20.369516, 5.603740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014486, -0.473534, 0.880657,
		-0.001031, -0.880756, -0.473570,
		0.999895, 0.005952, -0.013247,
		5.711610, 20.371302, 5.599766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.224335, 19.770536, 5.677312>,  <5.011684, 20.367136, 5.609039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.224335, 19.770536, 5.677312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.538219, 19.977592, 5.813709>,  <5.726550, 20.101826, 5.895548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.538219, 19.977592, 5.813709>,  <5.224335, 19.770536, 5.677312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538219, 19.977592, 5.813709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044420, -0.595658, 0.802009,
		0.618269, -0.614198, -0.490413,
		0.784711, 0.517641, 0.340993,
		5.773633, 20.132885, 5.916007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.876680, 19.366173, 5.708039>,  <5.224335, 19.770536, 5.677312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.876680, 19.366173, 5.708039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.854540, 19.649036, 5.989993>,  <5.841256, 19.818754, 6.159165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.854540, 19.649036, 5.989993>,  <5.876680, 19.366173, 5.708039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.854540, 19.649036, 5.989993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032878, -0.704294, 0.709147,
		0.997926, 0.062426, 0.015733,
		-0.055350, 0.707158, 0.704886,
		5.837935, 19.861183, 6.201459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.457553, 19.273119, 6.124340>,  <5.876680, 19.366173, 5.708039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.457553, 19.273119, 6.124340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.132278, 19.430965, 6.295457>,  <5.937114, 19.525673, 6.398127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.132278, 19.430965, 6.295457>,  <6.457553, 19.273119, 6.124340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.132278, 19.430965, 6.295457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056079, -0.678487, 0.732469,
		0.579295, 0.619624, 0.529607,
		-0.813187, 0.394616, 0.427791,
		5.888322, 19.549351, 6.423794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.612719, 19.508608, 6.837910>,  <6.457553, 19.273119, 6.124340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.612719, 19.508608, 6.837910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.238564, 19.388693, 6.762882>,  <6.014072, 19.316744, 6.717866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.238564, 19.388693, 6.762882>,  <6.612719, 19.508608, 6.837910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.238564, 19.388693, 6.762882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075848, -0.688144, 0.721599,
		-0.345399, 0.660747, 0.666418,
		-0.935386, -0.299786, -0.187568,
		5.957949, 19.298758, 6.706612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.361032, 19.363592, 7.511857>,  <6.612719, 19.508608, 6.837910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.361032, 19.363592, 7.511857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.114825, 19.167103, 7.265333>,  <5.967102, 19.049210, 7.117419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.114825, 19.167103, 7.265333>,  <6.361032, 19.363592, 7.511857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.114825, 19.167103, 7.265333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148256, -0.695868, 0.702701,
		-0.774055, 0.523895, 0.355491,
		-0.615516, -0.491225, -0.616310,
		5.930171, 19.019735, 7.080440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.802813, 19.172441, 7.867380>,  <6.361032, 19.363592, 7.511857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.802813, 19.172441, 7.867380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.775160, 18.889400, 7.586092>,  <5.758568, 18.719576, 7.417320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.775160, 18.889400, 7.586092>,  <5.802813, 19.172441, 7.867380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.775160, 18.889400, 7.586092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219566, -0.676827, 0.702635,
		-0.973145, 0.202978, -0.108575,
		-0.069133, -0.707605, -0.703218,
		5.754420, 18.677118, 7.375127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.222085, 18.732399, 8.018205>,  <5.802813, 19.172441, 7.867380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.222085, 18.732399, 8.018205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.448568, 18.508070, 7.776580>,  <5.584457, 18.373472, 7.631606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.448568, 18.508070, 7.776580>,  <5.222085, 18.732399, 8.018205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.448568, 18.508070, 7.776580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067785, -0.762048, 0.643963,
		-0.821471, -0.323669, -0.469491,
		0.566206, -0.560822, -0.604061,
		5.618430, 18.339823, 7.595362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.813299, 18.070753, 7.941803>,  <5.222085, 18.732399, 8.018205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.813299, 18.070753, 7.941803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.187822, 17.986338, 7.829523>,  <5.412536, 17.935688, 7.762156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.187822, 17.986338, 7.829523>,  <4.813299, 18.070753, 7.941803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.187822, 17.986338, 7.829523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041865, -0.860671, 0.507438,
		-0.348677, -0.463366, -0.814687,
		0.936307, -0.211039, -0.280698,
		5.468714, 17.923025, 7.745314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.839081, 17.292906, 7.790473>,  <4.813299, 18.070753, 7.941803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.839081, 17.292906, 7.790473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.209836, 17.422626, 7.866058>,  <5.432289, 17.500460, 7.911410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.209836, 17.422626, 7.866058>,  <4.839081, 17.292906, 7.790473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.209836, 17.422626, 7.866058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113203, -0.721544, 0.683052,
		0.357861, -0.611721, -0.705502,
		0.926888, 0.324302, 0.188964,
		5.487902, 17.519917, 7.922748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336479, 16.730801, 7.738425>,  <4.839081, 17.292906, 7.790473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336479, 16.730801, 7.738425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.532374, 16.984299, 7.977932>,  <5.649911, 17.136398, 8.121636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.532374, 16.984299, 7.977932>,  <5.336479, 16.730801, 7.738425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.532374, 16.984299, 7.977932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030365, -0.698745, 0.714726,
		0.871341, -0.331846, -0.361445,
		0.489737, 0.633746, 0.598768,
		5.679295, 17.174423, 8.157562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.887593, 16.352741, 8.003499>,  <5.336479, 16.730801, 7.738425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.887593, 16.352741, 8.003499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.808503, 16.649588, 8.259678>,  <5.761048, 16.827694, 8.413385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.808503, 16.649588, 8.259678>,  <5.887593, 16.352741, 8.003499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.808503, 16.649588, 8.259678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024070, -0.649473, 0.760004,
		0.979962, 0.165689, 0.110555,
		-0.197727, 0.742114, 0.640446,
		5.749185, 16.872221, 8.451812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.333431, 16.188953, 8.502070>,  <5.887593, 16.352741, 8.003499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.333431, 16.188953, 8.502070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.073099, 16.434669, 8.680538>,  <5.916900, 16.582100, 8.787619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.073099, 16.434669, 8.680538>,  <6.333431, 16.188953, 8.502070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.073099, 16.434669, 8.680538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140031, -0.480460, 0.865765,
		0.746198, 0.625944, 0.226678,
		-0.650830, 0.614291, 0.446170,
		5.877850, 16.618958, 8.814389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.548093, 16.257122, 9.153693>,  <6.333431, 16.188953, 8.502070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.548093, 16.257122, 9.153693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.180652, 16.403540, 9.213268>,  <5.960187, 16.491390, 9.249013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.180652, 16.403540, 9.213268>,  <6.548093, 16.257122, 9.153693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.180652, 16.403540, 9.213268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091074, -0.562827, 0.821542,
		0.384545, 0.741106, 0.550351,
		-0.918603, 0.366043, 0.148938,
		5.905071, 16.513353, 9.257950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.490304, 16.603987, 9.839637>,  <6.548093, 16.257122, 9.153693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.490304, 16.603987, 9.839637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.131982, 16.483786, 9.708654>,  <5.916988, 16.411665, 9.630065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.131982, 16.483786, 9.708654>,  <6.490304, 16.603987, 9.839637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.131982, 16.483786, 9.708654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193187, -0.400262, 0.895807,
		-0.400262, 0.865730, 0.300504,
		-0.895807, -0.300504, -0.327457,
		5.863240, 16.393635, 9.610417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.087739, 16.761259, 10.384807>,  <6.490304, 16.603987, 9.839637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.087739, 16.761259, 10.384807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.850761, 16.502354, 10.192948>,  <5.708574, 16.347010, 10.077833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.850761, 16.502354, 10.192948>,  <6.087739, 16.761259, 10.384807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.850761, 16.502354, 10.192948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293803, -0.380781, 0.876747,
		-0.750126, 0.660345, 0.035424,
		-0.592445, -0.647263, -0.479645,
		5.673028, 16.308174, 10.049055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.416947, 16.801802, 10.714768>,  <6.087739, 16.761259, 10.384807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.416947, 16.801802, 10.714768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.403809, 16.465366, 10.498807>,  <5.395926, 16.263506, 10.369230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.403809, 16.465366, 10.498807>,  <5.416947, 16.801802, 10.714768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.403809, 16.465366, 10.498807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051797, -0.538036, 0.841329,
		-0.998117, 0.055599, -0.025893,
		-0.032846, -0.841086, -0.539903,
		5.393955, 16.213041, 10.336836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.999077, 16.442335, 11.095888>,  <5.416947, 16.801802, 10.714768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.999077, 16.442335, 11.095888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.213853, 16.180395, 10.883148>,  <5.342720, 16.023232, 10.755505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.213853, 16.180395, 10.883148>,  <4.999077, 16.442335, 11.095888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.213853, 16.180395, 10.883148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001554, -0.629668, 0.776862,
		-0.843618, -0.417956, -0.337078,
		0.536941, -0.654852, -0.531849,
		5.374936, 15.983940, 10.723594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.569998, 15.873605, 11.140573>,  <4.999077, 16.442335, 11.095888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.569998, 15.873605, 11.140573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.936316, 15.728025, 11.072620>,  <5.156107, 15.640677, 11.031849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.936316, 15.728025, 11.072620>,  <4.569998, 15.873605, 11.140573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.936316, 15.728025, 11.072620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028129, -0.480040, 0.876796,
		-0.400657, -0.798188, -0.449856,
		0.915796, -0.363948, -0.169879,
		5.211055, 15.618840, 11.021656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.469874, 15.143821, 11.335937>,  <4.569998, 15.873605, 11.140573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.469874, 15.143821, 11.335937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.865251, 15.202872, 11.322163>,  <5.102478, 15.238303, 11.313898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.865251, 15.202872, 11.322163>,  <4.469874, 15.143821, 11.335937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.865251, 15.202872, 11.322163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117080, -0.599156, 0.792025,
		0.096295, -0.786904, -0.609516,
		0.988443, 0.147630, -0.034435,
		5.161784, 15.247161, 11.311832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.894264, 14.434180, 11.333514>,  <4.469874, 15.143821, 11.335937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.894264, 14.434180, 11.333514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.103759, 14.743025, 11.477483>,  <5.229455, 14.928331, 11.563864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.103759, 14.743025, 11.477483>,  <4.894264, 14.434180, 11.333514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.103759, 14.743025, 11.477483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074478, -0.462386, 0.883545,
		0.848618, -0.435939, -0.299674,
		0.523736, 0.772112, 0.359922,
		5.260880, 14.974658, 11.585460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.395525, 14.146191, 11.719975>,  <4.894264, 14.434180, 11.333514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.395525, 14.146191, 11.719975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.365076, 14.517764, 11.864908>,  <5.346806, 14.740708, 11.951868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.365076, 14.517764, 11.864908>,  <5.395525, 14.146191, 11.719975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.365076, 14.517764, 11.864908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006701, -0.363856, 0.931431,
		0.997076, 0.068476, 0.033923,
		-0.076124, 0.928935, 0.362333,
		5.342238, 14.796445, 11.973608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.799876, 14.152952, 12.313048>,  <5.395525, 14.146191, 11.719975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.799876, 14.152952, 12.313048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.619040, 14.503489, 12.379555>,  <5.510540, 14.713810, 12.419458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.619040, 14.503489, 12.379555>,  <5.799876, 14.152952, 12.313048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.619040, 14.503489, 12.379555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159468, -0.103992, 0.981711,
		0.877603, 0.470334, -0.092735,
		-0.452088, 0.876340, 0.166267,
		5.483414, 14.766391, 12.429435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.221870, 14.502457, 12.718624>,  <5.799876, 14.152952, 12.313048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.221870, 14.502457, 12.718624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.867430, 14.676171, 12.783392>,  <5.654765, 14.780400, 12.822252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.867430, 14.676171, 12.783392>,  <6.221870, 14.502457, 12.718624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.867430, 14.676171, 12.783392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111491, -0.139371, 0.983944,
		0.449881, 0.889927, 0.075078,
		-0.886102, 0.434287, 0.161919,
		5.601599, 14.806458, 12.831967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.384722, 14.936291, 13.238701>,  <6.221870, 14.502457, 12.718624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.384722, 14.936291, 13.238701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.989908, 14.872288, 13.243731>,  <5.753020, 14.833886, 13.246750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.989908, 14.872288, 13.243731>,  <6.384722, 14.936291, 13.238701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.989908, 14.872288, 13.243731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024270, -0.071333, 0.997157,
		-0.158657, 0.984535, 0.074291,
		-0.987036, -0.160009, 0.012577,
		5.693798, 14.824286, 13.247504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.172693, 15.483772, 13.683701>,  <6.384722, 14.936291, 13.238701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.172693, 15.483772, 13.683701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.922343, 15.172161, 13.668751>,  <5.772133, 14.985194, 13.659781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.922343, 15.172161, 13.668751>,  <6.172693, 15.483772, 13.683701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.922343, 15.172161, 13.668751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030052, -0.071974, 0.996953,
		-0.779344, 0.622845, 0.068458,
		-0.625875, -0.779027, -0.037375,
		5.734580, 14.938453, 13.657538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.857121, 15.523949, 14.069566>,  <6.172693, 15.483772, 13.683701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.857121, 15.523949, 14.069566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.192020, 15.391512, 13.895487>,  <7.392959, 15.312050, 13.791039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.192020, 15.391512, 13.895487>,  <6.857121, 15.523949, 14.069566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.192020, 15.391512, 13.895487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070821, 0.854814, -0.514080,
		0.542220, 0.399591, 0.739138,
		0.837247, -0.331091, -0.435198,
		7.443194, 15.292185, 13.764928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.360091, 15.993967, 14.132037>,  <6.857121, 15.523949, 14.069566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.360091, 15.993967, 14.132037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.499887, 15.784355, 13.821360>,  <7.583764, 15.658588, 13.634953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.499887, 15.784355, 13.821360>,  <7.360091, 15.993967, 14.132037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.499887, 15.784355, 13.821360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195012, 0.851496, -0.486748,
		0.916421, 0.018649, 0.399780,
		0.349489, -0.524029, -0.776693,
		7.604733, 15.627147, 13.588352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.976798, 16.323008, 13.952391>,  <7.360091, 15.993967, 14.132037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.976798, 16.323008, 13.952391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.921235, 16.117689, 13.613632>,  <7.887897, 15.994498, 13.410378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.921235, 16.117689, 13.613632>,  <7.976798, 16.323008, 13.952391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.921235, 16.117689, 13.613632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241005, 0.811954, -0.531646,
		0.960532, -0.277956, 0.010919,
		-0.138908, -0.513295, -0.846896,
		7.879563, 15.963700, 13.359564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.540997, 16.479004, 13.483521>,  <7.976798, 16.323008, 13.952391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.540997, 16.479004, 13.483521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.251201, 16.343395, 13.243462>,  <8.077323, 16.262030, 13.099426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.251201, 16.343395, 13.243462>,  <8.540997, 16.479004, 13.483521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.251201, 16.343395, 13.243462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213486, 0.717500, -0.663036,
		0.655389, -0.608488, -0.447447,
		-0.724492, -0.339022, -0.600145,
		8.033854, 16.241688, 13.063417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.796345, 16.481615, 12.802140>,  <8.540997, 16.479004, 13.483521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.796345, 16.481615, 12.802140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399833, 16.492741, 12.750617>,  <8.161925, 16.499416, 12.719704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399833, 16.492741, 12.750617>,  <8.796345, 16.481615, 12.802140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399833, 16.492741, 12.750617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117859, 0.624326, -0.772222,
		0.058941, -0.780669, -0.622160,
		-0.991280, 0.027812, -0.128807,
		8.102448, 16.501083, 12.711975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.741509, 16.564905, 12.144948>,  <8.796345, 16.481615, 12.802140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.741509, 16.564905, 12.144948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.382163, 16.676418, 12.280725>,  <8.166555, 16.743326, 12.362190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.382163, 16.676418, 12.280725>,  <8.741509, 16.564905, 12.144948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.382163, 16.676418, 12.280725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047486, 0.706606, -0.706012,
		-0.436675, -0.650375, -0.621552,
		-0.898365, 0.278783, 0.339441,
		8.112654, 16.760054, 12.382557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.332191, 16.777670, 11.486183>,  <8.741509, 16.564905, 12.144948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.332191, 16.777670, 11.486183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.134088, 16.926306, 11.800289>,  <8.015226, 17.015488, 11.988753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.134088, 16.926306, 11.800289>,  <8.332191, 16.777670, 11.486183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.134088, 16.926306, 11.800289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217557, 0.822055, -0.526208,
		-0.841065, -0.431448, -0.326286,
		-0.495257, 0.371590, 0.785266,
		7.985510, 17.037783, 12.035869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.608723, 16.995174, 11.269777>,  <8.332191, 16.777670, 11.486183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.608723, 16.995174, 11.269777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.647957, 17.204775, 11.608198>,  <7.671498, 17.330534, 11.811251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.647957, 17.204775, 11.608198>,  <7.608723, 16.995174, 11.269777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.647957, 17.204775, 11.608198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281438, 0.830052, -0.481462,
		-0.954553, -0.190887, 0.228890,
		0.098086, 0.523999, 0.846052,
		7.677383, 17.361975, 11.862014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.085560, 17.326029, 11.242383>,  <7.608723, 16.995174, 11.269777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.085560, 17.326029, 11.242383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.313291, 17.536121, 11.495365>,  <7.449929, 17.662178, 11.647154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.313291, 17.536121, 11.495365>,  <7.085560, 17.326029, 11.242383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.313291, 17.536121, 11.495365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093824, 0.805790, -0.584722,
		-0.816741, 0.273558, 0.508036,
		0.569326, 0.525233, 0.632455,
		7.484088, 17.693691, 11.685102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.670513, 17.873363, 11.284834>,  <7.085560, 17.326029, 11.242383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.670513, 17.873363, 11.284834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.029485, 18.005098, 11.402243>,  <7.244868, 18.084139, 11.472688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.029485, 18.005098, 11.402243>,  <6.670513, 17.873363, 11.284834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.029485, 18.005098, 11.402243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195967, 0.893703, -0.403599,
		-0.395241, 0.304681, 0.866576,
		0.897430, 0.329339, 0.293521,
		7.298714, 18.103901, 11.490299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.528181, 18.430483, 11.591060>,  <6.670513, 17.873363, 11.284834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.528181, 18.430483, 11.591060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.913319, 18.480865, 11.495506>,  <7.144402, 18.511095, 11.438174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.913319, 18.480865, 11.495506>,  <6.528181, 18.430483, 11.591060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.913319, 18.480865, 11.495506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234883, 0.827102, -0.510619,
		0.133266, 0.547756, 0.825956,
		0.962845, 0.125955, -0.238884,
		7.202172, 18.518652, 11.423841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.595629, 19.183235, 11.513576>,  <6.528181, 18.430483, 11.591060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.595629, 19.183235, 11.513576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.928676, 19.051607, 11.335379>,  <7.128503, 18.972630, 11.228460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.928676, 19.051607, 11.335379>,  <6.595629, 19.183235, 11.513576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.928676, 19.051607, 11.335379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043986, 0.762525, -0.645462,
		0.552101, 0.557017, 0.620416,
		0.832616, -0.329071, -0.445492,
		7.178461, 18.952887, 11.201731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.235927, 19.739731, 11.654391>,  <6.595629, 19.183235, 11.513576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.235927, 19.739731, 11.654391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.332861, 19.521273, 11.333643>,  <7.391022, 19.390198, 11.141194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.332861, 19.521273, 11.333643>,  <7.235927, 19.739731, 11.654391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.332861, 19.521273, 11.333643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062194, 0.816062, -0.574609,
		0.968197, 0.189120, 0.163794,
		0.242336, -0.546147, -0.801871,
		7.405562, 19.357428, 11.093081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.884092, 20.034348, 11.181598>,  <7.235927, 19.739731, 11.654391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.884092, 20.034348, 11.181598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.650523, 19.807503, 10.949246>,  <7.510382, 19.671396, 10.809835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.650523, 19.807503, 10.949246>,  <7.884092, 20.034348, 11.181598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.650523, 19.807503, 10.949246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014826, 0.707966, -0.706091,
		0.811675, -0.420914, -0.404988,
		-0.583921, -0.567112, -0.580878,
		7.475347, 19.637369, 10.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.062353, 20.169298, 10.537878>,  <7.884092, 20.034348, 11.181598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.062353, 20.169298, 10.537878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.710943, 20.002426, 10.444796>,  <7.500096, 19.902304, 10.388947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.710943, 20.002426, 10.444796>,  <8.062353, 20.169298, 10.537878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.710943, 20.002426, 10.444796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181066, 0.741608, -0.645936,
		0.442048, -0.525337, -0.727059,
		-0.878527, -0.417180, -0.232705,
		7.447385, 19.877272, 10.374984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.103003, 20.085112, 9.783270>,  <8.062353, 20.169298, 10.537878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.103003, 20.085112, 9.783270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.723807, 20.096493, 9.910082>,  <7.496289, 20.103321, 9.986169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.723807, 20.096493, 9.910082>,  <8.103003, 20.085112, 9.783270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.723807, 20.096493, 9.910082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211384, 0.688382, -0.693864,
		-0.237978, -0.724790, -0.646565,
		-0.947989, 0.028451, 0.317029,
		7.439410, 20.105028, 10.005191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.716478, 20.116478, 9.172664>,  <8.103003, 20.085112, 9.783270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.716478, 20.116478, 9.172664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459096, 20.218664, 9.461304>,  <7.304667, 20.279976, 9.634487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459096, 20.218664, 9.461304>,  <7.716478, 20.116478, 9.172664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.459096, 20.218664, 9.461304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458185, 0.626622, -0.630406,
		-0.613216, -0.736263, -0.286153,
		-0.643454, 0.255463, 0.721599,
		7.266060, 20.295303, 9.677783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.012135, 20.054825, 8.844729>,  <7.716478, 20.116478, 9.172664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.012135, 20.054825, 8.844729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.941156, 20.288342, 9.161640>,  <6.898569, 20.428452, 9.351787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.941156, 20.288342, 9.161640>,  <7.012135, 20.054825, 8.844729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.941156, 20.288342, 9.161640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358283, 0.711484, -0.604503,
		-0.916595, -0.391127, 0.082911,
		-0.177447, 0.583789, 0.792277,
		6.887922, 20.463478, 9.399323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.352356, 20.213310, 8.713523>,  <7.012135, 20.054825, 8.844729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.352356, 20.213310, 8.713523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.516857, 20.485338, 8.956299>,  <6.615557, 20.648556, 9.101965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.516857, 20.485338, 8.956299>,  <6.352356, 20.213310, 8.713523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.516857, 20.485338, 8.956299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415157, 0.732528, -0.539488,
		-0.811491, -0.030111, 0.583589,
		0.411251, 0.680071, 0.606941,
		6.640232, 20.689360, 9.138381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.856005, 20.739481, 8.823277>,  <6.352356, 20.213310, 8.713523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.856005, 20.739481, 8.823277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.188287, 20.932064, 8.935080>,  <6.387657, 21.047613, 9.002162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.188287, 20.932064, 8.935080>,  <5.856005, 20.739481, 8.823277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.188287, 20.932064, 8.935080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181987, 0.709336, -0.680972,
		-0.526125, 0.514821, 0.676869,
		0.830706, 0.481458, 0.279509,
		6.437499, 21.076502, 9.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.699301, 21.487192, 9.066563>,  <5.856005, 20.739481, 8.823277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.699301, 21.487192, 9.066563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.080202, 21.478903, 8.944720>,  <6.308743, 21.473928, 8.871614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.080202, 21.478903, 8.944720>,  <5.699301, 21.487192, 9.066563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.080202, 21.478903, 8.944720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134502, 0.867187, -0.479475,
		0.274088, 0.497552, 0.822994,
		0.952253, -0.020723, -0.304607,
		6.365878, 21.472685, 8.853338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.369843, 14.661279, 25.866703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.062885, 14.790065, 25.644913>,  <15.878711, 14.867336, 25.511839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.062885, 14.790065, 25.644913>,  <16.369843, 14.661279, 25.866703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.062885, 14.790065, 25.644913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456707, 0.332492, 0.825147,
		0.450028, 0.886446, -0.108108,
		-0.767394, 0.321966, -0.554477,
		15.832667, 14.886655, 25.478569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304106, 15.419189, 25.896854>,  <16.369843, 14.661279, 25.866703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304106, 15.419189, 25.896854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.948646, 15.286769, 25.769920>,  <15.735369, 15.207316, 25.693760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.948646, 15.286769, 25.769920>,  <16.304106, 15.419189, 25.896854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.948646, 15.286769, 25.769920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447369, 0.473741, 0.758572,
		-0.100790, 0.816073, -0.569092,
		-0.888652, -0.331051, -0.317337,
		15.682050, 15.187453, 25.674719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.824198, 16.033703, 25.873041>,  <16.304106, 15.419189, 25.896854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.824198, 16.033703, 25.873041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.589404, 15.710217, 25.888203>,  <15.448528, 15.516127, 25.897299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.589404, 15.710217, 25.888203>,  <15.824198, 16.033703, 25.873041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.589404, 15.710217, 25.888203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551977, 0.434010, 0.712009,
		-0.592260, 0.397016, -0.701146,
		-0.586983, -0.808711, 0.037903,
		15.413309, 15.467604, 25.899574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182378, 16.291807, 25.842518>,  <15.824198, 16.033703, 25.873041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182378, 16.291807, 25.842518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.107318, 15.930509, 25.996887>,  <15.062282, 15.713730, 26.089508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.107318, 15.930509, 25.996887>,  <15.182378, 16.291807, 25.842518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107318, 15.930509, 25.996887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611370, 0.414923, 0.673844,
		-0.768774, -0.109495, -0.630077,
		-0.187651, -0.903244, 0.385924,
		15.051023, 15.659535, 26.112665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509197, 16.218590, 26.006659>,  <15.182378, 16.291807, 25.842518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509197, 16.218590, 26.006659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.691662, 15.961224, 26.252563>,  <14.801141, 15.806804, 26.400106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.691662, 15.961224, 26.252563>,  <14.509197, 16.218590, 26.006659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691662, 15.961224, 26.252563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434140, 0.442134, 0.784883,
		-0.776813, -0.624926, -0.077648,
		0.456163, -0.643417, 0.614760,
		14.828510, 15.768198, 26.436991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985057, 16.089596, 26.430164>,  <14.509197, 16.218590, 26.006659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985057, 16.089596, 26.430164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.280280, 15.917666, 26.638212>,  <14.457414, 15.814508, 26.763041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.280280, 15.917666, 26.638212>,  <13.985057, 16.089596, 26.430164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.280280, 15.917666, 26.638212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485448, 0.197117, 0.851755,
		-0.468628, -0.881134, -0.063173,
		0.738057, -0.429824, 0.520119,
		14.501698, 15.788719, 26.794249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718999, 15.443224, 26.922415>,  <13.985057, 16.089596, 26.430164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718999, 15.443224, 26.922415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.063890, 15.589593, 27.062508>,  <14.270825, 15.677414, 27.146563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.063890, 15.589593, 27.062508>,  <13.718999, 15.443224, 26.922415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063890, 15.589593, 27.062508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455378, 0.257234, 0.852327,
		0.221789, -0.894391, 0.388425,
		0.862230, 0.365917, 0.350234,
		14.322559, 15.699369, 27.167578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.747950, 15.228419, 27.631742>,  <13.718999, 15.443224, 26.922415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.747950, 15.228419, 27.631742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.974408, 15.555438, 27.589611>,  <14.110284, 15.751649, 27.564333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.974408, 15.555438, 27.589611>,  <13.747950, 15.228419, 27.631742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974408, 15.555438, 27.589611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562900, 0.476787, 0.675143,
		0.602181, -0.322940, 0.730129,
		0.566146, 0.817547, -0.105328,
		14.144253, 15.800702, 27.558012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765520, 15.583819, 28.281898>,  <13.747950, 15.228419, 27.631742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765520, 15.583819, 28.281898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.897169, 15.876960, 28.043703>,  <13.976158, 16.052845, 27.900785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.897169, 15.876960, 28.043703>,  <13.765520, 15.583819, 28.281898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897169, 15.876960, 28.043703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389312, 0.679841, 0.621492,
		0.860299, 0.027285, 0.509059,
		0.329121, 0.732852, -0.595489,
		13.995906, 16.096815, 27.865057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.845571, 16.124147, 28.734545>,  <13.765520, 15.583819, 28.281898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.845571, 16.124147, 28.734545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.839644, 16.321735, 28.386805>,  <13.836089, 16.440289, 28.178160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.839644, 16.321735, 28.386805>,  <13.845571, 16.124147, 28.734545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839644, 16.321735, 28.386805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506918, 0.745720, 0.432361,
		0.861867, 0.447096, 0.239355,
		-0.014815, 0.493970, -0.869352,
		13.835200, 16.469927, 28.125999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.108963, 16.848028, 28.786314>,  <13.845571, 16.124147, 28.734545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.108963, 16.848028, 28.786314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.853605, 16.876617, 28.479761>,  <13.700391, 16.893770, 28.295830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.853605, 16.876617, 28.479761>,  <14.108963, 16.848028, 28.786314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.853605, 16.876617, 28.479761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431015, 0.791738, 0.432870,
		0.637713, 0.606665, -0.474636,
		-0.638394, 0.071472, -0.766384,
		13.662086, 16.898060, 28.249846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.279683, 17.582893, 28.625587>,  <14.108963, 16.848028, 28.786314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.279683, 17.582893, 28.625587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.933908, 17.462688, 28.464375>,  <13.726442, 17.390566, 28.367647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.933908, 17.462688, 28.464375>,  <14.279683, 17.582893, 28.625587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933908, 17.462688, 28.464375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500674, 0.587158, 0.636059,
		0.045500, 0.751622, -0.658022,
		-0.864439, -0.300514, -0.403033,
		13.674576, 17.372534, 28.343464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.884775, 18.183704, 28.587261>,  <14.279683, 17.582893, 28.625587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.884775, 18.183704, 28.587261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.633164, 17.873304, 28.568718>,  <13.482198, 17.687065, 28.557592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.633164, 17.873304, 28.568718>,  <13.884775, 18.183704, 28.587261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633164, 17.873304, 28.568718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657989, 0.499714, 0.563326,
		-0.413976, 0.384850, -0.824933,
		-0.629026, -0.776000, -0.046358,
		13.444456, 17.640505, 28.554810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339358, 18.452435, 28.883265>,  <13.884775, 18.183704, 28.587261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339358, 18.452435, 28.883265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.202294, 18.079971, 28.833414>,  <13.120056, 17.856493, 28.803503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.202294, 18.079971, 28.833414>,  <13.339358, 18.452435, 28.883265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.202294, 18.079971, 28.833414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844696, 0.247311, 0.474686,
		-0.411185, 0.267927, -0.871288,
		-0.342660, -0.931156, -0.124626,
		13.099497, 17.800625, 28.796026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682996, 18.760128, 28.749493>,  <13.339358, 18.452435, 28.883265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682996, 18.760128, 28.749493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.414228, 19.056293, 28.742449>,  <12.252968, 19.233994, 28.738222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.414228, 19.056293, 28.742449>,  <12.682996, 18.760128, 28.749493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.414228, 19.056293, 28.742449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049389, -0.068517, -0.996427,
		-0.738976, -0.668649, 0.082606,
		-0.671919, 0.740415, -0.017609,
		12.212652, 19.278418, 28.737165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.151148, 18.602375, 28.336374>,  <12.682996, 18.760128, 28.749493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.151148, 18.602375, 28.336374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.095601, 18.998465, 28.341606>,  <12.062273, 19.236118, 28.344746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.095601, 18.998465, 28.341606>,  <12.151148, 18.602375, 28.336374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.095601, 18.998465, 28.341606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230745, -0.019510, -0.972819,
		-0.963054, -0.138110, 0.231199,
		-0.138867, 0.990225, 0.013079,
		12.053941, 19.295532, 28.345530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.458096, 18.718859, 27.997646>,  <12.151148, 18.602375, 28.336374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.458096, 18.718859, 27.997646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.721893, 19.017038, 27.958920>,  <11.880172, 19.195946, 27.935684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.721893, 19.017038, 27.958920>,  <11.458096, 18.718859, 27.997646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721893, 19.017038, 27.958920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085927, -0.053193, -0.994880,
		-0.746782, 0.664437, 0.028974,
		0.659494, 0.745449, -0.096816,
		11.919742, 19.240673, 27.929874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204194, 19.037727, 27.373592>,  <11.458096, 18.718859, 27.997646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204194, 19.037727, 27.373592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.564251, 19.210428, 27.396681>,  <11.780285, 19.314049, 27.410534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.564251, 19.210428, 27.396681>,  <11.204194, 19.037727, 27.373592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.564251, 19.210428, 27.396681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000872, 0.134293, -0.990941,
		-0.435594, 0.891938, 0.121259,
		0.900143, 0.431754, 0.057719,
		11.834293, 19.339954, 27.413996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.214613, 19.735178, 26.902330>,  <11.204194, 19.037727, 27.373592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.214613, 19.735178, 26.902330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.594485, 19.626778, 26.965147>,  <11.822409, 19.561737, 27.002838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.594485, 19.626778, 26.965147>,  <11.214613, 19.735178, 26.902330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.594485, 19.626778, 26.965147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220517, 0.222433, -0.949682,
		0.222433, 0.936527, 0.271001,
		0.949682, -0.271001, 0.157044,
		11.879390, 19.545477, 27.012260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.660929, 20.164120, 26.460693>,  <11.214613, 19.735178, 26.902330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.660929, 20.164120, 26.460693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.900312, 19.851831, 26.532602>,  <12.043942, 19.664457, 26.575748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.900312, 19.851831, 26.532602>,  <11.660929, 20.164120, 26.460693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.900312, 19.851831, 26.532602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463721, 0.154583, -0.872392,
		0.653306, 0.605456, 0.454549,
		0.598460, -0.780722, 0.179773,
		12.079850, 19.617615, 26.586535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.389789, 20.330872, 26.306570>,  <11.660929, 20.164120, 26.460693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.389789, 20.330872, 26.306570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.342311, 19.935936, 26.264475>,  <12.313824, 19.698975, 26.239218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.342311, 19.935936, 26.264475>,  <12.389789, 20.330872, 26.306570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342311, 19.935936, 26.264475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432786, 0.043946, -0.900425,
		0.893648, -0.152422, 0.422090,
		-0.118695, -0.987338, -0.105238,
		12.306703, 19.639734, 26.232903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.962791, 20.237183, 25.981480>,  <12.389789, 20.330872, 26.306570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.962791, 20.237183, 25.981480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.769304, 19.887926, 25.957336>,  <12.653213, 19.678371, 25.942850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.769304, 19.887926, 25.957336>,  <12.962791, 20.237183, 25.981480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.769304, 19.887926, 25.957336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384527, -0.150063, -0.910835,
		0.786229, -0.463796, 0.408334,
		-0.483717, -0.873140, -0.060359,
		12.624189, 19.625984, 25.939228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406352, 19.867479, 25.560596>,  <12.962791, 20.237183, 25.981480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406352, 19.867479, 25.560596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.063584, 19.663805, 25.528543>,  <12.857924, 19.541601, 25.509312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.063584, 19.663805, 25.528543>,  <13.406352, 19.867479, 25.560596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063584, 19.663805, 25.528543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234389, -0.246469, -0.940380,
		0.459078, -0.824611, 0.330551,
		-0.856919, -0.509185, -0.080132,
		12.806509, 19.511049, 25.504503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.634371, 19.196901, 25.332233>,  <13.406352, 19.867479, 25.560596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.634371, 19.196901, 25.332233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.245609, 19.228714, 25.243622>,  <13.012352, 19.247803, 25.190454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.245609, 19.228714, 25.243622>,  <13.634371, 19.196901, 25.332233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245609, 19.228714, 25.243622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194062, -0.261840, -0.945399,
		-0.133194, -0.961829, 0.239050,
		-0.971905, 0.079531, -0.221530,
		12.954038, 19.252573, 25.177162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.432115, 18.546211, 25.109568>,  <13.634371, 19.196901, 25.332233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.432115, 18.546211, 25.109568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.174090, 18.820555, 24.974810>,  <13.019276, 18.985161, 24.893955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.174090, 18.820555, 24.974810>,  <13.432115, 18.546211, 25.109568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.174090, 18.820555, 24.974810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018059, -0.427077, -0.904035,
		-0.763919, -0.589240, 0.263104,
		-0.645060, 0.685858, -0.336893,
		12.980573, 19.026312, 24.873741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900972, 18.222572, 24.772345>,  <13.432115, 18.546211, 25.109568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900972, 18.222572, 24.772345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.835972, 18.592213, 24.633991>,  <12.796971, 18.813997, 24.550980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.835972, 18.592213, 24.633991>,  <12.900972, 18.222572, 24.772345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835972, 18.592213, 24.633991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149833, -0.369585, -0.917037,
		-0.975266, -0.097194, 0.198518,
		-0.162500, 0.924099, -0.345881,
		12.787222, 18.869442, 24.530228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.399183, 18.108433, 24.334503>,  <12.900972, 18.222572, 24.772345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.399183, 18.108433, 24.334503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.554364, 18.461115, 24.227104>,  <12.647473, 18.672724, 24.162664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.554364, 18.461115, 24.227104>,  <12.399183, 18.108433, 24.334503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.554364, 18.461115, 24.227104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127318, -0.339788, -0.931845,
		-0.912843, 0.327327, -0.244078,
		0.387953, 0.881704, -0.268499,
		12.670750, 18.725626, 24.146555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.109287, 18.316162, 23.669592>,  <12.399183, 18.108433, 24.334503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.109287, 18.316162, 23.669592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.439185, 18.541971, 23.682943>,  <12.637124, 18.677456, 23.690954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.439185, 18.541971, 23.682943>,  <12.109287, 18.316162, 23.669592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.439185, 18.541971, 23.682943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184259, -0.212455, -0.959641,
		-0.534646, 0.797609, -0.279239,
		0.824744, 0.564521, 0.033379,
		12.686608, 18.711327, 23.692957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.524245, 18.578913, 23.401304>,  <12.109287, 18.316162, 23.669592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.524245, 18.578913, 23.401304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.196789, 18.645599, 23.181475>,  <11.000315, 18.685612, 23.049576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.196789, 18.645599, 23.181475>,  <11.524245, 18.578913, 23.401304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.196789, 18.645599, 23.181475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492864, 0.287285, 0.821312,
		0.294811, 0.943225, -0.153015,
		-0.818640, 0.166716, -0.549576,
		10.951197, 18.695614, 23.016602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273168, 19.288389, 23.609509>,  <11.524245, 18.578913, 23.401304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273168, 19.288389, 23.609509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.975613, 19.060703, 23.469437>,  <10.797079, 18.924091, 23.385393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.975613, 19.060703, 23.469437>,  <11.273168, 19.288389, 23.609509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.975613, 19.060703, 23.469437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541526, 0.206337, 0.814969,
		-0.391638, 0.795876, -0.461737,
		-0.743888, -0.569215, -0.350178,
		10.752446, 18.889938, 23.364384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.754896, 19.685081, 23.709343>,  <11.273168, 19.288389, 23.609509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.754896, 19.685081, 23.709343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.606495, 19.314629, 23.682121>,  <10.517454, 19.092356, 23.665789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.606495, 19.314629, 23.682121>,  <10.754896, 19.685081, 23.709343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.606495, 19.314629, 23.682121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609651, 0.187629, 0.770144,
		-0.700487, 0.327216, -0.634229,
		-0.371003, -0.926134, -0.068056,
		10.495193, 19.036789, 23.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.141873, 19.746367, 23.942623>,  <10.754896, 19.685081, 23.709343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.141873, 19.746367, 23.942623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.154919, 19.347618, 23.971416>,  <10.162745, 19.108368, 23.988691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.154919, 19.347618, 23.971416>,  <10.141873, 19.746367, 23.942623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.154919, 19.347618, 23.971416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590262, 0.038909, 0.806274,
		-0.806553, -0.068783, -0.587147,
		0.032613, -0.996872, 0.071982,
		10.164702, 19.048555, 23.993011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.412349, 19.531960, 24.053574>,  <10.141873, 19.746367, 23.942623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.412349, 19.531960, 24.053574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.649502, 19.238853, 24.187166>,  <9.791794, 19.062990, 24.267321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.649502, 19.238853, 24.187166>,  <9.412349, 19.531960, 24.053574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.649502, 19.238853, 24.187166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466555, 0.025475, 0.884125,
		-0.656366, -0.680003, -0.326773,
		0.592883, -0.732767, 0.333980,
		9.827367, 19.019024, 24.287359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.024309, 19.025715, 24.364908>,  <9.412349, 19.531960, 24.053574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.024309, 19.025715, 24.364908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.375998, 18.968424, 24.546659>,  <9.587010, 18.934050, 24.655710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.375998, 18.968424, 24.546659>,  <9.024309, 19.025715, 24.364908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375998, 18.968424, 24.546659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455264, 0.028435, 0.889902,
		-0.140380, -0.989281, -0.040207,
		0.879220, -0.143229, 0.454376,
		9.639764, 18.925455, 24.682972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.972406, 18.461874, 24.902643>,  <9.024309, 19.025715, 24.364908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.972406, 18.461874, 24.902643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.291121, 18.671305, 25.023308>,  <9.482349, 18.796963, 25.095707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.291121, 18.671305, 25.023308>,  <8.972406, 18.461874, 24.902643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291121, 18.671305, 25.023308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340402, -0.023549, 0.939985,
		0.499259, -0.851653, 0.159464,
		0.796785, 0.523577, 0.301661,
		9.530156, 18.828379, 25.113806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092397, 17.701746, 25.040489>,  <8.972406, 18.461874, 24.902643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092397, 17.701746, 25.040489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.972160, 17.322149, 25.002422>,  <8.900019, 17.094391, 24.979582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.972160, 17.322149, 25.002422>,  <9.092397, 17.701746, 25.040489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.972160, 17.322149, 25.002422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418904, -0.041726, -0.907071,
		0.856834, -0.312522, 0.410079,
		-0.300591, -0.948994, -0.095165,
		8.881983, 17.037451, 24.973873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.730975, 17.282156, 24.869059>,  <9.092397, 17.701746, 25.040489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.730975, 17.282156, 24.869059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.414710, 17.079248, 24.731928>,  <9.224951, 16.957504, 24.649649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.414710, 17.079248, 24.731928>,  <9.730975, 17.282156, 24.869059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.414710, 17.079248, 24.731928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480187, -0.166400, -0.861239,
		0.379834, -0.845570, 0.375150,
		-0.790662, -0.507270, -0.342827,
		9.177511, 16.927067, 24.629080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027277, 16.844170, 24.443546>,  <9.730975, 17.282156, 24.869059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027277, 16.844170, 24.443546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.654440, 16.823179, 24.300186>,  <9.430737, 16.810585, 24.214170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.654440, 16.823179, 24.300186>,  <10.027277, 16.844170, 24.443546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.654440, 16.823179, 24.300186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359497, -0.255141, -0.897588,
		-0.044339, -0.965479, 0.256681,
		-0.932092, -0.052478, -0.358400,
		9.374812, 16.807436, 24.192667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.981623, 16.144823, 24.144619>,  <10.027277, 16.844170, 24.443546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.981623, 16.144823, 24.144619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.716748, 16.400665, 23.988459>,  <9.557823, 16.554171, 23.894762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.716748, 16.400665, 23.988459>,  <9.981623, 16.144823, 24.144619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.716748, 16.400665, 23.988459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154953, -0.392855, -0.906452,
		-0.733144, -0.660733, 0.161034,
		-0.662186, 0.639607, -0.390402,
		9.518092, 16.592546, 23.871338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.594626, 15.664719, 23.757677>,  <9.981623, 16.144823, 24.144619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.594626, 15.664719, 23.757677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.523839, 16.025686, 23.600540>,  <9.481367, 16.242268, 23.506258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.523839, 16.025686, 23.600540>,  <9.594626, 15.664719, 23.757677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523839, 16.025686, 23.600540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038720, -0.392447, -0.918959,
		-0.983455, -0.177837, 0.034509,
		-0.176968, 0.902418, -0.392840,
		9.470749, 16.296412, 23.482689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.268030, 15.478978, 23.071005>,  <9.594626, 15.664719, 23.757677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.268030, 15.478978, 23.071005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.324827, 15.874760, 23.059538>,  <9.358905, 16.112228, 23.052658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.324827, 15.874760, 23.059538>,  <9.268030, 15.478978, 23.071005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.324827, 15.874760, 23.059538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090546, -0.041822, -0.995013,
		-0.985718, 0.138688, -0.095530,
		0.141992, 0.989453, -0.028667,
		9.367425, 16.171595, 23.050938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.608173, 15.788256, 22.684187>,  <9.268030, 15.478978, 23.071005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.608173, 15.788256, 22.684187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.960454, 15.977725, 22.683994>,  <9.171823, 16.091406, 22.683878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.960454, 15.977725, 22.683994>,  <8.608173, 15.788256, 22.684187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.960454, 15.977725, 22.683994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172425, -0.321536, -0.931066,
		-0.441176, 0.819907, -0.364850,
		0.880700, 0.473673, -0.000482,
		9.224664, 16.119827, 22.683849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<11.719724, 16.917419, 25.328440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.575488, 17.090132, 24.997734>,  <11.488947, 17.193758, 24.799311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.575488, 17.090132, 24.997734>,  <11.719724, 16.917419, 25.328440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.575488, 17.090132, 24.997734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386303, 0.737666, 0.553731,
		0.848967, 0.519051, -0.099197,
		-0.360589, 0.431780, -0.826766,
		11.467311, 17.219666, 24.749704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351954, 17.318350, 25.286547>,  <11.719724, 16.917419, 25.328440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351954, 17.318350, 25.286547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.652964, 17.304953, 25.549633>,  <12.833570, 17.296915, 25.707485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.652964, 17.304953, 25.549633>,  <12.351954, 17.318350, 25.286547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652964, 17.304953, 25.549633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574090, 0.455997, 0.680064,
		-0.322692, -0.889351, 0.323921,
		0.752523, -0.033491, 0.657714,
		12.878720, 17.294905, 25.746946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.127813, 17.700136, 25.922142>,  <12.351954, 17.318350, 25.286547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.127813, 17.700136, 25.922142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.458690, 17.532238, 26.071577>,  <12.657216, 17.431499, 26.161238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.458690, 17.532238, 26.071577>,  <12.127813, 17.700136, 25.922142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458690, 17.532238, 26.071577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240619, 0.336218, 0.910527,
		-0.507797, -0.843073, 0.177118,
		0.827191, -0.419745, 0.373589,
		12.706847, 17.406315, 26.183655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.141800, 17.277161, 26.524601>,  <12.127813, 17.700136, 25.922142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.141800, 17.277161, 26.524601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.885677, 16.971237, 26.496107>,  <11.732003, 16.787683, 26.479012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.885677, 16.971237, 26.496107>,  <12.141800, 17.277161, 26.524601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.885677, 16.971237, 26.496107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745485, 0.641108, -0.182300,
		0.185094, -0.063623, -0.980659,
		-0.640307, -0.764809, -0.071235,
		11.693585, 16.741795, 26.474737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.277267, 16.550346, 26.680834>,  <12.141800, 17.277161, 26.524601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.277267, 16.550346, 26.680834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.309862, 16.158243, 26.752890>,  <12.329419, 15.922981, 26.796124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.309862, 16.158243, 26.752890>,  <12.277267, 16.550346, 26.680834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309862, 16.158243, 26.752890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121406, -0.189158, -0.974412,
		0.989252, 0.057533, -0.134424,
		0.081488, -0.980260, 0.180141,
		12.334309, 15.864165, 26.806932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.844762, 16.251110, 26.315477>,  <12.277267, 16.550346, 26.680834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.844762, 16.251110, 26.315477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.626455, 15.925837, 26.396345>,  <12.495471, 15.730673, 26.444866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.626455, 15.925837, 26.396345>,  <12.844762, 16.251110, 26.315477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.626455, 15.925837, 26.396345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114989, -0.311668, -0.943208,
		0.830010, -0.491524, 0.263605,
		-0.545766, -0.813184, 0.202167,
		12.462726, 15.681882, 26.456995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201310, 15.620133, 26.025961>,  <12.844762, 16.251110, 26.315477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201310, 15.620133, 26.025961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.824512, 15.492283, 26.066925>,  <12.598434, 15.415573, 26.091503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.824512, 15.492283, 26.066925>,  <13.201310, 15.620133, 26.025961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.824512, 15.492283, 26.066925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042702, -0.188515, -0.981141,
		0.332904, -0.928602, 0.163931,
		-0.941993, -0.319625, 0.102411,
		12.541914, 15.396395, 26.097649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.108452, 14.843363, 25.768566>,  <13.201310, 15.620133, 26.025961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.108452, 14.843363, 25.768566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.763461, 15.041328, 25.726248>,  <12.556466, 15.160108, 25.700857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.763461, 15.041328, 25.726248>,  <13.108452, 14.843363, 25.768566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.763461, 15.041328, 25.726248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046236, -0.285222, -0.957346,
		-0.503979, -0.820797, 0.268880,
		-0.862477, 0.494914, -0.105796,
		12.504718, 15.189802, 25.694510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741955, 14.425293, 25.324131>,  <13.108452, 14.843363, 25.768566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741955, 14.425293, 25.324131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.568423, 14.785087, 25.303276>,  <12.464304, 15.000963, 25.290762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.568423, 14.785087, 25.303276>,  <12.741955, 14.425293, 25.324131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568423, 14.785087, 25.303276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195956, -0.150678, -0.968967,
		-0.879428, -0.410150, 0.241628,
		-0.433830, 0.899485, -0.052139,
		12.438274, 15.054932, 25.287634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.193750, 14.341526, 24.870958>,  <12.741955, 14.425293, 25.324131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.193750, 14.341526, 24.870958> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.244466, 14.737964, 24.887247>,  <12.274895, 14.975826, 24.897020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.244466, 14.737964, 24.887247>,  <12.193750, 14.341526, 24.870958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.244466, 14.737964, 24.887247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036453, 0.045679, -0.998291,
		-0.991260, 0.125087, 0.041920,
		0.126788, 0.991094, 0.040720,
		12.282502, 15.035292, 24.899464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756994, 14.645600, 24.367903>,  <12.193750, 14.341526, 24.870958>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756994, 14.645600, 24.367903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.040252, 14.922706, 24.422472>,  <12.210206, 15.088968, 24.455214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.040252, 14.922706, 24.422472>,  <11.756994, 14.645600, 24.367903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040252, 14.922706, 24.422472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209517, -0.021660, -0.977565,
		-0.674266, 0.720840, -0.160484,
		0.708144, 0.692763, 0.136424,
		12.252695, 15.130534, 24.463400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618956, 14.994691, 23.815033>,  <11.756994, 14.645600, 24.367903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618956, 14.994691, 23.815033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.963371, 15.154296, 23.941143>,  <12.170021, 15.250059, 24.016809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.963371, 15.154296, 23.941143>,  <11.618956, 14.994691, 23.815033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963371, 15.154296, 23.941143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276115, 0.153801, -0.948739,
		-0.427048, 0.903955, 0.022255,
		0.861040, 0.399012, 0.315276,
		12.221684, 15.273999, 24.035727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.269652, 14.565526, 23.332956>,  <11.618956, 14.994691, 23.815033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.269652, 14.565526, 23.332956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.927920, 14.358787, 23.354815>,  <10.722881, 14.234743, 23.367929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.927920, 14.358787, 23.354815>,  <11.269652, 14.565526, 23.332956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.927920, 14.358787, 23.354815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032797, 0.051324, 0.998143,
		-0.518693, 0.854537, -0.026897,
		-0.854331, -0.516848, 0.054647,
		10.671621, 14.203732, 23.371208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.876918, 14.754305, 23.797903>,  <11.269652, 14.565526, 23.332956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.876918, 14.754305, 23.797903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.666976, 14.414865, 23.824446>,  <10.541011, 14.211200, 23.840370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.666976, 14.414865, 23.824446>,  <10.876918, 14.754305, 23.797903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.666976, 14.414865, 23.824446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169730, 0.180730, 0.968777,
		-0.834098, 0.497204, -0.238890,
		-0.524855, -0.848601, 0.066356,
		10.509520, 14.160284, 23.844353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.417890, 14.870140, 24.293674>,  <10.876918, 14.754305, 23.797903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.417890, 14.870140, 24.293674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.386693, 14.471464, 24.284504>,  <10.367975, 14.232259, 24.279001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.386693, 14.471464, 24.284504>,  <10.417890, 14.870140, 24.293674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.386693, 14.471464, 24.284504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230518, -0.004346, 0.973058,
		-0.969937, 0.081176, -0.229416,
		-0.077992, -0.996690, -0.022928,
		10.363296, 14.172457, 24.277626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.708292, 14.756408, 24.290445>,  <10.417890, 14.870140, 24.293674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.708292, 14.756408, 24.290445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.908041, 14.449112, 24.450663>,  <10.027890, 14.264734, 24.546793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.908041, 14.449112, 24.450663>,  <9.708292, 14.756408, 24.290445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908041, 14.449112, 24.450663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404393, 0.202184, 0.891957,
		-0.766221, -0.607396, -0.209705,
		0.499372, -0.768239, 0.400544,
		10.057853, 14.218640, 24.570826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.190953, 14.381454, 24.695505>,  <9.708292, 14.756408, 24.290445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.190953, 14.381454, 24.695505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.530454, 14.221177, 24.833530>,  <9.734154, 14.125010, 24.916346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.530454, 14.221177, 24.833530>,  <9.190953, 14.381454, 24.695505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.530454, 14.221177, 24.833530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387563, -0.027430, 0.921435,
		-0.359749, -0.915801, -0.178575,
		0.848750, -0.400694, 0.345062,
		9.785079, 14.100969, 24.937050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.982329, 13.805613, 25.096220>,  <9.190953, 14.381454, 24.695505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.982329, 13.805613, 25.096220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.347816, 13.909543, 25.221195>,  <9.567107, 13.971901, 25.296181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.347816, 13.909543, 25.221195>,  <8.982329, 13.805613, 25.096220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.347816, 13.909543, 25.221195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339891, 0.067281, 0.938055,
		0.222710, -0.963309, 0.149788,
		0.913715, 0.259826, 0.312436,
		9.621930, 13.987491, 25.314926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.025752, 13.472228, 25.808468>,  <8.982329, 13.805613, 25.096220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.025752, 13.472228, 25.808468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.315911, 13.746738, 25.787210>,  <9.490006, 13.911445, 25.774456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.315911, 13.746738, 25.787210>,  <9.025752, 13.472228, 25.808468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.315911, 13.746738, 25.787210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224898, 0.309274, 0.923997,
		0.650553, -0.658313, 0.378688,
		0.725398, 0.686275, -0.053146,
		9.533530, 13.952621, 25.771267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.274272, 13.417764, 26.379978>,  <9.025752, 13.472228, 25.808468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.274272, 13.417764, 26.379978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.381453, 13.779037, 26.245834>,  <9.445761, 13.995800, 26.165348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.381453, 13.779037, 26.245834>,  <9.274272, 13.417764, 26.379978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.381453, 13.779037, 26.245834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104520, 0.373283, 0.921811,
		0.957746, -0.211949, 0.194422,
		0.267951, 0.903182, -0.335357,
		9.461838, 14.049991, 26.145227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.733190, 13.621813, 26.870489>,  <9.274272, 13.417764, 26.379978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.733190, 13.621813, 26.870489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.618705, 13.962999, 26.695890>,  <9.550014, 14.167711, 26.591131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.618705, 13.962999, 26.695890>,  <9.733190, 13.621813, 26.870489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.618705, 13.962999, 26.695890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003424, 0.456464, 0.889735,
		0.958160, 0.253159, -0.133566,
		-0.286212, 0.852966, -0.436499,
		9.532841, 14.218889, 26.564941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.271776, 14.162950, 27.029125>,  <9.733190, 13.621813, 26.870489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.271776, 14.162950, 27.029125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.929486, 14.344535, 26.929806>,  <9.724113, 14.453486, 26.870214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.929486, 14.344535, 26.929806>,  <10.271776, 14.162950, 27.029125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.929486, 14.344535, 26.929806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071994, 0.579657, 0.811674,
		0.512397, 0.676694, -0.528710,
		-0.855725, 0.453964, -0.248297,
		9.672769, 14.480724, 26.855316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.313697, 14.805490, 27.239922>,  <10.271776, 14.162950, 27.029125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.313697, 14.805490, 27.239922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.919189, 14.769747, 27.184364>,  <9.682486, 14.748302, 27.151030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.919189, 14.769747, 27.184364>,  <10.313697, 14.805490, 27.239922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.919189, 14.769747, 27.184364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165043, 0.563910, 0.809176,
		0.006018, 0.820988, -0.570914,
		-0.986268, -0.089356, -0.138892,
		9.623309, 14.742940, 27.142696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.045728, 15.443119, 27.463957>,  <10.313697, 14.805490, 27.239922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.045728, 15.443119, 27.463957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.717680, 15.214261, 27.461029>,  <9.520851, 15.076946, 27.459272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.717680, 15.214261, 27.461029>,  <10.045728, 15.443119, 27.463957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.717680, 15.214261, 27.461029> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371288, 0.522390, 0.767629,
		-0.435372, 0.632265, -0.640853,
		-0.820120, -0.572145, -0.007319,
		9.471644, 15.042618, 27.458834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.532226, 15.968948, 27.574278>,  <10.045728, 15.443119, 27.463957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.532226, 15.968948, 27.574278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.330852, 15.627095, 27.625120>,  <9.210027, 15.421984, 27.655624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.330852, 15.627095, 27.625120>,  <9.532226, 15.968948, 27.574278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.330852, 15.627095, 27.625120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458623, 0.388986, 0.798971,
		-0.732269, 0.343937, -0.587784,
		-0.503435, -0.854633, 0.127104,
		9.179821, 15.370706, 27.663252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.766262, 16.119967, 27.760012>,  <9.532226, 15.968948, 27.574278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.766262, 16.119967, 27.760012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.852468, 15.753966, 27.896437>,  <8.904193, 15.534366, 27.978292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.852468, 15.753966, 27.896437>,  <8.766262, 16.119967, 27.760012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.852468, 15.753966, 27.896437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347694, 0.254477, 0.902414,
		-0.912503, -0.313071, -0.263297,
		0.215517, -0.915002, 0.341064,
		8.917124, 15.479465, 27.998756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.503712, 15.513841, 27.504730>,  <8.766262, 16.119967, 27.760012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.503712, 15.513841, 27.504730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.267791, 15.836859, 27.503733>,  <8.126239, 16.030670, 27.503134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.267791, 15.836859, 27.503733>,  <8.503712, 15.513841, 27.504730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.267791, 15.836859, 27.503733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017114, 0.009414, -0.999809,
		-0.807367, -0.589732, -0.019372,
		-0.589802, 0.807544, -0.002492,
		8.090850, 16.079123, 27.502985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.074885, 15.458577, 26.924896>,  <8.503712, 15.513841, 27.504730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.074885, 15.458577, 26.924896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.014292, 15.840014, 27.028986>,  <7.977935, 16.068876, 27.091440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.014292, 15.840014, 27.028986>,  <8.074885, 15.458577, 26.924896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.014292, 15.840014, 27.028986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054264, 0.270888, -0.961080,
		-0.986969, -0.131468, -0.092781,
		-0.151484, 0.953591, 0.260225,
		7.968846, 16.126091, 27.107054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.701503, 15.680580, 26.370756>,  <8.074885, 15.458577, 26.924896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.701503, 15.680580, 26.370756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.798042, 16.023882, 26.551931>,  <7.855966, 16.229862, 26.660637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.798042, 16.023882, 26.551931>,  <7.701503, 15.680580, 26.370756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.798042, 16.023882, 26.551931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090401, 0.444820, -0.891046,
		-0.966219, 0.255998, 0.029769,
		0.241348, 0.858254, 0.452936,
		7.870447, 16.281359, 26.687813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.323840, 16.208826, 25.961588>,  <7.701503, 15.680580, 26.370756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.323840, 16.208826, 25.961588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.628594, 16.371645, 26.163118>,  <7.811447, 16.469336, 26.284037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.628594, 16.371645, 26.163118>,  <7.323840, 16.208826, 25.961588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.628594, 16.371645, 26.163118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298746, 0.469336, -0.830948,
		-0.574699, 0.783604, 0.235978,
		0.761887, 0.407047, 0.503825,
		7.857161, 16.493759, 26.314266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.387979, 16.811060, 25.614529>,  <7.323840, 16.208826, 25.961588>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.387979, 16.811060, 25.614529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.738545, 16.795183, 25.806496>,  <7.948884, 16.785656, 25.921677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.738545, 16.795183, 25.806496>,  <7.387979, 16.811060, 25.614529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.738545, 16.795183, 25.806496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452740, 0.407497, -0.793078,
		-0.164086, 0.912343, 0.375107,
		0.876414, -0.039694, 0.479919,
		8.001470, 16.783276, 25.950472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.751717, 17.484011, 25.580914>,  <7.387979, 16.811060, 25.614529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.751717, 17.484011, 25.580914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.019640, 17.190744, 25.627945>,  <8.180393, 17.014784, 25.656164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.019640, 17.190744, 25.627945>,  <7.751717, 17.484011, 25.580914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.019640, 17.190744, 25.627945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531907, 0.363270, -0.764924,
		0.518106, 0.574891, 0.633298,
		0.669807, -0.733168, 0.117576,
		8.220582, 16.970795, 25.663218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.376081, 17.834265, 25.483927>,  <7.751717, 17.484011, 25.580914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.376081, 17.834265, 25.483927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.432602, 17.443642, 25.418978>,  <8.466515, 17.209267, 25.380009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.432602, 17.443642, 25.418978>,  <8.376081, 17.834265, 25.483927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.432602, 17.443642, 25.418978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569863, 0.214358, -0.793289,
		0.809500, 0.019563, 0.586794,
		0.141303, -0.976559, -0.162375,
		8.474993, 17.150675, 25.370266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.075212, 18.210184, 25.589190>,  <8.376081, 17.834265, 25.483927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.075212, 18.210184, 25.589190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.335689, 18.512150, 25.558065>,  <9.491975, 18.693329, 25.539391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.335689, 18.512150, 25.558065>,  <9.075212, 18.210184, 25.589190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335689, 18.512150, 25.558065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066719, 0.159078, 0.985009,
		0.755976, -0.636238, 0.153957,
		0.651191, 0.754915, -0.077809,
		9.531046, 18.738625, 25.534723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.692056, 18.090061, 26.093378>,  <9.075212, 18.210184, 25.589190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.692056, 18.090061, 26.093378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.686297, 18.481403, 26.010801>,  <9.682842, 18.716208, 25.961256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.686297, 18.481403, 26.010801>,  <9.692056, 18.090061, 26.093378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686297, 18.481403, 26.010801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140729, 0.202425, 0.969133,
		0.989943, 0.043004, 0.134769,
		-0.014396, 0.978353, -0.206441,
		9.681979, 18.774910, 25.948870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027531, 18.333244, 26.668390>,  <9.692056, 18.090061, 26.093378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027531, 18.333244, 26.668390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.855083, 18.665825, 26.528202>,  <9.751615, 18.865374, 26.444090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.855083, 18.665825, 26.528202>,  <10.027531, 18.333244, 26.668390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.855083, 18.665825, 26.528202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069297, 0.356761, 0.931622,
		0.899630, 0.425926, -0.096189,
		-0.431119, 0.831450, -0.350469,
		9.725748, 18.915260, 26.423061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.449355, 18.983759, 26.774467>,  <10.027531, 18.333244, 26.668390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.449355, 18.983759, 26.774467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.067865, 19.102028, 26.752602>,  <9.838971, 19.172989, 26.739483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.067865, 19.102028, 26.752602>,  <10.449355, 18.983759, 26.774467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.067865, 19.102028, 26.752602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043299, 0.314956, 0.948118,
		0.297548, 0.901876, -0.313184,
		-0.953725, 0.295671, -0.054664,
		9.781748, 19.190729, 26.736202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.490266, 19.604113, 27.046696>,  <10.449355, 18.983759, 26.774467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.490266, 19.604113, 27.046696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.105646, 19.496256, 27.067533>,  <9.874874, 19.431541, 27.080036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.105646, 19.496256, 27.067533>,  <10.490266, 19.604113, 27.046696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.105646, 19.496256, 27.067533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029545, 0.290163, 0.956521,
		-0.273035, 0.918204, -0.286973,
		-0.961550, -0.269643, 0.052096,
		9.817181, 19.415363, 27.083162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275661, 20.036263, 27.515444>,  <10.490266, 19.604113, 27.046696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275661, 20.036263, 27.515444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.972301, 19.775658, 27.507854>,  <9.790285, 19.619295, 27.503302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.972301, 19.775658, 27.507854>,  <10.275661, 20.036263, 27.515444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972301, 19.775658, 27.507854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115884, 0.106134, 0.987576,
		-0.641406, 0.751176, -0.155992,
		-0.758399, -0.651514, -0.018974,
		9.744781, 19.580204, 27.502163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.863614, 20.307652, 28.002573>,  <10.275661, 20.036263, 27.515444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.863614, 20.307652, 28.002573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.701756, 19.944803, 27.956278>,  <9.604642, 19.727095, 27.928501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.701756, 19.944803, 27.956278>,  <9.863614, 20.307652, 28.002573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.701756, 19.944803, 27.956278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258764, -0.007810, 0.965909,
		-0.877100, 0.420798, -0.231570,
		-0.404643, -0.907121, -0.115738,
		9.580363, 19.672667, 27.921556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.129826, 20.417963, 28.292349>,  <9.863614, 20.307652, 28.002573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.129826, 20.417963, 28.292349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.254409, 20.041195, 28.342600>,  <9.329159, 19.815134, 28.372749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.254409, 20.041195, 28.342600>,  <9.129826, 20.417963, 28.292349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.254409, 20.041195, 28.342600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000407, 0.132335, 0.991205,
		-0.950260, -0.308668, 0.041600,
		0.311458, -0.941919, 0.125627,
		9.347846, 19.758619, 28.380287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.620307, 20.064104, 28.693777>,  <9.129826, 20.417963, 28.292349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.620307, 20.064104, 28.693777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.947865, 19.839087, 28.739313>,  <9.144399, 19.704077, 28.766636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.947865, 19.839087, 28.739313>,  <8.620307, 20.064104, 28.693777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.947865, 19.839087, 28.739313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102017, 0.052528, 0.993395,
		-0.564807, -0.825098, -0.014374,
		0.818893, -0.562543, 0.113842,
		9.193533, 19.670324, 28.773466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.229471, 16.031755, 14.017056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444994, 15.974377, 14.349107>,  <15.574307, 15.939949, 14.548337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.444994, 15.974377, 14.349107>,  <15.229471, 16.031755, 14.017056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444994, 15.974377, 14.349107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804592, 0.204379, 0.557549,
		-0.249639, -0.968324, -0.005296,
		0.538806, -0.143447, 0.830127,
		15.606636, 15.931343, 14.598145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950571, 15.505276, 14.462128>,  <15.229471, 16.031755, 14.017056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.950571, 15.505276, 14.462128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165759, 15.733276, 14.710543>,  <15.294872, 15.870076, 14.859591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165759, 15.733276, 14.710543>,  <14.950571, 15.505276, 14.462128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165759, 15.733276, 14.710543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807715, 0.137743, 0.573257,
		0.241215, -0.810015, 0.534501,
		0.537970, 0.570003, 0.621035,
		15.327150, 15.904277, 14.896853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833353, 15.249816, 15.101826>,  <14.950571, 15.505276, 14.462128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833353, 15.249816, 15.101826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937861, 15.634576, 15.134043>,  <15.000566, 15.865432, 15.153373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937861, 15.634576, 15.134043>,  <14.833353, 15.249816, 15.101826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937861, 15.634576, 15.134043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783427, 0.162567, 0.599845,
		0.563897, -0.219822, 0.796052,
		0.261271, 0.961899, 0.080543,
		15.016243, 15.923145, 15.158206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667201, 15.274941, 15.738387>,  <14.833353, 15.249816, 15.101826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667201, 15.274941, 15.738387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.721416, 15.652892, 15.619164>,  <14.753944, 15.879663, 15.547630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.721416, 15.652892, 15.619164>,  <14.667201, 15.274941, 15.738387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721416, 15.652892, 15.619164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594636, 0.318205, 0.738345,
		0.792489, 0.077163, 0.604986,
		0.135537, 0.944876, -0.298058,
		14.762076, 15.936355, 15.529747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857710, 15.643898, 16.381104>,  <14.667201, 15.274941, 15.738387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.857710, 15.643898, 16.381104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708333, 15.883183, 16.097502>,  <14.618707, 16.026752, 15.927341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708333, 15.883183, 16.097502>,  <14.857710, 15.643898, 16.381104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708333, 15.883183, 16.097502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653372, 0.372941, 0.658802,
		0.658519, 0.709267, 0.251582,
		-0.373441, 0.598210, -0.709004,
		14.596301, 16.062645, 15.884801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.756779, 16.257175, 16.718592>,  <14.857710, 15.643898, 16.381104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.756779, 16.257175, 16.718592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.517822, 16.303452, 16.401167>,  <14.374449, 16.331217, 16.210712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.517822, 16.303452, 16.401167>,  <14.756779, 16.257175, 16.718592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.517822, 16.303452, 16.401167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739428, 0.303591, 0.600899,
		0.310437, 0.945753, -0.095816,
		-0.597390, 0.115692, -0.793562,
		14.338605, 16.338160, 16.163099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438787, 16.952166, 16.766903>,  <14.756779, 16.257175, 16.718592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438787, 16.952166, 16.766903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208988, 16.763325, 16.499449>,  <14.071110, 16.650021, 16.338976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.208988, 16.763325, 16.499449>,  <14.438787, 16.952166, 16.766903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208988, 16.763325, 16.499449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818481, 0.338005, 0.464588,
		0.006669, 0.814169, -0.580589,
		-0.574495, -0.472103, -0.668636,
		14.036639, 16.621695, 16.298859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874104, 17.352102, 16.621592>,  <14.438787, 16.952166, 16.766903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874104, 17.352102, 16.621592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.740206, 16.982752, 16.546413>,  <13.659866, 16.761143, 16.501307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.740206, 16.982752, 16.546413>,  <13.874104, 17.352102, 16.621592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.740206, 16.982752, 16.546413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886990, 0.241434, 0.393647,
		-0.318107, 0.298477, -0.899844,
		-0.334747, -0.923375, -0.187945,
		13.639782, 16.705740, 16.490030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243832, 17.509443, 16.508886>,  <13.874104, 17.352102, 16.621592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243832, 17.509443, 16.508886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275130, 17.116175, 16.574915>,  <13.293909, 16.880213, 16.614532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.275130, 17.116175, 16.574915>,  <13.243832, 17.509443, 16.508886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.275130, 17.116175, 16.574915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909773, -0.002712, 0.415097,
		-0.407665, -0.182658, -0.894676,
		0.078247, -0.983173, 0.165072,
		13.298604, 16.821222, 16.624437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554288, 17.214478, 16.400660>,  <13.243832, 17.509443, 16.508886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554288, 17.214478, 16.400660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735575, 16.918314, 16.599209>,  <12.844347, 16.740616, 16.718338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735575, 16.918314, 16.599209>,  <12.554288, 17.214478, 16.400660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735575, 16.918314, 16.599209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721915, 0.021780, 0.691638,
		-0.522908, -0.671802, -0.524643,
		0.453217, -0.740411, 0.496373,
		12.871540, 16.696192, 16.748121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.992911, 16.758308, 16.479616>,  <12.554288, 17.214478, 16.400660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.992911, 16.758308, 16.479616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.276855, 16.713388, 16.757750>,  <12.447220, 16.686436, 16.924629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.276855, 16.713388, 16.757750>,  <11.992911, 16.758308, 16.479616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.276855, 16.713388, 16.757750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694306, 0.054522, 0.717612,
		-0.118499, -0.992177, -0.039268,
		0.709858, -0.112301, 0.695335,
		12.489812, 16.679699, 16.966351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.718981, 16.273882, 16.953274>,  <11.992911, 16.758308, 16.479616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.718981, 16.273882, 16.953274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.021023, 16.425238, 17.167429>,  <12.202248, 16.516050, 17.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.021023, 16.425238, 17.167429>,  <11.718981, 16.273882, 16.953274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.021023, 16.425238, 17.167429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584718, 0.019351, 0.811005,
		0.296517, -0.925444, 0.235864,
		0.755104, 0.378391, 0.535386,
		12.247554, 16.538754, 17.328045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724455, 15.542564, 17.020826>,  <11.718981, 16.273882, 16.953274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724455, 15.542564, 17.020826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.514441, 15.205624, 17.069458>,  <11.388433, 15.003459, 17.098637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.514441, 15.205624, 17.069458>,  <11.724455, 15.542564, 17.020826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.514441, 15.205624, 17.069458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283117, -0.307581, -0.908427,
		0.802610, -0.442534, 0.399975,
		-0.525035, -0.842352, 0.121579,
		11.356930, 14.952918, 17.105932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.154440, 14.947176, 16.883759>,  <11.724455, 15.542564, 17.020826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.154440, 14.947176, 16.883759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774076, 14.836519, 16.828278>,  <11.545856, 14.770125, 16.794989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774076, 14.836519, 16.828278>,  <12.154440, 14.947176, 16.883759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.774076, 14.836519, 16.828278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210291, -0.248819, -0.945445,
		0.227038, -0.928202, 0.294780,
		-0.950911, -0.276642, -0.138701,
		11.488802, 14.753527, 16.786667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.155230, 14.310464, 16.663200>,  <12.154440, 14.947176, 16.883759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.155230, 14.310464, 16.663200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784340, 14.404926, 16.546934>,  <11.561806, 14.461604, 16.477175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784340, 14.404926, 16.546934>,  <12.155230, 14.310464, 16.663200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784340, 14.404926, 16.546934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189046, -0.374843, -0.907609,
		-0.323289, -0.896507, 0.302920,
		-0.927225, 0.236154, -0.290664,
		11.506173, 14.475773, 16.459734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930985, 13.696115, 16.295784>,  <12.155230, 14.310464, 16.663200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.930985, 13.696115, 16.295784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.701060, 13.991511, 16.154804>,  <11.563106, 14.168749, 16.070215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.701060, 13.991511, 16.154804>,  <11.930985, 13.696115, 16.295784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.701060, 13.991511, 16.154804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096699, -0.366398, -0.925420,
		-0.812552, -0.566023, 0.139199,
		-0.574812, 0.738491, -0.352451,
		11.528617, 14.213058, 16.049068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.415954, 13.445164, 15.827081>,  <11.930985, 13.696115, 16.295784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.415954, 13.445164, 15.827081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415137, 13.829769, 15.717180>,  <11.414647, 14.060533, 15.651240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415137, 13.829769, 15.717180>,  <11.415954, 13.445164, 15.827081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.415137, 13.829769, 15.717180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126785, -0.272783, -0.953685,
		-0.991928, 0.032887, 0.122462,
		-0.002042, 0.961513, -0.274751,
		11.414525, 14.118223, 15.634755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.946555, 13.449632, 15.295605>,  <11.415954, 13.445164, 15.827081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.946555, 13.449632, 15.295605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113196, 13.809401, 15.242715>,  <11.213181, 14.025262, 15.210981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.113196, 13.809401, 15.242715>,  <10.946555, 13.449632, 15.295605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113196, 13.809401, 15.242715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196588, -0.052874, -0.979059,
		-0.887578, 0.433873, 0.154788,
		0.416603, 0.899421, -0.132224,
		11.238177, 14.079227, 15.203048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.499700, 13.869504, 14.765309>,  <10.946555, 13.449632, 15.295605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.499700, 13.869504, 14.765309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.865106, 14.029842, 14.793057>,  <11.084350, 14.126045, 14.809706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.865106, 14.029842, 14.793057>,  <10.499700, 13.869504, 14.765309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.865106, 14.029842, 14.793057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167265, -0.214665, -0.962259,
		-0.370825, 0.890642, -0.263147,
		0.913516, 0.400845, 0.069370,
		11.139160, 14.150096, 14.813869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.553975, 14.243588, 14.153343>,  <10.499700, 13.869504, 14.765309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.553975, 14.243588, 14.153343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.921569, 14.171782, 14.293767>,  <11.142125, 14.128699, 14.378021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.921569, 14.171782, 14.293767>,  <10.553975, 14.243588, 14.153343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.921569, 14.171782, 14.293767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258297, -0.398622, -0.879991,
		0.297911, 0.899375, -0.319959,
		0.918984, -0.179514, 0.351059,
		11.197264, 14.117929, 14.399085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054016, 14.562060, 13.719360>,  <10.553975, 14.243588, 14.153343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054016, 14.562060, 13.719360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.264748, 14.267198, 13.888618>,  <11.391186, 14.090280, 13.990173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.264748, 14.267198, 13.888618>,  <11.054016, 14.562060, 13.719360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.264748, 14.267198, 13.888618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115662, -0.431029, -0.894894,
		0.842066, 0.520397, -0.141817,
		0.526828, -0.737157, 0.423145,
		11.422796, 14.046050, 14.015562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652112, 14.523970, 13.274873>,  <11.054016, 14.562060, 13.719360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652112, 14.523970, 13.274873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626090, 14.178281, 13.474428>,  <11.610476, 13.970867, 13.594161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626090, 14.178281, 13.474428>,  <11.652112, 14.523970, 13.274873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626090, 14.178281, 13.474428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168477, -0.502282, -0.848132,
		0.983556, 0.028876, 0.178278,
		-0.065055, -0.864222, 0.498887,
		11.606573, 13.919014, 13.624094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.161073, 14.089908, 13.116000>,  <11.652112, 14.523970, 13.274873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.161073, 14.089908, 13.116000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954644, 13.801998, 13.301730>,  <11.830787, 13.629252, 13.413168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954644, 13.801998, 13.301730>,  <12.161073, 14.089908, 13.116000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.954644, 13.801998, 13.301730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394719, -0.680944, -0.616856,
		0.760175, -0.135064, 0.635524,
		-0.516072, -0.719773, 0.464325,
		11.799823, 13.586066, 13.441028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.640739, 13.551430, 13.192346>,  <12.161073, 14.089908, 13.116000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.640739, 13.551430, 13.192346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.266835, 13.409345, 13.195056>,  <12.042493, 13.324094, 13.196682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.266835, 13.409345, 13.195056>,  <12.640739, 13.551430, 13.192346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.266835, 13.409345, 13.195056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247621, -0.665062, -0.704540,
		0.254768, -0.656898, 0.709632,
		-0.934761, -0.355214, 0.006775,
		11.986407, 13.302781, 13.197088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701503, 12.874008, 13.401339>,  <12.640739, 13.551430, 13.192346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701503, 12.874008, 13.401339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342174, 12.870832, 13.225634>,  <12.126575, 12.868927, 13.120211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342174, 12.870832, 13.225634>,  <12.701503, 12.874008, 13.401339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342174, 12.870832, 13.225634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272378, -0.794555, -0.542672,
		-0.344710, -0.607141, 0.715930,
		-0.898324, -0.007940, -0.439262,
		12.072677, 12.868451, 13.093855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527705, 12.729992, 13.426167>,  <12.701503, 12.874008, 13.401339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527705, 12.729992, 13.426167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414469, 13.009924, 13.688494>,  <13.346527, 13.177883, 13.845890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414469, 13.009924, 13.688494>,  <13.527705, 12.729992, 13.426167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414469, 13.009924, 13.688494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895985, 0.050969, -0.441150,
		-0.342156, -0.712488, 0.612609,
		-0.283090, 0.699831, 0.655818,
		13.329541, 13.219873, 13.885240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.504293, 12.079134, 12.970150>,  <13.527705, 12.729992, 13.426167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.504293, 12.079134, 12.970150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810938, 11.855322, 13.096157>,  <13.994925, 11.721035, 13.171762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810938, 11.855322, 13.096157>,  <13.504293, 12.079134, 12.970150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810938, 11.855322, 13.096157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500538, -0.213430, 0.838993,
		-0.402208, -0.800858, -0.443683,
		0.766610, -0.559531, 0.315016,
		14.040921, 11.687463, 13.190662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195127, 11.515260, 13.258122>,  <13.504293, 12.079134, 12.970150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195127, 11.515260, 13.258122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.571869, 11.524466, 13.392212>,  <13.797915, 11.529989, 13.472666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.571869, 11.524466, 13.392212>,  <13.195127, 11.515260, 13.258122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.571869, 11.524466, 13.392212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322322, -0.220009, 0.920709,
		0.094942, -0.975226, -0.199799,
		0.941857, 0.023015, 0.335225,
		13.854426, 11.531370, 13.492780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387540, 10.936318, 13.623167>,  <13.195127, 11.515260, 13.258122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387540, 10.936318, 13.623167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585294, 11.247509, 13.778260>,  <13.703946, 11.434223, 13.871316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585294, 11.247509, 13.778260>,  <13.387540, 10.936318, 13.623167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585294, 11.247509, 13.778260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399840, -0.192535, 0.896135,
		0.771824, -0.598067, 0.215879,
		0.494385, 0.777976, 0.387734,
		13.733609, 11.480902, 13.894581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.624985, 10.694250, 14.213188>,  <13.387540, 10.936318, 13.623167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.624985, 10.694250, 14.213188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.637662, 11.089828, 14.271129>,  <13.645268, 11.327175, 14.305893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.637662, 11.089828, 14.271129>,  <13.624985, 10.694250, 14.213188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.637662, 11.089828, 14.271129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348634, -0.124884, 0.928902,
		0.936723, -0.079939, 0.340823,
		0.031692, 0.988946, 0.144851,
		13.647170, 11.386512, 14.314584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989402, 10.793907, 14.842152>,  <13.624985, 10.694250, 14.213188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989402, 10.793907, 14.842152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778051, 11.129453, 14.789807>,  <13.651241, 11.330780, 14.758401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778051, 11.129453, 14.789807>,  <13.989402, 10.793907, 14.842152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778051, 11.129453, 14.789807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212299, 0.018693, 0.977026,
		0.822039, 0.544018, 0.168213,
		-0.528376, 0.838865, -0.130861,
		13.619538, 11.381112, 14.750549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916135, 11.044079, 15.577857>,  <13.989402, 10.793907, 14.842152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916135, 11.044079, 15.577857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681365, 11.316100, 15.402109>,  <13.540503, 11.479313, 15.296660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681365, 11.316100, 15.402109>,  <13.916135, 11.044079, 15.577857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.681365, 11.316100, 15.402109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366267, 0.260951, 0.893170,
		0.722057, 0.685151, 0.095922,
		-0.586926, 0.680053, -0.439370,
		13.505287, 11.520116, 15.270298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040458, 11.579828, 15.981810>,  <13.916135, 11.044079, 15.577857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040458, 11.579828, 15.981810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681356, 11.609439, 15.808115>,  <13.465896, 11.627205, 15.703898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681356, 11.609439, 15.808115>,  <14.040458, 11.579828, 15.981810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.681356, 11.609439, 15.808115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413196, 0.200154, 0.888374,
		0.152677, 0.976964, -0.149102,
		-0.897752, 0.074026, -0.434236,
		13.412031, 11.631647, 15.677844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783368, 12.295978, 16.199465>,  <14.040458, 11.579828, 15.981810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783368, 12.295978, 16.199465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.473947, 12.082095, 16.063404>,  <13.288294, 11.953766, 15.981768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.473947, 12.082095, 16.063404>,  <13.783368, 12.295978, 16.199465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.473947, 12.082095, 16.063404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520328, 0.229484, 0.822555,
		-0.361765, 0.813281, -0.455741,
		-0.773553, -0.534706, -0.340154,
		13.241880, 11.921683, 15.961358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.233155, 12.780856, 16.250631>,  <13.783368, 12.295978, 16.199465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.233155, 12.780856, 16.250631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072761, 12.415207, 16.226669>,  <12.976524, 12.195817, 16.212292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072761, 12.415207, 16.226669>,  <13.233155, 12.780856, 16.250631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072761, 12.415207, 16.226669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570184, 0.197865, 0.797333,
		-0.717008, 0.353876, -0.600560,
		-0.400986, -0.914123, -0.059904,
		12.952465, 12.140970, 16.208698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.557058, 12.853721, 16.232309>,  <13.233155, 12.780856, 16.250631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.557058, 12.853721, 16.232309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.615417, 12.482074, 16.368223>,  <12.650432, 12.259086, 16.449772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.615417, 12.482074, 16.368223>,  <12.557058, 12.853721, 16.232309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.615417, 12.482074, 16.368223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446824, 0.244547, 0.860550,
		-0.882645, -0.277375, -0.379474,
		0.145896, -0.929118, 0.339786,
		12.659185, 12.203339, 16.470160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908632, 12.606368, 16.506369>,  <12.557058, 12.853721, 16.232309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908632, 12.606368, 16.506369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.177020, 12.349795, 16.655157>,  <12.338053, 12.195851, 16.744431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.177020, 12.349795, 16.655157>,  <11.908632, 12.606368, 16.506369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177020, 12.349795, 16.655157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432954, 0.068345, 0.898821,
		-0.601955, -0.764130, -0.231853,
		0.670970, -0.641432, 0.371974,
		12.378311, 12.157366, 16.766748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554884, 12.086193, 16.850292>,  <11.908632, 12.606368, 16.506369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554884, 12.086193, 16.850292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922422, 12.077241, 17.007885>,  <12.142945, 12.071870, 17.102440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922422, 12.077241, 17.007885>,  <11.554884, 12.086193, 16.850292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922422, 12.077241, 17.007885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390982, 0.083522, 0.916601,
		-0.053419, -0.996255, 0.067994,
		0.918847, -0.022379, 0.393980,
		12.198076, 12.070527, 17.126080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.434755, 11.683667, 17.363834>,  <11.554884, 12.086193, 16.850292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.434755, 11.683667, 17.363834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.768232, 11.882153, 17.460770>,  <11.968319, 12.001244, 17.518932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.768232, 11.882153, 17.460770>,  <11.434755, 11.683667, 17.363834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.768232, 11.882153, 17.460770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308253, 0.054051, 0.949768,
		0.458188, -0.866517, 0.198021,
		0.833693, 0.496213, 0.242341,
		12.018340, 12.031016, 17.533472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.612024, 11.489449, 18.066980>,  <11.434755, 11.683667, 17.363834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.612024, 11.489449, 18.066980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848189, 11.807260, 18.010218>,  <11.989888, 11.997947, 17.976160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.848189, 11.807260, 18.010218>,  <11.612024, 11.489449, 18.066980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.848189, 11.807260, 18.010218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031742, 0.198547, 0.979577,
		0.806477, -0.573850, 0.142444,
		0.590412, 0.794528, -0.141908,
		12.025313, 12.045618, 17.967646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129008, 11.369858, 18.651291>,  <11.612024, 11.489449, 18.066980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129008, 11.369858, 18.651291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.104460, 11.754068, 18.542757>,  <12.089730, 11.984594, 18.477636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.104460, 11.754068, 18.542757>,  <12.129008, 11.369858, 18.651291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104460, 11.754068, 18.542757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131196, 0.261725, 0.956184,
		0.989455, 0.094281, 0.109955,
		-0.061372, 0.960526, -0.271334,
		12.086048, 12.042227, 18.461357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369623, 11.627850, 19.155958>,  <12.129008, 11.369858, 18.651291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369623, 11.627850, 19.155958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214076, 11.955210, 18.986723>,  <12.120748, 12.151626, 18.885181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214076, 11.955210, 18.986723>,  <12.369623, 11.627850, 19.155958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214076, 11.955210, 18.986723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278002, 0.333591, 0.900795,
		0.878349, 0.467909, 0.097794,
		-0.388867, 0.818399, -0.423089,
		12.097416, 12.200729, 18.859797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657753, 12.268214, 19.570135>,  <12.369623, 11.627850, 19.155958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657753, 12.268214, 19.570135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316575, 12.367900, 19.386669>,  <12.111868, 12.427711, 19.276588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316575, 12.367900, 19.386669>,  <12.657753, 12.268214, 19.570135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316575, 12.367900, 19.386669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343935, 0.392673, 0.852946,
		0.392673, 0.885268, -0.249215,
		-0.852946, 0.249215, -0.458667,
		12.060691, 12.442664, 19.249069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.530191, 12.801691, 19.918179>,  <12.657753, 12.268214, 19.570135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.530191, 12.801691, 19.918179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189788, 12.746863, 19.715401>,  <11.985545, 12.713966, 19.593735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189788, 12.746863, 19.715401>,  <12.530191, 12.801691, 19.918179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.189788, 12.746863, 19.715401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521564, 0.333218, 0.785453,
		0.061261, 0.932833, -0.355062,
		-0.851010, -0.137070, -0.506945,
		11.934484, 12.705742, 19.563316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.176980, 13.441175, 19.912844>,  <12.530191, 12.801691, 19.918179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.176980, 13.441175, 19.912844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.909594, 13.145418, 19.880718>,  <11.749162, 12.967964, 19.861443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.909594, 13.145418, 19.880718>,  <12.176980, 13.441175, 19.912844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909594, 13.145418, 19.880718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458136, 0.324293, 0.827614,
		-0.585887, 0.590027, -0.555522,
		-0.668467, -0.739393, -0.080314,
		11.709053, 12.923600, 19.856625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.583313, 13.817958, 20.055607>,  <12.176980, 13.441175, 19.912844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.583313, 13.817958, 20.055607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.500196, 13.430165, 20.107651>,  <11.450325, 13.197490, 20.138878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.500196, 13.430165, 20.107651>,  <11.583313, 13.817958, 20.055607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.500196, 13.430165, 20.107651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394808, 0.204822, 0.895642,
		-0.894957, 0.134741, -0.425320,
		-0.207794, -0.969481, 0.130111,
		11.437858, 13.139321, 20.146685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.927691, 13.753284, 20.241550>,  <11.583313, 13.817958, 20.055607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.927691, 13.753284, 20.241550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.084911, 13.421243, 20.399761>,  <11.179243, 13.222018, 20.494688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.084911, 13.421243, 20.399761>,  <10.927691, 13.753284, 20.241550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.084911, 13.421243, 20.399761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363020, 0.255120, 0.896176,
		-0.844824, -0.495826, -0.201069,
		0.393050, -0.830103, 0.395526,
		11.202826, 13.172212, 20.518419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.373296, 13.553503, 20.603674>,  <10.927691, 13.753284, 20.241550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.373296, 13.553503, 20.603674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.689764, 13.357388, 20.749916>,  <10.879645, 13.239718, 20.837662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.689764, 13.357388, 20.749916>,  <10.373296, 13.553503, 20.603674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.689764, 13.357388, 20.749916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410519, 0.017387, 0.911686,
		-0.453347, -0.871386, -0.187517,
		0.791171, -0.490290, 0.365603,
		10.927115, 13.210300, 20.859596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.126489, 13.055447, 21.066950>,  <10.373296, 13.553503, 20.603674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.126489, 13.055447, 21.066950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514972, 13.105260, 21.148186>,  <10.748062, 13.135148, 21.196928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514972, 13.105260, 21.148186>,  <10.126489, 13.055447, 21.066950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.514972, 13.105260, 21.148186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206513, 0.015070, 0.978328,
		0.118777, -0.992101, 0.040354,
		0.971208, 0.124536, 0.203092,
		10.806334, 13.142620, 21.209114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188190, 12.673116, 21.701992>,  <10.126489, 13.055447, 21.066950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188190, 12.673116, 21.701992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.515094, 12.903301, 21.689777>,  <10.711236, 13.041412, 21.682449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.515094, 12.903301, 21.689777>,  <10.188190, 12.673116, 21.701992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.515094, 12.903301, 21.689777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001739, 0.055450, 0.998460,
		0.576270, -0.815946, 0.046318,
		0.817257, 0.575464, -0.030535,
		10.760271, 13.075940, 21.680616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.694084, 12.380341, 22.220821>,  <10.188190, 12.673116, 21.701992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.694084, 12.380341, 22.220821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814067, 12.753810, 22.142561>,  <10.886057, 12.977892, 22.095604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.814067, 12.753810, 22.142561>,  <10.694084, 12.380341, 22.220821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.814067, 12.753810, 22.142561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000550, 0.205266, 0.978706,
		0.953953, -0.293462, 0.062084,
		0.299957, 0.933673, -0.195653,
		10.904054, 13.033912, 22.083864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.141587, 12.510365, 22.685501>,  <10.694084, 12.380341, 22.220821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.141587, 12.510365, 22.685501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.997103, 12.864280, 22.567734>,  <10.910412, 13.076628, 22.497074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.997103, 12.864280, 22.567734>,  <11.141587, 12.510365, 22.685501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.997103, 12.864280, 22.567734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239861, 0.216950, 0.946256,
		0.901106, 0.412418, 0.133861,
		-0.361211, 0.884785, -0.294418,
		10.888740, 13.129715, 22.479408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.458385, 13.040361, 23.206604>,  <11.141587, 12.510365, 22.685501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.458385, 13.040361, 23.206604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156370, 13.244206, 23.041574>,  <10.975162, 13.366513, 22.942556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.156370, 13.244206, 23.041574>,  <11.458385, 13.040361, 23.206604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.156370, 13.244206, 23.041574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278907, 0.319842, 0.905490,
		0.593407, 0.798747, -0.099358,
		-0.755036, 0.509612, -0.412572,
		10.929859, 13.397090, 22.917803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.564496, 13.755552, 23.357269>,  <11.458385, 13.040361, 23.206604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.564496, 13.755552, 23.357269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.171688, 13.709873, 23.297144>,  <10.936003, 13.682466, 23.261068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.171688, 13.709873, 23.297144>,  <11.564496, 13.755552, 23.357269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.171688, 13.709873, 23.297144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185861, 0.445591, 0.875731,
		-0.033027, 0.887923, -0.458805,
		-0.982021, -0.114197, -0.150314,
		10.877082, 13.675614, 23.252050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
