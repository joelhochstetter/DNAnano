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
	<3.705941, 3.157288, 1.989809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.749447, 2.854927, 2.248043>,  <3.775550, 2.673510, 2.402984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.749447, 2.854927, 2.248043>,  <3.705941, 3.157288, 1.989809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.749447, 2.854927, 2.248043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812312, 0.306759, 0.496032,
		-0.572991, -0.578368, -0.580665,
		0.108764, -0.755903, 0.645585,
		3.782076, 2.628156, 2.441719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.357944, 2.455087, 1.986099>,  <3.705941, 3.157288, 1.989809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.357944, 2.455087, 1.986099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.295380, 2.532030, 1.598587>,  <3.257841, 2.578196, 1.366080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.295380, 2.532030, 1.598587>,  <3.357944, 2.455087, 1.986099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.295380, 2.532030, 1.598587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987379, 0.005759, -0.158271,
		-0.024866, -0.981308, -0.190830,
		-0.156412, 0.192357, -0.968780,
		3.248456, 2.589737, 1.307953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830065, 2.048120, 1.673339>,  <3.357944, 2.455087, 1.986099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830065, 2.048120, 1.673339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.753483, 2.371510, 1.450731>,  <3.707534, 2.565543, 1.317167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.753483, 2.371510, 1.450731>,  <3.830065, 2.048120, 1.673339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.753483, 2.371510, 1.450731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981454, 0.163256, -0.100475,
		0.009624, -0.565434, -0.824737,
		-0.191455, 0.808475, -0.556519,
		3.696046, 2.614052, 1.283776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.225161, 1.882392, 1.161310>,  <3.830065, 2.048120, 1.673339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.225161, 1.882392, 1.161310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179729, 2.279274, 1.181828>,  <4.152471, 2.517403, 1.194138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.179729, 2.279274, 1.181828>,  <4.225161, 1.882392, 1.161310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.179729, 2.279274, 1.181828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988767, 0.117933, -0.091821,
		-0.097155, 0.040289, -0.994454,
		-0.113579, 0.992204, 0.051294,
		4.145656, 2.576935, 1.197216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.618167, 2.180047, 0.610478>,  <4.225161, 1.882392, 1.161310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.618167, 2.180047, 0.610478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.559162, 2.485210, 0.862259>,  <4.523759, 2.668309, 1.013327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.559162, 2.485210, 0.862259>,  <4.618167, 2.180047, 0.610478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.559162, 2.485210, 0.862259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935398, 0.314388, -0.161835,
		-0.321358, 0.564916, -0.760000,
		-0.147512, 0.762909, 0.629452,
		4.514908, 2.714083, 1.051095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.607675, 2.863532, 0.217618>,  <4.618167, 2.180047, 0.610478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.607675, 2.863532, 0.217618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.697498, 2.939238, 0.599979>,  <4.751392, 2.984661, 0.829396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.697498, 2.939238, 0.599979>,  <4.607675, 2.863532, 0.217618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.697498, 2.939238, 0.599979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886796, 0.366941, -0.280976,
		-0.403939, 0.910788, -0.085438,
		0.224559, 0.189263, 0.955904,
		4.764866, 2.996017, 0.886751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.951747, 3.459547, 0.243683>,  <4.607675, 2.863532, 0.217618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.951747, 3.459547, 0.243683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073765, 3.287766, 0.583687>,  <5.146975, 3.184697, 0.787689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073765, 3.287766, 0.583687>,  <4.951747, 3.459547, 0.243683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073765, 3.287766, 0.583687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901097, 0.418986, -0.111691,
		-0.308176, 0.800013, 0.514788,
		0.305043, -0.429454, 0.850011,
		5.165278, 3.158929, 0.838690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.289019, 4.006270, 0.551183>,  <4.951747, 3.459547, 0.243683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.289019, 4.006270, 0.551183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.422741, 3.649960, 0.674313>,  <5.502974, 3.436173, 0.748190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.422741, 3.649960, 0.674313>,  <5.289019, 4.006270, 0.551183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.422741, 3.649960, 0.674313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941856, 0.304023, -0.143100,
		0.033885, 0.337765, 0.940620,
		0.334305, -0.890778, 0.307824,
		5.523032, 3.382726, 0.766660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.022091, 3.464983, 0.804205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.936951, 3.234572, 1.119898>,  <1.885866, 3.096326, 1.309314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.936951, 3.234572, 1.119898>,  <2.022091, 3.464983, 0.804205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.936951, 3.234572, 1.119898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948168, -0.073285, -0.309204,
		0.235949, -0.814139, -0.530572,
		-0.212852, -0.576027, 0.789232,
		1.873095, 3.061764, 1.356667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.688134, 2.730481, 0.698427>,  <2.022091, 3.464983, 0.804205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.688134, 2.730481, 0.698427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.588890, 2.913922, 1.039748>,  <1.529344, 3.023987, 1.244540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.588890, 2.913922, 1.039748>,  <1.688134, 2.730481, 0.698427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.588890, 2.913922, 1.039748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968731, -0.115933, -0.219364,
		-0.001675, -0.881047, 0.473027,
		-0.248109, 0.458603, 0.853303,
		1.514457, 3.051503, 1.295738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.269367, 2.390322, 0.982153>,  <1.688134, 2.730481, 0.698427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.269367, 2.390322, 0.982153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.166695, 2.736701, 1.153850>,  <1.105091, 2.944528, 1.256868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.166695, 2.736701, 1.153850>,  <1.269367, 2.390322, 0.982153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.166695, 2.736701, 1.153850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960521, -0.179247, -0.212766,
		-0.107303, -0.466911, 0.877770,
		-0.256680, 0.865947, 0.429244,
		1.089691, 2.996485, 1.282623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.782903, 2.352611, 1.577468>,  <1.269367, 2.390322, 0.982153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.782903, 2.352611, 1.577468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729523, 2.716048, 1.419153>,  <0.697494, 2.934111, 1.324164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.729523, 2.716048, 1.419153>,  <0.782903, 2.352611, 1.577468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729523, 2.716048, 1.419153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985298, -0.078651, 0.151665,
		0.106673, 0.410209, 0.905732,
		-0.133451, 0.908594, -0.395788,
		0.689487, 2.988626, 1.300417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.333370, 2.645482, 1.992486>,  <0.782903, 2.352611, 1.577468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.333370, 2.645482, 1.992486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.294525, 2.858552, 1.656194>,  <0.271218, 2.986394, 1.454419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.294525, 2.858552, 1.656194>,  <0.333370, 2.645482, 1.992486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.294525, 2.858552, 1.656194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995167, -0.039616, 0.089850,
		0.014554, 0.845392, 0.533948,
		-0.097111, 0.532675, -0.840730,
		0.265392, 3.018354, 1.403975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.084131, 3.284067, 2.152425>,  <0.333370, 2.645482, 1.992486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.084131, 3.284067, 2.152425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.112671, 3.207299, 1.760900>,  <-0.129795, 3.161238, 1.525985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.112671, 3.207299, 1.760900>,  <-0.084131, 3.284067, 2.152425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.112671, 3.207299, 1.760900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995071, 0.081455, 0.056564,
		0.068873, 0.978024, -0.196786,
		-0.071350, -0.191920, -0.978813,
		-0.134076, 3.149723, 1.467256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.613736, 3.703210, 1.856767>,  <-0.084131, 3.284067, 2.152425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.613736, 3.703210, 1.856767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.581276, 3.406334, 1.590664>,  <-0.561800, 3.228208, 1.431002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.581276, 3.406334, 1.590664>,  <-0.613736, 3.703210, 1.856767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.581276, 3.406334, 1.590664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995230, -0.024079, -0.094536,
		0.054144, 0.669757, -0.740604,
		0.081149, -0.742190, -0.665259,
		-0.556931, 3.183677, 1.391086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.057036, 3.892437, 1.338336>,  <-0.613736, 3.703210, 1.856767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.057036, 3.892437, 1.338336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.003052, 3.498866, 1.291560>,  <-0.970661, 3.262724, 1.263494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.003052, 3.498866, 1.291560>,  <-1.057036, 3.892437, 1.338336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.003052, 3.498866, 1.291560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970623, -0.107555, -0.215228,
		0.199190, 0.142554, -0.969537,
		0.134960, -0.983926, -0.116942,
		-0.962564, 3.203688, 1.256477>
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
