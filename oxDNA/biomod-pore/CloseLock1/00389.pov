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
	<24.194572, 34.538124, 34.795494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357889, 34.903076, 34.807262>,  <24.455879, 35.122047, 34.814323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357889, 34.903076, 34.807262>,  <24.194572, 34.538124, 34.795494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357889, 34.903076, 34.807262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572318, -0.280957, 0.770400,
		0.711160, -0.297712, -0.636882,
		0.408294, 0.912376, 0.029420,
		24.480377, 35.176788, 34.816090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040453, 34.580235, 34.748573>,  <24.194572, 34.538124, 34.795494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040453, 34.580235, 34.748573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.845633, 34.840881, 34.981182>,  <24.728741, 34.997269, 35.120747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.845633, 34.840881, 34.981182>,  <25.040453, 34.580235, 34.748573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.845633, 34.840881, 34.981182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545057, -0.293473, 0.785357,
		0.682416, 0.699475, -0.212233,
		-0.487053, 0.651620, 0.581525,
		24.699516, 35.036366, 35.155640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569210, 35.103897, 35.073723>,  <25.040453, 34.580235, 34.748573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569210, 35.103897, 35.073723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233768, 34.999718, 35.265099>,  <25.032503, 34.937210, 35.379925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.233768, 34.999718, 35.265099>,  <25.569210, 35.103897, 35.073723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.233768, 34.999718, 35.265099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518005, -0.109505, 0.848339,
		-0.168556, 0.959258, 0.226744,
		-0.838606, -0.260447, 0.478443,
		24.982187, 34.921585, 35.408630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492092, 35.447117, 35.726257>,  <25.569210, 35.103897, 35.073723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492092, 35.447117, 35.726257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286613, 35.104080, 35.736443>,  <25.163326, 34.898258, 35.742554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.286613, 35.104080, 35.736443>,  <25.492092, 35.447117, 35.726257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286613, 35.104080, 35.736443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454120, -0.246597, 0.856134,
		-0.727935, 0.451358, 0.516127,
		-0.513698, -0.857593, 0.025464,
		25.132504, 34.846802, 35.744083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216885, 35.524120, 36.286648>,  <25.492092, 35.447117, 35.726257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216885, 35.524120, 36.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241936, 35.140202, 36.177204>,  <25.256966, 34.909851, 36.111538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241936, 35.140202, 36.177204>,  <25.216885, 35.524120, 36.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241936, 35.140202, 36.177204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384946, -0.229703, 0.893898,
		-0.920812, -0.161305, 0.355086,
		0.062626, -0.959801, -0.273607,
		25.260723, 34.852261, 36.095123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881603, 35.174576, 36.823608>,  <25.216885, 35.524120, 36.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881603, 35.174576, 36.823608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156771, 34.936710, 36.657166>,  <25.321871, 34.793991, 36.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156771, 34.936710, 36.657166>,  <24.881603, 35.174576, 36.823608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156771, 34.936710, 36.657166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316019, -0.270695, 0.909316,
		-0.653375, -0.757033, 0.001709,
		0.687920, -0.594664, -0.416103,
		25.363146, 34.758312, 36.532333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997995, 34.688183, 37.293159>,  <24.881603, 35.174576, 36.823608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997995, 34.688183, 37.293159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302362, 34.574158, 37.060009>,  <25.484983, 34.505741, 36.920120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302362, 34.574158, 37.060009>,  <24.997995, 34.688183, 37.293159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302362, 34.574158, 37.060009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450921, -0.413613, 0.790946,
		-0.466554, -0.864675, -0.186184,
		0.760919, -0.285065, -0.582873,
		25.530638, 34.488640, 36.885147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.981544, 33.894310, 37.299332>,  <24.997995, 34.688183, 37.293159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.981544, 33.894310, 37.299332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328234, 34.074364, 37.213375>,  <25.536247, 34.182396, 37.161800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328234, 34.074364, 37.213375>,  <24.981544, 33.894310, 37.299332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328234, 34.074364, 37.213375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434944, -0.471151, 0.767359,
		0.244168, -0.758550, -0.604138,
		0.866721, 0.450131, -0.214887,
		25.588249, 34.209404, 37.148911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533998, 33.322720, 37.422295>,  <24.981544, 33.894310, 37.299332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533998, 33.322720, 37.422295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750166, 33.659241, 37.427357>,  <25.879866, 33.861153, 37.430393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750166, 33.659241, 37.427357>,  <25.533998, 33.322720, 37.422295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750166, 33.659241, 37.427357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500468, -0.333503, 0.798942,
		0.676373, -0.425427, -0.601275,
		0.540418, 0.841301, 0.012660,
		25.912291, 33.911633, 37.431156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202911, 33.151325, 37.461514>,  <25.533998, 33.322720, 37.422295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202911, 33.151325, 37.461514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175957, 33.518314, 37.618336>,  <26.159784, 33.738506, 37.712429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175957, 33.518314, 37.618336>,  <26.202911, 33.151325, 37.461514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175957, 33.518314, 37.618336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512701, -0.305258, 0.802468,
		0.855919, 0.255082, -0.449818,
		-0.067385, 0.917470, 0.392057,
		26.155741, 33.793556, 37.735954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844208, 33.200817, 37.724049>,  <26.202911, 33.151325, 37.461514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844208, 33.200817, 37.724049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652431, 33.503113, 37.902489>,  <26.537367, 33.684490, 38.009552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652431, 33.503113, 37.902489>,  <26.844208, 33.200817, 37.724049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652431, 33.503113, 37.902489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539025, -0.147545, 0.829266,
		0.692525, 0.638041, -0.336621,
		-0.479439, 0.755735, 0.446098,
		26.508600, 33.729832, 38.036320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398849, 33.455097, 38.129333>,  <26.844208, 33.200817, 37.724049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398849, 33.455097, 38.129333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058722, 33.614620, 38.266685>,  <26.854645, 33.710335, 38.349098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058722, 33.614620, 38.266685>,  <27.398849, 33.455097, 38.129333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058722, 33.614620, 38.266685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393396, 0.048273, 0.918101,
		0.349570, 0.915763, -0.197937,
		-0.850318, 0.398808, 0.343383,
		26.803627, 33.734264, 38.369701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582476, 34.039482, 38.441952>,  <27.398849, 33.455097, 38.129333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582476, 34.039482, 38.441952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243246, 33.922077, 38.618416>,  <27.039709, 33.851635, 38.724297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243246, 33.922077, 38.618416>,  <27.582476, 34.039482, 38.441952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243246, 33.922077, 38.618416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489559, -0.115461, 0.864292,
		-0.202741, 0.948958, 0.241609,
		-0.848073, -0.293509, 0.441162,
		26.988825, 33.834023, 38.750763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790779, 34.091255, 39.106083>,  <27.582476, 34.039482, 38.441952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790779, 34.091255, 39.106083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441679, 33.901154, 39.150692>,  <27.232220, 33.787090, 39.177456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441679, 33.901154, 39.150692>,  <27.790779, 34.091255, 39.106083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441679, 33.901154, 39.150692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225460, -0.189803, 0.955585,
		-0.432983, 0.859130, 0.272802,
		-0.872751, -0.475258, 0.111518,
		27.179853, 33.758575, 39.184147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509491, 34.406567, 39.657318>,  <27.790779, 34.091255, 39.106083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509491, 34.406567, 39.657318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350334, 34.044483, 39.597603>,  <27.254841, 33.827232, 39.561775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350334, 34.044483, 39.597603>,  <27.509491, 34.406567, 39.657318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350334, 34.044483, 39.597603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399734, -0.317520, 0.859880,
		-0.825770, 0.282462, 0.488179,
		-0.397890, -0.905205, -0.149289,
		27.230967, 33.772923, 39.552814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388250, 34.078190, 40.270039>,  <27.509491, 34.406567, 39.657318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388250, 34.078190, 40.270039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365191, 33.741100, 40.055939>,  <27.351355, 33.538845, 39.927479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365191, 33.741100, 40.055939>,  <27.388250, 34.078190, 40.270039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365191, 33.741100, 40.055939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420738, -0.506713, 0.752477,
		-0.905348, -0.181821, 0.383778,
		-0.057650, -0.842724, -0.535250,
		27.347897, 33.488281, 39.895363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025385, 33.661358, 40.655334>,  <27.388250, 34.078190, 40.270039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025385, 33.661358, 40.655334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236858, 33.406174, 40.431374>,  <27.363743, 33.253063, 40.296997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236858, 33.406174, 40.431374>,  <27.025385, 33.661358, 40.655334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236858, 33.406174, 40.431374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477460, -0.321867, 0.817578,
		-0.701801, -0.699573, 0.134436,
		0.528685, -0.637965, -0.559905,
		27.395464, 33.214783, 40.263401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082783, 33.008411, 40.998409>,  <27.025385, 33.661358, 40.655334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082783, 33.008411, 40.998409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388048, 33.000912, 40.740036>,  <27.571207, 32.996410, 40.585011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388048, 33.000912, 40.740036>,  <27.082783, 33.008411, 40.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388048, 33.000912, 40.740036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527336, -0.559662, 0.639293,
		-0.373492, -0.828509, -0.417224,
		0.763164, -0.018753, -0.645932,
		27.616997, 32.995285, 40.546257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220154, 32.307266, 40.815243>,  <27.082783, 33.008411, 40.998409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220154, 32.307266, 40.815243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563213, 32.491070, 40.722904>,  <27.769049, 32.601353, 40.667500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563213, 32.491070, 40.722904>,  <27.220154, 32.307266, 40.815243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563213, 32.491070, 40.722904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506427, -0.676783, 0.534318,
		0.089293, -0.575163, -0.813151,
		0.857647, 0.459512, -0.230846,
		27.820507, 32.628925, 40.653648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601055, 31.799940, 40.464085>,  <27.220154, 32.307266, 40.815243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601055, 31.799940, 40.464085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866590, 32.069775, 40.593239>,  <28.025911, 32.231674, 40.670731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866590, 32.069775, 40.593239>,  <27.601055, 31.799940, 40.464085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866590, 32.069775, 40.593239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598151, -0.738063, 0.312216,
		0.448926, -0.014126, -0.893457,
		0.663838, 0.674584, 0.322886,
		28.065742, 32.272148, 40.690105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239429, 31.522615, 40.269115>,  <27.601055, 31.799940, 40.464085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239429, 31.522615, 40.269115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338511, 31.797930, 40.541851>,  <28.397959, 31.963120, 40.705494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.338511, 31.797930, 40.541851>,  <28.239429, 31.522615, 40.269115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338511, 31.797930, 40.541851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691610, -0.618465, 0.373063,
		0.678469, 0.379159, -0.629220,
		0.247701, 0.688287, 0.681840,
		28.412821, 32.004417, 40.746403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998369, 31.676941, 40.218117>,  <28.239429, 31.522615, 40.269115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998369, 31.676941, 40.218117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832737, 31.739548, 40.576790>,  <28.733358, 31.777111, 40.791992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832737, 31.739548, 40.576790>,  <28.998369, 31.676941, 40.218117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832737, 31.739548, 40.576790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592310, -0.701678, 0.396000,
		0.691164, 0.695090, 0.197845,
		-0.414079, 0.156515, 0.896683,
		28.708513, 31.786503, 40.845795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586615, 31.596537, 40.604382>,  <28.998369, 31.676941, 40.218117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586615, 31.596537, 40.604382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303179, 31.555016, 40.883560>,  <29.133118, 31.530102, 41.051067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303179, 31.555016, 40.883560>,  <29.586615, 31.596537, 40.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303179, 31.555016, 40.883560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595410, -0.618765, 0.512461,
		0.378668, 0.778687, 0.500256,
		-0.708588, -0.103805, 0.697945,
		29.090603, 31.523874, 41.092945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019199, 31.502401, 41.276604>,  <29.586615, 31.596537, 40.604382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019199, 31.502401, 41.276604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649879, 31.362457, 41.340000>,  <29.428288, 31.278490, 41.378036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649879, 31.362457, 41.340000>,  <30.019199, 31.502401, 41.276604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649879, 31.362457, 41.340000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379052, -0.763432, 0.522964,
		-0.061969, 0.542927, 0.837490,
		-0.923298, -0.349860, 0.158489,
		29.372890, 31.257500, 41.387547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040462, 31.334187, 42.020191>,  <30.019199, 31.502401, 41.276604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040462, 31.334187, 42.020191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740635, 31.138077, 41.842304>,  <29.560738, 31.020411, 41.735573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740635, 31.138077, 41.842304>,  <30.040462, 31.334187, 42.020191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740635, 31.138077, 41.842304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381297, -0.869005, 0.315347,
		-0.541071, 0.066804, 0.838319,
		-0.749570, -0.490273, -0.444722,
		29.515764, 30.990995, 41.708889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894350, 30.830782, 42.592873>,  <30.040462, 31.334187, 42.020191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894350, 30.830782, 42.592873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746010, 30.709862, 42.241627>,  <29.657005, 30.637310, 42.030880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746010, 30.709862, 42.241627>,  <29.894350, 30.830782, 42.592873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746010, 30.709862, 42.241627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248587, -0.943348, 0.219771,
		-0.894804, -0.136786, 0.424989,
		-0.370851, -0.302299, -0.878115,
		29.634754, 30.619173, 41.978191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219313, 30.446581, 42.561886>,  <29.894350, 30.830782, 42.592873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219313, 30.446581, 42.561886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457634, 30.341780, 42.258209>,  <29.600628, 30.278898, 42.076004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457634, 30.341780, 42.258209>,  <29.219313, 30.446581, 42.561886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457634, 30.341780, 42.258209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037624, -0.935147, 0.352257,
		-0.802248, -0.238441, -0.547307,
		0.595805, -0.262005, -0.759190,
		29.636375, 30.263178, 42.030453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538376, 30.142538, 42.458302>,  <29.219313, 30.446581, 42.561886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538376, 30.142538, 42.458302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272390, 30.263145, 42.184978>,  <28.112799, 30.335510, 42.020985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272390, 30.263145, 42.184978>,  <28.538376, 30.142538, 42.458302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272390, 30.263145, 42.184978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715087, -0.521101, 0.465944,
		-0.215585, 0.798462, 0.562122,
		-0.664961, 0.301516, -0.683311,
		28.072903, 30.353600, 41.979984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100908, 30.564087, 42.820038>,  <28.538376, 30.142538, 42.458302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100908, 30.564087, 42.820038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941950, 30.353592, 42.519333>,  <27.846575, 30.227295, 42.338909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.941950, 30.353592, 42.519333>,  <28.100908, 30.564087, 42.820038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941950, 30.353592, 42.519333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557942, -0.511846, 0.653234,
		-0.728544, 0.679034, -0.090204,
		-0.397397, -0.526238, -0.751764,
		27.822731, 30.195721, 42.293804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349964, 30.551228, 42.789650>,  <28.100908, 30.564087, 42.820038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349964, 30.551228, 42.789650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537239, 30.217150, 42.674236>,  <27.649605, 30.016703, 42.604988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537239, 30.217150, 42.674236>,  <27.349964, 30.551228, 42.789650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537239, 30.217150, 42.674236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508707, -0.521754, 0.684828,
		-0.722507, -0.173849, -0.669148,
		0.468187, -0.835194, -0.288533,
		27.677696, 29.966591, 42.587677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869089, 29.992186, 42.678692>,  <27.349964, 30.551228, 42.789650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869089, 29.992186, 42.678692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224171, 29.834637, 42.774063>,  <27.437220, 29.740107, 42.831287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224171, 29.834637, 42.774063>,  <26.869089, 29.992186, 42.678692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224171, 29.834637, 42.774063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382381, -0.342237, 0.858288,
		-0.256455, -0.853076, -0.454414,
		0.887702, -0.393871, 0.238432,
		27.490480, 29.716475, 42.845592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847078, 29.195715, 42.690716>,  <26.869089, 29.992186, 42.678692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847078, 29.195715, 42.690716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101868, 29.369047, 42.945744>,  <27.254742, 29.473047, 43.098759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.101868, 29.369047, 42.945744>,  <26.847078, 29.195715, 42.690716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.101868, 29.369047, 42.945744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511972, -0.380520, 0.770123,
		0.576325, -0.816963, -0.020527,
		0.636973, 0.433331, 0.637565,
		27.292959, 29.499046, 43.137012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717857, 28.477135, 42.496044>,  <26.847078, 29.195715, 42.690716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717857, 28.477135, 42.496044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961760, 28.168840, 42.422112>,  <27.108101, 27.983864, 42.377750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961760, 28.168840, 42.422112>,  <26.717857, 28.477135, 42.496044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961760, 28.168840, 42.422112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068027, 0.283229, -0.956637,
		0.789665, 0.570740, 0.225132,
		0.609755, -0.770738, -0.184830,
		27.144686, 27.937618, 42.366661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263290, 28.822817, 42.193512>,  <26.717857, 28.477135, 42.496044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263290, 28.822817, 42.193512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218470, 28.439064, 42.089951>,  <27.191578, 28.208813, 42.027813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218470, 28.439064, 42.089951>,  <27.263290, 28.822817, 42.193512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218470, 28.439064, 42.089951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096247, 0.269801, -0.958094,
		0.989030, -0.082437, -0.122570,
		-0.112051, -0.959381, -0.258907,
		27.184855, 28.151249, 42.012280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747766, 28.686117, 41.707375>,  <27.263290, 28.822817, 42.193512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747766, 28.686117, 41.707375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436996, 28.437744, 41.665745>,  <27.250534, 28.288721, 41.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436996, 28.437744, 41.665745>,  <27.747766, 28.686117, 41.707375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436996, 28.437744, 41.665745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159048, 0.353503, -0.921813,
		0.609173, -0.699628, -0.373403,
		-0.776925, -0.620932, -0.104070,
		27.203918, 28.251465, 41.634525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941805, 28.252689, 41.140774>,  <27.747766, 28.686117, 41.707375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941805, 28.252689, 41.140774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544367, 28.286528, 41.170731>,  <27.305904, 28.306831, 41.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544367, 28.286528, 41.170731>,  <27.941805, 28.252689, 41.140774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544367, 28.286528, 41.170731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042222, 0.336793, -0.940632,
		-0.104796, -0.937771, -0.331065,
		-0.993597, 0.084596, 0.074889,
		27.246288, 28.311907, 41.193199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579916, 27.952009, 40.506855>,  <27.941805, 28.252689, 41.140774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579916, 27.952009, 40.506855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273407, 28.161335, 40.655968>,  <27.089500, 28.286930, 40.745434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273407, 28.161335, 40.655968>,  <27.579916, 27.952009, 40.506855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273407, 28.161335, 40.655968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151171, 0.417064, -0.896217,
		-0.624477, -0.743102, -0.240475,
		-0.766274, 0.523315, 0.372783,
		27.043526, 28.318329, 40.767803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942610, 27.787495, 40.173100>,  <27.579916, 27.952009, 40.506855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942610, 27.787495, 40.173100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930128, 28.156898, 40.326023>,  <26.922640, 28.378540, 40.417778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930128, 28.156898, 40.326023>,  <26.942610, 27.787495, 40.173100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930128, 28.156898, 40.326023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152095, 0.373652, -0.915015,
		-0.987873, -0.086699, 0.128802,
		-0.031203, 0.923508, 0.382307,
		26.920767, 28.433950, 40.440716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415390, 28.051451, 39.763199>,  <26.942610, 27.787495, 40.173100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415390, 28.051451, 39.763199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573627, 28.386337, 39.914234>,  <26.668570, 28.587269, 40.004856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573627, 28.386337, 39.914234>,  <26.415390, 28.051451, 39.763199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573627, 28.386337, 39.914234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244215, 0.492214, -0.835514,
		-0.885362, 0.238310, 0.399178,
		0.395592, 0.837218, 0.377589,
		26.692305, 28.637503, 40.027512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957392, 28.612656, 39.642345>,  <26.415390, 28.051451, 39.763199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957392, 28.612656, 39.642345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308899, 28.790012, 39.712967>,  <26.519802, 28.896427, 39.755341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308899, 28.790012, 39.712967>,  <25.957392, 28.612656, 39.642345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308899, 28.790012, 39.712967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154502, 0.614323, -0.773780,
		-0.451552, 0.652694, 0.608352,
		0.878766, 0.443394, 0.176556,
		26.572529, 28.923031, 39.765934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.844553, 29.252176, 39.489178>,  <25.957392, 28.612656, 39.642345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.844553, 29.252176, 39.489178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243860, 29.274282, 39.481068>,  <26.483444, 29.287546, 39.476204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243860, 29.274282, 39.481068>,  <25.844553, 29.252176, 39.489178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243860, 29.274282, 39.481068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050367, 0.623628, -0.780097,
		-0.030472, 0.779765, 0.625330,
		0.998266, 0.055267, -0.020271,
		26.543341, 29.290863, 39.474987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967196, 29.946093, 39.578590>,  <25.844553, 29.252176, 39.489178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967196, 29.946093, 39.578590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332609, 29.831800, 39.462791>,  <26.551857, 29.763226, 39.393311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332609, 29.831800, 39.462791>,  <25.967196, 29.946093, 39.578590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332609, 29.831800, 39.462791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045440, 0.778957, -0.625428,
		0.404215, 0.558196, 0.724588,
		0.913535, -0.285733, -0.289502,
		26.606670, 29.746080, 39.375942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466673, 30.523561, 39.644894>,  <25.967196, 29.946093, 39.578590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466673, 30.523561, 39.644894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594059, 30.269567, 39.363361>,  <26.670490, 30.117172, 39.194443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594059, 30.269567, 39.363361>,  <26.466673, 30.523561, 39.644894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594059, 30.269567, 39.363361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105822, 0.761661, -0.639276,
		0.942010, 0.129105, 0.309756,
		0.318463, -0.634984, -0.703830,
		26.689598, 30.079073, 39.152214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108847, 30.715498, 39.373150>,  <26.466673, 30.523561, 39.644894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108847, 30.715498, 39.373150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956327, 30.492519, 39.078159>,  <26.864817, 30.358732, 38.901165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956327, 30.492519, 39.078159>,  <27.108847, 30.715498, 39.373150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956327, 30.492519, 39.078159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058582, 0.781566, -0.621065,
		0.922594, -0.280014, -0.265354,
		-0.381298, -0.557446, -0.737472,
		26.841938, 30.325285, 38.856918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364281, 31.117832, 38.608940>,  <27.108847, 30.715498, 39.373150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364281, 31.117832, 38.608940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145382, 30.809671, 38.478096>,  <27.014042, 30.624775, 38.399590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145382, 30.809671, 38.478096>,  <27.364281, 31.117832, 38.608940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145382, 30.809671, 38.478096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012741, 0.398444, -0.917104,
		0.836875, -0.497714, -0.227863,
		-0.547246, -0.770404, -0.327107,
		26.981209, 30.578550, 38.379963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622677, 30.890562, 37.924973>,  <27.364281, 31.117832, 38.608940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622677, 30.890562, 37.924973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247234, 30.756842, 37.959057>,  <27.021969, 30.676609, 37.979507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247234, 30.756842, 37.959057>,  <27.622677, 30.890562, 37.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247234, 30.756842, 37.959057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244794, 0.471327, -0.847306,
		0.243092, -0.816146, -0.524225,
		-0.938607, -0.334300, 0.085212,
		26.965652, 30.656551, 37.984619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483690, 30.712210, 37.247780>,  <27.622677, 30.890562, 37.924973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483690, 30.712210, 37.247780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139870, 30.802235, 37.431309>,  <26.933577, 30.856251, 37.541424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139870, 30.802235, 37.431309>,  <27.483690, 30.712210, 37.247780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139870, 30.802235, 37.431309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326537, 0.448752, -0.831863,
		-0.393117, -0.864852, -0.312235,
		-0.859554, 0.225063, 0.458818,
		26.882004, 30.869753, 37.568954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128967, 30.778740, 36.674564>,  <27.483690, 30.712210, 37.247780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128967, 30.778740, 36.674564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907887, 30.948212, 36.961624>,  <26.775238, 31.049894, 37.133858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.907887, 30.948212, 36.961624>,  <27.128967, 30.778740, 36.674564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907887, 30.948212, 36.961624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446538, 0.576525, -0.684268,
		-0.703651, -0.698653, -0.129458,
		-0.552702, 0.423678, 0.717647,
		26.742077, 31.075315, 37.176918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482378, 30.926174, 36.373314>,  <27.128967, 30.778740, 36.674564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482378, 30.926174, 36.373314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512259, 31.175982, 36.684284>,  <26.530188, 31.325867, 36.870869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512259, 31.175982, 36.684284>,  <26.482378, 30.926174, 36.373314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512259, 31.175982, 36.684284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226592, 0.769845, -0.596653,
		-0.971121, -0.131587, 0.199021,
		0.074703, 0.624518, 0.777429,
		26.534670, 31.363337, 36.917515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997663, 31.431812, 36.222324>,  <26.482378, 30.926174, 36.373314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997663, 31.431812, 36.222324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258390, 31.587917, 36.482426>,  <26.414827, 31.681580, 36.638485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258390, 31.587917, 36.482426>,  <25.997663, 31.431812, 36.222324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258390, 31.587917, 36.482426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004772, 0.855301, -0.518110,
		-0.758360, 0.340817, 0.555639,
		0.651819, 0.390262, 0.650252,
		26.453936, 31.704996, 36.677502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766773, 32.069397, 36.294621>,  <25.997663, 31.431812, 36.222324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766773, 32.069397, 36.294621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144876, 32.103104, 36.420723>,  <26.371738, 32.123329, 36.496384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144876, 32.103104, 36.420723>,  <25.766773, 32.069397, 36.294621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144876, 32.103104, 36.420723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096729, 0.850308, -0.517320,
		-0.311658, 0.519495, 0.795609,
		0.945258, 0.084268, 0.315255,
		26.428453, 32.128384, 36.515301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864651, 32.746120, 36.576740>,  <25.766773, 32.069397, 36.294621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864651, 32.746120, 36.576740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231226, 32.614876, 36.485104>,  <26.451172, 32.536129, 36.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231226, 32.614876, 36.485104>,  <25.864651, 32.746120, 36.576740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231226, 32.614876, 36.485104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177036, 0.845835, -0.503212,
		0.358884, 0.420605, 0.833243,
		0.916439, -0.328109, -0.229094,
		26.506157, 32.516441, 36.416374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292835, 33.377911, 36.655418>,  <25.864651, 32.746120, 36.576740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292835, 33.377911, 36.655418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524511, 33.126453, 36.447826>,  <26.663517, 32.975578, 36.323269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.524511, 33.126453, 36.447826>,  <26.292835, 33.377911, 36.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524511, 33.126453, 36.447826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367054, 0.769563, -0.522536,
		0.727879, 0.112155, 0.676471,
		0.579192, -0.628644, -0.518982,
		26.698269, 32.937859, 36.292133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966789, 33.792076, 36.577744>,  <26.292835, 33.377911, 36.655418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966789, 33.792076, 36.577744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963301, 33.487949, 36.317947>,  <26.961208, 33.305473, 36.162067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963301, 33.487949, 36.317947>,  <26.966789, 33.792076, 36.577744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963301, 33.487949, 36.317947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494356, 0.561316, -0.663729,
		0.869216, -0.326871, 0.370971,
		-0.008722, -0.760316, -0.649495,
		26.960684, 33.259853, 36.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599619, 33.751568, 36.269321>,  <26.966789, 33.792076, 36.577744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599619, 33.751568, 36.269321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353134, 33.600544, 35.992847>,  <27.205244, 33.509930, 35.826965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353134, 33.600544, 35.992847>,  <27.599619, 33.751568, 36.269321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353134, 33.600544, 35.992847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356276, 0.649040, -0.672172,
		0.702391, -0.660451, -0.265428,
		-0.616210, -0.377561, -0.691182,
		27.168270, 33.487274, 35.785492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010532, 33.528412, 35.590202>,  <27.599619, 33.751568, 36.269321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010532, 33.528412, 35.590202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632313, 33.649513, 35.542404>,  <27.405382, 33.722176, 35.513725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632313, 33.649513, 35.542404>,  <28.010532, 33.528412, 35.590202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632313, 33.649513, 35.542404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297551, 0.655238, -0.694353,
		-0.131925, -0.692098, -0.709644,
		-0.945547, 0.302758, -0.119492,
		27.348648, 33.740341, 35.506557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.230553, 34.221565, 35.398121>,  <28.010532, 33.528412, 35.590202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.230553, 34.221565, 35.398121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571783, 34.326271, 35.217571>,  <28.776522, 34.389095, 35.109241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.571783, 34.326271, 35.217571>,  <28.230553, 34.221565, 35.398121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571783, 34.326271, 35.217571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521687, -0.411262, 0.747467,
		0.010025, -0.873123, -0.487396,
		0.853078, 0.261761, -0.451374,
		28.827707, 34.404800, 35.082157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814775, 33.659748, 35.477001>,  <28.230553, 34.221565, 35.398121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814775, 33.659748, 35.477001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004852, 34.003750, 35.402615>,  <29.118898, 34.210152, 35.357983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004852, 34.003750, 35.402615>,  <28.814775, 33.659748, 35.477001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004852, 34.003750, 35.402615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445728, -0.053053, 0.893595,
		0.758628, -0.507523, -0.408538,
		0.475194, 0.860003, -0.185970,
		29.147411, 34.261749, 35.346825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668449, 33.800461, 35.535976>,  <28.814775, 33.659748, 35.477001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668449, 33.800461, 35.535976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455448, 34.128506, 35.619743>,  <29.327646, 34.325333, 35.670002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455448, 34.128506, 35.619743>,  <29.668449, 33.800461, 35.535976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455448, 34.128506, 35.619743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488908, 0.096058, 0.867031,
		0.690947, 0.564082, -0.452111,
		-0.532505, 0.820113, 0.209413,
		29.295696, 34.374538, 35.682568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186541, 34.358746, 35.618992>,  <29.668449, 33.800461, 35.535976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186541, 34.358746, 35.618992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837633, 34.380222, 35.813419>,  <29.628288, 34.393108, 35.930077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837633, 34.380222, 35.813419>,  <30.186541, 34.358746, 35.618992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837633, 34.380222, 35.813419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489027, 0.098716, 0.866665,
		-0.001450, 0.993666, -0.112364,
		-0.872267, 0.053693, 0.486073,
		29.575953, 34.396332, 35.959240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626402, 33.813278, 35.916737>,  <30.186541, 34.358746, 35.618992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626402, 33.813278, 35.916737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911205, 33.906357, 35.651741>,  <31.082087, 33.962204, 35.492744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911205, 33.906357, 35.651741>,  <30.626402, 33.813278, 35.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911205, 33.906357, 35.651741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676655, 0.024656, 0.735887,
		0.187576, -0.972236, -0.139903,
		0.712007, 0.232701, -0.662493,
		31.124807, 33.976166, 35.452991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171099, 33.519337, 36.157146>,  <30.626402, 33.813278, 35.916737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171099, 33.519337, 36.157146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276363, 33.830521, 35.928928>,  <31.339521, 34.017231, 35.792000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276363, 33.830521, 35.928928>,  <31.171099, 33.519337, 36.157146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276363, 33.830521, 35.928928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620247, 0.316536, 0.717703,
		0.738944, -0.542749, -0.399230,
		0.263162, 0.777964, -0.570541,
		31.355312, 34.063911, 35.757767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884384, 33.430870, 36.114319>,  <31.171099, 33.519337, 36.157146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884384, 33.430870, 36.114319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750044, 33.803604, 36.059353>,  <31.669439, 34.027245, 36.026375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750044, 33.803604, 36.059353>,  <31.884384, 33.430870, 36.114319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750044, 33.803604, 36.059353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565300, 0.316103, 0.761915,
		0.753418, 0.178211, -0.632931,
		-0.335853, 0.931837, -0.137415,
		31.649288, 34.083157, 36.018127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415642, 33.906052, 35.880291>,  <31.884384, 33.430870, 36.114319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415642, 33.906052, 35.880291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124012, 34.058346, 36.107796>,  <31.949034, 34.149723, 36.244297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124012, 34.058346, 36.107796>,  <32.415642, 33.906052, 35.880291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124012, 34.058346, 36.107796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670352, 0.229531, 0.705651,
		0.138121, 0.895742, -0.422575,
		-0.729076, 0.380739, 0.568759,
		31.905289, 34.172569, 36.278423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814560, 34.428909, 36.248230>,  <32.415642, 33.906052, 35.880291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814560, 34.428909, 36.248230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132687, 34.193092, 36.304661>,  <33.323563, 34.051601, 36.338520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132687, 34.193092, 36.304661>,  <32.814560, 34.428909, 36.248230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132687, 34.193092, 36.304661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101538, 0.099877, 0.989805,
		-0.597626, -0.801536, 0.019573,
		0.795320, -0.589546, 0.141075,
		33.371281, 34.016228, 36.346985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600651, 34.089725, 36.947834>,  <32.814560, 34.428909, 36.248230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600651, 34.089725, 36.947834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983212, 33.977146, 36.916626>,  <33.212746, 33.909599, 36.897903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983212, 33.977146, 36.916626>,  <32.600651, 34.089725, 36.947834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983212, 33.977146, 36.916626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070622, -0.036336, 0.996841,
		-0.283398, -0.958887, -0.014875,
		0.956399, -0.281452, -0.078016,
		33.270130, 33.892712, 36.893223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735336, 33.492538, 37.357967>,  <32.600651, 34.089725, 36.947834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735336, 33.492538, 37.357967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092857, 33.668636, 37.323792>,  <33.307369, 33.774296, 37.303288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092857, 33.668636, 37.323792>,  <32.735336, 33.492538, 37.357967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092857, 33.668636, 37.323792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043077, 0.105350, 0.993502,
		0.446384, -0.891676, 0.075198,
		0.893804, 0.440244, -0.085437,
		33.361000, 33.800709, 37.298161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176861, 33.273216, 37.842953>,  <32.735336, 33.492538, 37.357967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176861, 33.273216, 37.842953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364658, 33.614429, 37.751808>,  <33.477337, 33.819157, 37.697121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364658, 33.614429, 37.751808>,  <33.176861, 33.273216, 37.842953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364658, 33.614429, 37.751808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023335, 0.245993, 0.968991,
		0.882629, -0.460249, 0.095586,
		0.469491, 0.853029, -0.227861,
		33.505505, 33.870338, 37.683449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726025, 33.262413, 38.294846>,  <33.176861, 33.273216, 37.842953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726025, 33.262413, 38.294846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676716, 33.645184, 38.189701>,  <33.647133, 33.874847, 38.126614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676716, 33.645184, 38.189701>,  <33.726025, 33.262413, 38.294846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676716, 33.645184, 38.189701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015537, 0.266712, 0.963651,
		0.992252, 0.114703, -0.047745,
		-0.123268, 0.956926, -0.262863,
		33.639736, 33.932262, 38.110844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966537, 33.537045, 38.740726>,  <33.726025, 33.262413, 38.294846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966537, 33.537045, 38.740726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852531, 33.886353, 38.582661>,  <33.784126, 34.095940, 38.487820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852531, 33.886353, 38.582661>,  <33.966537, 33.537045, 38.740726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852531, 33.886353, 38.582661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079989, 0.432498, 0.898080,
		0.955179, 0.224359, -0.193122,
		-0.285017, 0.873274, -0.395167,
		33.767025, 34.148335, 38.464111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519249, 34.093292, 38.839867>,  <33.966537, 33.537045, 38.740726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519249, 34.093292, 38.839867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162735, 34.272106, 38.809452>,  <33.948826, 34.379395, 38.791203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162735, 34.272106, 38.809452>,  <34.519249, 34.093292, 38.839867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162735, 34.272106, 38.809452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059596, 0.281704, 0.957649,
		0.449517, 0.849003, -0.277719,
		-0.891281, 0.447030, -0.076034,
		33.895351, 34.406216, 38.786640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525940, 34.807575, 39.316620>,  <34.519249, 34.093292, 38.839867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525940, 34.807575, 39.316620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142117, 34.723415, 39.241810>,  <33.911823, 34.672920, 39.196926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142117, 34.723415, 39.241810>,  <34.525940, 34.807575, 39.316620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142117, 34.723415, 39.241810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239481, 0.260905, 0.935189,
		-0.147970, 0.942157, -0.300741,
		-0.959559, -0.210402, -0.187022,
		33.854248, 34.660294, 39.185703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205853, 35.366547, 39.518066>,  <34.525940, 34.807575, 39.316620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205853, 35.366547, 39.518066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977592, 35.038452, 39.533939>,  <33.840637, 34.841595, 39.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977592, 35.038452, 39.533939>,  <34.205853, 35.366547, 39.518066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977592, 35.038452, 39.533939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101252, 0.118227, 0.987811,
		-0.814930, 0.559673, -0.150516,
		-0.570646, -0.820237, 0.039679,
		33.806400, 34.792381, 39.545841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777912, 35.537052, 40.134983>,  <34.205853, 35.366547, 39.518066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777912, 35.537052, 40.134983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684231, 35.155914, 40.057793>,  <33.628021, 34.927231, 40.011478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.684231, 35.155914, 40.057793>,  <33.777912, 35.537052, 40.134983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684231, 35.155914, 40.057793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224640, -0.140082, 0.964321,
		-0.945877, 0.269200, -0.181238,
		-0.234207, -0.952842, -0.192974,
		33.613968, 34.870060, 39.999901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143276, 35.498329, 40.352131>,  <33.777912, 35.537052, 40.134983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143276, 35.498329, 40.352131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304153, 35.132111, 40.350765>,  <33.400681, 34.912380, 40.349945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304153, 35.132111, 40.350765>,  <33.143276, 35.498329, 40.352131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304153, 35.132111, 40.350765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253998, -0.115165, 0.960324,
		-0.879615, -0.385372, -0.278866,
		0.402197, -0.915547, -0.003417,
		33.424812, 34.857445, 40.349739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707001, 35.096115, 40.597000>,  <33.143276, 35.498329, 40.352131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707001, 35.096115, 40.597000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026188, 34.864750, 40.664749>,  <33.217701, 34.725929, 40.705399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026188, 34.864750, 40.664749>,  <32.707001, 35.096115, 40.597000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026188, 34.864750, 40.664749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385035, -0.273040, 0.881588,
		-0.463679, -0.768691, -0.440587,
		0.797966, -0.578415, 0.169370,
		33.265579, 34.691227, 40.715561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411869, 34.503376, 40.839790>,  <32.707001, 35.096115, 40.597000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411869, 34.503376, 40.839790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788033, 34.490246, 40.975174>,  <33.013729, 34.482368, 41.056404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788033, 34.490246, 40.975174>,  <32.411869, 34.503376, 40.839790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788033, 34.490246, 40.975174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323943, -0.389194, 0.862316,
		0.103419, -0.920571, -0.376635,
		0.940407, -0.032828, 0.338462,
		33.070156, 34.480396, 41.076714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556263, 33.887604, 41.090183>,  <32.411869, 34.503376, 40.839790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556263, 33.887604, 41.090183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787159, 34.143353, 41.293358>,  <32.925697, 34.296803, 41.415264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787159, 34.143353, 41.293358>,  <32.556263, 33.887604, 41.090183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787159, 34.143353, 41.293358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455392, -0.264264, 0.850166,
		0.677801, -0.722059, 0.138621,
		0.577238, 0.639371, 0.507939,
		32.960331, 34.335163, 41.445740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678532, 33.605305, 41.651768>,  <32.556263, 33.887604, 41.090183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678532, 33.605305, 41.651768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776806, 33.982498, 41.741592>,  <32.835770, 34.208813, 41.795486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776806, 33.982498, 41.741592>,  <32.678532, 33.605305, 41.651768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776806, 33.982498, 41.741592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295231, -0.147866, 0.943914,
		0.923298, -0.298201, 0.242069,
		0.245682, 0.942980, 0.224563,
		32.850510, 34.265392, 41.808960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095795, 33.553333, 42.227173>,  <32.678532, 33.605305, 41.651768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095795, 33.553333, 42.227173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924362, 33.913895, 42.202553>,  <32.821503, 34.130234, 42.187778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924362, 33.913895, 42.202553>,  <33.095795, 33.553333, 42.227173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924362, 33.913895, 42.202553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352810, -0.104249, 0.929869,
		0.831772, 0.420239, 0.362704,
		-0.428579, 0.901405, -0.061553,
		32.795788, 34.184315, 42.184086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093807, 33.833775, 42.849014>,  <33.095795, 33.553333, 42.227173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093807, 33.833775, 42.849014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810181, 34.076843, 42.705929>,  <32.640003, 34.222687, 42.620079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810181, 34.076843, 42.705929>,  <33.093807, 33.833775, 42.849014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810181, 34.076843, 42.705929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424626, 0.037029, 0.904611,
		0.562956, 0.793322, 0.231778,
		-0.709065, 0.607675, -0.357711,
		32.597462, 34.259148, 42.598614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944569, 34.226719, 43.426899>,  <33.093807, 33.833775, 42.849014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944569, 34.226719, 43.426899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628937, 34.303707, 43.193554>,  <32.439560, 34.349899, 43.053547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628937, 34.303707, 43.193554>,  <32.944569, 34.226719, 43.426899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628937, 34.303707, 43.193554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565482, 0.143398, 0.812199,
		0.239980, 0.970768, -0.004312,
		-0.789076, 0.192473, -0.583364,
		32.392216, 34.361450, 43.018543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558094, 34.572266, 43.985886>,  <32.944569, 34.226719, 43.426899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558094, 34.572266, 43.985886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336430, 34.465736, 43.670425>,  <32.203430, 34.401817, 43.481148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336430, 34.465736, 43.670425>,  <32.558094, 34.572266, 43.985886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336430, 34.465736, 43.670425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766529, -0.206130, 0.608229,
		-0.324552, 0.941584, -0.089916,
		-0.554165, -0.266325, -0.788652,
		32.170181, 34.385838, 43.433830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972940, 34.930138, 44.114517>,  <32.558094, 34.572266, 43.985886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972940, 34.930138, 44.114517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888477, 34.628014, 43.866352>,  <31.837799, 34.446739, 43.717453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888477, 34.628014, 43.866352>,  <31.972940, 34.930138, 44.114517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888477, 34.628014, 43.866352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777552, -0.254824, 0.574871,
		-0.592305, 0.603791, -0.533489,
		-0.211156, -0.755315, -0.620413,
		31.825130, 34.401421, 43.680229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217926, 34.952705, 44.067059>,  <31.972940, 34.930138, 44.114517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217926, 34.952705, 44.067059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345999, 34.586582, 43.969326>,  <31.422842, 34.366909, 43.910686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345999, 34.586582, 43.969326>,  <31.217926, 34.952705, 44.067059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345999, 34.586582, 43.969326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731772, -0.402749, 0.549822,
		-0.601661, 0.002755, -0.798747,
		0.320180, -0.915306, -0.244334,
		31.442053, 34.311989, 43.896027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590715, 34.576206, 44.097942>,  <31.217926, 34.952705, 44.067059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590715, 34.576206, 44.097942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894150, 34.315578, 44.098732>,  <31.076210, 34.159203, 44.099205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894150, 34.315578, 44.098732>,  <30.590715, 34.576206, 44.097942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894150, 34.315578, 44.098732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492265, -0.571129, 0.656876,
		-0.426875, -0.499268, -0.753996,
		0.758586, -0.651570, 0.001972,
		31.121725, 34.120106, 44.099323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247864, 34.028175, 43.838223>,  <30.590715, 34.576206, 44.097942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247864, 34.028175, 43.838223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563457, 33.911877, 44.054729>,  <30.752813, 33.842098, 44.184631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.563457, 33.911877, 44.054729>,  <30.247864, 34.028175, 43.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563457, 33.911877, 44.054729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558379, -0.706869, 0.434223,
		0.256352, -0.644826, -0.720058,
		0.788985, -0.290751, 0.541264,
		30.800154, 33.824650, 44.217110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208710, 33.273365, 43.964893>,  <30.247864, 34.028175, 43.838223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208710, 33.273365, 43.964893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499025, 33.366268, 44.223904>,  <30.673214, 33.422012, 44.379311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499025, 33.366268, 44.223904>,  <30.208710, 33.273365, 43.964893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499025, 33.366268, 44.223904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431633, -0.579182, 0.691550,
		0.535654, -0.781411, -0.320112,
		0.725788, 0.232260, 0.647524,
		30.716763, 33.435947, 44.418159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410810, 32.656158, 44.344875>,  <30.208710, 33.273365, 43.964893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410810, 32.656158, 44.344875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514336, 32.947842, 44.598259>,  <30.576450, 33.122852, 44.750290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514336, 32.947842, 44.598259>,  <30.410810, 32.656158, 44.344875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514336, 32.947842, 44.598259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426042, -0.502388, 0.752392,
		0.866893, -0.464610, 0.180649,
		0.258813, 0.729208, 0.633460,
		30.591980, 33.166603, 44.788296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686310, 32.311966, 44.923950>,  <30.410810, 32.656158, 44.344875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686310, 32.311966, 44.923950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631804, 32.691616, 45.037506>,  <30.599100, 32.919407, 45.105640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631804, 32.691616, 45.037506>,  <30.686310, 32.311966, 44.923950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631804, 32.691616, 45.037506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260958, -0.310836, 0.913938,
		0.955684, 0.050456, 0.290038,
		-0.136268, 0.949124, 0.283894,
		30.590923, 32.976353, 45.122673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023796, 32.461006, 45.607433>,  <30.686310, 32.311966, 44.923950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023796, 32.461006, 45.607433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747370, 32.750069, 45.613075>,  <30.581514, 32.923508, 45.616463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747370, 32.750069, 45.613075>,  <31.023796, 32.461006, 45.607433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747370, 32.750069, 45.613075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128903, -0.142428, 0.981376,
		0.711207, 0.676374, 0.191579,
		-0.691064, 0.722656, 0.014109,
		30.540051, 32.966866, 45.617310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129482, 32.756268, 46.221073>,  <31.023796, 32.461006, 45.607433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129482, 32.756268, 46.221073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761194, 32.874344, 46.118984>,  <30.540222, 32.945190, 46.057732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761194, 32.874344, 46.118984>,  <31.129482, 32.756268, 46.221073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761194, 32.874344, 46.118984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342250, -0.296669, 0.891545,
		0.187463, 0.908211, 0.374179,
		-0.920719, 0.295194, -0.255221,
		30.484978, 32.962902, 46.042419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885918, 33.226849, 46.742264>,  <31.129482, 32.756268, 46.221073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885918, 33.226849, 46.742264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573982, 33.046455, 46.568615>,  <30.386822, 32.938221, 46.464424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573982, 33.046455, 46.568615>,  <30.885918, 33.226849, 46.742264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573982, 33.046455, 46.568615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253065, -0.407184, 0.877587,
		-0.572547, 0.794238, 0.203410,
		-0.779838, -0.450984, -0.434127,
		30.340031, 32.911160, 46.438377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331972, 33.221634, 47.251057>,  <30.885918, 33.226849, 46.742264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331972, 33.221634, 47.251057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251909, 32.916870, 47.004665>,  <30.203873, 32.734013, 46.856831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251909, 32.916870, 47.004665>,  <30.331972, 33.221634, 47.251057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251909, 32.916870, 47.004665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421327, -0.500668, 0.756185,
		-0.884546, 0.410884, -0.220801,
		-0.200156, -0.761909, -0.615980,
		30.191862, 32.688297, 46.819870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858961, 32.967571, 47.572292>,  <30.331972, 33.221634, 47.251057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858961, 32.967571, 47.572292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913429, 32.654701, 47.329094>,  <29.946110, 32.466980, 47.183174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913429, 32.654701, 47.329094>,  <29.858961, 32.967571, 47.572292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913429, 32.654701, 47.329094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430622, -0.599438, 0.674714,
		-0.892201, 0.169940, -0.418447,
		0.136172, -0.782173, -0.607999,
		29.954281, 32.420048, 47.146694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301748, 32.546604, 47.712410>,  <29.858961, 32.967571, 47.572292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301748, 32.546604, 47.712410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516249, 32.277145, 47.508984>,  <29.644949, 32.115471, 47.386929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516249, 32.277145, 47.508984>,  <29.301748, 32.546604, 47.712410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516249, 32.277145, 47.508984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410552, -0.734620, 0.540167,
		-0.737485, -0.080869, -0.670504,
		0.536248, -0.673643, -0.508570,
		29.677124, 32.075054, 47.356415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817663, 31.917624, 47.499428>,  <29.301748, 32.546604, 47.712410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817663, 31.917624, 47.499428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200518, 31.801771, 47.498486>,  <29.430231, 31.732260, 47.497921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200518, 31.801771, 47.498486>,  <28.817663, 31.917624, 47.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200518, 31.801771, 47.498486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260310, -0.863756, 0.431468,
		-0.127002, -0.412360, -0.902125,
		0.957136, -0.289630, -0.002358,
		29.487658, 31.714882, 47.497780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853153, 31.252977, 47.164684>,  <28.817663, 31.917624, 47.499428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853153, 31.252977, 47.164684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187557, 31.262506, 47.383965>,  <29.388199, 31.268225, 47.515533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187557, 31.262506, 47.383965>,  <28.853153, 31.252977, 47.164684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187557, 31.262506, 47.383965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320959, -0.789093, 0.523754,
		0.445058, -0.613812, -0.652041,
		0.836008, 0.023822, 0.548201,
		29.438360, 31.269653, 47.548424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157125, 30.564322, 47.072266>,  <28.853153, 31.252977, 47.164684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157125, 30.564322, 47.072266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285009, 30.720514, 47.417591>,  <29.361740, 30.814230, 47.624786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285009, 30.720514, 47.417591>,  <29.157125, 30.564322, 47.072266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285009, 30.720514, 47.417591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152695, -0.877991, 0.453669,
		0.935131, -0.276866, -0.221077,
		0.319709, 0.390482, 0.863313,
		29.380922, 30.837660, 47.676586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532932, 30.030657, 47.389721>,  <29.157125, 30.564322, 47.072266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532932, 30.030657, 47.389721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475695, 30.256674, 47.714745>,  <29.441353, 30.392284, 47.909760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475695, 30.256674, 47.714745>,  <29.532932, 30.030657, 47.389721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475695, 30.256674, 47.714745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076975, -0.824873, 0.560053,
		0.986711, 0.017593, 0.161529,
		-0.143094, 0.565044, 0.812557,
		29.432766, 30.426188, 47.958511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869259, 29.688778, 47.962547>,  <29.532932, 30.030657, 47.389721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869259, 29.688778, 47.962547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624691, 29.946001, 48.146999>,  <29.477949, 30.100336, 48.257671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624691, 29.946001, 48.146999>,  <29.869259, 29.688778, 47.962547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624691, 29.946001, 48.146999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120173, -0.651442, 0.749121,
		0.782127, 0.402613, 0.475583,
		-0.611421, 0.643060, 0.461127,
		29.441265, 30.138920, 48.285339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115660, 29.773466, 48.644928>,  <29.869259, 29.688778, 47.962547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115660, 29.773466, 48.644928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730644, 29.881895, 48.647366>,  <29.499636, 29.946953, 48.648827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730644, 29.881895, 48.647366>,  <30.115660, 29.773466, 48.644928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730644, 29.881895, 48.647366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177618, -0.647352, 0.741207,
		0.204866, 0.712359, 0.671249,
		-0.962539, 0.271074, 0.006093,
		29.441883, 29.963217, 48.649193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049902, 29.747177, 49.328453>,  <30.115660, 29.773466, 48.644928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049902, 29.747177, 49.328453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675600, 29.774303, 49.190025>,  <29.451019, 29.790579, 49.106968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675600, 29.774303, 49.190025>,  <30.049902, 29.747177, 49.328453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675600, 29.774303, 49.190025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339875, -0.435185, 0.833726,
		-0.094066, 0.897784, 0.430275,
		-0.935755, 0.067814, -0.346070,
		29.394875, 29.794647, 49.086205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683420, 30.104279, 49.785347>,  <30.049902, 29.747177, 49.328453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683420, 30.104279, 49.785347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438116, 29.869574, 49.573830>,  <29.290934, 29.728750, 49.446918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.438116, 29.869574, 49.573830>,  <29.683420, 30.104279, 49.785347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438116, 29.869574, 49.573830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182375, -0.546189, 0.817568,
		-0.768538, 0.597821, 0.227946,
		-0.613261, -0.586760, -0.528794,
		29.254137, 29.693546, 49.415192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174944, 30.033749, 50.238571>,  <29.683420, 30.104279, 49.785347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174944, 30.033749, 50.238571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120058, 29.739494, 49.973236>,  <29.087126, 29.562943, 49.814037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120058, 29.739494, 49.973236>,  <29.174944, 30.033749, 50.238571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120058, 29.739494, 49.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103299, -0.655392, 0.748192,
		-0.985140, 0.171185, 0.013940,
		-0.137215, -0.735634, -0.663336,
		29.078894, 29.518805, 49.774235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463509, 29.679243, 50.336441>,  <29.174944, 30.033749, 50.238571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463509, 29.679243, 50.336441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747583, 29.438278, 50.190708>,  <28.918028, 29.293699, 50.103268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747583, 29.438278, 50.190708>,  <28.463509, 29.679243, 50.336441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747583, 29.438278, 50.190708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261314, -0.706100, 0.658132,
		-0.653720, -0.372191, -0.658881,
		0.710186, -0.602409, -0.364333,
		28.960638, 29.257555, 50.081409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180805, 29.020319, 50.187580>,  <28.463509, 29.679243, 50.336441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180805, 29.020319, 50.187580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545456, 29.044147, 50.350254>,  <28.764246, 29.058445, 50.447857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545456, 29.044147, 50.350254>,  <28.180805, 29.020319, 50.187580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545456, 29.044147, 50.350254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288490, -0.612034, 0.736334,
		0.292768, -0.788584, -0.540760,
		0.911625, 0.059571, 0.406682,
		28.818943, 29.062019, 50.472260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337229, 28.371899, 50.604782>,  <28.180805, 29.020319, 50.187580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337229, 28.371899, 50.604782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634026, 28.611006, 50.726189>,  <28.812103, 28.754471, 50.799034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634026, 28.611006, 50.726189>,  <28.337229, 28.371899, 50.604782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634026, 28.611006, 50.726189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003940, -0.448835, 0.893606,
		0.670398, -0.664244, -0.330676,
		0.741991, 0.597769, 0.303515,
		28.856623, 28.790337, 50.817242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881729, 28.034216, 50.825817>,  <28.337229, 28.371899, 50.604782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881729, 28.034216, 50.825817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908497, 28.388117, 51.010311>,  <28.924557, 28.600458, 51.121006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908497, 28.388117, 51.010311>,  <28.881729, 28.034216, 50.825817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908497, 28.388117, 51.010311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040250, -0.464284, 0.884771,
		0.996946, -0.040644, -0.066681,
		0.066919, 0.884753, 0.461231,
		28.928574, 28.653543, 51.148682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995382, 27.467756, 50.269756>,  <28.881729, 28.034216, 50.825817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995382, 27.467756, 50.269756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931295, 27.556000, 49.884911>,  <28.892843, 27.608946, 49.654003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931295, 27.556000, 49.884911>,  <28.995382, 27.467756, 50.269756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931295, 27.556000, 49.884911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968275, 0.224488, -0.109771,
		0.191767, -0.949177, -0.249576,
		-0.160219, 0.220608, -0.962113,
		28.883230, 27.622183, 49.596275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377943, 26.881720, 50.184013>,  <28.995382, 27.467756, 50.269756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377943, 26.881720, 50.184013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337633, 27.230915, 49.993126>,  <29.313448, 27.440434, 49.878593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337633, 27.230915, 49.993126>,  <29.377943, 26.881720, 50.184013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337633, 27.230915, 49.993126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961170, 0.209279, 0.179873,
		0.256899, -0.440557, -0.860181,
		-0.100773, 0.872990, -0.477214,
		29.307402, 27.492811, 49.849960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677877, 26.327194, 50.403004>,  <29.377943, 26.881720, 50.184013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677877, 26.327194, 50.403004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510267, 26.465508, 50.067181>,  <29.409700, 26.548496, 49.865688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510267, 26.465508, 50.067181>,  <29.677877, 26.327194, 50.403004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510267, 26.465508, 50.067181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284359, -0.928107, -0.240330,
		-0.862298, 0.138030, 0.487227,
		-0.419025, 0.345784, -0.839555,
		29.384560, 26.569242, 49.815315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061491, 26.057020, 50.317318>,  <29.677877, 26.327194, 50.403004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061491, 26.057020, 50.317318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224058, 26.109276, 49.955597>,  <29.321598, 26.140629, 49.738564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.224058, 26.109276, 49.955597>,  <29.061491, 26.057020, 50.317318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224058, 26.109276, 49.955597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043141, -0.985878, -0.161813,
		-0.912667, 0.104776, -0.395045,
		0.406420, 0.130639, -0.904299,
		29.345984, 26.148468, 49.684307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659122, 25.627422, 49.895882>,  <29.061491, 26.057020, 50.317318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659122, 25.627422, 49.895882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032143, 25.695314, 49.768417>,  <29.255955, 25.736050, 49.691940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032143, 25.695314, 49.768417>,  <28.659122, 25.627422, 49.895882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032143, 25.695314, 49.768417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134097, -0.982302, -0.130772,
		-0.335218, 0.079220, -0.938804,
		0.932548, 0.169728, -0.318662,
		29.311907, 25.746233, 49.672817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650217, 25.884760, 49.212841>,  <28.659122, 25.627422, 49.895882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650217, 25.884760, 49.212841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428795, 26.217794, 49.205112>,  <28.295942, 26.417616, 49.200478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428795, 26.217794, 49.205112>,  <28.650217, 25.884760, 49.212841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428795, 26.217794, 49.205112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357481, 0.216597, -0.908457,
		-0.752186, -0.509787, -0.417533,
		-0.553555, 0.832588, -0.019317,
		28.262728, 26.467571, 49.199318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197435, 25.993216, 48.694401>,  <28.650217, 25.884760, 49.212841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197435, 25.993216, 48.694401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324512, 26.363016, 48.778656>,  <28.400759, 26.584896, 48.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324512, 26.363016, 48.778656>,  <28.197435, 25.993216, 48.694401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324512, 26.363016, 48.778656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376482, 0.080896, -0.922885,
		-0.870249, 0.372493, -0.322359,
		0.317691, 0.924502, 0.210637,
		28.419819, 26.640368, 48.841846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143183, 26.326607, 48.121780>,  <28.197435, 25.993216, 48.694401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143183, 26.326607, 48.121780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438923, 26.503601, 48.324787>,  <28.616367, 26.609797, 48.446590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438923, 26.503601, 48.324787>,  <28.143183, 26.326607, 48.121780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438923, 26.503601, 48.324787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563595, 0.005719, -0.826032,
		-0.368408, 0.896758, -0.245153,
		0.739349, 0.442483, 0.507515,
		28.660728, 26.636347, 48.477043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353783, 26.870691, 47.631172>,  <28.143183, 26.326607, 48.121780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353783, 26.870691, 47.631172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646399, 26.821911, 47.899494>,  <28.821968, 26.792643, 48.060486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646399, 26.821911, 47.899494>,  <28.353783, 26.870691, 47.631172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646399, 26.821911, 47.899494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681795, 0.133994, -0.719167,
		-0.002181, 0.983450, 0.181167,
		0.731540, -0.121950, 0.670804,
		28.865860, 26.785326, 48.100735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764349, 27.477903, 47.566689>,  <28.353783, 26.870691, 47.631172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764349, 27.477903, 47.566689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010563, 27.217804, 47.744812>,  <29.158291, 27.061745, 47.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010563, 27.217804, 47.744812>,  <28.764349, 27.477903, 47.566689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010563, 27.217804, 47.744812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707952, 0.207928, -0.674959,
		0.346298, 0.730716, 0.588330,
		0.615533, -0.650247, 0.445307,
		29.195223, 27.022730, 47.878403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419762, 27.861692, 47.847996>,  <28.764349, 27.477903, 47.566689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419762, 27.861692, 47.847996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475725, 27.473938, 47.767288>,  <29.509302, 27.241285, 47.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475725, 27.473938, 47.767288>,  <29.419762, 27.861692, 47.847996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475725, 27.473938, 47.767288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853491, 0.221372, -0.471750,
		0.501976, -0.106210, 0.858335,
		0.139907, -0.969389, -0.201772,
		29.517696, 27.183121, 47.706757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026260, 27.803141, 48.006794>,  <29.419762, 27.861692, 47.847996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026260, 27.803141, 48.006794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945135, 27.509853, 47.747177>,  <29.896460, 27.333881, 47.591408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945135, 27.509853, 47.747177>,  <30.026260, 27.803141, 48.006794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945135, 27.509853, 47.747177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839721, 0.210733, -0.500460,
		0.503721, -0.646516, 0.572959,
		-0.202814, -0.733218, -0.649044,
		29.884291, 27.289888, 47.552464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674412, 27.745846, 47.863815>,  <30.026260, 27.803141, 48.006794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674412, 27.745846, 47.863815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486675, 27.519552, 47.592621>,  <30.374033, 27.383776, 47.429905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486675, 27.519552, 47.592621>,  <30.674412, 27.745846, 47.863815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486675, 27.519552, 47.592621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808923, 0.032404, -0.587020,
		0.354067, -0.823951, 0.442426,
		-0.469339, -0.565733, -0.677987,
		30.345873, 27.349833, 47.389225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100998, 27.201519, 47.683708>,  <30.674412, 27.745846, 47.863815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100998, 27.201519, 47.683708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862556, 27.198084, 47.362564>,  <30.719492, 27.196022, 47.169876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862556, 27.198084, 47.362564>,  <31.100998, 27.201519, 47.683708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862556, 27.198084, 47.362564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785704, 0.199657, -0.585497,
		0.165327, -0.979828, -0.112267,
		-0.596101, -0.008589, -0.802863,
		30.683725, 27.195507, 47.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530794, 26.798069, 47.294479>,  <31.100998, 27.201519, 47.683708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530794, 26.798069, 47.294479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264870, 26.993896, 47.068790>,  <31.105314, 27.111393, 46.933376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264870, 26.993896, 47.068790>,  <31.530794, 26.798069, 47.294479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264870, 26.993896, 47.068790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726921, 0.249987, -0.639603,
		-0.172079, -0.835362, -0.522071,
		-0.664811, 0.489568, -0.564225,
		31.065426, 27.140766, 46.899525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599400, 26.479523, 46.590977>,  <31.530794, 26.798069, 47.294479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599400, 26.479523, 46.590977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452190, 26.850605, 46.565914>,  <31.363865, 27.073254, 46.550877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452190, 26.850605, 46.565914>,  <31.599400, 26.479523, 46.590977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452190, 26.850605, 46.565914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640164, 0.203931, -0.740676,
		-0.674352, -0.312693, -0.668934,
		-0.368021, 0.927704, -0.062653,
		31.341784, 27.128916, 46.547119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562656, 26.552118, 45.828773>,  <31.599400, 26.479523, 46.590977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562656, 26.552118, 45.828773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596893, 26.916294, 45.990646>,  <31.617435, 27.134800, 46.087772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596893, 26.916294, 45.990646>,  <31.562656, 26.552118, 45.828773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596893, 26.916294, 45.990646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525796, 0.303734, -0.794535,
		-0.846294, 0.280788, -0.452709,
		0.085593, 0.910442, 0.404685,
		31.622572, 27.189426, 46.112053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366785, 27.070673, 45.314262>,  <31.562656, 26.552118, 45.828773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366785, 27.070673, 45.314262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598394, 27.283005, 45.561794>,  <31.737360, 27.410404, 45.710316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598394, 27.283005, 45.561794>,  <31.366785, 27.070673, 45.314262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598394, 27.283005, 45.561794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507172, 0.359777, -0.783158,
		-0.638365, 0.767321, -0.060903,
		0.579022, 0.530829, 0.618833,
		31.772100, 27.442253, 45.747444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518875, 27.688656, 44.944832>,  <31.366785, 27.070673, 45.314262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518875, 27.688656, 44.944832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792995, 27.689411, 45.236134>,  <31.957468, 27.689865, 45.410915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792995, 27.689411, 45.236134>,  <31.518875, 27.688656, 44.944832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792995, 27.689411, 45.236134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539666, 0.670147, -0.509571,
		-0.489002, 0.742226, 0.458233,
		0.685301, 0.001888, 0.728257,
		31.998587, 27.689978, 45.454613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589460, 28.393923, 45.118881>,  <31.518875, 27.688656, 44.944832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589460, 28.393923, 45.118881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920361, 28.198162, 45.229256>,  <32.118900, 28.080706, 45.295483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920361, 28.198162, 45.229256>,  <31.589460, 28.393923, 45.118881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920361, 28.198162, 45.229256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561818, 0.724389, -0.399526,
		-0.004358, 0.485535, 0.874206,
		0.827249, -0.489404, 0.275940,
		32.168537, 28.051340, 45.312038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022728, 28.938860, 45.282570>,  <31.589460, 28.393923, 45.118881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022728, 28.938860, 45.282570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268707, 28.631361, 45.212296>,  <32.416294, 28.446861, 45.170132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268707, 28.631361, 45.212296>,  <32.022728, 28.938860, 45.282570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268707, 28.631361, 45.212296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661372, 0.624128, -0.415995,
		0.429441, 0.139626, 0.892236,
		0.614953, -0.768745, -0.175681,
		32.453194, 28.400738, 45.159592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689030, 29.310827, 45.335480>,  <32.022728, 28.938860, 45.282570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689030, 29.310827, 45.335480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765106, 28.972569, 45.135998>,  <32.810753, 28.769613, 45.016308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765106, 28.972569, 45.135998>,  <32.689030, 29.310827, 45.335480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765106, 28.972569, 45.135998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620102, 0.497298, -0.606769,
		0.761118, -0.193846, 0.618970,
		0.190193, -0.845647, -0.498706,
		32.822163, 28.718874, 44.986385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423458, 29.263628, 45.219376>,  <32.689030, 29.310827, 45.335480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423458, 29.263628, 45.219376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269630, 29.011190, 44.949909>,  <33.177334, 28.859728, 44.788227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269630, 29.011190, 44.949909>,  <33.423458, 29.263628, 45.219376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269630, 29.011190, 44.949909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409625, 0.537333, -0.737211,
		0.827234, -0.559459, 0.051871,
		-0.384567, -0.631094, -0.673668,
		33.154259, 28.821863, 44.747810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976391, 29.114897, 44.697277>,  <33.423458, 29.263628, 45.219376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976391, 29.114897, 44.697277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638870, 28.994680, 44.519436>,  <33.436356, 28.922550, 44.412731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638870, 28.994680, 44.519436>,  <33.976391, 29.114897, 44.697277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638870, 28.994680, 44.519436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284851, 0.451295, -0.845690,
		0.454780, -0.840253, -0.295212,
		-0.843822, -0.300512, -0.444587,
		33.385727, 28.904518, 44.386055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128963, 29.050240, 43.987843>,  <33.976391, 29.114897, 44.697277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128963, 29.050240, 43.987843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729740, 29.049540, 43.962955>,  <33.490204, 29.049120, 43.948021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729740, 29.049540, 43.962955>,  <34.128963, 29.050240, 43.987843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729740, 29.049540, 43.962955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056830, 0.382147, -0.922352,
		0.025393, -0.924100, -0.381307,
		-0.998061, -0.001751, -0.062220,
		33.430321, 29.049015, 43.944290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046047, 28.712027, 43.377949>,  <34.128963, 29.050240, 43.987843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046047, 28.712027, 43.377949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729931, 28.951244, 43.431293>,  <33.540260, 29.094776, 43.463299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729931, 28.951244, 43.431293>,  <34.046047, 28.712027, 43.377949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729931, 28.951244, 43.431293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005149, 0.211157, -0.977438,
		-0.612713, -0.773145, -0.163796,
		-0.790288, 0.598046, 0.133360,
		33.492844, 29.130659, 43.471302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616890, 28.646275, 42.727257>,  <34.046047, 28.712027, 43.377949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616890, 28.646275, 42.727257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511009, 28.988817, 42.904606>,  <33.447479, 29.194344, 43.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511009, 28.988817, 42.904606>,  <33.616890, 28.646275, 42.727257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511009, 28.988817, 42.904606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090177, 0.435778, -0.895525,
		-0.960103, -0.277033, -0.038130,
		-0.264706, 0.856358, 0.443374,
		33.431599, 29.245726, 43.037617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981140, 28.845087, 42.375561>,  <33.616890, 28.646275, 42.727257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981140, 28.845087, 42.375561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151279, 29.162172, 42.550232>,  <33.253365, 29.352423, 42.655033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151279, 29.162172, 42.550232>,  <32.981140, 28.845087, 42.375561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151279, 29.162172, 42.550232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104089, 0.436447, -0.893689,
		-0.899023, 0.425585, 0.103131,
		0.425352, 0.792712, 0.436674,
		33.278885, 29.399986, 42.681232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688072, 29.539419, 41.992058>,  <32.981140, 28.845087, 42.375561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688072, 29.539419, 41.992058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018753, 29.637426, 42.194656>,  <33.217159, 29.696232, 42.316216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018753, 29.637426, 42.194656>,  <32.688072, 29.539419, 41.992058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018753, 29.637426, 42.194656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200915, 0.712294, -0.672511,
		-0.525550, 0.657726, 0.539625,
		0.826699, 0.245019, 0.506493,
		33.266762, 29.710932, 42.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695457, 30.282562, 41.921806>,  <32.688072, 29.539419, 41.992058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695457, 30.282562, 41.921806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071072, 30.193014, 42.026192>,  <33.296440, 30.139284, 42.088821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071072, 30.193014, 42.026192>,  <32.695457, 30.282562, 41.921806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071072, 30.193014, 42.026192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342692, 0.671129, -0.657380,
		-0.027971, 0.706730, 0.706930,
		0.939031, -0.223872, 0.260963,
		33.352779, 30.125853, 42.104481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033146, 30.910686, 41.886761>,  <32.695457, 30.282562, 41.921806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033146, 30.910686, 41.886761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321774, 30.634529, 41.866009>,  <33.494949, 30.468834, 41.853558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321774, 30.634529, 41.866009>,  <33.033146, 30.910686, 41.886761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321774, 30.634529, 41.866009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473410, 0.546689, -0.690662,
		0.505193, 0.473800, 0.721314,
		0.721570, -0.690395, -0.051882,
		33.538246, 30.427410, 41.850445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658531, 31.219259, 42.043266>,  <33.033146, 30.910686, 41.886761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658531, 31.219259, 42.043266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737339, 30.895205, 41.822407>,  <33.784622, 30.700771, 41.689892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737339, 30.895205, 41.822407>,  <33.658531, 31.219259, 42.043266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737339, 30.895205, 41.822407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415441, 0.579106, -0.701459,
		0.888028, -0.091185, 0.450657,
		0.197015, -0.810137, -0.552144,
		33.796444, 30.652163, 41.656765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241180, 31.344894, 41.669353>,  <33.658531, 31.219259, 42.043266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241180, 31.344894, 41.669353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100330, 31.045778, 41.444206>,  <34.015820, 30.866308, 41.309120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100330, 31.045778, 41.444206>,  <34.241180, 31.344894, 41.669353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100330, 31.045778, 41.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337330, 0.459569, -0.821587,
		0.873050, -0.479173, 0.090426,
		-0.352125, -0.747790, -0.562866,
		33.994694, 30.821442, 41.275345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792381, 31.076204, 41.240719>,  <34.241180, 31.344894, 41.669353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792381, 31.076204, 41.240719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454205, 30.958832, 41.062222>,  <34.251297, 30.888409, 40.955124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454205, 30.958832, 41.062222>,  <34.792381, 31.076204, 41.240719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454205, 30.958832, 41.062222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317604, 0.395508, -0.861801,
		0.429373, -0.870328, -0.241182,
		-0.845439, -0.293434, -0.446240,
		34.200573, 30.870804, 40.928349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104496, 30.804274, 40.629642>,  <34.792381, 31.076204, 41.240719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104496, 30.804274, 40.629642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713810, 30.864555, 40.568573>,  <34.479397, 30.900724, 40.531933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713810, 30.864555, 40.568573>,  <35.104496, 30.804274, 40.629642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713810, 30.864555, 40.568573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202844, 0.417159, -0.885908,
		-0.069820, -0.896252, -0.438017,
		-0.976719, 0.150703, -0.152673,
		34.420795, 30.909765, 40.522770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015339, 30.581167, 39.973957>,  <35.104496, 30.804274, 40.629642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015339, 30.581167, 39.973957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690968, 30.806038, 40.038891>,  <34.496346, 30.940960, 40.077850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690968, 30.806038, 40.038891>,  <35.015339, 30.581167, 39.973957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690968, 30.806038, 40.038891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018705, 0.302187, -0.953065,
		-0.584847, -0.769831, -0.255567,
		-0.810928, 0.562178, 0.162334,
		34.447689, 30.974691, 40.087589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654205, 30.398769, 39.464394>,  <35.015339, 30.581167, 39.973957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654205, 30.398769, 39.464394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508095, 30.757765, 39.563255>,  <34.420429, 30.973162, 39.622570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508095, 30.757765, 39.563255>,  <34.654205, 30.398769, 39.464394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508095, 30.757765, 39.563255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248283, 0.161952, -0.955053,
		-0.897177, -0.410225, 0.163673,
		-0.365280, 0.897489, 0.247152,
		34.398510, 31.027012, 39.637402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058479, 30.349253, 39.215450>,  <34.654205, 30.398769, 39.464394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058479, 30.349253, 39.215450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128101, 30.739744, 39.267109>,  <34.169876, 30.974039, 39.298103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128101, 30.739744, 39.267109>,  <34.058479, 30.349253, 39.215450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128101, 30.739744, 39.267109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280272, 0.174835, -0.943865,
		-0.944009, 0.128088, 0.304041,
		0.174054, 0.976231, 0.129146,
		34.180317, 31.032614, 39.305851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510300, 30.610229, 39.041103>,  <34.058479, 30.349253, 39.215450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510300, 30.610229, 39.041103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766109, 30.917038, 39.020390>,  <33.919598, 31.101124, 39.007961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766109, 30.917038, 39.020390>,  <33.510300, 30.610229, 39.041103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766109, 30.917038, 39.020390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268179, 0.159454, -0.950081,
		-0.720476, 0.621491, 0.307674,
		0.639527, 0.767022, -0.051788,
		33.957966, 31.147144, 39.004852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248268, 31.038336, 38.526119>,  <33.510300, 30.610229, 39.041103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248268, 31.038336, 38.526119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622925, 31.173489, 38.563087>,  <33.847717, 31.254580, 38.585270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622925, 31.173489, 38.563087>,  <33.248268, 31.038336, 38.526119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622925, 31.173489, 38.563087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055518, 0.403692, -0.913209,
		-0.345865, 0.850218, 0.396872,
		0.936641, 0.337880, 0.092420,
		33.903915, 31.274853, 38.590813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276279, 31.693005, 38.300735>,  <33.248268, 31.038336, 38.526119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276279, 31.693005, 38.300735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660423, 31.593246, 38.250908>,  <33.890907, 31.533392, 38.221012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660423, 31.593246, 38.250908>,  <33.276279, 31.693005, 38.300735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660423, 31.593246, 38.250908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009140, 0.474770, -0.880062,
		0.278625, 0.844035, 0.458228,
		0.960357, -0.249395, -0.124569,
		33.948532, 31.518429, 38.213539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530300, 32.179089, 37.768818>,  <33.276279, 31.693005, 38.300735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530300, 32.179089, 37.768818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799534, 31.883942, 37.788857>,  <33.961075, 31.706854, 37.800880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799534, 31.883942, 37.788857>,  <33.530300, 32.179089, 37.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799534, 31.883942, 37.788857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115541, 0.038005, -0.992575,
		0.730485, 0.673875, 0.110835,
		0.673083, -0.737868, 0.050098,
		34.001457, 31.662580, 37.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122353, 32.379177, 37.465488>,  <33.530300, 32.179089, 37.768818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122353, 32.379177, 37.465488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117096, 31.980526, 37.433105>,  <34.113941, 31.741335, 37.413673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117096, 31.980526, 37.433105>,  <34.122353, 32.379177, 37.465488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117096, 31.980526, 37.433105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239220, 0.075483, -0.968027,
		0.970876, -0.032090, 0.237422,
		-0.013143, -0.996631, -0.080961,
		34.113152, 31.681538, 37.408817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648167, 32.228607, 36.960003>,  <34.122353, 32.379177, 37.465488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648167, 32.228607, 36.960003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433067, 31.891626, 36.973236>,  <34.304008, 31.689438, 36.981178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433067, 31.891626, 36.973236>,  <34.648167, 32.228607, 36.960003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433067, 31.891626, 36.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116654, -0.113212, -0.986699,
		0.834996, -0.526737, 0.159155,
		-0.537749, -0.842456, 0.033086,
		34.271744, 31.638889, 36.983162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109600, 31.774042, 36.715725>,  <34.648167, 32.228607, 36.960003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109600, 31.774042, 36.715725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751179, 31.605120, 36.660950>,  <34.536125, 31.503765, 36.628086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751179, 31.605120, 36.660950>,  <35.109600, 31.774042, 36.715725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751179, 31.605120, 36.660950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205670, -0.121515, -0.971048,
		0.393442, -0.898270, 0.195739,
		-0.896049, -0.422309, -0.136938,
		34.482365, 31.478428, 36.619869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412655, 32.183002, 37.227161>,  <35.109600, 31.774042, 36.715725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412655, 32.183002, 37.227161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731873, 32.164238, 37.467468>,  <35.923405, 32.152981, 37.611652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731873, 32.164238, 37.467468>,  <35.412655, 32.183002, 37.227161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731873, 32.164238, 37.467468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050222, -0.998674, -0.011267,
		0.600500, -0.021180, -0.799344,
		0.798046, -0.046911, 0.600768,
		35.971287, 32.150166, 37.647697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479290, 31.542295, 37.540173>,  <35.412655, 32.183002, 37.227161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479290, 31.542295, 37.540173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824970, 31.681978, 37.685070>,  <36.032379, 31.765787, 37.772007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824970, 31.681978, 37.685070>,  <35.479290, 31.542295, 37.540173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824970, 31.681978, 37.685070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187518, -0.891606, 0.412161,
		0.466904, -0.288262, -0.836006,
		0.864198, 0.349205, 0.362240,
		36.084229, 31.786739, 37.793743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857437, 30.949299, 37.644985>,  <35.479290, 31.542295, 37.540173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857437, 30.949299, 37.644985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086197, 31.216177, 37.835892>,  <36.223454, 31.376305, 37.950436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086197, 31.216177, 37.835892>,  <35.857437, 30.949299, 37.644985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086197, 31.216177, 37.835892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327474, -0.719117, 0.612888,
		0.752125, -0.194219, -0.629752,
		0.571900, 0.667196, 0.477264,
		36.257767, 31.416336, 37.979073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587120, 30.739733, 37.647827>,  <35.857437, 30.949299, 37.644985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587120, 30.739733, 37.647827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551880, 30.974710, 37.969608>,  <36.530735, 31.115698, 38.162678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551880, 30.974710, 37.969608>,  <36.587120, 30.739733, 37.647827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551880, 30.974710, 37.969608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346572, -0.739061, 0.577648,
		0.933877, 0.329692, -0.138480,
		-0.088101, 0.587445, 0.804454,
		36.525452, 31.150944, 38.210945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153389, 30.533381, 38.133053>,  <36.587120, 30.739733, 37.647827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153389, 30.533381, 38.133053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897465, 30.742350, 38.358517>,  <36.743912, 30.867731, 38.493797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897465, 30.742350, 38.358517>,  <37.153389, 30.533381, 38.133053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897465, 30.742350, 38.358517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191376, -0.602023, 0.775205,
		0.744323, 0.603857, 0.285202,
		-0.639811, 0.522423, 0.563663,
		36.705521, 30.899076, 38.527615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464249, 30.612427, 38.753754>,  <37.153389, 30.533381, 38.133053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464249, 30.612427, 38.753754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083984, 30.682137, 38.856419>,  <36.855827, 30.723963, 38.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083984, 30.682137, 38.856419>,  <37.464249, 30.612427, 38.753754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083984, 30.682137, 38.856419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103326, -0.602220, 0.791615,
		0.292529, 0.779076, 0.554498,
		-0.950658, 0.174276, 0.256666,
		36.798786, 30.734419, 38.933418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450897, 30.895668, 39.348747>,  <37.464249, 30.612427, 38.753754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450897, 30.895668, 39.348747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099541, 30.710773, 39.300133>,  <36.888729, 30.599836, 39.270966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099541, 30.710773, 39.300133>,  <37.450897, 30.895668, 39.348747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099541, 30.710773, 39.300133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125531, -0.468473, 0.874514,
		-0.461169, 0.752906, 0.469527,
		-0.878388, -0.462239, -0.121532,
		36.836025, 30.572102, 39.263672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445820, 30.522594, 39.877964>,  <37.450897, 30.895668, 39.348747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445820, 30.522594, 39.877964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082146, 30.405672, 39.759350>,  <36.863941, 30.335518, 39.688183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082146, 30.405672, 39.759350>,  <37.445820, 30.522594, 39.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082146, 30.405672, 39.759350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081001, -0.574400, 0.814557,
		-0.408430, 0.764606, 0.498561,
		-0.909189, -0.292305, -0.296536,
		36.809387, 30.317980, 39.670387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947067, 30.729616, 40.373909>,  <37.445820, 30.522594, 39.877964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947067, 30.729616, 40.373909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770386, 30.424456, 40.185070>,  <36.664375, 30.241360, 40.071766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.770386, 30.424456, 40.185070>,  <36.947067, 30.729616, 40.373909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770386, 30.424456, 40.185070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160553, -0.450505, 0.878219,
		-0.882676, 0.463713, 0.076506,
		-0.441707, -0.762900, -0.472100,
		36.637875, 30.195585, 40.043442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341938, 30.502563, 40.745850>,  <36.947067, 30.729616, 40.373909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341938, 30.502563, 40.745850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442226, 30.192711, 40.513615>,  <36.502399, 30.006800, 40.374271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442226, 30.192711, 40.513615>,  <36.341938, 30.502563, 40.745850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442226, 30.192711, 40.513615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111795, -0.618901, 0.777472,
		-0.961583, -0.130018, -0.241769,
		0.250717, -0.774633, -0.580590,
		36.517441, 29.960321, 40.339439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006687, 29.940447, 41.066120>,  <36.341938, 30.502563, 40.745850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006687, 29.940447, 41.066120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228348, 29.739088, 40.800938>,  <36.361343, 29.618273, 40.641830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228348, 29.739088, 40.800938>,  <36.006687, 29.940447, 41.066120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228348, 29.739088, 40.800938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004092, -0.794765, 0.606903,
		-0.832406, -0.339029, -0.438361,
		0.554152, -0.503396, -0.662955,
		36.394592, 29.588070, 40.602051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711243, 29.297077, 40.861832>,  <36.006687, 29.940447, 41.066120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711243, 29.297077, 40.861832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109348, 29.265545, 40.839077>,  <36.348213, 29.246626, 40.825424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109348, 29.265545, 40.839077>,  <35.711243, 29.297077, 40.861832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109348, 29.265545, 40.839077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023026, -0.759681, 0.649889,
		-0.094445, -0.645501, -0.757898,
		0.995264, -0.078830, -0.056885,
		36.407928, 29.241896, 40.822010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824368, 28.584967, 40.750431>,  <35.711243, 29.297077, 40.861832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824368, 28.584967, 40.750431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149166, 28.740000, 40.924988>,  <36.344048, 28.833019, 41.029720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149166, 28.740000, 40.924988>,  <35.824368, 28.584967, 40.750431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149166, 28.740000, 40.924988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062167, -0.800862, 0.595613,
		0.580339, -0.456508, -0.674394,
		0.811999, 0.387583, 0.436392,
		36.392765, 28.856274, 41.055904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207268, 28.053381, 40.862316>,  <35.824368, 28.584967, 40.750431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207268, 28.053381, 40.862316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379581, 28.299038, 41.126816>,  <36.482971, 28.446432, 41.285515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379581, 28.299038, 41.126816>,  <36.207268, 28.053381, 40.862316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379581, 28.299038, 41.126816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041775, -0.718367, 0.694409,
		0.901486, -0.326766, -0.283807,
		0.430787, 0.614144, 0.661249,
		36.508816, 28.483282, 41.325191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790001, 27.724867, 41.220051>,  <36.207268, 28.053381, 40.862316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790001, 27.724867, 41.220051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710949, 28.013868, 41.485058>,  <36.663517, 28.187269, 41.644062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710949, 28.013868, 41.485058>,  <36.790001, 27.724867, 41.220051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710949, 28.013868, 41.485058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184443, -0.691186, 0.698744,
		0.962768, 0.015897, 0.269861,
		-0.197631, 0.722502, 0.662519,
		36.651661, 28.230619, 41.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162743, 27.507324, 41.804371>,  <36.790001, 27.724867, 41.220051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162743, 27.507324, 41.804371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884514, 27.769768, 41.921467>,  <36.717575, 27.927233, 41.991726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884514, 27.769768, 41.921467>,  <37.162743, 27.507324, 41.804371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884514, 27.769768, 41.921467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234270, -0.592319, 0.770893,
		0.679185, 0.467634, 0.565709,
		-0.695576, 0.656107, 0.292742,
		36.675842, 27.966600, 42.009289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327175, 27.607742, 42.604752>,  <37.162743, 27.507324, 41.804371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327175, 27.607742, 42.604752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937111, 27.664284, 42.536530>,  <36.703072, 27.698210, 42.495598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937111, 27.664284, 42.536530>,  <37.327175, 27.607742, 42.604752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937111, 27.664284, 42.536530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205669, -0.291794, 0.934107,
		0.082275, 0.945978, 0.313617,
		-0.975157, 0.141355, -0.170551,
		36.644566, 27.706690, 42.485363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136082, 27.523825, 43.235985>,  <37.327175, 27.607742, 42.604752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136082, 27.523825, 43.235985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782223, 27.548122, 43.051067>,  <36.569908, 27.562702, 42.940117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782223, 27.548122, 43.051067>,  <37.136082, 27.523825, 43.235985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782223, 27.548122, 43.051067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443592, -0.415079, 0.794315,
		-0.143638, 0.907755, 0.394143,
		-0.884644, 0.060745, -0.462294,
		36.516830, 27.566345, 42.912380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633266, 27.861383, 43.704826>,  <37.136082, 27.523825, 43.235985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633266, 27.861383, 43.704826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415798, 27.665632, 43.432083>,  <36.285316, 27.548182, 43.268436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415798, 27.665632, 43.432083>,  <36.633266, 27.861383, 43.704826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415798, 27.665632, 43.432083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657145, -0.257173, 0.708536,
		-0.522099, 0.833288, -0.181777,
		-0.543666, -0.489380, -0.681861,
		36.252697, 27.518818, 43.227524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037167, 28.133976, 43.823532>,  <36.633266, 27.861383, 43.704826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037167, 28.133976, 43.823532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982151, 27.772715, 43.660858>,  <35.949142, 27.555958, 43.563251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982151, 27.772715, 43.660858>,  <36.037167, 28.133976, 43.823532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982151, 27.772715, 43.660858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740152, -0.179136, 0.648140,
		-0.658222, 0.390157, -0.643833,
		-0.137543, -0.903154, -0.406687,
		35.940887, 27.501768, 43.538853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369331, 28.049681, 43.869286>,  <36.037167, 28.133976, 43.823532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369331, 28.049681, 43.869286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483101, 27.669405, 43.819820>,  <35.551361, 27.441238, 43.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483101, 27.669405, 43.819820>,  <35.369331, 28.049681, 43.869286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483101, 27.669405, 43.819820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737140, -0.299334, 0.605825,
		-0.612969, -0.081152, -0.785928,
		0.284419, -0.950691, -0.123662,
		35.568428, 27.384197, 43.782722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728386, 27.556364, 43.757965>,  <35.369331, 28.049681, 43.869286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728386, 27.556364, 43.757965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035408, 27.342787, 43.899822>,  <35.219620, 27.214640, 43.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035408, 27.342787, 43.899822>,  <34.728386, 27.556364, 43.757965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035408, 27.342787, 43.899822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614540, -0.455700, 0.643955,
		-0.182225, -0.712210, -0.677902,
		0.767551, -0.533943, 0.354642,
		35.265675, 27.182604, 44.006214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352188, 27.015194, 43.999847>,  <34.728386, 27.556364, 43.757965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352188, 27.015194, 43.999847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704098, 26.990971, 44.188454>,  <34.915245, 26.976437, 44.301617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704098, 26.990971, 44.188454>,  <34.352188, 27.015194, 43.999847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704098, 26.990971, 44.188454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448800, -0.432846, 0.781808,
		0.156745, -0.899432, -0.407987,
		0.879778, -0.060560, 0.471512,
		34.968033, 26.972803, 44.329906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508331, 26.323162, 44.201218>,  <34.352188, 27.015194, 43.999847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508331, 26.323162, 44.201218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710072, 26.546986, 44.464287>,  <34.831116, 26.681280, 44.622128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710072, 26.546986, 44.464287>,  <34.508331, 26.323162, 44.201218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710072, 26.546986, 44.464287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464135, -0.466587, 0.752912,
		0.728157, -0.684977, 0.024388,
		0.504348, 0.559557, 0.657670,
		34.861378, 26.714853, 44.661587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748413, 25.828032, 44.823952>,  <34.508331, 26.323162, 44.201218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748413, 25.828032, 44.823952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776848, 26.195480, 44.979427>,  <34.793907, 26.415949, 45.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776848, 26.195480, 44.979427>,  <34.748413, 25.828032, 44.823952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776848, 26.195480, 44.979427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366185, -0.338437, 0.866816,
		0.927823, -0.203952, 0.312327,
		0.071086, 0.918621, 0.388693,
		34.798172, 26.471067, 45.096035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881241, 25.742727, 45.605576>,  <34.748413, 25.828032, 44.823952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881241, 25.742727, 45.605576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770481, 26.126381, 45.582287>,  <34.704025, 26.356573, 45.568314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770481, 26.126381, 45.582287>,  <34.881241, 25.742727, 45.605576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770481, 26.126381, 45.582287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396692, -0.058913, 0.916059,
		0.875194, 0.276749, 0.396794,
		-0.276895, 0.959135, -0.058224,
		34.687412, 26.414122, 45.564819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072994, 26.051481, 46.184200>,  <34.881241, 25.742727, 45.605576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072994, 26.051481, 46.184200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783913, 26.302164, 46.067619>,  <34.610466, 26.452574, 45.997673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783913, 26.302164, 46.067619>,  <35.072994, 26.051481, 46.184200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783913, 26.302164, 46.067619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387437, -0.018140, 0.921718,
		0.572359, 0.779044, 0.255919,
		-0.722701, 0.626706, -0.291448,
		34.567101, 26.490175, 45.980186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171585, 26.702288, 46.558514>,  <35.072994, 26.051481, 46.184200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171585, 26.702288, 46.558514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797623, 26.661720, 46.422478>,  <34.573246, 26.637381, 46.340858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797623, 26.661720, 46.422478>,  <35.171585, 26.702288, 46.558514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797623, 26.661720, 46.422478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332134, -0.087564, 0.939159,
		-0.125026, 0.990983, 0.048181,
		-0.934909, -0.101417, -0.340087,
		34.517151, 26.631294, 46.320450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768539, 27.164259, 46.982483>,  <35.171585, 26.702288, 46.558514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768539, 27.164259, 46.982483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491634, 26.932697, 46.810139>,  <34.325493, 26.793760, 46.706734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491634, 26.932697, 46.810139>,  <34.768539, 27.164259, 46.982483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491634, 26.932697, 46.810139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449463, -0.121229, 0.885035,
		-0.564585, 0.806332, -0.176275,
		-0.692262, -0.578906, -0.430860,
		34.283955, 26.759026, 46.680882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161133, 27.480799, 47.175018>,  <34.768539, 27.164259, 46.982483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161133, 27.480799, 47.175018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083721, 27.098301, 47.087254>,  <34.037273, 26.868803, 47.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083721, 27.098301, 47.087254>,  <34.161133, 27.480799, 47.175018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083721, 27.098301, 47.087254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681590, -0.029816, 0.731126,
		-0.705678, 0.291046, -0.645996,
		-0.193530, -0.956244, -0.219414,
		34.025661, 26.811428, 47.021431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467457, 27.417999, 46.979679>,  <34.161133, 27.480799, 47.175018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467457, 27.417999, 46.979679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576424, 27.048866, 47.088615>,  <33.641804, 26.827387, 47.153976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576424, 27.048866, 47.088615>,  <33.467457, 27.417999, 46.979679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576424, 27.048866, 47.088615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808162, -0.065845, 0.585268,
		-0.522171, -0.379534, -0.763735,
		0.272417, -0.922832, 0.272342,
		33.658150, 26.772017, 47.170319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830914, 26.972178, 46.962845>,  <33.467457, 27.417999, 46.979679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830914, 26.972178, 46.962845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110626, 26.806112, 47.195618>,  <33.278454, 26.706474, 47.335281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110626, 26.806112, 47.195618>,  <32.830914, 26.972178, 46.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110626, 26.806112, 47.195618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664356, -0.076921, 0.743448,
		-0.263888, -0.906490, -0.329604,
		0.699282, -0.415161, 0.581933,
		33.320412, 26.681564, 47.370197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334839, 26.674097, 47.434845>,  <32.830914, 26.972178, 46.962845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334839, 26.674097, 47.434845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697437, 26.624090, 47.596157>,  <32.914997, 26.594086, 47.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697437, 26.624090, 47.596157>,  <32.334839, 26.674097, 47.434845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697437, 26.624090, 47.596157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413853, -0.073937, 0.907336,
		-0.083601, -0.989398, -0.118756,
		0.906497, -0.125002, 0.403284,
		32.969387, 26.586584, 47.717140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231037, 26.026405, 47.960190>,  <32.334839, 26.674097, 47.434845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231037, 26.026405, 47.960190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532768, 26.267881, 48.063377>,  <32.713806, 26.412767, 48.125290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532768, 26.267881, 48.063377>,  <32.231037, 26.026405, 47.960190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532768, 26.267881, 48.063377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457589, 0.201725, 0.865979,
		0.470744, -0.771276, 0.428409,
		0.754329, 0.603690, 0.257966,
		32.759068, 26.448988, 48.140766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226261, 25.990767, 48.670250>,  <32.231037, 26.026405, 47.960190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226261, 25.990767, 48.670250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466446, 26.306618, 48.619766>,  <32.610558, 26.496128, 48.589474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466446, 26.306618, 48.619766>,  <32.226261, 25.990767, 48.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466446, 26.306618, 48.619766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295482, 0.365762, 0.882558,
		0.743056, -0.492652, 0.452948,
		0.600465, 0.789628, -0.126212,
		32.646587, 26.543507, 48.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630787, 26.073601, 49.259052>,  <32.226261, 25.990767, 48.670250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630787, 26.073601, 49.259052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605160, 26.435991, 49.091671>,  <32.589783, 26.653425, 48.991241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605160, 26.435991, 49.091671>,  <32.630787, 26.073601, 49.259052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605160, 26.435991, 49.091671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279901, 0.386167, 0.878937,
		0.957888, 0.173439, 0.228842,
		-0.064070, 0.905977, -0.418451,
		32.585938, 26.707785, 48.966137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040806, 26.595722, 49.728642>,  <32.630787, 26.073601, 49.259052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040806, 26.595722, 49.728642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780746, 26.807848, 49.510994>,  <32.624710, 26.935123, 49.380405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780746, 26.807848, 49.510994>,  <33.040806, 26.595722, 49.728642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780746, 26.807848, 49.510994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347360, 0.429462, 0.833609,
		0.675756, 0.730977, -0.095004,
		-0.650150, 0.530316, -0.544123,
		32.585701, 26.966942, 49.347755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069000, 27.250090, 49.993378>,  <33.040806, 26.595722, 49.728642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069000, 27.250090, 49.993378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727070, 27.264271, 49.786293>,  <32.521912, 27.272779, 49.662045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727070, 27.264271, 49.786293>,  <33.069000, 27.250090, 49.993378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727070, 27.264271, 49.786293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498001, 0.224385, 0.837644,
		0.145862, 0.973855, -0.174154,
		-0.854821, 0.035451, -0.517710,
		32.470623, 27.274906, 49.630981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681171, 27.833097, 49.881638>,  <33.069000, 27.250090, 49.993378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681171, 27.833097, 49.881638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511665, 27.479956, 49.962624>,  <32.409962, 27.268070, 50.011215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511665, 27.479956, 49.962624>,  <32.681171, 27.833097, 49.881638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511665, 27.479956, 49.962624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413255, 0.387355, 0.824121,
		-0.806004, 0.265566, -0.528992,
		-0.423767, -0.882854, 0.202463,
		32.384537, 27.215099, 50.023361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453957, 28.130255, 50.481316>,  <32.681171, 27.833097, 49.881638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453957, 28.130255, 50.481316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705532, 28.265612, 50.761295>,  <32.856480, 28.346825, 50.929283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705532, 28.265612, 50.761295>,  <32.453957, 28.130255, 50.481316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705532, 28.265612, 50.761295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651587, 0.261694, -0.712004,
		-0.424107, 0.903885, -0.055900,
		0.628941, 0.338390, 0.699946,
		32.894215, 28.367128, 50.971279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440449, 28.855391, 50.521267>,  <32.453957, 28.130255, 50.481316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440449, 28.855391, 50.521267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798023, 28.714804, 50.632511>,  <33.012569, 28.630451, 50.699257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798023, 28.714804, 50.632511>,  <32.440449, 28.855391, 50.521267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798023, 28.714804, 50.632511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433979, 0.523784, -0.733016,
		0.111961, 0.775965, 0.620760,
		0.893939, -0.351466, 0.278109,
		33.066204, 28.609364, 50.715942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995594, 29.424131, 50.512756>,  <32.440449, 28.855391, 50.521267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995594, 29.424131, 50.512756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209866, 29.086510, 50.502819>,  <33.338428, 28.883936, 50.496857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209866, 29.086510, 50.502819>,  <32.995594, 29.424131, 50.512756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209866, 29.086510, 50.502819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656030, 0.434514, -0.617108,
		0.531668, 0.314275, 0.786486,
		0.535681, -0.844055, -0.024843,
		33.370571, 28.833294, 50.495365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559628, 29.701538, 50.241215>,  <32.995594, 29.424131, 50.512756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559628, 29.701538, 50.241215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658749, 29.314173, 50.252342>,  <33.718220, 29.081755, 50.259018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.658749, 29.314173, 50.252342>,  <33.559628, 29.701538, 50.241215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658749, 29.314173, 50.252342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777415, 0.181627, -0.602195,
		0.578119, 0.170854, 0.797864,
		0.247801, -0.968411, 0.027822,
		33.733089, 29.023649, 50.260689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332108, 29.600508, 50.278465>,  <33.559628, 29.701538, 50.241215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332108, 29.600508, 50.278465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163597, 29.289406, 50.091866>,  <34.062489, 29.102745, 49.979904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163597, 29.289406, 50.091866>,  <34.332108, 29.600508, 50.278465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163597, 29.289406, 50.091866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700359, 0.047817, -0.712187,
		0.576213, -0.626748, 0.524562,
		-0.421279, -0.777753, -0.466502,
		34.037212, 29.056080, 49.951916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959656, 29.264139, 50.094509>,  <34.332108, 29.600508, 50.278465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959656, 29.264139, 50.094509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661655, 29.144531, 49.855995>,  <34.482853, 29.072767, 49.712887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661655, 29.144531, 49.855995>,  <34.959656, 29.264139, 50.094509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661655, 29.144531, 49.855995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565584, 0.190784, -0.802320,
		0.353672, -0.934980, 0.026986,
		-0.745004, -0.299021, -0.596285,
		34.438152, 29.054825, 49.677109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234600, 28.822655, 49.624134>,  <34.959656, 29.264139, 50.094509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234600, 28.822655, 49.624134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889088, 28.930826, 49.454071>,  <34.681782, 28.995729, 49.352032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889088, 28.930826, 49.454071>,  <35.234600, 28.822655, 49.624134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889088, 28.930826, 49.454071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489709, 0.251886, -0.834708,
		-0.118640, -0.929204, -0.350006,
		-0.863776, 0.270431, -0.425156,
		34.629955, 29.011955, 49.326523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171623, 28.445589, 49.074268>,  <35.234600, 28.822655, 49.624134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171623, 28.445589, 49.074268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935249, 28.758183, 48.994190>,  <34.793423, 28.945738, 48.946144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935249, 28.758183, 48.994190>,  <35.171623, 28.445589, 49.074268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935249, 28.758183, 48.994190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426019, 0.091574, -0.900068,
		-0.685054, -0.617171, -0.387041,
		-0.590939, 0.781482, -0.200194,
		34.757969, 28.992626, 48.934132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735447, 28.309050, 48.511269>,  <35.171623, 28.445589, 49.074268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735447, 28.309050, 48.511269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734085, 28.708870, 48.523174>,  <34.733269, 28.948763, 48.530319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734085, 28.708870, 48.523174>,  <34.735447, 28.309050, 48.511269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734085, 28.708870, 48.523174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389646, 0.028737, -0.920516,
		-0.920958, 0.008465, -0.389569,
		-0.003403, 0.999551, 0.029764,
		34.733063, 29.008736, 48.532104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620663, 28.475361, 47.890949>,  <34.735447, 28.309050, 48.511269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620663, 28.475361, 47.890949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733467, 28.841904, 48.004623>,  <34.801151, 29.061829, 48.072826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733467, 28.841904, 48.004623>,  <34.620663, 28.475361, 47.890949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733467, 28.841904, 48.004623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175529, 0.241929, -0.954285,
		-0.943217, 0.319003, -0.092619,
		0.282013, 0.916355, 0.284186,
		34.818069, 29.116810, 48.089878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321617, 28.932463, 47.476192>,  <34.620663, 28.475361, 47.890949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321617, 28.932463, 47.476192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632881, 29.145597, 47.609188>,  <34.819641, 29.273478, 47.688984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632881, 29.145597, 47.609188>,  <34.321617, 28.932463, 47.476192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632881, 29.145597, 47.609188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216046, 0.269987, -0.938313,
		-0.589733, 0.801994, 0.094977,
		0.778164, 0.532835, 0.332488,
		34.866329, 29.305449, 47.708935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321129, 29.566397, 47.080074>,  <34.321617, 28.932463, 47.476192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321129, 29.566397, 47.080074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683887, 29.497065, 47.233696>,  <34.901543, 29.455465, 47.325871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683887, 29.497065, 47.233696>,  <34.321129, 29.566397, 47.080074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683887, 29.497065, 47.233696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420186, 0.304205, -0.854929,
		0.031352, 0.936705, 0.348713,
		0.906896, -0.173328, 0.384053,
		34.955956, 29.445066, 47.348911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726971, 29.977463, 46.793011>,  <34.321129, 29.566397, 47.080074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726971, 29.977463, 46.793011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031036, 29.743362, 46.905884>,  <35.213474, 29.602901, 46.973610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031036, 29.743362, 46.905884>,  <34.726971, 29.977463, 46.793011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031036, 29.743362, 46.905884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513146, 0.274384, -0.813262,
		0.398536, 0.763016, 0.508897,
		0.760165, -0.585253, 0.282186,
		35.259087, 29.567787, 46.990540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402313, 30.343306, 46.602779>,  <34.726971, 29.977463, 46.793011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402313, 30.343306, 46.602779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519394, 29.967552, 46.674202>,  <35.589642, 29.742100, 46.717056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519394, 29.967552, 46.674202>,  <35.402313, 30.343306, 46.602779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519394, 29.967552, 46.674202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779171, 0.126070, -0.614002,
		0.554274, 0.318845, 0.768842,
		0.292699, -0.939385, 0.178557,
		35.607204, 29.685736, 46.727768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133339, 30.305931, 46.862595>,  <35.402313, 30.343306, 46.602779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133339, 30.305931, 46.862595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055294, 29.953505, 46.690243>,  <36.008469, 29.742048, 46.586830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055294, 29.953505, 46.690243>,  <36.133339, 30.305931, 46.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055294, 29.953505, 46.690243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805629, 0.106583, -0.582753,
		0.559367, -0.460831, 0.689016,
		-0.195113, -0.881064, -0.430878,
		35.996761, 29.689186, 46.560978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798748, 29.900356, 46.750092>,  <36.133339, 30.305931, 46.862595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798748, 29.900356, 46.750092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549770, 29.736019, 46.483627>,  <36.400383, 29.637417, 46.323750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549770, 29.736019, 46.483627>,  <36.798748, 29.900356, 46.750092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549770, 29.736019, 46.483627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662088, 0.177491, -0.728105,
		0.417372, -0.894263, 0.161534,
		-0.622447, -0.410841, -0.666161,
		36.363037, 29.612766, 46.283779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157665, 29.369562, 46.349770>,  <36.798748, 29.900356, 46.750092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157665, 29.369562, 46.349770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850224, 29.441715, 46.104263>,  <36.665760, 29.485006, 45.956959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850224, 29.441715, 46.104263>,  <37.157665, 29.369562, 46.349770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850224, 29.441715, 46.104263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625887, 0.013550, -0.779796,
		-0.132345, -0.983503, -0.123314,
		-0.768603, 0.180383, -0.613769,
		36.619644, 29.495831, 45.920132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426361, 29.083139, 45.708736>,  <37.157665, 29.369562, 46.349770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426361, 29.083139, 45.708736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103291, 29.293646, 45.602375>,  <36.909451, 29.419950, 45.538559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103291, 29.293646, 45.602375>,  <37.426361, 29.083139, 45.708736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103291, 29.293646, 45.602375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375182, 0.110803, -0.920305,
		-0.454863, -0.843069, -0.286938,
		-0.807674, 0.526267, -0.265904,
		36.860989, 29.451527, 45.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159763, 28.697233, 45.076225>,  <37.426361, 29.083139, 45.708736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159763, 28.697233, 45.076225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015152, 29.070177, 45.076714>,  <36.928387, 29.293943, 45.077007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015152, 29.070177, 45.076714>,  <37.159763, 28.697233, 45.076225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015152, 29.070177, 45.076714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468642, 0.182847, -0.864258,
		-0.806024, -0.311880, -0.503048,
		-0.361525, 0.932362, 0.001219,
		36.906693, 29.349886, 45.077080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710648, 28.738188, 44.439915>,  <37.159763, 28.697233, 45.076225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710648, 28.738188, 44.439915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846737, 29.092611, 44.565861>,  <36.928391, 29.305265, 44.641430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846737, 29.092611, 44.565861>,  <36.710648, 28.738188, 44.439915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846737, 29.092611, 44.565861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436092, 0.147983, -0.887651,
		-0.833108, 0.439315, -0.336056,
		0.340228, 0.886061, 0.314867,
		36.948807, 29.358429, 44.660320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645061, 29.073265, 43.809689>,  <36.710648, 28.738188, 44.439915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645061, 29.073265, 43.809689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873180, 29.290476, 44.056229>,  <37.010052, 29.420803, 44.204151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873180, 29.290476, 44.056229>,  <36.645061, 29.073265, 43.809689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873180, 29.290476, 44.056229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539349, 0.318397, -0.779568,
		-0.619570, 0.777010, -0.111301,
		0.570294, 0.543028, 0.616349,
		37.044270, 29.453384, 44.241135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773788, 29.718485, 43.479523>,  <36.645061, 29.073265, 43.809689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773788, 29.718485, 43.479523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084202, 29.681309, 43.729046>,  <37.270451, 29.659002, 43.878761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084202, 29.681309, 43.729046>,  <36.773788, 29.718485, 43.479523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084202, 29.681309, 43.729046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618017, 0.309375, -0.722732,
		-0.125819, 0.946387, 0.297525,
		0.776031, -0.092942, 0.623809,
		37.317013, 29.653427, 43.916187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183201, 30.381006, 43.356174>,  <36.773788, 29.718485, 43.479523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183201, 30.381006, 43.356174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428665, 30.137358, 43.557129>,  <37.575943, 29.991169, 43.677700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428665, 30.137358, 43.557129>,  <37.183201, 30.381006, 43.356174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428665, 30.137358, 43.557129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704048, 0.134121, -0.697373,
		0.357404, 0.781654, 0.511155,
		0.613661, -0.609121, 0.502387,
		37.612762, 29.954622, 43.707844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809929, 30.743042, 43.526989>,  <37.183201, 30.381006, 43.356174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809929, 30.743042, 43.526989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913448, 30.356726, 43.520458>,  <37.975559, 30.124935, 43.516541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.913448, 30.356726, 43.520458>,  <37.809929, 30.743042, 43.526989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913448, 30.356726, 43.520458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618011, 0.178551, -0.765625,
		0.742351, 0.188053, 0.643079,
		0.258800, -0.965793, -0.016329,
		37.991089, 30.066988, 43.515560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498562, 30.675022, 43.493305>,  <37.809929, 30.743042, 43.526989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498562, 30.675022, 43.493305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366192, 30.326694, 43.347889>,  <38.286770, 30.117697, 43.260639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366192, 30.326694, 43.347889>,  <38.498562, 30.675022, 43.493305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366192, 30.326694, 43.347889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607082, 0.098476, -0.788514,
		0.722454, -0.481635, 0.496072,
		-0.330925, -0.870821, -0.363537,
		38.266914, 30.065449, 43.238827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098339, 30.302073, 43.331818>,  <38.498562, 30.675022, 43.493305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098339, 30.302073, 43.331818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803768, 30.137690, 43.116859>,  <38.627026, 30.039059, 42.987885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803768, 30.137690, 43.116859>,  <39.098339, 30.302073, 43.331818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803768, 30.137690, 43.116859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575111, 0.038019, -0.817192,
		0.356264, -0.910861, 0.208349,
		-0.736426, -0.410959, -0.537391,
		38.582840, 30.014402, 42.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477486, 30.090055, 42.802071>,  <39.098339, 30.302073, 43.331818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477486, 30.090055, 42.802071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104053, 30.041410, 42.667229>,  <38.879993, 30.012222, 42.586323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104053, 30.041410, 42.667229>,  <39.477486, 30.090055, 42.802071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104053, 30.041410, 42.667229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329168, 0.080960, -0.940794,
		0.141709, -0.989270, -0.035551,
		-0.933578, -0.121617, -0.337108,
		38.823978, 30.004927, 42.566097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508472, 29.644537, 42.178974>,  <39.477486, 30.090055, 42.802071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508472, 29.644537, 42.178974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150902, 29.817375, 42.131336>,  <38.936359, 29.921078, 42.102753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150902, 29.817375, 42.131336>,  <39.508472, 29.644537, 42.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150902, 29.817375, 42.131336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202023, 0.151247, -0.967632,
		-0.400098, -0.889054, -0.222497,
		-0.893928, 0.432097, -0.119095,
		38.882725, 29.947004, 42.095608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268974, 29.310852, 41.585541>,  <39.508472, 29.644537, 42.178974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268974, 29.310852, 41.585541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099636, 29.668417, 41.644459>,  <38.998032, 29.882956, 41.679810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099636, 29.668417, 41.644459>,  <39.268974, 29.310852, 41.585541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099636, 29.668417, 41.644459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141591, 0.225868, -0.963813,
		-0.894834, -0.387173, -0.222191,
		-0.423348, 0.893913, 0.147294,
		38.972630, 29.936590, 41.688648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144913, 29.429764, 40.889225>,  <39.268974, 29.310852, 41.585541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144913, 29.429764, 40.889225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044556, 29.781693, 41.050705>,  <38.984341, 29.992849, 41.147591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044556, 29.781693, 41.050705>,  <39.144913, 29.429764, 40.889225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044556, 29.781693, 41.050705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320860, 0.469043, -0.822829,
		-0.913292, -0.076912, -0.399978,
		-0.250892, 0.879820, 0.403695,
		38.969288, 30.045639, 41.171814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837925, 29.878273, 40.371662>,  <39.144913, 29.429764, 40.889225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837925, 29.878273, 40.371662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987064, 30.118612, 40.654495>,  <39.076550, 30.262815, 40.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987064, 30.118612, 40.654495>,  <38.837925, 29.878273, 40.371662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987064, 30.118612, 40.654495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489729, 0.519823, -0.699964,
		-0.788129, 0.607260, -0.100436,
		0.372852, 0.600848, 0.707080,
		39.098919, 30.298866, 40.866619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769844, 30.649536, 40.154366>,  <38.837925, 29.878273, 40.371662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769844, 30.649536, 40.154366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058544, 30.628405, 40.430420>,  <39.231766, 30.615725, 40.596050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058544, 30.628405, 40.430420>,  <38.769844, 30.649536, 40.154366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058544, 30.628405, 40.430420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610047, 0.519592, -0.598220,
		-0.326984, 0.852780, 0.407244,
		0.721751, -0.052830, 0.690134,
		39.275070, 30.612556, 40.637459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123066, 31.283806, 40.037086>,  <38.769844, 30.649536, 40.154366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123066, 31.283806, 40.037086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390720, 31.081356, 40.254749>,  <39.551311, 30.959887, 40.385345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390720, 31.081356, 40.254749>,  <39.123066, 31.283806, 40.037086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390720, 31.081356, 40.254749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741683, 0.408946, -0.531667,
		0.046560, 0.759344, 0.649022,
		0.669132, -0.506123, 0.544152,
		39.591461, 30.929520, 40.417995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705017, 31.797707, 40.165543>,  <39.123066, 31.283806, 40.037086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705017, 31.797707, 40.165543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865540, 31.438740, 40.238853>,  <39.961853, 31.223360, 40.282841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865540, 31.438740, 40.238853>,  <39.705017, 31.797707, 40.165543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865540, 31.438740, 40.238853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832056, 0.273528, -0.482561,
		0.382928, 0.346153, 0.856472,
		0.401309, -0.897419, 0.183277,
		39.985931, 31.169514, 40.293839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284779, 31.959263, 40.530338>,  <39.705017, 31.797707, 40.165543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284779, 31.959263, 40.530338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353493, 31.594564, 40.381096>,  <40.394722, 31.375746, 40.291550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.353493, 31.594564, 40.381096>,  <40.284779, 31.959263, 40.530338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353493, 31.594564, 40.381096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713448, 0.376307, -0.591088,
		0.679325, -0.164654, 0.715127,
		0.171782, -0.911747, -0.373107,
		40.405025, 31.321041, 40.269165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875332, 32.069656, 40.322777>,  <40.284779, 31.959263, 40.530338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875332, 32.069656, 40.322777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798458, 31.727505, 40.130363>,  <40.752335, 31.522213, 40.014915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798458, 31.727505, 40.130363>,  <40.875332, 32.069656, 40.322777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798458, 31.727505, 40.130363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593666, 0.288971, -0.751037,
		0.781425, -0.429910, 0.452274,
		-0.192184, -0.855379, -0.481032,
		40.740803, 31.470892, 39.986053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579716, 31.741814, 40.133526>,  <40.875332, 32.069656, 40.322777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579716, 31.741814, 40.133526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307163, 31.594959, 39.880249>,  <41.143631, 31.506847, 39.728283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307163, 31.594959, 39.880249>,  <41.579716, 31.741814, 40.133526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307163, 31.594959, 39.880249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602123, 0.210675, -0.770107,
		0.416130, -0.905995, 0.077511,
		-0.681384, -0.367136, -0.633189,
		41.102749, 31.484819, 39.690292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938953, 31.238762, 39.582668>,  <41.579716, 31.741814, 40.133526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938953, 31.238762, 39.582668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597523, 31.375675, 39.425568>,  <41.392666, 31.457823, 39.331306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597523, 31.375675, 39.425568>,  <41.938953, 31.238762, 39.582668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597523, 31.375675, 39.425568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497319, 0.310751, -0.810005,
		-0.155200, -0.886723, -0.435471,
		-0.853573, 0.342281, -0.392756,
		41.341450, 31.478359, 39.307739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080578, 31.104296, 38.955585>,  <41.938953, 31.238762, 39.582668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080578, 31.104296, 38.955585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764767, 31.346401, 38.914993>,  <41.575279, 31.491665, 38.890636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764767, 31.346401, 38.914993>,  <42.080578, 31.104296, 38.955585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764767, 31.346401, 38.914993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419704, 0.411859, -0.808839,
		-0.447764, -0.681195, -0.579206,
		-0.789529, 0.605265, -0.101485,
		41.527908, 31.527981, 38.884548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846931, 30.997253, 38.282925>,  <42.080578, 31.104296, 38.955585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846931, 30.997253, 38.282925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750092, 31.360331, 38.420029>,  <41.691990, 31.578176, 38.502289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750092, 31.360331, 38.420029>,  <41.846931, 30.997253, 38.282925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750092, 31.360331, 38.420029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570086, 0.418930, -0.706752,
		-0.785105, 0.024298, -0.618886,
		-0.242097, 0.907693, 0.342756,
		41.677464, 31.632639, 38.522854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515392, 31.504284, 37.724613>,  <41.846931, 30.997253, 38.282925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515392, 31.504284, 37.724613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695057, 31.713972, 38.014011>,  <41.802856, 31.839785, 38.187649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695057, 31.713972, 38.014011>,  <41.515392, 31.504284, 37.724613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695057, 31.713972, 38.014011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579297, 0.445617, -0.682525,
		-0.680195, 0.725684, -0.103525,
		0.449165, 0.524222, 0.723493,
		41.829807, 31.871239, 38.231060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555763, 32.313847, 37.635155>,  <41.515392, 31.504284, 37.724613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555763, 32.313847, 37.635155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863483, 32.163929, 37.842113>,  <42.048115, 32.073978, 37.966290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863483, 32.163929, 37.842113>,  <41.555763, 32.313847, 37.635155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863483, 32.163929, 37.842113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632598, 0.560204, -0.534782,
		-0.089417, 0.738715, 0.668060,
		0.769302, -0.374795, 0.517401,
		42.094273, 32.051491, 37.997334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101067, 32.794491, 37.778683>,  <41.555763, 32.313847, 37.635155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101067, 32.794491, 37.778683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325253, 32.465664, 37.818840>,  <42.459766, 32.268368, 37.842934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325253, 32.465664, 37.818840>,  <42.101067, 32.794491, 37.778683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325253, 32.465664, 37.818840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707290, 0.412068, -0.574405,
		0.430834, 0.392940, 0.812392,
		0.560467, -0.822070, 0.100389,
		42.493393, 32.219044, 37.848957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718262, 33.117813, 37.491089>,  <42.101067, 32.794491, 37.778683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718262, 33.117813, 37.491089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754971, 32.722054, 37.536098>,  <42.776997, 32.484596, 37.563103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.754971, 32.722054, 37.536098>,  <42.718262, 33.117813, 37.491089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754971, 32.722054, 37.536098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720769, -0.011964, -0.693072,
		0.687073, 0.144709, 0.712032,
		0.091775, -0.989402, 0.112522,
		42.782505, 32.425232, 37.569855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170383, 32.584724, 37.215416>,  <42.718262, 33.117813, 37.491089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170383, 32.584724, 37.215416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559490, 32.677425, 37.217293>,  <43.792953, 32.733047, 37.218418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559490, 32.677425, 37.217293>,  <43.170383, 32.584724, 37.215416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559490, 32.677425, 37.217293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230890, 0.970544, -0.068798,
		-0.020500, 0.065840, 0.997620,
		0.972764, 0.231751, 0.004694,
		43.851318, 32.746952, 37.218700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354149, 33.041126, 37.861568>,  <43.170383, 32.584724, 37.215416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354149, 33.041126, 37.861568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576664, 33.083454, 37.531879>,  <43.710171, 33.108852, 37.334064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576664, 33.083454, 37.531879>,  <43.354149, 33.041126, 37.861568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576664, 33.083454, 37.531879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275596, 0.959217, -0.062850,
		0.783961, 0.262116, 0.562762,
		0.556284, 0.105823, -0.824226,
		43.743549, 33.115200, 37.284611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837437, 33.593555, 37.888271>,  <43.354149, 33.041126, 37.861568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837437, 33.593555, 37.888271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738773, 33.536388, 37.504868>,  <43.679577, 33.502087, 37.274826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738773, 33.536388, 37.504868>,  <43.837437, 33.593555, 37.888271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738773, 33.536388, 37.504868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227344, 0.969998, -0.086128,
		0.942059, 0.196667, -0.271747,
		-0.246655, -0.142918, -0.958507,
		43.664776, 33.493511, 37.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163170, 34.149929, 37.493786>,  <43.837437, 33.593555, 37.888271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163170, 34.149929, 37.493786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846195, 34.002308, 37.299530>,  <43.656010, 33.913734, 37.182976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846195, 34.002308, 37.299530>,  <44.163170, 34.149929, 37.493786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846195, 34.002308, 37.299530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313184, 0.929405, -0.195252,
		0.523418, -0.002628, -0.852072,
		-0.792433, -0.369053, -0.485644,
		43.608467, 33.891590, 37.153835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150673, 34.469589, 36.850143>,  <44.163170, 34.149929, 37.493786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150673, 34.469589, 36.850143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775154, 34.344158, 36.907169>,  <43.549843, 34.268898, 36.941383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775154, 34.344158, 36.907169>,  <44.150673, 34.469589, 36.850143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775154, 34.344158, 36.907169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343803, 0.878577, -0.331515,
		-0.021294, -0.360239, -0.932617,
		-0.938800, -0.313577, 0.142560,
		43.493515, 34.250084, 36.949936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776009, 34.800156, 36.231300>,  <44.150673, 34.469589, 36.850143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776009, 34.800156, 36.231300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491943, 34.663898, 36.477760>,  <43.321507, 34.582146, 36.625637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491943, 34.663898, 36.477760>,  <43.776009, 34.800156, 36.231300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491943, 34.663898, 36.477760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651604, 0.649435, -0.391978,
		-0.266623, -0.679850, -0.683167,
		-0.710158, -0.340644, 0.616147,
		43.278896, 34.561707, 36.662605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181747, 34.560425, 35.807827>,  <43.776009, 34.800156, 36.231300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181747, 34.560425, 35.807827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056213, 34.656193, 36.175346>,  <42.980892, 34.713654, 36.395859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056213, 34.656193, 36.175346>,  <43.181747, 34.560425, 35.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056213, 34.656193, 36.175346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667942, 0.632072, -0.392858,
		-0.674803, -0.736995, -0.038447,
		-0.313836, 0.239422, 0.918795,
		42.962063, 34.728020, 36.450985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493103, 34.500191, 35.781536>,  <43.181747, 34.560425, 35.807827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493103, 34.500191, 35.781536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570129, 34.737926, 36.093864>,  <42.616344, 34.880569, 36.281261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570129, 34.737926, 36.093864>,  <42.493103, 34.500191, 35.781536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570129, 34.737926, 36.093864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648349, 0.674351, -0.353406,
		-0.736589, -0.438188, 0.515197,
		0.192565, 0.594342, 0.780818,
		42.627899, 34.916229, 36.328110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787884, 34.734982, 35.938961>,  <42.493103, 34.500191, 35.781536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787884, 34.734982, 35.938961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040848, 34.989761, 36.115303>,  <42.192627, 35.142632, 36.221107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.040848, 34.989761, 36.115303>,  <41.787884, 34.734982, 35.938961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040848, 34.989761, 36.115303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547071, 0.770162, -0.327968,
		-0.548431, -0.033770, 0.835514,
		0.632406, 0.636953, 0.440855,
		42.230568, 35.180847, 36.247559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387001, 35.146133, 36.300011>,  <41.787884, 34.734982, 35.938961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387001, 35.146133, 36.300011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719791, 35.367592, 36.285622>,  <41.919464, 35.500465, 36.276989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719791, 35.367592, 36.285622>,  <41.387001, 35.146133, 36.300011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719791, 35.367592, 36.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554748, 0.829148, -0.069053,
		-0.008404, 0.077406, 0.996964,
		0.831976, 0.553644, -0.035972,
		41.969383, 35.533684, 36.274830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133675, 35.762974, 36.687366>,  <41.387001, 35.146133, 36.300011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133675, 35.762974, 36.687366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448395, 35.809757, 36.444958>,  <41.637226, 35.837830, 36.299511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448395, 35.809757, 36.444958>,  <41.133675, 35.762974, 36.687366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448395, 35.809757, 36.444958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375999, 0.869482, -0.320352,
		0.489458, 0.479917, 0.728087,
		0.786801, 0.116961, -0.606024,
		41.684437, 35.844845, 36.263149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174625, 36.479652, 36.670063>,  <41.133675, 35.762974, 36.687366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174625, 36.479652, 36.670063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390606, 36.359509, 36.355549>,  <41.520195, 36.287422, 36.166840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390606, 36.359509, 36.355549>,  <41.174625, 36.479652, 36.670063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390606, 36.359509, 36.355549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163802, 0.878805, -0.448187,
		0.825604, 0.370793, 0.425311,
		0.539950, -0.300358, -0.786282,
		41.552589, 36.269402, 36.119663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572350, 37.104630, 36.557438>,  <41.174625, 36.479652, 36.670063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572350, 37.104630, 36.557438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557377, 36.874035, 36.230938>,  <41.548393, 36.735680, 36.035038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557377, 36.874035, 36.230938>,  <41.572350, 37.104630, 36.557438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557377, 36.874035, 36.230938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145504, 0.811262, -0.566288,
		0.988650, 0.097573, -0.114243,
		-0.037427, -0.576483, -0.816252,
		41.546150, 36.701092, 35.986061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874832, 37.595512, 35.992809>,  <41.572350, 37.104630, 36.557438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874832, 37.595512, 35.992809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686970, 37.288994, 35.817444>,  <41.574253, 37.105083, 35.712223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686970, 37.288994, 35.817444>,  <41.874832, 37.595512, 35.992809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686970, 37.288994, 35.817444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388239, 0.625268, -0.676986,
		0.792901, -0.147740, -0.591169,
		-0.469657, -0.766298, -0.438418,
		41.546074, 37.059105, 35.685921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866276, 37.698574, 35.232319>,  <41.874832, 37.595512, 35.992809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866276, 37.698574, 35.232319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560108, 37.445164, 35.277519>,  <41.376408, 37.293118, 35.304642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560108, 37.445164, 35.277519>,  <41.866276, 37.698574, 35.232319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560108, 37.445164, 35.277519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542309, 0.540470, -0.643268,
		0.346454, -0.553654, -0.757256,
		-0.765422, -0.633530, 0.113003,
		41.330482, 37.255104, 35.311420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684135, 37.396931, 34.532181>,  <41.866276, 37.698574, 35.232319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684135, 37.396931, 34.532181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380768, 37.402336, 34.792831>,  <41.198746, 37.405579, 34.949223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380768, 37.402336, 34.792831>,  <41.684135, 37.396931, 34.532181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380768, 37.402336, 34.792831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600582, 0.373889, -0.706760,
		-0.253186, -0.927375, -0.275449,
		-0.758419, 0.013512, 0.651628,
		41.153244, 37.406391, 34.988319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114552, 37.342892, 34.084942>,  <41.684135, 37.396931, 34.532181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114552, 37.342892, 34.084942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957436, 37.460457, 34.433502>,  <40.863167, 37.530994, 34.642639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957436, 37.460457, 34.433502>,  <41.114552, 37.342892, 34.084942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957436, 37.460457, 34.433502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787103, 0.382586, -0.483836,
		-0.475589, -0.875925, 0.081062,
		-0.392790, 0.293912, 0.871397,
		40.839600, 37.548630, 34.694920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449383, 37.093300, 34.047485>,  <41.114552, 37.342892, 34.084942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449383, 37.093300, 34.047485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436546, 37.398365, 34.305885>,  <40.428844, 37.581406, 34.460926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436546, 37.398365, 34.305885>,  <40.449383, 37.093300, 34.047485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436546, 37.398365, 34.305885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824903, 0.344741, -0.447983,
		-0.564363, -0.547261, 0.618061,
		-0.032093, 0.762666, 0.645996,
		40.426918, 37.627163, 34.499683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826057, 37.064320, 34.470291>,  <40.449383, 37.093300, 34.047485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826057, 37.064320, 34.470291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943207, 37.446621, 34.459286>,  <40.013496, 37.676003, 34.452682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943207, 37.446621, 34.459286>,  <39.826057, 37.064320, 34.470291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943207, 37.446621, 34.459286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837330, 0.242478, -0.489982,
		-0.461630, 0.166545, 0.871298,
		0.292875, 0.955755, -0.027518,
		40.031071, 37.733349, 34.451031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254856, 37.461224, 34.851334>,  <39.826057, 37.064320, 34.470291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254856, 37.461224, 34.851334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439629, 37.717766, 34.606289>,  <39.550491, 37.871689, 34.459263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439629, 37.717766, 34.606289>,  <39.254856, 37.461224, 34.851334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439629, 37.717766, 34.606289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886538, 0.354062, -0.297808,
		0.025901, 0.680666, 0.732136,
		0.461929, 0.641353, -0.612607,
		39.578209, 37.910172, 34.422508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751530, 37.961155, 34.735783>,  <39.254856, 37.461224, 34.851334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751530, 37.961155, 34.735783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033920, 38.072323, 34.475212>,  <39.203354, 38.139023, 34.318871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033920, 38.072323, 34.475212>,  <38.751530, 37.961155, 34.735783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033920, 38.072323, 34.475212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696765, 0.437400, -0.568506,
		0.126937, 0.855245, 0.502437,
		0.705978, 0.277917, -0.651427,
		39.245712, 38.155697, 34.279785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548073, 38.602036, 34.495678>,  <38.751530, 37.961155, 34.735783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548073, 38.602036, 34.495678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794682, 38.460579, 34.214298>,  <38.942646, 38.375706, 34.045471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794682, 38.460579, 34.214298>,  <38.548073, 38.602036, 34.495678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794682, 38.460579, 34.214298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679247, 0.212913, -0.702348,
		0.398155, 0.910825, -0.108948,
		0.616520, -0.353646, -0.703447,
		38.979637, 38.354485, 34.003265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683479, 39.185993, 34.077686>,  <38.548073, 38.602036, 34.495678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683479, 39.185993, 34.077686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749176, 38.872128, 33.838581>,  <38.788593, 38.683807, 33.695118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749176, 38.872128, 33.838581>,  <38.683479, 39.185993, 34.077686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749176, 38.872128, 33.838581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659002, 0.363632, -0.658398,
		0.733990, 0.502063, -0.457375,
		0.164241, -0.784668, -0.597763,
		38.798447, 38.636726, 33.659252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758667, 39.453659, 33.450367>,  <38.683479, 39.185993, 34.077686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758667, 39.453659, 33.450367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640347, 39.081707, 33.362900>,  <38.569355, 38.858536, 33.310417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640347, 39.081707, 33.362900>,  <38.758667, 39.453659, 33.450367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640347, 39.081707, 33.362900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643838, 0.363182, -0.673477,
		0.705674, -0.058424, -0.706124,
		-0.295799, -0.929884, -0.218673,
		38.551605, 38.802742, 33.297298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086353, 39.383331, 32.884464>,  <38.758667, 39.453659, 33.450367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086353, 39.383331, 32.884464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317356, 39.612778, 32.652103>,  <39.455959, 39.750446, 32.512688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317356, 39.612778, 32.652103>,  <39.086353, 39.383331, 32.884464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317356, 39.612778, 32.652103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587002, -0.202756, -0.783785,
		-0.567375, 0.793633, 0.219622,
		0.577507, 0.573618, -0.580903,
		39.490608, 39.784863, 32.477833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512280, 39.693611, 32.493328>,  <39.086353, 39.383331, 32.884464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512280, 39.693611, 32.493328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880859, 39.748756, 32.348038>,  <39.102005, 39.781845, 32.260864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880859, 39.748756, 32.348038>,  <38.512280, 39.693611, 32.493328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880859, 39.748756, 32.348038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345209, -0.138370, -0.928270,
		-0.178235, 0.980738, -0.079908,
		0.921446, 0.137865, -0.363222,
		39.157291, 39.790115, 32.239071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592594, 40.248699, 31.948425>,  <38.512280, 39.693611, 32.493328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592594, 40.248699, 31.948425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882748, 39.980541, 31.885958>,  <39.056839, 39.819645, 31.848478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882748, 39.980541, 31.885958>,  <38.592594, 40.248699, 31.948425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882748, 39.980541, 31.885958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292697, -0.095063, -0.951468,
		0.623013, 0.735891, -0.265180,
		0.725385, -0.670394, -0.156168,
		39.100365, 39.779423, 31.839108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445221, 40.176117, 31.194923>,  <38.592594, 40.248699, 31.948425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445221, 40.176117, 31.194923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766220, 39.951508, 31.275616>,  <38.958820, 39.816742, 31.324032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766220, 39.951508, 31.275616>,  <38.445221, 40.176117, 31.194923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766220, 39.951508, 31.275616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091297, -0.218560, -0.971543,
		0.589635, 0.798075, -0.124127,
		0.802493, -0.561523, 0.201732,
		39.006969, 39.783051, 31.336136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628094, 39.721714, 30.684265>,  <38.445221, 40.176117, 31.194923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628094, 39.721714, 30.684265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940075, 39.534729, 30.850714>,  <39.127262, 39.422539, 30.950583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.940075, 39.534729, 30.850714>,  <38.628094, 39.721714, 30.684265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940075, 39.534729, 30.850714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065506, -0.600271, -0.797110,
		0.622401, 0.648966, -0.437562,
		0.779953, -0.467459, 0.416120,
		39.174061, 39.394493, 30.975550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009155, 39.487782, 30.145363>,  <38.628094, 39.721714, 30.684265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009155, 39.487782, 30.145363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181164, 39.279148, 30.440126>,  <39.284367, 39.153969, 30.616985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181164, 39.279148, 30.440126>,  <39.009155, 39.487782, 30.145363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181164, 39.279148, 30.440126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288832, -0.693856, -0.659652,
		0.855372, 0.496506, -0.147722,
		0.430018, -0.521581, 0.736911,
		39.310169, 39.122673, 30.661200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783474, 39.176453, 29.975899>,  <39.009155, 39.487782, 30.145363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783474, 39.176453, 29.975899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560741, 38.956062, 30.224531>,  <39.427101, 38.823826, 30.373711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560741, 38.956062, 30.224531>,  <39.783474, 39.176453, 29.975899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560741, 38.956062, 30.224531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152126, -0.803317, -0.575795,
		0.816578, -0.226061, 0.531128,
		-0.556829, -0.550980, 0.621581,
		39.393692, 38.790768, 30.411005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090500, 38.566620, 30.008259>,  <39.783474, 39.176453, 29.975899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090500, 38.566620, 30.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703983, 38.489990, 30.077047>,  <39.472073, 38.444012, 30.118320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703983, 38.489990, 30.077047>,  <40.090500, 38.566620, 30.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703983, 38.489990, 30.077047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070668, -0.839740, -0.538371,
		0.247547, -0.508073, 0.824975,
		-0.966295, -0.191571, 0.171970,
		39.414093, 38.432518, 30.128639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531456, 38.712582, 30.627384>,  <40.090500, 38.566620, 30.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531456, 38.712582, 30.627384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671013, 39.087437, 30.624739>,  <40.754745, 39.312351, 30.623152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671013, 39.087437, 30.624739>,  <40.531456, 38.712582, 30.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671013, 39.087437, 30.624739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163019, 0.053737, -0.985158,
		-0.922876, 0.344790, 0.171520,
		0.348889, 0.937140, -0.006615,
		40.775681, 39.368580, 30.622755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813507, 38.144867, 30.977631>,  <40.531456, 38.712582, 30.627384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813507, 38.144867, 30.977631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742565, 37.902905, 31.288149>,  <40.700001, 37.757729, 31.474459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742565, 37.902905, 31.288149>,  <40.813507, 38.144867, 30.977631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742565, 37.902905, 31.288149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928727, -0.363838, -0.071326,
		0.325591, 0.708316, 0.626322,
		-0.177358, -0.604905, 0.776295,
		40.689358, 37.721432, 31.521038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403156, 38.194160, 31.555727>,  <40.813507, 38.144867, 30.977631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403156, 38.194160, 31.555727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204453, 37.849564, 31.597782>,  <41.085228, 37.642803, 31.623014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204453, 37.849564, 31.597782>,  <41.403156, 38.194160, 31.555727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204453, 37.849564, 31.597782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857551, -0.468589, 0.212206,
		-0.133548, 0.195576, 0.971553,
		-0.496761, -0.861495, 0.105137,
		41.055424, 37.591114, 31.629324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517006, 37.999485, 32.175430>,  <41.403156, 38.194160, 31.555727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517006, 37.999485, 32.175430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435673, 37.662380, 31.976068>,  <41.386871, 37.460117, 31.856451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.435673, 37.662380, 31.976068>,  <41.517006, 37.999485, 32.175430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.435673, 37.662380, 31.976068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762295, -0.455718, 0.459595,
		-0.614462, -0.286481, 0.735096,
		-0.203331, -0.842763, -0.498404,
		41.374672, 37.409550, 31.826548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556656, 37.425323, 32.676239>,  <41.517006, 37.999485, 32.175430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556656, 37.425323, 32.676239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626228, 37.275383, 32.311989>,  <41.667973, 37.185417, 32.093441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626228, 37.275383, 32.311989>,  <41.556656, 37.425323, 32.676239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626228, 37.275383, 32.311989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806228, -0.476778, 0.350255,
		-0.565459, -0.795090, 0.219290,
		0.173932, -0.374853, -0.910622,
		41.678410, 37.162926, 32.038803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766415, 36.811386, 32.947632>,  <41.556656, 37.425323, 32.676239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766415, 36.811386, 32.947632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871944, 36.816765, 32.561840>,  <41.935261, 36.819992, 32.330364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871944, 36.816765, 32.561840>,  <41.766415, 36.811386, 32.947632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871944, 36.816765, 32.561840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758248, -0.620933, 0.198752,
		-0.596202, -0.783748, -0.174016,
		0.263824, 0.013450, -0.964477,
		41.951092, 36.820801, 32.272495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015255, 36.217735, 32.899994>,  <41.766415, 36.811386, 32.947632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015255, 36.217735, 32.899994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172848, 36.398643, 32.579937>,  <42.267403, 36.507191, 32.387901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172848, 36.398643, 32.579937>,  <42.015255, 36.217735, 32.899994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172848, 36.398643, 32.579937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819764, -0.566600, 0.083377,
		-0.415652, -0.688777, -0.593987,
		0.393981, 0.452273, -0.800143,
		42.291042, 36.534325, 32.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282349, 35.702206, 32.555458>,  <42.015255, 36.217735, 32.899994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282349, 35.702206, 32.555458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471169, 36.031200, 32.428539>,  <42.584461, 36.228596, 32.352386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471169, 36.031200, 32.428539>,  <42.282349, 35.702206, 32.555458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471169, 36.031200, 32.428539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843874, -0.525710, -0.107268,
		-0.255035, -0.217125, -0.942239,
		0.472054, 0.822488, -0.317300,
		42.612785, 36.277946, 32.333347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747753, 35.495621, 32.068691>,  <42.282349, 35.702206, 32.555458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747753, 35.495621, 32.068691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869225, 35.842407, 32.226753>,  <42.942108, 36.050480, 32.321590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869225, 35.842407, 32.226753>,  <42.747753, 35.495621, 32.068691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869225, 35.842407, 32.226753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875581, -0.417479, 0.243042,
		0.375679, 0.272185, -0.885878,
		0.303683, 0.866964, 0.395158,
		42.960331, 36.102497, 32.345303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428108, 35.483532, 31.969284>,  <42.747753, 35.495621, 32.068691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428108, 35.483532, 31.969284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400867, 35.781548, 32.234699>,  <43.384521, 35.960358, 32.393948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400867, 35.781548, 32.234699>,  <43.428108, 35.483532, 31.969284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400867, 35.781548, 32.234699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806095, -0.350789, 0.476612,
		0.587855, 0.567332, -0.576681,
		-0.068104, 0.745038, 0.663537,
		43.380436, 36.005058, 32.433762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117088, 35.667812, 32.203865>,  <43.428108, 35.483532, 31.969284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117088, 35.667812, 32.203865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920681, 35.858936, 32.495235>,  <43.802837, 35.973610, 32.670055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920681, 35.858936, 32.495235>,  <44.117088, 35.667812, 32.203865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920681, 35.858936, 32.495235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653003, -0.351585, 0.670802,
		0.576617, 0.805038, -0.139375,
		-0.491019, 0.477809, 0.728422,
		43.773376, 36.002277, 32.713760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592743, 35.862591, 32.598942>,  <44.117088, 35.667812, 32.203865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592743, 35.862591, 32.598942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282974, 35.862633, 32.852009>,  <44.097111, 35.862656, 33.003849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282974, 35.862633, 32.852009>,  <44.592743, 35.862591, 32.598942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282974, 35.862633, 32.852009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530795, -0.544051, 0.649820,
		0.344268, 0.839052, 0.421272,
		-0.774426, 0.000103, 0.632664,
		44.050648, 35.862663, 33.041809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837517, 36.028721, 33.327682>,  <44.592743, 35.862591, 32.598942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837517, 36.028721, 33.327682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480942, 35.862331, 33.399567>,  <44.266994, 35.762497, 33.442696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.480942, 35.862331, 33.399567>,  <44.837517, 36.028721, 33.327682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480942, 35.862331, 33.399567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407833, -0.563677, 0.718290,
		-0.197494, 0.713605, 0.672134,
		-0.891442, -0.415976, 0.179708,
		44.213509, 35.737537, 33.453480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815464, 36.005791, 34.092598>,  <44.837517, 36.028721, 33.327682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815464, 36.005791, 34.092598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552620, 35.741516, 33.947441>,  <44.394913, 35.582951, 33.860348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552620, 35.741516, 33.947441>,  <44.815464, 36.005791, 34.092598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552620, 35.741516, 33.947441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351727, -0.694546, 0.627610,
		-0.666704, 0.284769, 0.688776,
		-0.657110, -0.660691, -0.362895,
		44.355488, 35.543308, 33.838573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550793, 35.661053, 34.634521>,  <44.815464, 36.005791, 34.092598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550793, 35.661053, 34.634521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450848, 35.421139, 34.330463>,  <44.390881, 35.277191, 34.148029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450848, 35.421139, 34.330463>,  <44.550793, 35.661053, 34.634521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450848, 35.421139, 34.330463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382534, -0.782333, 0.491551,
		-0.889514, -0.167963, 0.424914,
		-0.249862, -0.599786, -0.760148,
		44.375889, 35.241203, 34.102421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150486, 35.056664, 34.921406>,  <44.550793, 35.661053, 34.634521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150486, 35.056664, 34.921406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243164, 34.923470, 34.555794>,  <44.298771, 34.843555, 34.336426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243164, 34.923470, 34.555794>,  <44.150486, 35.056664, 34.921406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243164, 34.923470, 34.555794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234621, -0.892728, 0.384695,
		-0.944072, -0.303580, -0.128714,
		0.231692, -0.332980, -0.914026,
		44.312672, 34.823574, 34.281586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708931, 34.469868, 34.825024>,  <44.150486, 35.056664, 34.921406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708931, 34.469868, 34.825024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017845, 34.425404, 34.574833>,  <44.203194, 34.398724, 34.424717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017845, 34.425404, 34.574833>,  <43.708931, 34.469868, 34.825024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017845, 34.425404, 34.574833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140823, -0.930122, 0.339180,
		-0.619475, -0.350024, -0.702662,
		0.772282, -0.111163, -0.625478,
		44.249531, 34.392056, 34.387188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579189, 33.834057, 34.528412>,  <43.708931, 34.469868, 34.825024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579189, 33.834057, 34.528412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967701, 33.927635, 34.511051>,  <44.200809, 33.983780, 34.500637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967701, 33.927635, 34.511051>,  <43.579189, 33.834057, 34.528412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967701, 33.927635, 34.511051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223973, -0.837391, 0.498611,
		0.080306, -0.494011, -0.865739,
		0.971281, 0.233944, -0.043398,
		44.259087, 33.997818, 34.498032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979053, 33.219402, 34.209778>,  <43.579189, 33.834057, 34.528412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979053, 33.219402, 34.209778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264420, 33.418289, 34.407288>,  <44.435638, 33.537621, 34.525795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.264420, 33.418289, 34.407288>,  <43.979053, 33.219402, 34.209778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.264420, 33.418289, 34.407288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283745, -0.849272, 0.445226,
		0.640723, -0.177525, -0.746967,
		0.713417, 0.497215, 0.493776,
		44.478443, 33.567455, 34.555420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479553, 32.676228, 34.283051>,  <43.979053, 33.219402, 34.209778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479553, 32.676228, 34.283051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565498, 32.966915, 34.544037>,  <44.617065, 33.141327, 34.700630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.565498, 32.966915, 34.544037>,  <44.479553, 32.676228, 34.283051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565498, 32.966915, 34.544037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326777, -0.683057, 0.653184,
		0.920354, 0.072867, -0.384238,
		0.214861, 0.726721, 0.652466,
		44.629955, 33.184933, 34.739777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101711, 32.444172, 34.535393>,  <44.479553, 32.676228, 34.283051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101711, 32.444172, 34.535393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960781, 32.703144, 34.805714>,  <44.876225, 32.858528, 34.967907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.960781, 32.703144, 34.805714>,  <45.101711, 32.444172, 34.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960781, 32.703144, 34.805714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131748, -0.680598, 0.720714,
		0.926558, 0.342960, 0.154494,
		-0.352324, 0.647430, 0.675798,
		44.855083, 32.897373, 35.008453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656677, 32.439705, 35.086597>,  <45.101711, 32.444172, 34.535393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656677, 32.439705, 35.086597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322460, 32.569702, 35.263798>,  <45.121929, 32.647701, 35.370117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322460, 32.569702, 35.263798>,  <45.656677, 32.439705, 35.086597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322460, 32.569702, 35.263798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176678, -0.604539, 0.776735,
		0.520239, 0.727265, 0.447702,
		-0.835546, 0.324989, 0.442996,
		45.071796, 32.667198, 35.396698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842373, 32.877686, 35.658585>,  <45.656677, 32.439705, 35.086597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842373, 32.877686, 35.658585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508633, 33.097839, 35.646412>,  <45.308388, 33.229931, 35.639107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.508633, 33.097839, 35.646412>,  <45.842373, 32.877686, 35.658585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508633, 33.097839, 35.646412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520714, -0.805076, -0.284093,
		-0.180860, -0.221189, 0.958314,
		-0.834354, 0.550388, -0.030430,
		45.258327, 33.262955, 35.637283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038059, 33.609482, 35.730724>,  <45.842373, 32.877686, 35.658585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038059, 33.609482, 35.730724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071857, 33.732006, 35.351456>,  <46.092136, 33.805519, 35.123894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.071857, 33.732006, 35.351456>,  <46.038059, 33.609482, 35.730724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.071857, 33.732006, 35.351456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726748, 0.632061, 0.268953,
		0.681688, -0.711808, -0.169206,
		0.084494, 0.306312, -0.948174,
		46.097206, 33.823898, 35.067005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752419, 33.924484, 35.506290>,  <46.038059, 33.609482, 35.730724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752419, 33.924484, 35.506290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559685, 34.173115, 35.259235>,  <46.444042, 34.322292, 35.111004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.559685, 34.173115, 35.259235>,  <46.752419, 33.924484, 35.506290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.559685, 34.173115, 35.259235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735375, 0.670133, 0.100721,
		0.476503, -0.405661, -0.779990,
		-0.481838, 0.621580, -0.617633,
		46.415134, 34.359589, 35.073944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.221565, 34.412182, 35.059296>,  <46.752419, 33.924484, 35.506290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.221565, 34.412182, 35.059296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865307, 34.583317, 35.120884>,  <46.651550, 34.685997, 35.157837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865307, 34.583317, 35.120884>,  <47.221565, 34.412182, 35.059296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865307, 34.583317, 35.120884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454696, 0.837184, 0.303932,
		0.001127, 0.340707, -0.940169,
		-0.890646, 0.427834, 0.153974,
		46.598114, 34.711666, 35.167076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904213, 34.634800, 35.113873>,  <47.221565, 34.412182, 35.059296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904213, 34.634800, 35.113873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.890961, 35.032108, 35.158253>,  <47.883007, 35.270493, 35.184879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.890961, 35.032108, 35.158253>,  <47.904213, 34.634800, 35.113873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.890961, 35.032108, 35.158253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071077, -0.113068, 0.991042,
		0.996920, 0.024950, 0.074345,
		-0.033133, 0.993274, 0.110947,
		47.881020, 35.330090, 35.191536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.629848, 33.801762, 46.300362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.263718, 33.906647, 46.178101>,  <34.044041, 33.969578, 46.104744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.263718, 33.906647, 46.178101>,  <34.629848, 33.801762, 46.300362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263718, 33.906647, 46.178101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357555, 0.179936, -0.916394,
		-0.185295, -0.948085, -0.258457,
		-0.915325, 0.262216, -0.305652,
		33.989120, 33.985310, 46.086407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582291, 33.513664, 45.658508>,  <34.629848, 33.801762, 46.300362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582291, 33.513664, 45.658508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301983, 33.798725, 45.645592>,  <34.133797, 33.969761, 45.637840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301983, 33.798725, 45.645592>,  <34.582291, 33.513664, 45.658508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301983, 33.798725, 45.645592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204039, 0.156846, -0.966316,
		-0.683582, -0.683758, -0.255323,
		-0.700773, 0.712653, -0.032296,
		34.091751, 34.012520, 45.635902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233688, 33.410160, 45.079388>,  <34.582291, 33.513664, 45.658508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233688, 33.410160, 45.079388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.130264, 33.787148, 45.164146>,  <34.068211, 34.013340, 45.215000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.130264, 33.787148, 45.164146>,  <34.233688, 33.410160, 45.079388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130264, 33.787148, 45.164146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192022, 0.265124, -0.944900,
		-0.946718, -0.203622, -0.249524,
		-0.258557, 0.942469, 0.211898,
		34.052696, 34.069889, 45.227715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684731, 33.719608, 44.499989>,  <34.233688, 33.410160, 45.079388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684731, 33.719608, 44.499989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874470, 34.010090, 44.699039>,  <33.988312, 34.184380, 44.818470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874470, 34.010090, 44.699039>,  <33.684731, 33.719608, 44.499989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874470, 34.010090, 44.699039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213644, 0.453405, -0.865321,
		-0.854022, 0.516774, 0.059921,
		0.474344, 0.726201, 0.497623,
		34.016773, 34.227951, 44.848328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550671, 34.208309, 44.068439>,  <33.684731, 33.719608, 44.499989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550671, 34.208309, 44.068439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.819897, 34.366196, 44.318619>,  <33.981430, 34.460930, 44.468727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.819897, 34.366196, 44.318619>,  <33.550671, 34.208309, 44.068439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819897, 34.366196, 44.318619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441113, 0.464542, -0.767867,
		-0.593639, 0.792715, 0.138549,
		0.673061, 0.394720, 0.625448,
		34.021816, 34.484612, 44.506252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501175, 34.898331, 44.034210>,  <33.550671, 34.208309, 44.068439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501175, 34.898331, 44.034210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874924, 34.844799, 44.166294>,  <34.099174, 34.812679, 44.245544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.874924, 34.844799, 44.166294>,  <33.501175, 34.898331, 44.034210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874924, 34.844799, 44.166294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356153, 0.377503, -0.854778,
		-0.010262, 0.916286, 0.400392,
		0.934371, -0.133829, 0.330212,
		34.155235, 34.804649, 44.265358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747292, 35.486046, 43.742989>,  <33.501175, 34.898331, 44.034210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747292, 35.486046, 43.742989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.051022, 35.245396, 43.842167>,  <34.233261, 35.101006, 43.901672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.051022, 35.245396, 43.842167>,  <33.747292, 35.486046, 43.742989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051022, 35.245396, 43.842167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437600, 0.190117, -0.878841,
		0.481593, 0.775825, 0.407632,
		0.759324, -0.601624, 0.247942,
		34.278820, 35.064907, 43.916550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291061, 35.929768, 43.588932>,  <33.747292, 35.486046, 43.742989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291061, 35.929768, 43.588932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.424431, 35.553082, 43.606792>,  <34.504452, 35.327068, 43.617508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.424431, 35.553082, 43.606792>,  <34.291061, 35.929768, 43.588932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424431, 35.553082, 43.606792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312201, 0.065599, -0.947749,
		0.889584, 0.329942, 0.315877,
		0.333424, -0.941719, 0.044653,
		34.524460, 35.270565, 43.620190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030807, 35.899113, 43.428055>,  <34.291061, 35.929768, 43.588932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030807, 35.899113, 43.428055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924728, 35.522236, 43.346127>,  <34.861080, 35.296112, 43.296970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924728, 35.522236, 43.346127>,  <35.030807, 35.899113, 43.428055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924728, 35.522236, 43.346127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467775, 0.060032, -0.881806,
		0.843123, -0.329663, 0.424812,
		-0.265196, -0.942188, -0.204823,
		34.845169, 35.239578, 43.284679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679588, 35.528866, 43.333233>,  <35.030807, 35.899113, 43.428055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679588, 35.528866, 43.333233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384647, 35.330379, 43.149895>,  <35.207684, 35.211288, 43.039894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.384647, 35.330379, 43.149895>,  <35.679588, 35.528866, 43.333233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384647, 35.330379, 43.149895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590690, -0.144469, -0.793861,
		0.327708, -0.856096, 0.399634,
		-0.737356, -0.496214, -0.458343,
		35.163441, 35.181515, 43.012390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035778, 34.892124, 43.098785>,  <35.679588, 35.528866, 43.333233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035778, 34.892124, 43.098785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716942, 34.943375, 42.862740>,  <35.525642, 34.974125, 42.721111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716942, 34.943375, 42.862740>,  <36.035778, 34.892124, 43.098785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716942, 34.943375, 42.862740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519796, -0.351800, -0.778492,
		-0.307346, -0.927265, 0.213817,
		-0.797089, 0.128125, -0.590113,
		35.477814, 34.981812, 42.685707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927433, 34.167381, 42.637962>,  <36.035778, 34.892124, 43.098785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927433, 34.167381, 42.637962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755486, 34.491352, 42.478348>,  <35.652317, 34.685734, 42.382580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.755486, 34.491352, 42.478348>,  <35.927433, 34.167381, 42.637962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755486, 34.491352, 42.478348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426833, -0.207154, -0.880285,
		-0.795630, -0.548726, -0.256656,
		-0.429868, 0.809930, -0.399032,
		35.626526, 34.734329, 42.358639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888988, 34.007710, 41.935646>,  <35.927433, 34.167381, 42.637962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888988, 34.007710, 41.935646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821178, 34.401428, 41.915974>,  <35.780495, 34.637661, 41.904171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.821178, 34.401428, 41.915974>,  <35.888988, 34.007710, 41.935646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821178, 34.401428, 41.915974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527711, 0.048514, -0.848037,
		-0.832336, -0.169714, -0.527650,
		-0.169523, 0.984298, -0.049180,
		35.770321, 34.696716, 41.901218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539200, 34.190689, 41.235580>,  <35.888988, 34.007710, 41.935646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539200, 34.190689, 41.235580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719757, 34.515057, 41.384521>,  <35.828091, 34.709679, 41.473885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.719757, 34.515057, 41.384521>,  <35.539200, 34.190689, 41.235580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719757, 34.515057, 41.384521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609259, 0.024788, -0.792583,
		-0.651954, 0.584628, -0.482873,
		0.451397, 0.810923, 0.372351,
		35.855175, 34.758335, 41.496227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614361, 34.643147, 40.765808>,  <35.539200, 34.190689, 41.235580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614361, 34.643147, 40.765808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896935, 34.757668, 41.024723>,  <36.066479, 34.826378, 41.180073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.896935, 34.757668, 41.024723>,  <35.614361, 34.643147, 40.765808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896935, 34.757668, 41.024723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668516, 0.030438, -0.743075,
		-0.232445, 0.957656, -0.169894,
		0.706439, 0.286301, 0.647284,
		36.108868, 34.843559, 41.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082207, 35.040943, 40.312866>,  <35.614361, 34.643147, 40.765808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082207, 35.040943, 40.312866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307945, 35.032749, 40.642979>,  <36.443390, 35.027832, 40.841045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.307945, 35.032749, 40.642979>,  <36.082207, 35.040943, 40.312866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307945, 35.032749, 40.642979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825223, 0.041499, -0.563280,
		-0.022711, 0.998929, 0.040323,
		0.564350, -0.020483, 0.825281,
		36.477249, 35.026604, 40.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554440, 35.487415, 40.148315>,  <36.082207, 35.040943, 40.312866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554440, 35.487415, 40.148315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717472, 35.266644, 40.439312>,  <36.815292, 35.134182, 40.613911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.717472, 35.266644, 40.439312>,  <36.554440, 35.487415, 40.148315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717472, 35.266644, 40.439312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844051, -0.076338, -0.530801,
		0.348499, 0.830391, 0.434741,
		0.407585, -0.551927, 0.727496,
		36.839748, 35.101067, 40.657562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267914, 35.768925, 40.320087>,  <36.554440, 35.487415, 40.148315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267914, 35.768925, 40.320087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255020, 35.391987, 40.453323>,  <37.247284, 35.165825, 40.533264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.255020, 35.391987, 40.453323>,  <37.267914, 35.768925, 40.320087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255020, 35.391987, 40.453323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922698, -0.156152, -0.352485,
		0.384175, 0.295984, 0.874530,
		-0.032229, -0.942343, 0.333094,
		37.245350, 35.109283, 40.553253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932625, 35.681831, 40.591621>,  <37.267914, 35.768925, 40.320087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932625, 35.681831, 40.591621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789082, 35.319885, 40.500019>,  <37.702953, 35.102718, 40.445057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789082, 35.319885, 40.500019>,  <37.932625, 35.681831, 40.591621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789082, 35.319885, 40.500019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910670, -0.285618, -0.298502,
		0.204696, -0.315666, 0.926528,
		-0.358860, -0.904863, -0.229002,
		37.681423, 35.048428, 40.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472115, 35.326675, 40.764668>,  <37.932625, 35.681831, 40.591621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472115, 35.326675, 40.764668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251293, 35.097301, 40.522537>,  <38.118801, 34.959679, 40.377258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251293, 35.097301, 40.522537>,  <38.472115, 35.326675, 40.764668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251293, 35.097301, 40.522537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833146, -0.408322, -0.373016,
		-0.033266, -0.710245, 0.703168,
		-0.552052, -0.573433, -0.605321,
		38.085678, 34.925270, 40.340942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650448, 34.699997, 40.896988>,  <38.472115, 35.326675, 40.764668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650448, 34.699997, 40.896988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499863, 34.697227, 40.526424>,  <38.409512, 34.695568, 40.304089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499863, 34.697227, 40.526424>,  <38.650448, 34.699997, 40.896988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499863, 34.697227, 40.526424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902437, -0.228846, -0.365017,
		-0.209477, -0.973438, 0.092401,
		-0.376467, -0.006923, -0.926404,
		38.386921, 34.695152, 40.248505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116787, 34.357807, 40.553078>,  <38.650448, 34.699997, 40.896988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116787, 34.357807, 40.553078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913376, 34.471935, 40.228119>,  <38.791328, 34.540413, 40.033142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.913376, 34.471935, 40.228119>,  <39.116787, 34.357807, 40.553078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913376, 34.471935, 40.228119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748664, -0.319544, -0.580856,
		-0.425325, -0.903596, -0.051108,
		-0.508528, 0.285316, -0.812400,
		38.760818, 34.557529, 39.984398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757973, 34.309212, 40.155407>,  <39.116787, 34.357807, 40.553078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757973, 34.309212, 40.155407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020073, 34.040691, 40.293972>,  <40.177334, 33.879581, 40.377110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.020073, 34.040691, 40.293972>,  <39.757973, 34.309212, 40.155407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020073, 34.040691, 40.293972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668903, -0.302532, 0.679001,
		-0.351012, -0.676634, -0.647269,
		0.655255, -0.671297, 0.346411,
		40.216648, 33.839302, 40.397896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415142, 33.688766, 40.286842>,  <39.757973, 34.309212, 40.155407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415142, 33.688766, 40.286842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.739979, 33.659946, 40.518471>,  <39.934879, 33.642654, 40.657448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.739979, 33.659946, 40.518471>,  <39.415142, 33.688766, 40.286842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739979, 33.659946, 40.518471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562690, -0.359549, 0.744382,
		0.154573, -0.930341, -0.332525,
		0.812088, -0.072047, 0.579070,
		39.983604, 33.638332, 40.692192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321732, 33.044987, 40.628498>,  <39.415142, 33.688766, 40.286842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321732, 33.044987, 40.628498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573528, 33.249413, 40.862610>,  <39.724606, 33.372066, 41.003078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.573528, 33.249413, 40.862610>,  <39.321732, 33.044987, 40.628498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573528, 33.249413, 40.862610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527700, -0.271698, 0.804806,
		0.570326, -0.815473, 0.098656,
		0.629493, 0.511062, 0.585282,
		39.762375, 33.402733, 41.038193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440773, 32.620926, 41.220058>,  <39.321732, 33.044987, 40.628498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440773, 32.620926, 41.220058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561455, 32.979076, 41.351070>,  <39.633865, 33.193966, 41.429676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561455, 32.979076, 41.351070>,  <39.440773, 32.620926, 41.220058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561455, 32.979076, 41.351070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439486, -0.174249, 0.881187,
		0.846064, -0.409806, 0.340932,
		0.301708, 0.895375, 0.327529,
		39.651966, 33.247688, 41.449329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986168, 32.614445, 41.831024>,  <39.440773, 32.620926, 41.220058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986168, 32.614445, 41.831024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780354, 32.957417, 41.834053>,  <39.656864, 33.163200, 41.835869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780354, 32.957417, 41.834053>,  <39.986168, 32.614445, 41.831024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780354, 32.957417, 41.834053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336703, -0.210157, 0.917859,
		0.788594, 0.469725, 0.396835,
		-0.514539, 0.857434, 0.007571,
		39.625992, 33.214645, 41.836323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008686, 32.811138, 42.529041>,  <39.986168, 32.614445, 41.831024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008686, 32.811138, 42.529041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.745136, 33.086498, 42.407722>,  <39.587006, 33.251713, 42.334930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.745136, 33.086498, 42.407722>,  <40.008686, 32.811138, 42.529041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745136, 33.086498, 42.407722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538906, -0.150639, 0.828787,
		0.524846, 0.709519, 0.470234,
		-0.658876, 0.688398, -0.303301,
		39.547474, 33.293018, 42.316730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998547, 33.309010, 43.025345>,  <40.008686, 32.811138, 42.529041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998547, 33.309010, 43.025345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646648, 33.317051, 42.835339>,  <39.435509, 33.321877, 42.721333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646648, 33.317051, 42.835339>,  <39.998547, 33.309010, 43.025345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646648, 33.317051, 42.835339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472469, -0.148561, 0.868736,
		-0.053102, 0.988699, 0.140196,
		-0.879746, 0.020107, -0.475019,
		39.382725, 33.323082, 42.692833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552689, 33.611877, 43.522766>,  <39.998547, 33.309010, 43.025345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552689, 33.611877, 43.522766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296276, 33.463821, 43.253819>,  <39.142429, 33.374989, 43.092449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.296276, 33.463821, 43.253819>,  <39.552689, 33.611877, 43.522766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296276, 33.463821, 43.253819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659818, -0.181748, 0.729115,
		-0.392077, 0.911023, -0.127722,
		-0.641027, -0.370142, -0.672368,
		39.103970, 33.352779, 43.052109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994488, 33.855816, 43.776623>,  <39.552689, 33.611877, 43.522766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994488, 33.855816, 43.776623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883373, 33.546997, 43.547962>,  <38.816704, 33.361706, 43.410767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.883373, 33.546997, 43.547962>,  <38.994488, 33.855816, 43.776623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883373, 33.546997, 43.547962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742607, -0.204914, 0.637609,
		-0.609401, 0.601630, -0.516402,
		-0.277787, -0.772044, -0.571650,
		38.800037, 33.315384, 43.376469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336037, 33.789017, 43.928848>,  <38.994488, 33.855816, 43.776623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336037, 33.789017, 43.928848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377232, 33.445992, 43.727261>,  <38.401947, 33.240177, 43.606308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.377232, 33.445992, 43.727261>,  <38.336037, 33.789017, 43.928848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377232, 33.445992, 43.727261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771151, -0.388860, 0.504098,
		-0.628268, 0.336721, -0.701355,
		0.102988, -0.857558, -0.503971,
		38.408127, 33.188725, 43.576069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624771, 33.479595, 43.700909>,  <38.336037, 33.789017, 43.928848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624771, 33.479595, 43.700909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.879230, 33.174850, 43.749706>,  <38.031906, 32.992004, 43.778984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.879230, 33.174850, 43.749706>,  <37.624771, 33.479595, 43.700909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879230, 33.174850, 43.749706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692516, -0.494074, 0.525655,
		-0.340206, -0.418873, -0.841906,
		0.636146, -0.761864, 0.121990,
		38.070076, 32.946293, 43.786304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198597, 32.931587, 43.642292>,  <37.624771, 33.479595, 43.700909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198597, 32.931587, 43.642292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529194, 32.770638, 43.799770>,  <37.727554, 32.674068, 43.894257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529194, 32.770638, 43.799770>,  <37.198597, 32.931587, 43.642292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529194, 32.770638, 43.799770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560844, -0.528243, 0.637506,
		-0.048547, -0.747700, -0.662260,
		0.826497, -0.402373, 0.393699,
		37.777142, 32.649925, 43.917881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981220, 32.242336, 43.800144>,  <37.198597, 32.931587, 43.642292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981220, 32.242336, 43.800144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291576, 32.341522, 44.032181>,  <37.477791, 32.401031, 44.171402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291576, 32.341522, 44.032181>,  <36.981220, 32.242336, 43.800144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291576, 32.341522, 44.032181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446775, -0.433224, 0.782757,
		0.445404, -0.866506, -0.225351,
		0.775891, 0.247962, 0.580093,
		37.524345, 32.415913, 44.206207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275219, 31.601471, 44.160049>,  <36.981220, 32.242336, 43.800144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275219, 31.601471, 44.160049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338348, 31.931797, 44.376610>,  <37.376225, 32.129993, 44.506546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338348, 31.931797, 44.376610>,  <37.275219, 31.601471, 44.160049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338348, 31.931797, 44.376610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615343, -0.346558, 0.707990,
		0.772299, -0.444886, 0.453466,
		0.157822, 0.825817, 0.541404,
		37.385696, 32.179543, 44.539032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441154, 31.285784, 44.851280>,  <37.275219, 31.601471, 44.160049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441154, 31.285784, 44.851280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356003, 31.675554, 44.880062>,  <37.304913, 31.909416, 44.897331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356003, 31.675554, 44.880062>,  <37.441154, 31.285784, 44.851280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356003, 31.675554, 44.880062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472853, -0.167188, 0.865135,
		0.855040, 0.150144, 0.496350,
		-0.212879, 0.974425, 0.071957,
		37.292141, 31.967882, 44.901649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272480, 31.386662, 45.520344>,  <37.441154, 31.285784, 44.851280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272480, 31.386662, 45.520344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123974, 31.736403, 45.395332>,  <37.034870, 31.946247, 45.320328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.123974, 31.736403, 45.395332>,  <37.272480, 31.386662, 45.520344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123974, 31.736403, 45.395332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699911, -0.042353, 0.712974,
		0.610153, 0.483442, 0.627692,
		-0.371266, 0.874351, -0.312525,
		37.012592, 31.998709, 45.301575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231308, 31.772467, 46.109077>,  <37.272480, 31.386662, 45.520344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231308, 31.772467, 46.109077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972149, 31.930544, 45.848602>,  <36.816654, 32.025391, 45.692318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972149, 31.930544, 45.848602>,  <37.231308, 31.772467, 46.109077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972149, 31.930544, 45.848602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656645, 0.143504, 0.740422,
		0.386059, 0.907319, 0.166526,
		-0.647901, 0.395195, -0.651187,
		36.777779, 32.049103, 45.653248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901482, 32.337097, 46.532719>,  <37.231308, 31.772467, 46.109077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901482, 32.337097, 46.532719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659439, 32.243572, 46.228302>,  <36.514214, 32.187458, 46.045650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659439, 32.243572, 46.228302>,  <36.901482, 32.337097, 46.532719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659439, 32.243572, 46.228302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790467, 0.062448, 0.609313,
		-0.094938, 0.970275, -0.222607,
		-0.605103, -0.233811, -0.761041,
		36.477909, 32.173428, 45.999989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.238106, 32.900890, 46.516720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097431, 32.587196, 46.312256>,  <36.013027, 32.398979, 46.189579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.097431, 32.587196, 46.312256>,  <36.238106, 32.900890, 46.516720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097431, 32.587196, 46.312256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782058, -0.053965, 0.620865,
		-0.514491, 0.618109, -0.594340,
		-0.351689, -0.784238, -0.511161,
		35.991924, 32.351925, 46.158909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521275, 32.977753, 46.411064>,  <36.238106, 32.900890, 46.516720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521275, 32.977753, 46.411064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569447, 32.584438, 46.356438>,  <35.598351, 32.348450, 46.323662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.569447, 32.584438, 46.356438>,  <35.521275, 32.977753, 46.411064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569447, 32.584438, 46.356438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763188, -0.179686, 0.620691,
		-0.634855, 0.029476, -0.772069,
		0.120434, -0.983282, -0.136571,
		35.605576, 32.289455, 46.315468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871975, 32.763538, 46.583263>,  <35.521275, 32.977753, 46.411064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871975, 32.763538, 46.583263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088017, 32.427151, 46.596268>,  <35.217640, 32.225319, 46.604069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088017, 32.427151, 46.596268>,  <34.871975, 32.763538, 46.583263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088017, 32.427151, 46.596268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538092, -0.315366, 0.781666,
		-0.647108, -0.439671, -0.622849,
		0.540101, -0.840972, 0.032508,
		35.250046, 32.174858, 46.606022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406109, 32.249710, 46.642117>,  <34.871975, 32.763538, 46.583263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406109, 32.249710, 46.642117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751637, 32.087784, 46.762074>,  <34.958954, 31.990627, 46.834049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.751637, 32.087784, 46.762074>,  <34.406109, 32.249710, 46.642117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751637, 32.087784, 46.762074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409270, -0.216738, 0.886297,
		-0.293794, -0.888338, -0.352904,
		0.863819, -0.404822, 0.299894,
		35.010784, 31.966339, 46.852043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284382, 31.542192, 46.898121>,  <34.406109, 32.249710, 46.642117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284382, 31.542192, 46.898121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622387, 31.650988, 47.082283>,  <34.825191, 31.716265, 47.192780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622387, 31.650988, 47.082283>,  <34.284382, 31.542192, 46.898121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622387, 31.650988, 47.082283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407926, -0.228828, 0.883874,
		0.345759, -0.934697, -0.082411,
		0.845013, 0.271990, 0.460407,
		34.875893, 31.732584, 47.220406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291958, 31.083466, 47.513058>,  <34.284382, 31.542192, 46.898121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291958, 31.083466, 47.513058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570324, 31.359365, 47.593002>,  <34.737343, 31.524904, 47.640968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.570324, 31.359365, 47.593002>,  <34.291958, 31.083466, 47.513058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570324, 31.359365, 47.593002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223740, -0.056204, 0.973027,
		0.682377, -0.721864, 0.115211,
		0.695918, 0.689749, 0.199862,
		34.779099, 31.566290, 47.652962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799618, 30.787714, 48.036022>,  <34.291958, 31.083466, 47.513058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799618, 30.787714, 48.036022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822269, 31.187069, 48.037704>,  <34.835861, 31.426682, 48.038712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.822269, 31.187069, 48.037704>,  <34.799618, 30.787714, 48.036022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822269, 31.187069, 48.037704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190885, 0.006696, 0.981590,
		0.979978, -0.056390, 0.190956,
		0.056630, 0.998386, 0.004202,
		34.839260, 31.486586, 48.038963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147430, 30.995344, 48.594963>,  <34.799618, 30.787714, 48.036022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147430, 30.995344, 48.594963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.956768, 31.334209, 48.501060>,  <34.842369, 31.537529, 48.444721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.956768, 31.334209, 48.501060>,  <35.147430, 30.995344, 48.594963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956768, 31.334209, 48.501060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117660, 0.203159, 0.972051,
		0.871178, 0.490959, 0.002839,
		-0.476660, 0.847163, -0.234754,
		34.813770, 31.588358, 48.430634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400795, 31.601128, 49.000050>,  <35.147430, 30.995344, 48.594963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400795, 31.601128, 49.000050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021217, 31.664566, 48.890984>,  <34.793468, 31.702629, 48.825542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021217, 31.664566, 48.890984>,  <35.400795, 31.601128, 49.000050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021217, 31.664566, 48.890984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257151, 0.111673, 0.959897,
		0.182685, 0.981008, -0.065189,
		-0.948947, 0.158595, -0.272668,
		34.736534, 31.712145, 48.809185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195236, 32.084740, 49.444756>,  <35.400795, 31.601128, 49.000050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195236, 32.084740, 49.444756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847652, 31.987259, 49.272465>,  <34.639103, 31.928770, 49.169090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847652, 31.987259, 49.272465>,  <35.195236, 32.084740, 49.444756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847652, 31.987259, 49.272465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459517, 0.074186, 0.885065,
		-0.183737, 0.967009, -0.176449,
		-0.868956, -0.243701, -0.430726,
		34.586964, 31.914148, 49.143246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627628, 32.574383, 49.724255>,  <35.195236, 32.084740, 49.444756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627628, 32.574383, 49.724255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439465, 32.247749, 49.590443>,  <34.326565, 32.051769, 49.510155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439465, 32.247749, 49.590443>,  <34.627628, 32.574383, 49.724255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439465, 32.247749, 49.590443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521399, -0.048644, 0.851925,
		-0.711937, 0.575180, -0.402881,
		-0.470413, -0.816579, -0.334530,
		34.298340, 32.002777, 49.490082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056183, 32.647694, 50.004246>,  <34.627628, 32.574383, 49.724255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056183, 32.647694, 50.004246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.026848, 32.267044, 49.884888>,  <34.009247, 32.038654, 49.813271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.026848, 32.267044, 49.884888>,  <34.056183, 32.647694, 50.004246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026848, 32.267044, 49.884888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607229, -0.194741, 0.770291,
		-0.791135, 0.237688, -0.563569,
		-0.073339, -0.951620, -0.298398,
		34.004845, 31.981558, 49.795368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327721, 32.446545, 50.130318>,  <34.056183, 32.647694, 50.004246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327721, 32.446545, 50.130318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564850, 32.125492, 50.103951>,  <33.707127, 31.932861, 50.088131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.564850, 32.125492, 50.103951>,  <33.327721, 32.446545, 50.130318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564850, 32.125492, 50.103951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410153, -0.371353, 0.832990,
		-0.693062, -0.466779, -0.549348,
		0.592824, -0.802630, -0.065920,
		33.742699, 31.884703, 50.084175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870186, 31.840227, 50.280499>,  <33.327721, 32.446545, 50.130318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870186, 31.840227, 50.280499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242844, 31.706377, 50.337170>,  <33.466438, 31.626066, 50.371174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.242844, 31.706377, 50.337170>,  <32.870186, 31.840227, 50.280499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242844, 31.706377, 50.337170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289449, -0.447650, 0.846067,
		-0.219693, -0.829238, -0.513906,
		0.931641, -0.334624, 0.141677,
		33.522335, 31.605989, 50.379673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706200, 31.272200, 50.404533>,  <32.870186, 31.840227, 50.280499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706200, 31.272200, 50.404533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075840, 31.307632, 50.553230>,  <33.297623, 31.328892, 50.642448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.075840, 31.307632, 50.553230>,  <32.706200, 31.272200, 50.404533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075840, 31.307632, 50.553230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234314, -0.637104, 0.734299,
		0.301882, -0.765671, -0.567992,
		0.924102, 0.088583, 0.371738,
		33.353069, 31.334208, 50.664753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790230, 30.704805, 50.653175>,  <32.706200, 31.272200, 50.404533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790230, 30.704805, 50.653175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092133, 30.896742, 50.832100>,  <33.273273, 31.011904, 50.939457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092133, 30.896742, 50.832100>,  <32.790230, 30.704805, 50.653175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092133, 30.896742, 50.832100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081578, -0.607931, 0.789788,
		0.650909, -0.632591, -0.419698,
		0.754760, 0.479842, 0.447314,
		33.318562, 31.040695, 50.966293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186024, 30.177229, 51.070988>,  <32.790230, 30.704805, 50.653175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186024, 30.177229, 51.070988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244083, 30.539108, 51.231213>,  <33.278919, 30.756237, 51.327347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244083, 30.539108, 51.231213>,  <33.186024, 30.177229, 51.070988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244083, 30.539108, 51.231213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164103, -0.377230, 0.911465,
		0.975706, -0.198030, 0.093710,
		0.145147, 0.904700, 0.400563,
		33.287628, 30.810518, 51.351383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508842, 30.002247, 51.626095>,  <33.186024, 30.177229, 51.070988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508842, 30.002247, 51.626095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352295, 30.367956, 51.667923>,  <33.258366, 30.587381, 51.693020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352295, 30.367956, 51.667923>,  <33.508842, 30.002247, 51.626095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352295, 30.367956, 51.667923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392871, -0.268762, 0.879443,
		0.832154, 0.303107, 0.464377,
		-0.391372, 0.914272, 0.104569,
		33.234882, 30.642239, 51.699295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637367, 30.273138, 52.406509>,  <33.508842, 30.002247, 51.626095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637367, 30.273138, 52.406509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.343967, 30.499901, 52.256527>,  <33.167927, 30.635960, 52.166538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.343967, 30.499901, 52.256527>,  <33.637367, 30.273138, 52.406509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343967, 30.499901, 52.256527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560638, -0.192756, 0.805314,
		0.384264, 0.800912, 0.459217,
		-0.733503, 0.566908, -0.374952,
		33.123917, 30.669973, 52.144043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406593, 30.645594, 53.010239>,  <33.637367, 30.273138, 52.406509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406593, 30.645594, 53.010239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116726, 30.630190, 52.735027>,  <32.942806, 30.620947, 52.569901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116726, 30.630190, 52.735027>,  <33.406593, 30.645594, 53.010239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116726, 30.630190, 52.735027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677838, -0.139948, 0.721769,
		-0.124084, 0.989410, 0.075311,
		-0.724664, -0.038512, -0.688025,
		32.899326, 30.618637, 52.528622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834373, 30.992893, 53.357235>,  <33.406593, 30.645594, 53.010239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834373, 30.992893, 53.357235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670441, 30.790222, 53.053837>,  <32.572083, 30.668619, 52.871796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.670441, 30.790222, 53.053837>,  <32.834373, 30.992893, 53.357235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670441, 30.790222, 53.053837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785350, -0.226958, 0.575948,
		-0.463966, 0.831727, -0.304903,
		-0.409832, -0.506675, -0.758497,
		32.547493, 30.638220, 52.826286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170448, 31.215828, 53.291584>,  <32.834373, 30.992893, 53.357235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170448, 31.215828, 53.291584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178886, 30.844326, 53.143547>,  <32.183949, 30.621426, 53.054726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178886, 30.844326, 53.143547>,  <32.170448, 31.215828, 53.291584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178886, 30.844326, 53.143547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788235, -0.243166, 0.565293,
		-0.615013, 0.279796, -0.737206,
		0.021097, -0.928754, -0.370095,
		32.185215, 30.565701, 53.032520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449757, 31.164371, 53.117340>,  <32.170448, 31.215828, 53.291584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449757, 31.164371, 53.117340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596966, 30.798639, 53.184933>,  <31.685291, 30.579199, 53.225491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.596966, 30.798639, 53.184933>,  <31.449757, 31.164371, 53.117340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596966, 30.798639, 53.184933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660435, -0.129120, 0.739699,
		-0.654511, -0.383829, -0.651376,
		0.368024, -0.914332, 0.168984,
		31.707373, 30.524340, 53.235626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664318, 31.174089, 53.068230>,  <31.449757, 31.164371, 53.117340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664318, 31.174089, 53.068230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282473, 31.097843, 52.976685>,  <30.053366, 31.052095, 52.921757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.282473, 31.097843, 52.976685>,  <30.664318, 31.174089, 53.068230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282473, 31.097843, 52.976685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224207, 0.045930, -0.973459,
		0.196067, -0.980590, -0.001108,
		-0.954615, -0.190615, -0.228860,
		29.996088, 31.040659, 52.908028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615976, 30.534040, 52.689442>,  <30.664318, 31.174089, 53.068230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615976, 30.534040, 52.689442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.304888, 30.742531, 52.548889>,  <30.118235, 30.867624, 52.464558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.304888, 30.742531, 52.548889>,  <30.615976, 30.534040, 52.689442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304888, 30.742531, 52.548889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236825, -0.274846, -0.931866,
		-0.582289, -0.807950, 0.090315,
		-0.777723, 0.521226, -0.351383,
		30.071571, 30.898899, 52.443474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528675, 30.168043, 52.062645>,  <30.615976, 30.534040, 52.689442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528675, 30.168043, 52.062645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355572, 30.528305, 52.046940>,  <30.251709, 30.744463, 52.037518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355572, 30.528305, 52.046940>,  <30.528675, 30.168043, 52.062645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355572, 30.528305, 52.046940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233599, 0.069968, -0.969812,
		-0.870719, -0.428865, -0.240671,
		-0.432758, 0.900655, -0.039260,
		30.225744, 30.798502, 52.035160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164526, 30.038692, 51.493553>,  <30.528675, 30.168043, 52.062645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164526, 30.038692, 51.493553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192541, 30.435009, 51.539898>,  <30.209351, 30.672800, 51.567707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192541, 30.435009, 51.539898>,  <30.164526, 30.038692, 51.493553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192541, 30.435009, 51.539898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303537, 0.089477, -0.948609,
		-0.950242, 0.101606, -0.294476,
		0.070036, 0.990793, 0.115866,
		30.213552, 30.732246, 51.574657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811806, 30.382765, 50.902557>,  <30.164526, 30.038692, 51.493553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811806, 30.382765, 50.902557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045916, 30.671274, 51.050728>,  <30.186382, 30.844379, 51.139629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.045916, 30.671274, 51.050728>,  <29.811806, 30.382765, 50.902557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045916, 30.671274, 51.050728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216304, 0.301406, -0.928637,
		-0.781452, 0.623632, 0.020391,
		0.585274, 0.721275, 0.370428,
		30.221498, 30.887657, 51.161858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686632, 30.931072, 50.478943>,  <29.811806, 30.382765, 50.902557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686632, 30.931072, 50.478943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.029303, 31.046671, 50.649864>,  <30.234905, 31.116030, 50.752419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.029303, 31.046671, 50.649864>,  <29.686632, 30.931072, 50.478943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029303, 31.046671, 50.649864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282172, 0.430912, -0.857143,
		-0.431841, 0.854866, 0.287605,
		0.856675, 0.288995, 0.427305,
		30.286304, 31.133369, 50.778057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760969, 31.614849, 50.322483>,  <29.686632, 30.931072, 50.478943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760969, 31.614849, 50.322483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.139830, 31.557682, 50.437363>,  <30.367146, 31.523382, 50.506290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.139830, 31.557682, 50.437363>,  <29.760969, 31.614849, 50.322483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139830, 31.557682, 50.437363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318998, 0.514121, -0.796191,
		-0.033864, 0.845727, 0.532540,
		0.947150, -0.142917, 0.287195,
		30.423975, 31.514807, 50.523521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111977, 32.264698, 50.140774>,  <29.760969, 31.614849, 50.322483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111977, 32.264698, 50.140774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391491, 31.978733, 50.150543>,  <30.559198, 31.807154, 50.156406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.391491, 31.978733, 50.150543>,  <30.111977, 32.264698, 50.140774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391491, 31.978733, 50.150543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528466, 0.492925, -0.691194,
		0.482104, 0.495905, 0.722256,
		0.698785, -0.714915, 0.024428,
		30.601126, 31.764259, 50.157871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757444, 32.672676, 50.257202>,  <30.111977, 32.264698, 50.140774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757444, 32.672676, 50.257202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836737, 32.315365, 50.095825>,  <30.884312, 32.100979, 49.999001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.836737, 32.315365, 50.095825>,  <30.757444, 32.672676, 50.257202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836737, 32.315365, 50.095825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586812, 0.437852, -0.681130,
		0.785084, -0.101724, 0.610980,
		0.198232, -0.893274, -0.403443,
		30.896206, 32.047382, 49.974792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567650, 32.481686, 50.231091>,  <30.757444, 32.672676, 50.257202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567650, 32.481686, 50.231091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384708, 32.268833, 49.946087>,  <31.274944, 32.141121, 49.775085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384708, 32.268833, 49.946087>,  <31.567650, 32.481686, 50.231091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384708, 32.268833, 49.946087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679606, 0.307605, -0.665969,
		0.573554, -0.788805, 0.220957,
		-0.457352, -0.532133, -0.712505,
		31.247503, 32.109192, 49.732334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084972, 32.251869, 49.849785>,  <31.567650, 32.481686, 50.231091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084972, 32.251869, 49.849785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770609, 32.188541, 49.610691>,  <31.581991, 32.150543, 49.467236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.770609, 32.188541, 49.610691>,  <32.084972, 32.251869, 49.849785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770609, 32.188541, 49.610691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553252, 0.251669, -0.794088,
		0.276157, -0.954775, -0.110193,
		-0.785907, -0.158329, -0.597731,
		31.534836, 32.141045, 49.431374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248123, 31.766100, 49.311016>,  <32.084972, 32.251869, 49.849785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248123, 31.766100, 49.311016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942137, 31.960476, 49.141933>,  <31.758543, 32.077103, 49.040485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942137, 31.960476, 49.141933>,  <32.248123, 31.766100, 49.311016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942137, 31.960476, 49.141933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602821, 0.309120, -0.735562,
		-0.226773, -0.817500, -0.529404,
		-0.764971, 0.485942, -0.422706,
		31.712645, 32.106258, 49.015121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300842, 31.530310, 48.607773>,  <32.248123, 31.766100, 49.311016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300842, 31.530310, 48.607773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058544, 31.848568, 48.606297>,  <31.913164, 32.039524, 48.605412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058544, 31.848568, 48.606297>,  <32.300842, 31.530310, 48.607773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058544, 31.848568, 48.606297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507782, 0.383008, -0.771662,
		-0.612556, -0.469308, -0.636022,
		-0.605749, 0.795647, -0.003693,
		31.876820, 32.087261, 48.605190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186356, 31.674902, 47.921234>,  <32.300842, 31.530310, 48.607773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186356, 31.674902, 47.921234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.102100, 32.028000, 48.089230>,  <32.051548, 32.239857, 48.190029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.102100, 32.028000, 48.089230>,  <32.186356, 31.674902, 47.921234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102100, 32.028000, 48.089230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415585, 0.469737, -0.778869,
		-0.884828, 0.010482, -0.465800,
		-0.210639, 0.882744, 0.419992,
		32.038910, 32.292824, 48.215229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965612, 32.061958, 47.311436>,  <32.186356, 31.674902, 47.921234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965612, 32.061958, 47.311436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058979, 32.326145, 47.596897>,  <32.114998, 32.484657, 47.768173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058979, 32.326145, 47.596897>,  <31.965612, 32.061958, 47.311436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058979, 32.326145, 47.596897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458941, 0.572206, -0.679672,
		-0.857257, 0.486172, -0.169552,
		0.233418, 0.660467, 0.713652,
		32.129005, 32.524284, 47.810993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905167, 32.682167, 46.987862>,  <31.965612, 32.061958, 47.311436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905167, 32.682167, 46.987862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.144482, 32.790100, 47.289654>,  <32.288071, 32.854858, 47.470730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.144482, 32.790100, 47.289654>,  <31.905167, 32.682167, 46.987862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144482, 32.790100, 47.289654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629174, 0.424864, -0.650868,
		-0.496178, 0.864107, 0.084419,
		0.598287, 0.269832, 0.754482,
		32.323967, 32.871048, 47.515999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997110, 33.351910, 46.915127>,  <31.905167, 32.682167, 46.987862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997110, 33.351910, 46.915127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304348, 33.238350, 47.144711>,  <32.488689, 33.170216, 47.282463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304348, 33.238350, 47.144711>,  <31.997110, 33.351910, 46.915127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304348, 33.238350, 47.144711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625059, 0.527049, -0.575778,
		-0.139044, 0.801012, 0.582277,
		0.768094, -0.283899, 0.573963,
		32.534775, 33.153179, 47.316898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286930, 33.982178, 47.017170>,  <31.997110, 33.351910, 46.915127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286930, 33.982178, 47.017170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.573914, 33.717617, 47.104633>,  <32.746101, 33.558880, 47.157112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.573914, 33.717617, 47.104633>,  <32.286930, 33.982178, 47.017170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573914, 33.717617, 47.104633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624468, 0.471553, -0.622637,
		0.308702, 0.583259, 0.751340,
		0.717456, -0.661397, 0.218658,
		32.789150, 33.519199, 47.170231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853516, 34.394310, 47.128204>,  <32.286930, 33.982178, 47.017170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853516, 34.394310, 47.128204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006374, 34.032764, 47.051266>,  <33.098091, 33.815838, 47.005100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006374, 34.032764, 47.051266>,  <32.853516, 34.394310, 47.128204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006374, 34.032764, 47.051266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564315, 0.393085, -0.725970,
		0.731785, 0.168885, 0.660279,
		0.382152, -0.903859, -0.192349,
		33.121021, 33.761608, 46.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545986, 34.481987, 47.086697>,  <32.853516, 34.394310, 47.128204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545986, 34.481987, 47.086697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530987, 34.128067, 46.900913>,  <33.521988, 33.915714, 46.789444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530987, 34.128067, 46.900913>,  <33.545986, 34.481987, 47.086697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530987, 34.128067, 46.900913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368351, 0.419818, -0.829500,
		0.928930, -0.202192, 0.310173,
		-0.037503, -0.884800, -0.464459,
		33.519737, 33.862625, 46.761574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208595, 34.308334, 46.903801>,  <33.545986, 34.481987, 47.086697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208595, 34.308334, 46.903801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971855, 34.117092, 46.644226>,  <33.829811, 34.002346, 46.488480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.971855, 34.117092, 46.644226>,  <34.208595, 34.308334, 46.903801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971855, 34.117092, 46.644226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582230, 0.303183, -0.754379,
		0.557421, -0.824315, 0.098927,
		-0.591853, -0.478106, -0.648941,
		33.794300, 33.973660, 46.449543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.414021, 37.465984, 33.314274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.483906, 37.852928, 33.240845>,  <38.525837, 38.085094, 33.196789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.483906, 37.852928, 33.240845>,  <38.414021, 37.465984, 33.314274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483906, 37.852928, 33.240845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907129, -0.085644, 0.412046,
		0.382873, -0.238513, -0.892479,
		0.174714, 0.967355, -0.183572,
		38.536320, 38.143135, 33.185772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024685, 37.510948, 32.992504>,  <38.414021, 37.465984, 33.314274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024685, 37.510948, 32.992504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939865, 37.851254, 33.184856>,  <38.888973, 38.055435, 33.300266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939865, 37.851254, 33.184856>,  <39.024685, 37.510948, 32.992504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939865, 37.851254, 33.184856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829451, -0.103521, 0.548904,
		0.516765, 0.515260, -0.683711,
		-0.212050, 0.850759, 0.480879,
		38.876251, 38.106480, 33.329121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689121, 37.891869, 33.021107>,  <39.024685, 37.510948, 32.992504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689121, 37.891869, 33.021107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482590, 38.036514, 33.331627>,  <39.358673, 38.123302, 33.517941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482590, 38.036514, 33.331627>,  <39.689121, 37.891869, 33.021107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482590, 38.036514, 33.331627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798285, -0.124988, 0.589169,
		0.310082, 0.923911, -0.224139,
		-0.516325, 0.361618, 0.776300,
		39.327694, 38.145000, 33.564518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194492, 38.293133, 33.371132>,  <39.689121, 37.891869, 33.021107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194492, 38.293133, 33.371132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917858, 38.252636, 33.657196>,  <39.751877, 38.228336, 33.828835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.917858, 38.252636, 33.657196>,  <40.194492, 38.293133, 33.371132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917858, 38.252636, 33.657196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719172, -0.004531, 0.694817,
		-0.067106, 0.994851, 0.075946,
		-0.691584, -0.101244, 0.715165,
		39.710384, 38.222263, 33.871746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273201, 38.895298, 33.877541>,  <40.194492, 38.293133, 33.371132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273201, 38.895298, 33.877541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096706, 38.563522, 34.014557>,  <39.990810, 38.364456, 34.096767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.096706, 38.563522, 34.014557>,  <40.273201, 38.895298, 33.877541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096706, 38.563522, 34.014557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604987, 0.006974, 0.796205,
		-0.662795, 0.558548, 0.498725,
		-0.441241, -0.829443, 0.342536,
		39.964333, 38.314690, 34.117317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311462, 38.946762, 34.619171>,  <40.273201, 38.895298, 33.877541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311462, 38.946762, 34.619171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216084, 38.562359, 34.563160>,  <40.158855, 38.331718, 34.529552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.216084, 38.562359, 34.563160>,  <40.311462, 38.946762, 34.619171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216084, 38.562359, 34.563160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492183, -0.243882, 0.835630,
		-0.837197, 0.130331, 0.531144,
		-0.238445, -0.961007, -0.140030,
		40.144550, 38.274055, 34.521152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370121, 38.637321, 35.293434>,  <40.311462, 38.946762, 34.619171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370121, 38.637321, 35.293434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387440, 38.329674, 35.038380>,  <40.397831, 38.145084, 34.885349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387440, 38.329674, 35.038380>,  <40.370121, 38.637321, 35.293434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387440, 38.329674, 35.038380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471289, -0.547031, 0.691841,
		-0.880916, -0.330465, 0.338793,
		0.043299, -0.769123, -0.637633,
		40.400429, 38.098938, 34.847092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160988, 37.960083, 35.735443>,  <40.370121, 38.637321, 35.293434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160988, 37.960083, 35.735443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393295, 37.853214, 35.427853>,  <40.532681, 37.789093, 35.243298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393295, 37.853214, 35.427853>,  <40.160988, 37.960083, 35.735443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393295, 37.853214, 35.427853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560201, -0.554211, 0.615650,
		-0.590658, -0.788333, -0.172201,
		0.580773, -0.267171, -0.768975,
		40.567528, 37.773064, 35.197159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159161, 37.263031, 35.741211>,  <40.160988, 37.960083, 35.735443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159161, 37.263031, 35.741211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487259, 37.346081, 35.528015>,  <40.684120, 37.395908, 35.400097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487259, 37.346081, 35.528015>,  <40.159161, 37.263031, 35.741211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487259, 37.346081, 35.528015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523593, -0.647694, 0.553481,
		-0.230302, -0.733065, -0.639981,
		0.820250, 0.207622, -0.532994,
		40.733334, 37.408367, 35.368118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319820, 36.529827, 35.595055>,  <40.159161, 37.263031, 35.741211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319820, 36.529827, 35.595055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642937, 36.745083, 35.498825>,  <40.836807, 36.874237, 35.441090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642937, 36.745083, 35.498825>,  <40.319820, 36.529827, 35.595055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642937, 36.745083, 35.498825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589013, -0.752876, 0.293668,
		-0.023086, -0.378923, -0.925140,
		0.807794, 0.538140, -0.240571,
		40.885273, 36.906525, 35.426655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851761, 36.071819, 35.135735>,  <40.319820, 36.529827, 35.595055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851761, 36.071819, 35.135735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074028, 36.351143, 35.316227>,  <41.207386, 36.518738, 35.424522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.074028, 36.351143, 35.316227>,  <40.851761, 36.071819, 35.135735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074028, 36.351143, 35.316227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632799, -0.707239, 0.315244,
		0.539263, 0.110367, -0.834874,
		0.555663, 0.698307, 0.451228,
		41.240726, 36.560635, 35.451595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486797, 35.907131, 34.902897>,  <40.851761, 36.071819, 35.135735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486797, 35.907131, 34.902897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527878, 36.138550, 35.226562>,  <41.552525, 36.277401, 35.420761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527878, 36.138550, 35.226562>,  <41.486797, 35.907131, 34.902897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527878, 36.138550, 35.226562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476033, -0.742848, 0.470712,
		0.873410, 0.336847, -0.351694,
		0.102698, 0.578543, 0.809161,
		41.558685, 36.312111, 35.469311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186970, 35.892555, 35.075123>,  <41.486797, 35.907131, 34.902897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186970, 35.892555, 35.075123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999382, 36.003017, 35.410694>,  <41.886829, 36.069294, 35.612038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999382, 36.003017, 35.410694>,  <42.186970, 35.892555, 35.075123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999382, 36.003017, 35.410694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424442, -0.762525, 0.488267,
		0.774542, 0.585061, 0.240392,
		-0.468971, 0.276151, 0.838932,
		41.858692, 36.085861, 35.662373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764874, 35.991833, 35.469627>,  <42.186970, 35.892555, 35.075123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764874, 35.991833, 35.469627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457829, 35.976833, 35.725555>,  <42.273602, 35.967834, 35.879112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457829, 35.976833, 35.725555>,  <42.764874, 35.991833, 35.469627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457829, 35.976833, 35.725555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553137, -0.543017, 0.631800,
		0.323742, 0.838884, 0.437567,
		-0.767613, -0.037494, 0.639816,
		42.227543, 35.965584, 35.917500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029408, 36.251682, 36.119461>,  <42.764874, 35.991833, 35.469627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029408, 36.251682, 36.119461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705971, 36.025074, 36.183002>,  <42.511909, 35.889107, 36.221127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.705971, 36.025074, 36.183002>,  <43.029408, 36.251682, 36.119461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705971, 36.025074, 36.183002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527605, -0.578659, 0.621922,
		-0.260413, 0.586691, 0.766798,
		-0.808590, -0.566523, 0.158850,
		42.463394, 35.855118, 36.230659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041313, 36.045521, 36.784389>,  <43.029408, 36.251682, 36.119461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041313, 36.045521, 36.784389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778652, 35.778332, 36.644321>,  <42.621056, 35.618019, 36.560280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778652, 35.778332, 36.644321>,  <43.041313, 36.045521, 36.784389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778652, 35.778332, 36.644321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384434, -0.695905, 0.606570,
		-0.648856, 0.263690, 0.713760,
		-0.656655, -0.667970, -0.350171,
		42.581657, 35.577942, 36.539268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815819, 35.632683, 37.414505>,  <43.041313, 36.045521, 36.784389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815819, 35.632683, 37.414505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.761948, 35.421490, 37.079102>,  <42.729626, 35.294773, 36.877861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.761948, 35.421490, 37.079102>,  <42.815819, 35.632683, 37.414505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761948, 35.421490, 37.079102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337005, -0.820180, 0.462312,
		-0.931820, -0.220316, 0.288396,
		-0.134682, -0.527983, -0.838508,
		42.721542, 35.263096, 36.827549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351711, 35.092163, 37.461468>,  <42.815819, 35.632683, 37.414505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351711, 35.092163, 37.461468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576519, 34.983490, 37.148975>,  <42.711403, 34.918285, 36.961479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.576519, 34.983490, 37.148975>,  <42.351711, 35.092163, 37.461468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576519, 34.983490, 37.148975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200359, -0.871665, 0.447276,
		-0.802487, -0.407906, -0.435461,
		0.562023, -0.271684, -0.781228,
		42.745125, 34.901985, 36.914608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337509, 34.303516, 37.482124>,  <42.351711, 35.092163, 37.461468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337509, 34.303516, 37.482124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629448, 34.386219, 37.221489>,  <42.804611, 34.435841, 37.065109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629448, 34.386219, 37.221489>,  <42.337509, 34.303516, 37.482124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629448, 34.386219, 37.221489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421312, -0.886670, 0.190561,
		-0.538343, -0.413603, -0.734248,
		0.729852, 0.206760, -0.651588,
		42.848404, 34.448246, 37.026012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296276, 33.792568, 36.949318>,  <42.337509, 34.303516, 37.482124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296276, 33.792568, 36.949318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667702, 33.940037, 36.966560>,  <42.890556, 34.028519, 36.976906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.667702, 33.940037, 36.966560>,  <42.296276, 33.792568, 36.949318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667702, 33.940037, 36.966560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362756, -0.925946, 0.105037,
		0.078642, -0.081895, -0.993533,
		0.928560, 0.368671, 0.043110,
		42.946270, 34.050636, 36.979492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618500, 33.423759, 36.506283>,  <42.296276, 33.792568, 36.949318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618500, 33.423759, 36.506283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929371, 33.579060, 36.704372>,  <43.115894, 33.672241, 36.823227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.929371, 33.579060, 36.704372>,  <42.618500, 33.423759, 36.506283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929371, 33.579060, 36.704372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435730, -0.899817, 0.021633,
		0.454014, 0.198973, -0.868493,
		0.777181, 0.388250, 0.495228,
		43.162525, 33.695534, 36.852940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287228, 33.193577, 36.124367>,  <42.618500, 33.423759, 36.506283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287228, 33.193577, 36.124367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353191, 33.263916, 36.512569>,  <43.392769, 33.306118, 36.745491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353191, 33.263916, 36.512569>,  <43.287228, 33.193577, 36.124367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353191, 33.263916, 36.512569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498858, -0.863710, 0.071730,
		0.850850, 0.472317, -0.230153,
		0.164906, 0.175845, 0.970507,
		43.402664, 33.316669, 36.803722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014877, 33.093250, 35.933598>,  <43.287228, 33.193577, 36.124367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014877, 33.093250, 35.933598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358669, 32.977116, 35.765316>,  <44.564945, 32.907436, 35.664349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358669, 32.977116, 35.765316>,  <44.014877, 33.093250, 35.933598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358669, 32.977116, 35.765316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075493, 0.886110, -0.457286,
		0.505556, 0.361270, 0.783516,
		0.859485, -0.290334, -0.420705,
		44.616516, 32.890015, 35.639103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471855, 33.712559, 35.959320>,  <44.014877, 33.093250, 35.933598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471855, 33.712559, 35.959320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602074, 33.469398, 35.669640>,  <44.680206, 33.323502, 35.495831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602074, 33.469398, 35.669640>,  <44.471855, 33.712559, 35.959320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602074, 33.469398, 35.669640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134215, 0.787882, -0.601023,
		0.935952, 0.098461, 0.338081,
		0.325545, -0.607905, -0.724205,
		44.699738, 33.287025, 35.452377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087135, 33.996593, 35.640938>,  <44.471855, 33.712559, 35.959320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087135, 33.996593, 35.640938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926373, 33.776585, 35.348106>,  <44.829914, 33.644577, 35.172405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.926373, 33.776585, 35.348106>,  <45.087135, 33.996593, 35.640938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.926373, 33.776585, 35.348106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005783, 0.797953, -0.602692,
		0.915662, -0.246460, -0.317522,
		-0.401907, -0.550026, -0.732081,
		44.805801, 33.611576, 35.128483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415932, 34.268444, 35.108185>,  <45.087135, 33.996593, 35.640938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415932, 34.268444, 35.108185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113789, 34.055805, 34.954910>,  <44.932503, 33.928223, 34.862946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113789, 34.055805, 34.954910>,  <45.415932, 34.268444, 35.108185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113789, 34.055805, 34.954910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054779, 0.633919, -0.771457,
		0.653025, -0.561731, -0.507954,
		-0.755353, -0.531606, -0.383194,
		44.887180, 33.896324, 34.839954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528053, 34.298687, 34.343704>,  <45.415932, 34.268444, 35.108185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528053, 34.298687, 34.343704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141720, 34.222637, 34.414143>,  <44.909920, 34.177006, 34.456406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141720, 34.222637, 34.414143>,  <45.528053, 34.298687, 34.343704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141720, 34.222637, 34.414143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259096, 0.695039, -0.670663,
		0.005121, -0.693377, -0.720557,
		-0.965838, -0.190128, 0.176092,
		44.851967, 34.165600, 34.466969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266670, 34.050312, 33.678101>,  <45.528053, 34.298687, 34.343704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266670, 34.050312, 33.678101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958225, 34.187233, 33.892841>,  <44.773159, 34.269386, 34.021687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.958225, 34.187233, 33.892841>,  <45.266670, 34.050312, 33.678101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958225, 34.187233, 33.892841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214177, 0.654591, -0.725010,
		-0.599594, -0.674046, -0.431450,
		-0.771113, 0.342305, 0.536854,
		44.726891, 34.289925, 34.053898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822487, 34.348682, 33.216789>,  <45.266670, 34.050312, 33.678101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822487, 34.348682, 33.216789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681293, 34.514088, 33.552505>,  <44.596577, 34.613331, 33.753937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.681293, 34.514088, 33.552505>,  <44.822487, 34.348682, 33.216789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681293, 34.514088, 33.552505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369472, 0.762522, -0.531084,
		-0.859590, -0.497557, -0.116374,
		-0.352982, 0.413517, 0.839290,
		44.575397, 34.638142, 33.804291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.047276, 34.616768, 32.949150>,  <44.822487, 34.348682, 33.216789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.047276, 34.616768, 32.949150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.150356, 34.786949, 33.296154>,  <44.212204, 34.889057, 33.504356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.150356, 34.786949, 33.296154>,  <44.047276, 34.616768, 32.949150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150356, 34.786949, 33.296154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470524, 0.839444, -0.271919,
		-0.843917, -0.338111, 0.416514,
		0.257702, 0.425457, 0.867511,
		44.227669, 34.914585, 33.556408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473209, 34.643917, 33.398918>,  <44.047276, 34.616768, 32.949150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473209, 34.643917, 33.398918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739742, 34.919098, 33.513962>,  <43.899662, 35.084206, 33.582989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739742, 34.919098, 33.513962>,  <43.473209, 34.643917, 33.398918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739742, 34.919098, 33.513962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669150, 0.721882, -0.176422,
		-0.328993, -0.074900, 0.941357,
		0.666335, 0.687951, 0.287613,
		43.939644, 35.125484, 33.600246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063904, 35.232468, 33.682796>,  <43.473209, 34.643917, 33.398918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063904, 35.232468, 33.682796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.427044, 35.385983, 33.615261>,  <43.644928, 35.478092, 33.574738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.427044, 35.385983, 33.615261>,  <43.063904, 35.232468, 33.682796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427044, 35.385983, 33.615261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419263, 0.826675, -0.375270,
		-0.004447, 0.411479, 0.911409,
		0.907854, 0.383789, -0.168841,
		43.699402, 35.501118, 33.564610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085396, 35.935909, 33.910908>,  <43.063904, 35.232468, 33.682796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085396, 35.935909, 33.910908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.370556, 35.898232, 33.632946>,  <43.541653, 35.875626, 33.466167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.370556, 35.898232, 33.632946>,  <43.085396, 35.935909, 33.910908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370556, 35.898232, 33.632946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308945, 0.847403, -0.431813,
		0.629542, 0.522529, 0.575014,
		0.712903, -0.094196, -0.694908,
		43.584427, 35.869972, 33.424473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546329, 36.587692, 33.802311>,  <43.085396, 35.935909, 33.910908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546329, 36.587692, 33.802311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549461, 36.384022, 33.458061>,  <43.551338, 36.261818, 33.251511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.549461, 36.384022, 33.458061>,  <43.546329, 36.587692, 33.802311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549461, 36.384022, 33.458061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342089, 0.807360, -0.480774,
		0.939635, 0.298173, -0.167866,
		0.007826, -0.509178, -0.860626,
		43.551807, 36.231270, 33.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442474, 36.986412, 33.322636>,  <43.546329, 36.587692, 33.802311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442474, 36.986412, 33.322636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.408161, 36.689281, 33.057049>,  <43.387573, 36.511005, 32.897697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.408161, 36.689281, 33.057049>,  <43.442474, 36.986412, 33.322636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408161, 36.689281, 33.057049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498718, 0.608941, -0.616824,
		0.862509, 0.278218, -0.422697,
		-0.085786, -0.742823, -0.663969,
		43.382427, 36.466434, 32.857857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613457, 37.159954, 32.544407>,  <43.442474, 36.986412, 33.322636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613457, 37.159954, 32.544407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.379055, 36.837284, 32.513733>,  <43.238415, 36.643684, 32.495331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.379055, 36.837284, 32.513733>,  <43.613457, 37.159954, 32.544407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379055, 36.837284, 32.513733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639764, 0.518671, -0.567170,
		0.497289, -0.283310, -0.820023,
		-0.586008, -0.806669, -0.076678,
		43.203255, 36.595284, 32.490726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119530, 37.389721, 32.136898>,  <43.613457, 37.159954, 32.544407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119530, 37.389721, 32.136898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989468, 37.011593, 32.147003>,  <42.911430, 36.784714, 32.153065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989468, 37.011593, 32.147003>,  <43.119530, 37.389721, 32.136898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989468, 37.011593, 32.147003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855792, 0.282787, -0.433187,
		0.402358, -0.162474, -0.900950,
		-0.325159, -0.945322, 0.025263,
		42.891918, 36.727997, 32.154583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.890915, 37.248497, 31.429525>,  <43.119530, 37.389721, 32.136898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.890915, 37.248497, 31.429525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703133, 37.018936, 31.697927>,  <42.590466, 36.881199, 31.858969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.703133, 37.018936, 31.697927>,  <42.890915, 37.248497, 31.429525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703133, 37.018936, 31.697927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870413, 0.428445, -0.242520,
		-0.148306, -0.697904, -0.700668,
		-0.469453, -0.573904, 0.671006,
		42.562298, 36.846764, 31.899229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329178, 36.851093, 31.024384>,  <42.890915, 37.248497, 31.429525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329178, 36.851093, 31.024384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.217926, 36.825260, 31.407732>,  <42.151176, 36.809761, 31.637741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.217926, 36.825260, 31.407732>,  <42.329178, 36.851093, 31.024384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217926, 36.825260, 31.407732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894963, 0.379766, -0.234134,
		-0.348836, -0.922825, -0.163423,
		-0.278127, -0.064583, 0.958370,
		42.134487, 36.805885, 31.695244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735462, 36.515610, 30.933762>,  <42.329178, 36.851093, 31.024384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735462, 36.515610, 30.933762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.728203, 36.715160, 31.280354>,  <41.723846, 36.834892, 31.488310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.728203, 36.715160, 31.280354>,  <41.735462, 36.515610, 30.933762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728203, 36.715160, 31.280354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884817, 0.395539, -0.246268,
		-0.465585, -0.771147, 0.434238,
		-0.018150, 0.498880, 0.866481,
		41.722759, 36.864826, 31.540298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051769, 36.300201, 31.246773>,  <41.735462, 36.515610, 30.933762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051769, 36.300201, 31.246773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169544, 36.648525, 31.404251>,  <41.240211, 36.857521, 31.498739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.169544, 36.648525, 31.404251>,  <41.051769, 36.300201, 31.246773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169544, 36.648525, 31.404251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906320, 0.385111, -0.173992,
		-0.303131, -0.305587, 0.902623,
		0.294440, 0.870808, 0.393698,
		41.257877, 36.909767, 31.522360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512035, 36.422901, 31.730534>,  <41.051769, 36.300201, 31.246773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512035, 36.422901, 31.730534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.686508, 36.780022, 31.685543>,  <40.791191, 36.994293, 31.658548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.686508, 36.780022, 31.685543>,  <40.512035, 36.422901, 31.730534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686508, 36.780022, 31.685543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896106, 0.442358, 0.036228,
		0.082100, 0.084990, 0.992994,
		0.436180, 0.892802, -0.112477,
		40.817364, 37.047863, 31.651800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.861530, 32.290577, 44.564583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533012, 32.398556, 44.363541>,  <38.335903, 32.463341, 44.242916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533012, 32.398556, 44.363541>,  <38.861530, 32.290577, 44.564583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533012, 32.398556, 44.363541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570275, 0.363160, -0.736818,
		-0.016375, -0.891765, -0.452204,
		-0.821290, 0.269946, -0.502604,
		38.286625, 32.479538, 44.212761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908772, 31.960785, 43.938644>,  <38.861530, 32.290577, 44.564583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908772, 31.960785, 43.938644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647308, 32.256008, 43.871712>,  <38.490429, 32.433140, 43.831551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647308, 32.256008, 43.871712>,  <38.908772, 31.960785, 43.938644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647308, 32.256008, 43.871712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543870, 0.304374, -0.782024,
		-0.526245, -0.602187, -0.600363,
		-0.653660, 0.738056, -0.167336,
		38.451210, 32.477425, 43.821510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695065, 31.972364, 43.173466>,  <38.908772, 31.960785, 43.938644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695065, 31.972364, 43.173466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637638, 32.341129, 43.317394>,  <38.603184, 32.562389, 43.403751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637638, 32.341129, 43.317394>,  <38.695065, 31.972364, 43.173466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637638, 32.341129, 43.317394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479394, 0.382864, -0.789682,
		-0.865778, 0.059125, -0.496924,
		-0.143564, 0.921911, 0.359819,
		38.594570, 32.617702, 43.425339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484390, 32.301460, 42.631046>,  <38.695065, 31.972364, 43.173466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484390, 32.301460, 42.631046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589149, 32.620956, 42.847721>,  <38.652004, 32.812653, 42.977726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589149, 32.620956, 42.847721>,  <38.484390, 32.301460, 42.631046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589149, 32.620956, 42.847721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384290, 0.428553, -0.817718,
		-0.885285, 0.422327, -0.194708,
		0.261902, 0.798738, 0.541688,
		38.667721, 32.860577, 43.010227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283714, 32.796165, 42.184406>,  <38.484390, 32.301460, 42.631046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283714, 32.796165, 42.184406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521286, 32.968750, 42.456020>,  <38.663830, 33.072300, 42.618988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521286, 32.968750, 42.456020>,  <38.283714, 32.796165, 42.184406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521286, 32.968750, 42.456020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485245, 0.481096, -0.730126,
		-0.641701, 0.763143, 0.076374,
		0.593934, 0.431462, 0.679031,
		38.699467, 33.098190, 42.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227947, 33.494648, 42.114281>,  <38.283714, 32.796165, 42.184406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227947, 33.494648, 42.114281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582188, 33.413658, 42.281479>,  <38.794731, 33.365063, 42.381798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582188, 33.413658, 42.281479>,  <38.227947, 33.494648, 42.114281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582188, 33.413658, 42.281479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464158, 0.417746, -0.781054,
		-0.016469, 0.885715, 0.463937,
		0.885599, -0.202476, 0.417992,
		38.847866, 33.352917, 42.406876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614807, 34.035984, 41.842018>,  <38.227947, 33.494648, 42.114281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614807, 34.035984, 41.842018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896179, 33.783405, 41.972534>,  <39.065002, 33.631859, 42.050842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896179, 33.783405, 41.972534>,  <38.614807, 34.035984, 41.842018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896179, 33.783405, 41.972534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626923, 0.334902, -0.703426,
		0.334902, 0.699367, 0.631448,
		0.703426, -0.631448, 0.326290,
		39.107208, 33.593971, 42.070423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227558, 34.411510, 41.768791>,  <38.614807, 34.035984, 41.842018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227558, 34.411510, 41.768791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351749, 34.034004, 41.814251>,  <39.426266, 33.807503, 41.841526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351749, 34.034004, 41.814251>,  <39.227558, 34.411510, 41.768791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351749, 34.034004, 41.814251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748491, 0.169022, -0.641244,
		0.585973, 0.284155, 0.758875,
		0.310479, -0.943763, 0.113645,
		39.444893, 33.750874, 41.848343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954922, 34.446865, 41.810997>,  <39.227558, 34.411510, 41.768791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954922, 34.446865, 41.810997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882130, 34.065670, 41.714081>,  <39.838455, 33.836952, 41.655930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882130, 34.065670, 41.714081>,  <39.954922, 34.446865, 41.810997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882130, 34.065670, 41.714081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735956, 0.031411, -0.676300,
		0.652114, -0.301386, 0.695639,
		-0.181977, -0.952985, -0.242291,
		39.827538, 33.779774, 41.641392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588783, 34.139050, 41.626442>,  <39.954922, 34.446865, 41.810997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588783, 34.139050, 41.626442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322292, 33.907001, 41.438995>,  <40.162395, 33.767773, 41.326527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322292, 33.907001, 41.438995>,  <40.588783, 34.139050, 41.626442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322292, 33.907001, 41.438995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625971, -0.093479, -0.774223,
		0.405336, -0.809150, 0.425416,
		-0.666230, -0.580119, -0.468614,
		40.122425, 33.732967, 41.298412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967270, 33.439899, 41.450058>,  <40.588783, 34.139050, 41.626442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967270, 33.439899, 41.450058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652142, 33.517857, 41.216354>,  <40.463066, 33.564629, 41.076130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652142, 33.517857, 41.216354>,  <40.967270, 33.439899, 41.450058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652142, 33.517857, 41.216354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604981, 0.066954, -0.793420,
		-0.115511, -0.978537, -0.170652,
		-0.787817, 0.194890, -0.584262,
		40.415798, 33.576324, 41.041077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101463, 32.999329, 40.834717>,  <40.967270, 33.439899, 41.450058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101463, 32.999329, 40.834717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836872, 33.273010, 40.711872>,  <40.678116, 33.437218, 40.638165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836872, 33.273010, 40.711872>,  <41.101463, 32.999329, 40.834717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836872, 33.273010, 40.711872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611922, 0.255637, -0.748466,
		-0.433590, -0.683023, -0.587775,
		-0.661477, 0.684200, -0.307115,
		40.638428, 33.478271, 40.619740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003448, 32.998642, 40.078007>,  <41.101463, 32.999329, 40.834717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003448, 32.998642, 40.078007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939838, 33.364563, 40.226513>,  <40.901672, 33.584118, 40.315617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939838, 33.364563, 40.226513>,  <41.003448, 32.998642, 40.078007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939838, 33.364563, 40.226513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591595, 0.389358, -0.705986,
		-0.790397, 0.107372, -0.603112,
		-0.159023, 0.914807, 0.371268,
		40.892132, 33.639004, 40.337894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162922, 32.715958, 39.466022>,  <41.003448, 32.998642, 40.078007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162922, 32.715958, 39.466022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219620, 32.383533, 39.250896>,  <41.253639, 32.184078, 39.121822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219620, 32.383533, 39.250896>,  <41.162922, 32.715958, 39.466022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219620, 32.383533, 39.250896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256281, 0.493967, -0.830853,
		0.956153, 0.255603, -0.142967,
		0.141748, -0.831062, -0.537813,
		41.262142, 32.134216, 39.089554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263851, 32.803181, 38.841640>,  <41.162922, 32.715958, 39.466022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263851, 32.803181, 38.841640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368835, 32.432281, 38.734814>,  <41.431824, 32.209743, 38.670719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368835, 32.432281, 38.734814>,  <41.263851, 32.803181, 38.841640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368835, 32.432281, 38.734814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804006, -0.363180, 0.470823,
		-0.533564, 0.091153, -0.840833,
		0.262457, -0.927250, -0.267067,
		41.447571, 32.154106, 38.654694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629524, 32.443062, 38.780647>,  <41.263851, 32.803181, 38.841640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629524, 32.443062, 38.780647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882420, 32.133186, 38.785164>,  <41.034157, 31.947260, 38.787876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882420, 32.133186, 38.785164>,  <40.629524, 32.443062, 38.780647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882420, 32.133186, 38.785164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538154, -0.428613, 0.725728,
		-0.557377, -0.464909, -0.687889,
		0.632236, -0.774694, 0.011294,
		41.072090, 31.900778, 38.788551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201992, 31.814072, 38.698326>,  <40.629524, 32.443062, 38.780647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201992, 31.814072, 38.698326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548840, 31.706568, 38.866074>,  <40.756950, 31.642065, 38.966721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548840, 31.706568, 38.866074>,  <40.201992, 31.814072, 38.698326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548840, 31.706568, 38.866074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497346, -0.513315, 0.699396,
		0.027298, -0.815032, -0.578773,
		0.867122, -0.268758, 0.419366,
		40.808975, 31.625940, 38.991882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208088, 31.105831, 38.835266>,  <40.201992, 31.814072, 38.698326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208088, 31.105831, 38.835266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472271, 31.213099, 39.115803>,  <40.630783, 31.277460, 39.284122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472271, 31.213099, 39.115803>,  <40.208088, 31.105831, 38.835266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472271, 31.213099, 39.115803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588140, -0.395896, 0.705236,
		0.466781, -0.878266, -0.103752,
		0.660460, 0.268171, 0.701340,
		40.670410, 31.293550, 39.326206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329937, 30.553097, 39.165455>,  <40.208088, 31.105831, 38.835266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329937, 30.553097, 39.165455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432911, 30.832033, 39.433018>,  <40.494698, 30.999395, 39.593555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432911, 30.832033, 39.433018>,  <40.329937, 30.553097, 39.165455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432911, 30.832033, 39.433018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367910, -0.569365, 0.735163,
		0.893514, -0.435357, 0.109984,
		0.257438, 0.697343, 0.668908,
		40.510143, 31.041237, 39.633690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717995, 30.182199, 39.740303>,  <40.329937, 30.553097, 39.165455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717995, 30.182199, 39.740303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589165, 30.528330, 39.893917>,  <40.511868, 30.736008, 39.986084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589165, 30.528330, 39.893917>,  <40.717995, 30.182199, 39.740303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589165, 30.528330, 39.893917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498401, -0.499864, 0.708331,
		0.804902, 0.036730, 0.592270,
		-0.322071, 0.865325, 0.384035,
		40.492542, 30.787928, 40.009129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620205, 30.060499, 40.536343>,  <40.717995, 30.182199, 39.740303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620205, 30.060499, 40.536343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404587, 30.387114, 40.453693>,  <40.275215, 30.583082, 40.404102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404587, 30.387114, 40.453693>,  <40.620205, 30.060499, 40.536343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404587, 30.387114, 40.453693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559573, -0.163824, 0.812428,
		0.629528, 0.553560, 0.545221,
		-0.539049, 0.816537, -0.206626,
		40.242870, 30.632074, 40.391705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445156, 30.272833, 41.164253>,  <40.620205, 30.060499, 40.536343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445156, 30.272833, 41.164253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185738, 30.485352, 40.946224>,  <40.030087, 30.612864, 40.815407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185738, 30.485352, 40.946224>,  <40.445156, 30.272833, 41.164253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185738, 30.485352, 40.946224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675002, -0.070483, 0.734441,
		0.351789, 0.844247, 0.404340,
		-0.648549, 0.531299, -0.545074,
		39.991173, 30.644741, 40.782703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183411, 30.813433, 41.501255>,  <40.445156, 30.272833, 41.164253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183411, 30.813433, 41.501255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893661, 30.748022, 41.233364>,  <39.719810, 30.708776, 41.072628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893661, 30.748022, 41.233364>,  <40.183411, 30.813433, 41.501255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893661, 30.748022, 41.233364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669686, -0.063778, 0.739901,
		-0.163708, 0.984475, -0.063312,
		-0.724376, -0.163527, -0.669730,
		39.676350, 30.698963, 41.032444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669334, 31.020842, 41.853760>,  <40.183411, 30.813433, 41.501255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669334, 31.020842, 41.853760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490292, 30.821266, 41.556919>,  <39.382866, 30.701521, 41.378815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490292, 30.821266, 41.556919>,  <39.669334, 31.020842, 41.853760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490292, 30.821266, 41.556919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709678, -0.306707, 0.634261,
		-0.544063, 0.810551, -0.216800,
		-0.447607, -0.498937, -0.742098,
		39.356010, 30.671585, 41.334290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939922, 31.231026, 41.825333>,  <39.669334, 31.020842, 41.853760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939922, 31.231026, 41.825333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965385, 30.872738, 41.649319>,  <38.980663, 30.657764, 41.543709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965385, 30.872738, 41.649319>,  <38.939922, 31.231026, 41.825333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965385, 30.872738, 41.649319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517379, -0.406670, 0.752953,
		-0.853385, 0.179731, -0.489316,
		0.063661, -0.895721, -0.440035,
		38.984486, 30.604021, 41.517307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297691, 31.052805, 41.782455>,  <38.939922, 31.231026, 41.825333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297691, 31.052805, 41.782455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495163, 30.706028, 41.755043>,  <38.613644, 30.497963, 41.738594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495163, 30.706028, 41.755043>,  <38.297691, 31.052805, 41.782455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495163, 30.706028, 41.755043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653901, -0.422004, 0.627953,
		-0.573321, -0.265190, -0.775227,
		0.493676, -0.866941, -0.068536,
		38.643265, 30.445946, 41.734482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804337, 30.629200, 42.092995>,  <38.297691, 31.052805, 41.782455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804337, 30.629200, 42.092995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134670, 30.404074, 42.078983>,  <38.332870, 30.268997, 42.070576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134670, 30.404074, 42.078983>,  <37.804337, 30.629200, 42.092995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134670, 30.404074, 42.078983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324525, -0.525145, 0.786706,
		-0.461162, -0.638328, -0.616334,
		0.825841, -0.562815, -0.035023,
		38.382423, 30.235228, 42.068474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631538, 29.963346, 42.007320>,  <37.804337, 30.629200, 42.092995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631538, 29.963346, 42.007320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991558, 29.965624, 42.181618>,  <38.207569, 29.966990, 42.286198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991558, 29.965624, 42.181618>,  <37.631538, 29.963346, 42.007320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991558, 29.965624, 42.181618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331285, -0.640684, 0.692658,
		0.283117, -0.767784, -0.574763,
		0.900053, 0.005693, 0.435744,
		38.261574, 29.967331, 42.312340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554058, 29.265131, 41.507225>,  <37.631538, 29.963346, 42.007320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554058, 29.265131, 41.507225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196186, 29.147827, 41.372433>,  <36.981464, 29.077444, 41.291557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196186, 29.147827, 41.372433>,  <37.554058, 29.265131, 41.507225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196186, 29.147827, 41.372433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077339, 0.641267, -0.763410,
		0.439969, -0.709066, -0.551046,
		-0.894676, -0.293260, -0.336977,
		36.927784, 29.059849, 41.271339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708378, 29.252892, 40.800140>,  <37.554058, 29.265131, 41.507225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708378, 29.252892, 40.800140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309238, 29.253153, 40.826370>,  <37.069756, 29.253309, 40.842106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309238, 29.253153, 40.826370>,  <37.708378, 29.252892, 40.800140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309238, 29.253153, 40.826370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055410, 0.526322, -0.848478,
		-0.035068, -0.850285, -0.525153,
		-0.997847, 0.000656, 0.065572,
		37.009884, 29.253349, 40.846043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490425, 29.162865, 40.039051>,  <37.708378, 29.252892, 40.800140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490425, 29.162865, 40.039051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146423, 29.265713, 40.215359>,  <36.940022, 29.327421, 40.321144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146423, 29.265713, 40.215359>,  <37.490425, 29.162865, 40.039051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146423, 29.265713, 40.215359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345834, 0.341450, -0.873963,
		-0.375214, -0.904047, -0.204728,
		-0.860007, 0.257121, 0.440767,
		36.888420, 29.342850, 40.347588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901718, 28.859543, 39.668671>,  <37.490425, 29.162865, 40.039051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901718, 28.859543, 39.668671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794163, 29.186342, 39.872715>,  <36.729630, 29.382421, 39.995140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794163, 29.186342, 39.872715>,  <36.901718, 28.859543, 39.668671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794163, 29.186342, 39.872715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182906, 0.476666, -0.859846,
		-0.945645, -0.324505, 0.021264,
		-0.268889, 0.816998, 0.510111,
		36.713497, 29.431442, 40.025749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322018, 29.134769, 39.389713>,  <36.901718, 28.859543, 39.668671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322018, 29.134769, 39.389713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426258, 29.453974, 39.607067>,  <36.488800, 29.645496, 39.737480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426258, 29.453974, 39.607067>,  <36.322018, 29.134769, 39.389713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426258, 29.453974, 39.607067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253495, 0.599642, -0.759058,
		-0.931573, 0.060065, 0.358558,
		0.260599, 0.798011, 0.543384,
		36.504436, 29.693377, 39.770081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825687, 29.608677, 39.169197>,  <36.322018, 29.134769, 39.389713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825687, 29.608677, 39.169197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120415, 29.823235, 39.333820>,  <36.297253, 29.951969, 39.432594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120415, 29.823235, 39.333820>,  <35.825687, 29.608677, 39.169197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120415, 29.823235, 39.333820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240294, 0.776757, -0.582157,
		-0.631948, 0.330048, 0.701220,
		0.736818, 0.536392, 0.411562,
		36.341461, 29.984152, 39.457291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583775, 30.235777, 39.368435>,  <35.825687, 29.608677, 39.169197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583775, 30.235777, 39.368435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965519, 30.343605, 39.317013>,  <36.194565, 30.408302, 39.286160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965519, 30.343605, 39.317013>,  <35.583775, 30.235777, 39.368435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965519, 30.343605, 39.317013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295523, 0.790219, -0.536861,
		-0.043136, 0.550350, 0.833819,
		0.954361, 0.269570, -0.128554,
		36.251827, 30.424477, 39.278446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558903, 30.907642, 39.337891>,  <35.583775, 30.235777, 39.368435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558903, 30.907642, 39.337891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927700, 30.849375, 39.194386>,  <36.148979, 30.814415, 39.108284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927700, 30.849375, 39.194386>,  <35.558903, 30.907642, 39.337891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927700, 30.849375, 39.194386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096622, 0.810675, -0.577469,
		0.374959, 0.567086, 0.733361,
		0.921992, -0.145668, -0.358763,
		36.204296, 30.805674, 39.086758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961975, 31.513395, 39.390285>,  <35.558903, 30.907642, 39.337891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961975, 31.513395, 39.390285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159836, 31.318424, 39.102470>,  <36.278553, 31.201441, 38.929783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159836, 31.318424, 39.102470>,  <35.961975, 31.513395, 39.390285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159836, 31.318424, 39.102470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166591, 0.865744, -0.471948,
		0.852976, 0.113581, 0.509442,
		0.494651, -0.487429, -0.719537,
		36.308231, 31.172195, 38.886608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365311, 32.006695, 39.118977>,  <35.961975, 31.513395, 39.390285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365311, 32.006695, 39.118977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390785, 31.716578, 38.844784>,  <36.406071, 31.542507, 38.680267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390785, 31.716578, 38.844784>,  <36.365311, 32.006695, 39.118977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390785, 31.716578, 38.844784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033426, 0.688044, -0.724899,
		0.997410, 0.023251, 0.068061,
		0.063684, -0.725297, -0.685485,
		36.409889, 31.498989, 38.639137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982975, 32.107067, 38.744648>,  <36.365311, 32.006695, 39.118977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982975, 32.107067, 38.744648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724098, 31.899384, 38.521378>,  <36.568771, 31.774773, 38.387413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724098, 31.899384, 38.521378>,  <36.982975, 32.107067, 38.744648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724098, 31.899384, 38.521378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016722, 0.741698, -0.670525,
		0.762143, -0.424625, -0.488704,
		-0.647192, -0.519208, -0.558180,
		36.529942, 31.743620, 38.353924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239281, 32.254551, 38.104942>,  <36.982975, 32.107067, 38.744648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239281, 32.254551, 38.104942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865742, 32.121876, 38.051414>,  <36.641617, 32.042271, 38.019299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865742, 32.121876, 38.051414>,  <37.239281, 32.254551, 38.104942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865742, 32.121876, 38.051414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139584, 0.682454, -0.717477,
		0.329308, -0.651335, -0.683608,
		-0.933848, -0.331692, -0.133822,
		36.585587, 32.022369, 38.011269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.176754, 26.391035, 44.426899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898743, 26.652777, 44.307732>,  <35.731937, 26.809822, 44.236233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898743, 26.652777, 44.307732>,  <36.176754, 26.391035, 44.426899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898743, 26.652777, 44.307732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336077, -0.070626, -0.939183,
		-0.635599, -0.752882, -0.170827,
		-0.695029, 0.654355, -0.297916,
		35.690235, 26.849083, 44.218357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039223, 26.207037, 43.743439>,  <36.176754, 26.391035, 44.426899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039223, 26.207037, 43.743439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879559, 26.573265, 43.763016>,  <35.783760, 26.793003, 43.774761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879559, 26.573265, 43.763016>,  <36.039223, 26.207037, 43.743439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879559, 26.573265, 43.763016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235871, 0.154124, -0.959484,
		-0.886020, -0.371448, -0.277478,
		-0.399165, 0.915572, 0.048943,
		35.759808, 26.847937, 43.777699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882839, 26.313084, 43.024803>,  <36.039223, 26.207037, 43.743439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882839, 26.313084, 43.024803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880039, 26.683525, 43.175682>,  <35.878361, 26.905790, 43.266209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880039, 26.683525, 43.175682>,  <35.882839, 26.313084, 43.024803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880039, 26.683525, 43.175682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348669, 0.355797, -0.867086,
		-0.937220, 0.125452, -0.325393,
		-0.006997, 0.926105, 0.377201,
		35.877941, 26.961357, 43.288841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565235, 26.693033, 42.508198>,  <35.882839, 26.313084, 43.024803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565235, 26.693033, 42.508198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.764393, 26.967121, 42.720829>,  <35.883888, 27.131575, 42.848408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.764393, 26.967121, 42.720829>,  <35.565235, 26.693033, 42.508198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764393, 26.967121, 42.720829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247173, 0.475413, -0.844327,
		-0.831271, 0.551774, 0.067335,
		0.497890, 0.685221, 0.531581,
		35.913761, 27.172688, 42.880302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406200, 27.334023, 42.306248>,  <35.565235, 26.693033, 42.508198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406200, 27.334023, 42.306248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765785, 27.391684, 42.471703>,  <35.981537, 27.426281, 42.570976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765785, 27.391684, 42.471703>,  <35.406200, 27.334023, 42.306248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765785, 27.391684, 42.471703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203996, 0.697871, -0.686557,
		-0.387634, 0.701566, 0.597951,
		0.898958, 0.144153, 0.413635,
		36.035473, 27.434929, 42.595795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436928, 28.029062, 42.295216>,  <35.406200, 27.334023, 42.306248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436928, 28.029062, 42.295216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815521, 27.927048, 42.374344>,  <36.042675, 27.865839, 42.421822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815521, 27.927048, 42.374344>,  <35.436928, 28.029062, 42.295216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815521, 27.927048, 42.374344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322450, 0.720126, -0.614365,
		0.014230, 0.645271, 0.763821,
		0.946479, -0.255037, 0.197820,
		36.099464, 27.850536, 42.433689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740097, 28.780012, 42.448143>,  <35.436928, 28.029062, 42.295216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740097, 28.780012, 42.448143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034908, 28.540560, 42.322647>,  <36.211796, 28.396889, 42.247349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034908, 28.540560, 42.322647>,  <35.740097, 28.780012, 42.448143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034908, 28.540560, 42.322647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363464, 0.742431, -0.562752,
		0.569810, 0.300731, 0.764773,
		0.737028, -0.598629, -0.313740,
		36.256016, 28.360971, 42.228527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224964, 29.237873, 42.341908>,  <35.740097, 28.780012, 42.448143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224964, 29.237873, 42.341908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341381, 28.913656, 42.138611>,  <36.411232, 28.719126, 42.016632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.341381, 28.913656, 42.138611>,  <36.224964, 29.237873, 42.341908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341381, 28.913656, 42.138611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498915, 0.581876, -0.642265,
		0.816318, -0.066642, 0.573745,
		0.291047, -0.810542, -0.508245,
		36.428696, 28.670494, 41.986137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957905, 29.358583, 42.246979>,  <36.224964, 29.237873, 42.341908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957905, 29.358583, 42.246979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803905, 29.107584, 41.976269>,  <36.711506, 28.956984, 41.813843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803905, 29.107584, 41.976269>,  <36.957905, 29.358583, 42.246979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803905, 29.107584, 41.976269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387991, 0.555307, -0.735593,
		0.837400, -0.545784, 0.029672,
		-0.384998, -0.627498, -0.676773,
		36.688404, 28.919334, 41.773235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736702, 29.312325, 42.315292>,  <36.957905, 29.358583, 42.246979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736702, 29.312325, 42.315292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.007523, 29.529205, 42.514339>,  <38.170013, 29.659334, 42.633766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.007523, 29.529205, 42.514339>,  <37.736702, 29.312325, 42.315292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007523, 29.529205, 42.514339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342104, -0.366793, 0.865117,
		0.651591, -0.755963, -0.062848,
		0.677049, 0.542202, 0.497617,
		38.210636, 29.691866, 42.663624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057526, 28.886650, 42.877895>,  <37.736702, 29.312325, 42.315292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057526, 28.886650, 42.877895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138912, 29.257425, 43.003998>,  <38.187744, 29.479891, 43.079659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.138912, 29.257425, 43.003998>,  <38.057526, 28.886650, 42.877895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138912, 29.257425, 43.003998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257265, -0.260061, 0.930690,
		0.944678, -0.270467, 0.185555,
		0.203465, 0.926939, 0.315256,
		38.199951, 29.535507, 43.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386463, 28.797091, 43.564564>,  <38.057526, 28.886650, 42.877895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386463, 28.797091, 43.564564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258739, 29.175020, 43.535313>,  <38.182106, 29.401779, 43.517761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.258739, 29.175020, 43.535313>,  <38.386463, 28.797091, 43.564564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258739, 29.175020, 43.535313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412311, -0.069031, 0.908424,
		0.853254, 0.320217, 0.411604,
		-0.319306, 0.944826, -0.073128,
		38.162949, 29.458467, 43.513374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383244, 29.012789, 44.298405>,  <38.386463, 28.797091, 43.564564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383244, 29.012789, 44.298405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148655, 29.296001, 44.141052>,  <38.007904, 29.465929, 44.046642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148655, 29.296001, 44.141052>,  <38.383244, 29.012789, 44.298405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148655, 29.296001, 44.141052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476598, 0.091044, 0.874394,
		0.654912, 0.700289, 0.284052,
		-0.586467, 0.708030, -0.393382,
		37.972713, 29.508411, 44.023037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283054, 29.704926, 44.774918>,  <38.383244, 29.012789, 44.298405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283054, 29.704926, 44.774918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975792, 29.657539, 44.523235>,  <37.791435, 29.629107, 44.372227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975792, 29.657539, 44.523235>,  <38.283054, 29.704926, 44.774918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975792, 29.657539, 44.523235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638378, 0.217061, 0.738483,
		0.049090, 0.968942, -0.242364,
		-0.768156, -0.118467, -0.629207,
		37.745346, 29.622000, 44.334473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840450, 30.296049, 44.925884>,  <38.283054, 29.704926, 44.774918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840450, 30.296049, 44.925884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597553, 30.033466, 44.746857>,  <37.451817, 29.875917, 44.639439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597553, 30.033466, 44.746857>,  <37.840450, 30.296049, 44.925884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597553, 30.033466, 44.746857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691551, 0.159356, 0.704531,
		-0.391169, 0.737341, -0.550740,
		-0.607243, -0.656455, -0.447573,
		37.415379, 29.836529, 44.612583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219795, 30.638168, 45.021198>,  <37.840450, 30.296049, 44.925884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219795, 30.638168, 45.021198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139782, 30.264896, 44.901760>,  <37.091774, 30.040934, 44.830097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139782, 30.264896, 44.901760>,  <37.219795, 30.638168, 45.021198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139782, 30.264896, 44.901760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756184, -0.046750, 0.652687,
		-0.623034, 0.356353, -0.696305,
		-0.200034, -0.933181, -0.298596,
		37.079773, 29.984941, 44.812180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511383, 30.624878, 45.069176>,  <37.219795, 30.638168, 45.021198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511383, 30.624878, 45.069176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634113, 30.244267, 45.060699>,  <36.707752, 30.015900, 45.055614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.634113, 30.244267, 45.060699>,  <36.511383, 30.624878, 45.069176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634113, 30.244267, 45.060699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605272, -0.212259, 0.767198,
		-0.734508, -0.222573, -0.641061,
		0.306828, -0.951529, -0.021189,
		36.726162, 29.958807, 45.054344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923542, 30.282179, 45.073589>,  <36.511383, 30.624878, 45.069176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923542, 30.282179, 45.073589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216942, 30.047983, 45.211681>,  <36.392982, 29.907465, 45.294537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216942, 30.047983, 45.211681>,  <35.923542, 30.282179, 45.073589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216942, 30.047983, 45.211681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571711, -0.256761, 0.779243,
		-0.367599, -0.768943, -0.523065,
		0.733497, -0.585491, 0.345228,
		36.436993, 29.872335, 45.315250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550861, 29.636587, 45.270901>,  <35.923542, 30.282179, 45.073589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550861, 29.636587, 45.270901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899303, 29.607996, 45.465244>,  <36.108368, 29.590841, 45.581852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899303, 29.607996, 45.465244>,  <35.550861, 29.636587, 45.270901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899303, 29.607996, 45.465244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480829, -0.325342, 0.814221,
		0.099876, -0.942891, -0.317775,
		0.871108, -0.071474, 0.485863,
		36.160637, 29.586554, 45.611004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493999, 28.951042, 45.564648>,  <35.550861, 29.636587, 45.270901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493999, 28.951042, 45.564648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755646, 29.174295, 45.768848>,  <35.912636, 29.308247, 45.891369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.755646, 29.174295, 45.768848>,  <35.493999, 28.951042, 45.564648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755646, 29.174295, 45.768848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335814, -0.390471, 0.857182,
		0.677759, -0.732135, -0.067987,
		0.654120, 0.558132, 0.510506,
		35.951881, 29.341736, 45.922001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655888, 28.525164, 46.087536>,  <35.493999, 28.951042, 45.564648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655888, 28.525164, 46.087536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765137, 28.885288, 46.223087>,  <35.830685, 29.101364, 46.304420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765137, 28.885288, 46.223087>,  <35.655888, 28.525164, 46.087536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765137, 28.885288, 46.223087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370391, -0.226697, 0.900788,
		0.887815, -0.371544, 0.271551,
		0.273123, 0.900313, 0.338882,
		35.847073, 29.155382, 46.324753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037098, 28.445126, 46.735706>,  <35.655888, 28.525164, 46.087536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037098, 28.445126, 46.735706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908691, 28.823927, 46.740429>,  <35.831650, 29.051207, 46.743263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.908691, 28.823927, 46.740429>,  <36.037098, 28.445126, 46.735706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908691, 28.823927, 46.740429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347044, -0.129219, 0.928904,
		0.881199, 0.294093, 0.370132,
		-0.321013, 0.947002, 0.011804,
		35.812389, 29.108027, 46.743969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142071, 28.674280, 47.348000>,  <36.037098, 28.445126, 46.735706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142071, 28.674280, 47.348000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860435, 28.944500, 47.260456>,  <35.691456, 29.106632, 47.207932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860435, 28.944500, 47.260456>,  <36.142071, 28.674280, 47.348000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860435, 28.944500, 47.260456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349697, -0.061616, 0.934834,
		0.618042, 0.734736, 0.279621,
		-0.704085, 0.675549, -0.218854,
		35.649208, 29.147165, 47.194801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.655771, 33.879200, 45.559258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945942, 33.605537, 45.589432>,  <30.120045, 33.441341, 45.607536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945942, 33.605537, 45.589432>,  <29.655771, 33.879200, 45.559258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945942, 33.605537, 45.589432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485910, 0.431414, -0.760115,
		0.487494, 0.588059, 0.645396,
		0.725425, -0.684156, 0.075432,
		30.163568, 33.400291, 45.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299835, 34.165581, 45.601036>,  <29.655771, 33.879200, 45.559258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299835, 34.165581, 45.601036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.391558, 33.799778, 45.467709>,  <30.446590, 33.580296, 45.387714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.391558, 33.799778, 45.467709>,  <30.299835, 34.165581, 45.601036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391558, 33.799778, 45.467709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515172, 0.404573, -0.755591,
		0.825843, 0.001547, 0.563899,
		0.229307, -0.914504, -0.333317,
		30.460350, 33.525425, 45.367714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966099, 34.207092, 45.477325>,  <30.299835, 34.165581, 45.601036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966099, 34.207092, 45.477325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.862434, 33.885258, 45.263607>,  <30.800236, 33.692158, 45.135376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.862434, 33.885258, 45.263607>,  <30.966099, 34.207092, 45.477325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862434, 33.885258, 45.263607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641952, 0.269823, -0.717700,
		0.721618, -0.528994, 0.446578,
		-0.259162, -0.804587, -0.534298,
		30.784685, 33.643883, 45.103317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523998, 33.961185, 45.286915>,  <30.966099, 34.207092, 45.477325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523998, 33.961185, 45.286915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277008, 33.790253, 45.022758>,  <31.128815, 33.687695, 44.864265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277008, 33.790253, 45.022758>,  <31.523998, 33.961185, 45.286915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277008, 33.790253, 45.022758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583980, 0.313401, -0.748830,
		0.526964, -0.848038, 0.056034,
		-0.617476, -0.427329, -0.660389,
		31.091764, 33.662056, 44.824642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952253, 33.592838, 44.886444>,  <31.523998, 33.961185, 45.286915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952253, 33.592838, 44.886444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609344, 33.650604, 44.688766>,  <31.403599, 33.685265, 44.570160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.609344, 33.650604, 44.688766>,  <31.952253, 33.592838, 44.886444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609344, 33.650604, 44.688766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514821, 0.252711, -0.819205,
		0.006583, -0.956704, -0.290990,
		-0.857272, 0.144415, -0.494195,
		31.352163, 33.693928, 44.540508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001236, 33.238926, 44.256786>,  <31.952253, 33.592838, 44.886444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001236, 33.238926, 44.256786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724535, 33.526119, 44.225826>,  <31.558516, 33.698433, 44.207249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724535, 33.526119, 44.225826>,  <32.001236, 33.238926, 44.256786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724535, 33.526119, 44.225826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367816, 0.258069, -0.893371,
		-0.621446, -0.646457, -0.442603,
		-0.691748, 0.717979, -0.077401,
		31.517010, 33.741512, 44.202606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759655, 33.080032, 43.614189>,  <32.001236, 33.238926, 44.256786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759655, 33.080032, 43.614189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.684717, 33.465313, 43.691284>,  <31.639753, 33.696480, 43.737541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.684717, 33.465313, 43.691284>,  <31.759655, 33.080032, 43.614189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684717, 33.465313, 43.691284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399562, 0.253974, -0.880822,
		-0.897358, -0.088007, -0.432439,
		-0.187346, 0.963199, 0.192741,
		31.628513, 33.754272, 43.749107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519495, 33.356640, 42.988289>,  <31.759655, 33.080032, 43.614189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519495, 33.356640, 42.988289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652706, 33.671684, 43.195660>,  <31.732632, 33.860710, 43.320080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652706, 33.671684, 43.195660>,  <31.519495, 33.356640, 42.988289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652706, 33.671684, 43.195660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527669, 0.299985, -0.794717,
		-0.781446, 0.538218, -0.315695,
		0.333027, 0.787611, 0.518423,
		31.752615, 33.907967, 43.351185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382954, 33.884159, 42.583889>,  <31.519495, 33.356640, 42.988289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382954, 33.884159, 42.583889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639622, 34.043434, 42.846096>,  <31.793623, 34.139000, 43.003422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639622, 34.043434, 42.846096>,  <31.382954, 33.884159, 42.583889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639622, 34.043434, 42.846096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495384, 0.437316, -0.750567,
		-0.585535, 0.806350, 0.083357,
		0.641673, 0.398189, 0.655516,
		31.832123, 34.162891, 43.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350437, 34.523060, 42.335232>,  <31.382954, 33.884159, 42.583889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350437, 34.523060, 42.335232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687634, 34.445164, 42.535809>,  <31.889952, 34.398426, 42.656155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687634, 34.445164, 42.535809>,  <31.350437, 34.523060, 42.335232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687634, 34.445164, 42.535809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535777, 0.387255, -0.750318,
		-0.048070, 0.901171, 0.430789,
		0.842990, -0.194739, 0.501442,
		31.940531, 34.386742, 42.686241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760088, 35.066685, 42.111301>,  <31.350437, 34.523060, 42.335232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760088, 35.066685, 42.111301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047539, 34.847584, 42.282669>,  <32.220009, 34.716122, 42.385490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047539, 34.847584, 42.282669>,  <31.760088, 35.066685, 42.111301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047539, 34.847584, 42.282669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624722, 0.237913, -0.743720,
		0.305448, 0.802100, 0.513163,
		0.718626, -0.547752, 0.428420,
		32.263126, 34.683258, 42.411194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385220, 35.465187, 42.264442>,  <31.760088, 35.066685, 42.111301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385220, 35.465187, 42.264442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517895, 35.089622, 42.227726>,  <32.597500, 34.864285, 42.205696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.517895, 35.089622, 42.227726>,  <32.385220, 35.465187, 42.264442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517895, 35.089622, 42.227726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681991, 0.305877, -0.664325,
		0.651821, 0.157746, 0.741785,
		0.331689, -0.938912, -0.091796,
		32.617401, 34.807949, 42.200188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132595, 35.467545, 42.107658>,  <32.385220, 35.465187, 42.264442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132595, 35.467545, 42.107658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044544, 35.090919, 42.005676>,  <32.991714, 34.864944, 41.944485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044544, 35.090919, 42.005676>,  <33.132595, 35.467545, 42.107658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044544, 35.090919, 42.005676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725305, 0.016787, -0.688223,
		0.652285, -0.336419, 0.679225,
		-0.220129, -0.941562, -0.254957,
		32.978504, 34.808453, 41.929188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767796, 35.116764, 42.059044>,  <33.132595, 35.467545, 42.107658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767796, 35.116764, 42.059044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517387, 34.867523, 41.871498>,  <33.367142, 34.717979, 41.758968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.517387, 34.867523, 41.871498>,  <33.767796, 35.116764, 42.059044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517387, 34.867523, 41.871498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667956, -0.118205, -0.734753,
		0.402403, -0.773156, 0.490204,
		-0.626024, -0.623102, -0.468869,
		33.329578, 34.680592, 41.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186417, 34.539211, 42.399536>,  <33.767796, 35.116764, 42.059044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186417, 34.539211, 42.399536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492710, 34.727001, 42.575375>,  <34.676487, 34.839676, 42.680878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.492710, 34.727001, 42.575375>,  <34.186417, 34.539211, 42.399536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492710, 34.727001, 42.575375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459862, -0.078190, 0.884542,
		0.449642, -0.879477, 0.156020,
		0.765735, 0.469475, 0.439595,
		34.722431, 34.867844, 42.707253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379398, 34.055054, 42.982372>,  <34.186417, 34.539211, 42.399536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379398, 34.055054, 42.982372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521019, 34.418598, 43.070568>,  <34.605991, 34.636726, 43.123486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521019, 34.418598, 43.070568>,  <34.379398, 34.055054, 42.982372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521019, 34.418598, 43.070568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275411, -0.123983, 0.953298,
		0.893752, -0.398247, 0.206413,
		0.354056, 0.908861, 0.220491,
		34.627235, 34.691257, 43.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904522, 33.979488, 43.596512>,  <34.379398, 34.055054, 42.982372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904522, 33.979488, 43.596512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791126, 34.363079, 43.596573>,  <34.723087, 34.593231, 43.596607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791126, 34.363079, 43.596573>,  <34.904522, 33.979488, 43.596512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791126, 34.363079, 43.596573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011072, 0.003117, 0.999934,
		0.958910, 0.283476, -0.011502,
		-0.283493, 0.958974, 0.000150,
		34.706078, 34.650772, 43.596619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365028, 34.319756, 43.994324>,  <34.904522, 33.979488, 43.596512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365028, 34.319756, 43.994324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022060, 34.525192, 43.981350>,  <34.816280, 34.648457, 43.973564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022060, 34.525192, 43.981350>,  <35.365028, 34.319756, 43.994324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022060, 34.525192, 43.981350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079871, -0.070542, 0.994306,
		0.508381, 0.855129, 0.101505,
		-0.857420, 0.513594, -0.032437,
		34.764835, 34.679272, 43.971619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375210, 34.569729, 44.653740>,  <35.365028, 34.319756, 43.994324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375210, 34.569729, 44.653740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997391, 34.612091, 44.529408>,  <34.770699, 34.637508, 44.454807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997391, 34.612091, 44.529408>,  <35.375210, 34.569729, 44.653740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997391, 34.612091, 44.529408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323769, -0.142302, 0.935374,
		0.054830, 0.984141, 0.168700,
		-0.944546, 0.105906, -0.310832,
		34.714027, 34.643864, 44.436157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045750, 34.913990, 45.220402>,  <35.375210, 34.569729, 44.653740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045750, 34.913990, 45.220402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732964, 34.780521, 45.009804>,  <34.545292, 34.700439, 44.883446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732964, 34.780521, 45.009804>,  <35.045750, 34.913990, 45.220402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732964, 34.780521, 45.009804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470935, -0.237107, 0.849706,
		-0.408356, 0.912385, 0.028273,
		-0.781963, -0.333668, -0.526498,
		34.498375, 34.680420, 44.851856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431858, 35.238613, 45.514694>,  <35.045750, 34.913990, 45.220402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431858, 35.238613, 45.514694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314095, 34.916203, 45.309311>,  <34.243435, 34.722755, 45.186081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.314095, 34.916203, 45.309311>,  <34.431858, 35.238613, 45.514694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314095, 34.916203, 45.309311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569458, -0.283515, 0.771581,
		-0.767488, 0.519559, -0.375528,
		-0.294414, -0.806026, -0.513461,
		34.225769, 34.674397, 45.155273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637760, 35.222450, 45.591248>,  <34.431858, 35.238613, 45.514694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637760, 35.222450, 45.591248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746284, 34.858875, 45.464619>,  <33.811398, 34.640728, 45.388641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746284, 34.858875, 45.464619>,  <33.637760, 35.222450, 45.591248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746284, 34.858875, 45.464619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619801, -0.416625, 0.665033,
		-0.736368, 0.015782, -0.676397,
		0.271308, -0.908941, -0.316572,
		33.827679, 34.586193, 45.369648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031239, 34.771053, 45.572083>,  <33.637760, 35.222450, 45.591248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031239, 34.771053, 45.572083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344292, 34.522781, 45.591038>,  <33.532124, 34.373817, 45.602409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.344292, 34.522781, 45.591038>,  <33.031239, 34.771053, 45.572083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344292, 34.522781, 45.591038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431234, -0.485705, 0.760347,
		-0.448915, -0.615507, -0.647786,
		0.782632, -0.620678, 0.047387,
		33.579082, 34.336578, 45.605251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781982, 34.033310, 45.539650>,  <33.031239, 34.771053, 45.572083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781982, 34.033310, 45.539650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135445, 34.042831, 45.726662>,  <33.347523, 34.048542, 45.838871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135445, 34.042831, 45.726662>,  <32.781982, 34.033310, 45.539650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135445, 34.042831, 45.726662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330032, -0.676627, 0.658221,
		0.332012, -0.735941, -0.590050,
		0.883655, 0.023801, 0.467532,
		33.400543, 34.049973, 45.866920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905235, 33.303207, 45.744328>,  <32.781982, 34.033310, 45.539650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905235, 33.303207, 45.744328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182159, 33.494453, 45.960514>,  <33.348312, 33.609203, 46.090225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.182159, 33.494453, 45.960514>,  <32.905235, 33.303207, 45.744328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182159, 33.494453, 45.960514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240224, -0.553558, 0.797412,
		0.680439, -0.681891, -0.268379,
		0.692311, 0.478119, 0.540470,
		33.389854, 33.637890, 46.122654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314434, 32.777264, 46.097996>,  <32.905235, 33.303207, 45.744328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314434, 32.777264, 46.097996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.379612, 33.110752, 46.309036>,  <33.418716, 33.310844, 46.435661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.379612, 33.110752, 46.309036>,  <33.314434, 32.777264, 46.097996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379612, 33.110752, 46.309036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352718, -0.450186, 0.820319,
		0.921434, -0.319760, 0.220713,
		0.162943, 0.833718, 0.527602,
		33.428493, 33.360867, 46.467316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647064, 32.630890, 46.635235>,  <33.314434, 32.777264, 46.097996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647064, 32.630890, 46.635235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488293, 32.983028, 46.739113>,  <33.393028, 33.194309, 46.801437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488293, 32.983028, 46.739113>,  <33.647064, 32.630890, 46.635235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488293, 32.983028, 46.739113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398362, -0.420135, 0.815349,
		0.826893, 0.220187, 0.517461,
		-0.396932, 0.880343, 0.259692,
		33.369213, 33.247131, 46.817020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707554, 32.662140, 47.390976>,  <33.647064, 32.630890, 46.635235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707554, 32.662140, 47.390976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418407, 32.924793, 47.304905>,  <33.244919, 33.082386, 47.253262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418407, 32.924793, 47.304905>,  <33.707554, 32.662140, 47.390976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418407, 32.924793, 47.304905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534957, -0.334701, 0.775756,
		0.437367, 0.675876, 0.593214,
		-0.722863, 0.656634, -0.215178,
		33.201550, 33.121784, 47.240353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185574, 32.629711, 47.983547>,  <33.707554, 32.662140, 47.390976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185574, 32.629711, 47.983547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386322, 32.319817, 48.137379>,  <34.506771, 32.133881, 48.229679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386322, 32.319817, 48.137379>,  <34.185574, 32.629711, 47.983547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386322, 32.319817, 48.137379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558697, -0.049055, -0.827920,
		0.660287, 0.630376, 0.408224,
		0.501876, -0.774738, 0.384580,
		34.536884, 32.087395, 48.252754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886501, 32.795692, 48.069885>,  <34.185574, 32.629711, 47.983547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886501, 32.795692, 48.069885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858379, 32.398640, 48.030430>,  <34.841507, 32.160408, 48.006756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858379, 32.398640, 48.030430>,  <34.886501, 32.795692, 48.069885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858379, 32.398640, 48.030430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667560, 0.026656, -0.744078,
		0.741229, -0.118161, 0.660771,
		-0.070308, -0.992637, -0.098637,
		34.837288, 32.100849, 48.000839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563484, 32.602257, 47.805759>,  <34.886501, 32.795692, 48.069885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563484, 32.602257, 47.805759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363247, 32.257702, 47.771320>,  <35.243103, 32.050968, 47.750656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363247, 32.257702, 47.771320>,  <35.563484, 32.602257, 47.805759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363247, 32.257702, 47.771320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468656, -0.186039, -0.863569,
		0.727851, -0.472649, 0.496825,
		-0.500594, -0.861390, -0.086101,
		35.213070, 31.999285, 47.745491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009529, 32.149857, 47.626171>,  <35.563484, 32.602257, 47.805759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009529, 32.149857, 47.626171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663548, 31.990953, 47.503506>,  <35.455959, 31.895613, 47.429905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.663548, 31.990953, 47.503506>,  <36.009529, 32.149857, 47.626171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663548, 31.990953, 47.503506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351182, -0.042601, -0.935338,
		0.358504, -0.916719, 0.176357,
		-0.864955, -0.397256, -0.306662,
		35.404060, 31.871777, 47.411507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079906, 31.485268, 47.429089>,  <36.009529, 32.149857, 47.626171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079906, 31.485268, 47.429089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779762, 31.653900, 47.225430>,  <35.599678, 31.755079, 47.103233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.779762, 31.653900, 47.225430>,  <36.079906, 31.485268, 47.429089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779762, 31.653900, 47.225430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486343, -0.169574, -0.857155,
		-0.447698, -0.890795, -0.077791,
		-0.750358, 0.421580, -0.509149,
		35.554653, 31.780375, 47.072685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958424, 31.103693, 46.711109>,  <36.079906, 31.485268, 47.429089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958424, 31.103693, 46.711109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738110, 31.433075, 46.656612>,  <35.605923, 31.630705, 46.623913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738110, 31.433075, 46.656612>,  <35.958424, 31.103693, 46.711109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738110, 31.433075, 46.656612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520923, 0.211605, -0.826959,
		-0.652134, -0.526447, -0.545505,
		-0.550781, 0.823454, -0.136244,
		35.572876, 31.680111, 46.615738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679432, 30.995811, 46.058746>,  <35.958424, 31.103693, 46.711109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679432, 30.995811, 46.058746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672333, 31.389261, 46.130493>,  <35.668072, 31.625330, 46.173542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672333, 31.389261, 46.130493>,  <35.679432, 30.995811, 46.058746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672333, 31.389261, 46.130493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594031, 0.154675, -0.789432,
		-0.804246, 0.092539, -0.587047,
		-0.017748, 0.983622, 0.179367,
		35.667007, 31.684347, 46.184303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635868, 31.330725, 45.467194>,  <35.679432, 30.995811, 46.058746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635868, 31.330725, 45.467194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758259, 31.640343, 45.688908>,  <35.831696, 31.826113, 45.821934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.758259, 31.640343, 45.688908>,  <35.635868, 31.330725, 45.467194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758259, 31.640343, 45.688908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629281, 0.272453, -0.727857,
		-0.714410, 0.571509, -0.403727,
		0.305980, 0.774045, 0.554283,
		35.850052, 31.872557, 45.855194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609997, 31.997597, 45.001251>,  <35.635868, 31.330725, 45.467194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609997, 31.997597, 45.001251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867779, 32.050350, 45.302525>,  <36.022449, 32.082001, 45.483288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.867779, 32.050350, 45.302525>,  <35.609997, 31.997597, 45.001251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867779, 32.050350, 45.302525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697339, 0.302717, -0.649678,
		-0.313683, 0.943912, 0.103119,
		0.644454, 0.131884, 0.753183,
		36.061115, 32.089916, 45.528481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960033, 32.680840, 44.863308>,  <35.609997, 31.997597, 45.001251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960033, 32.680840, 44.863308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193943, 32.465996, 45.106468>,  <36.334290, 32.337090, 45.252365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193943, 32.465996, 45.106468>,  <35.960033, 32.680840, 44.863308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193943, 32.465996, 45.106468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796776, 0.239657, -0.554719,
		0.152259, 0.808748, 0.568105,
		0.584778, -0.537113, 0.607901,
		36.369377, 32.304863, 45.288837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452854, 33.110813, 45.105778>,  <35.960033, 32.680840, 44.863308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452854, 33.110813, 45.105778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624313, 32.749516, 45.113964>,  <36.727188, 32.532738, 45.118877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624313, 32.749516, 45.113964>,  <36.452854, 33.110813, 45.105778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624313, 32.749516, 45.113964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802521, 0.370250, -0.467841,
		0.414994, 0.216965, 0.883576,
		0.428649, -0.903239, 0.020468,
		36.752907, 32.478542, 45.120106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154015, 33.278671, 45.172401>,  <36.452854, 33.110813, 45.105778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154015, 33.278671, 45.172401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193874, 32.893459, 45.072292>,  <37.217793, 32.662331, 45.012226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193874, 32.893459, 45.072292>,  <37.154015, 33.278671, 45.172401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193874, 32.893459, 45.072292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770407, 0.233858, -0.593113,
		0.629716, -0.133706, 0.765233,
		0.099653, -0.963033, -0.250272,
		37.223770, 32.604549, 44.997211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859531, 33.198837, 45.061214>,  <37.154015, 33.278671, 45.172401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859531, 33.198837, 45.061214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729439, 32.843048, 44.932804>,  <37.651382, 32.629574, 44.855759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.729439, 32.843048, 44.932804>,  <37.859531, 33.198837, 45.061214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729439, 32.843048, 44.932804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560724, 0.091966, -0.822880,
		0.761455, -0.447634, 0.468840,
		-0.325231, -0.889475, -0.321027,
		37.631870, 32.576206, 44.836494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450558, 32.699886, 45.061859>,  <37.859531, 33.198837, 45.061214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450558, 32.699886, 45.061859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.160976, 32.629848, 44.794960>,  <37.987228, 32.587826, 44.634819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.160976, 32.629848, 44.794960>,  <38.450558, 32.699886, 45.061859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160976, 32.629848, 44.794960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634599, 0.210232, -0.743698,
		0.270499, -0.961844, -0.041081,
		-0.723958, -0.175099, -0.667253,
		37.943790, 32.577320, 44.594784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.515230, 30.268908, 41.328831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823053, 30.495369, 41.446983>,  <29.007748, 30.631247, 41.517876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.823053, 30.495369, 41.446983>,  <28.515230, 30.268908, 41.328831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823053, 30.495369, 41.446983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557261, 0.821280, -0.122308,
		-0.311839, -0.070484, 0.947517,
		0.769557, 0.566154, 0.295385,
		29.053921, 30.665215, 41.535599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194588, 30.831980, 41.679344>,  <28.515230, 30.268908, 41.328831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194588, 30.831980, 41.679344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557850, 30.964304, 41.576721>,  <28.775806, 31.043697, 41.515148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557850, 30.964304, 41.576721>,  <28.194588, 30.831980, 41.679344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557850, 30.964304, 41.576721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350385, 0.936011, -0.033374,
		0.229099, 0.120202, 0.965953,
		0.908155, 0.330809, -0.256556,
		28.830296, 31.063547, 41.499756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260300, 31.435181, 42.035843>,  <28.194588, 30.831980, 41.679344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260300, 31.435181, 42.035843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497766, 31.436415, 41.713963>,  <28.640247, 31.437155, 41.520832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497766, 31.436415, 41.713963>,  <28.260300, 31.435181, 42.035843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497766, 31.436415, 41.713963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309154, 0.924125, -0.224536,
		0.742956, 0.382077, 0.549576,
		0.593667, 0.003083, -0.804705,
		28.675867, 31.437340, 41.472549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316889, 32.161037, 42.023624>,  <28.260300, 31.435181, 42.035843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316889, 32.161037, 42.023624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442932, 32.048805, 41.660973>,  <28.518559, 31.981466, 41.443382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442932, 32.048805, 41.660973>,  <28.316889, 32.161037, 42.023624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442932, 32.048805, 41.660973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228688, 0.904702, -0.359465,
		0.921090, 0.320607, 0.220916,
		0.315110, -0.280579, -0.906632,
		28.537466, 31.964632, 41.388985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875315, 32.701981, 41.729233>,  <28.316889, 32.161037, 42.023624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875315, 32.701981, 41.729233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.700800, 32.512981, 41.422928>,  <28.596092, 32.399582, 41.239143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.700800, 32.512981, 41.422928>,  <28.875315, 32.701981, 41.729233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700800, 32.512981, 41.422928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332705, 0.875431, -0.350611,
		0.836039, 0.101807, -0.539142,
		-0.436286, -0.472500, -0.765766,
		28.569914, 32.371231, 41.193199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929752, 33.171326, 41.042904>,  <28.875315, 32.701981, 41.729233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929752, 33.171326, 41.042904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655922, 32.898804, 40.939228>,  <28.491625, 32.735291, 40.877022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655922, 32.898804, 40.939228>,  <28.929752, 33.171326, 41.042904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655922, 32.898804, 40.939228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424529, 0.661684, -0.618020,
		0.592564, -0.313046, -0.742206,
		-0.684575, -0.681304, -0.259193,
		28.450550, 32.694412, 40.861469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891775, 33.292423, 40.349174>,  <28.929752, 33.171326, 41.042904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891775, 33.292423, 40.349174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569250, 33.073219, 40.438202>,  <28.375734, 32.941696, 40.491619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569250, 33.073219, 40.438202>,  <28.891775, 33.292423, 40.349174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569250, 33.073219, 40.438202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502249, 0.435587, -0.747001,
		0.312416, -0.714105, -0.626459,
		-0.806314, -0.548013, 0.222574,
		28.327356, 32.908813, 40.504974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627960, 32.882164, 39.772663>,  <28.891775, 33.292423, 40.349174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627960, 32.882164, 39.772663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308205, 32.896088, 40.012585>,  <28.116352, 32.904442, 40.156540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.308205, 32.896088, 40.012585>,  <28.627960, 32.882164, 39.772663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308205, 32.896088, 40.012585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579990, 0.215858, -0.785504,
		-0.156813, -0.975804, -0.152368,
		-0.799388, 0.034805, 0.599806,
		28.068388, 32.906528, 40.192528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039196, 32.450829, 39.449810>,  <28.627960, 32.882164, 39.772663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039196, 32.450829, 39.449810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874876, 32.716213, 39.699951>,  <27.776283, 32.875443, 39.850037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.874876, 32.716213, 39.699951>,  <28.039196, 32.450829, 39.449810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874876, 32.716213, 39.699951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692773, 0.218757, -0.687177,
		-0.592713, -0.715521, 0.369759,
		-0.410802, 0.663458, 0.625353,
		27.751635, 32.915249, 39.887558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359213, 32.309113, 39.360832>,  <28.039196, 32.450829, 39.449810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359213, 32.309113, 39.360832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.351254, 32.666710, 39.539886>,  <27.346478, 32.881268, 39.647320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.351254, 32.666710, 39.539886>,  <27.359213, 32.309113, 39.360832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351254, 32.666710, 39.539886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713985, 0.300707, -0.632298,
		-0.699878, -0.332188, 0.632314,
		-0.019901, 0.893995, 0.447636,
		27.345284, 32.934910, 39.674179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735001, 32.583851, 39.367577>,  <27.359213, 32.309113, 39.360832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735001, 32.583851, 39.367577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.899345, 32.946419, 39.406761>,  <26.997952, 33.163960, 39.430271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.899345, 32.946419, 39.406761>,  <26.735001, 32.583851, 39.367577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899345, 32.946419, 39.406761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649307, 0.366347, -0.666476,
		-0.639994, 0.210223, 0.739063,
		0.410862, 0.906420, 0.097961,
		27.022604, 33.218346, 39.436150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127499, 33.040192, 39.287361>,  <26.735001, 32.583851, 39.367577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127499, 33.040192, 39.287361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.449862, 33.273079, 39.244392>,  <26.643278, 33.412811, 39.218609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.449862, 33.273079, 39.244392>,  <26.127499, 33.040192, 39.287361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449862, 33.273079, 39.244392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449718, 0.483994, -0.750669,
		-0.385059, 0.653279, 0.651887,
		0.805905, 0.582217, -0.107425,
		26.691633, 33.447742, 39.212166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870855, 33.690338, 39.378674>,  <26.127499, 33.040192, 39.287361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870855, 33.690338, 39.378674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.215014, 33.723114, 39.177475>,  <26.421509, 33.742779, 39.056755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.215014, 33.723114, 39.177475>,  <25.870855, 33.690338, 39.378674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215014, 33.723114, 39.177475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500895, 0.317876, -0.805021,
		0.093926, 0.944585, 0.314543,
		0.860397, 0.081941, -0.502995,
		26.473133, 33.747696, 39.026577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746397, 34.203171, 38.929848>,  <25.870855, 33.690338, 39.378674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746397, 34.203171, 38.929848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075926, 34.058552, 38.755215>,  <26.273643, 33.971779, 38.650436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075926, 34.058552, 38.755215>,  <25.746397, 34.203171, 38.929848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075926, 34.058552, 38.755215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290431, 0.392193, -0.872831,
		0.486794, 0.845853, 0.218092,
		0.823821, -0.361548, -0.436579,
		26.323072, 33.950089, 38.624241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059368, 34.807281, 38.620323>,  <25.746397, 34.203171, 38.929848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059368, 34.807281, 38.620323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188822, 34.474285, 38.440449>,  <26.266493, 34.274487, 38.332523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.188822, 34.474285, 38.440449>,  <26.059368, 34.807281, 38.620323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188822, 34.474285, 38.440449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258209, 0.379519, -0.888422,
		0.910269, 0.403636, -0.092132,
		0.323633, -0.832492, -0.449687,
		26.285912, 34.224537, 38.305542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134356, 35.035408, 38.010521>,  <26.059368, 34.807281, 38.620323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134356, 35.035408, 38.010521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145601, 34.640255, 37.949463>,  <26.152348, 34.403164, 37.912827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145601, 34.640255, 37.949463>,  <26.134356, 35.035408, 38.010521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145601, 34.640255, 37.949463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280208, 0.138796, -0.949852,
		0.959527, 0.069476, -0.272911,
		0.028113, -0.987881, -0.152647,
		26.154036, 34.343891, 37.903667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564478, 35.017017, 37.513779>,  <26.134356, 35.035408, 38.010521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564478, 35.017017, 37.513779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336010, 34.689442, 37.491508>,  <26.198929, 34.492897, 37.478146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336010, 34.689442, 37.491508>,  <26.564478, 35.017017, 37.513779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336010, 34.689442, 37.491508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185855, 0.195099, -0.963013,
		0.799514, -0.539696, -0.263639,
		-0.571170, -0.818941, -0.055679,
		26.164660, 34.443760, 37.474804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794666, 34.650978, 36.894043>,  <26.564478, 35.017017, 37.513779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794666, 34.650978, 36.894043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422237, 34.525826, 36.969097>,  <26.198780, 34.450733, 37.014130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422237, 34.525826, 36.969097>,  <26.794666, 34.650978, 36.894043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422237, 34.525826, 36.969097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218413, 0.066064, -0.973618,
		0.292229, -0.947493, -0.129848,
		-0.931074, -0.312879, 0.187639,
		26.142916, 34.431961, 37.025391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664614, 34.424763, 36.273426>,  <26.794666, 34.650978, 36.894043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664614, 34.424763, 36.273426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319857, 34.440174, 36.475674>,  <26.113003, 34.449421, 36.597023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319857, 34.440174, 36.475674>,  <26.664614, 34.424763, 36.273426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319857, 34.440174, 36.475674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507059, -0.054524, -0.860185,
		-0.005569, -0.997769, 0.066528,
		-0.861893, 0.038524, 0.505624,
		26.061289, 34.451733, 36.627361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253317, 34.050388, 35.895782>,  <26.664614, 34.424763, 36.273426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253317, 34.050388, 35.895782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.003626, 34.283329, 36.104092>,  <25.853811, 34.423092, 36.229076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.003626, 34.283329, 36.104092>,  <26.253317, 34.050388, 35.895782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003626, 34.283329, 36.104092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520532, 0.187045, -0.833103,
		-0.582568, -0.791125, 0.186375,
		-0.624228, 0.582353, 0.520772,
		25.816357, 34.458035, 36.260323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615723, 33.771721, 35.776829>,  <26.253317, 34.050388, 35.895782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615723, 33.771721, 35.776829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.587309, 34.162125, 35.859161>,  <25.570261, 34.396366, 35.908562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.587309, 34.162125, 35.859161>,  <25.615723, 33.771721, 35.776829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587309, 34.162125, 35.859161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528131, 0.138256, -0.837832,
		-0.846187, -0.168223, 0.505638,
		-0.071035, 0.976006, 0.205834,
		25.565998, 34.454926, 35.920910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178938, 33.471699, 35.474979>,  <25.615723, 33.771721, 35.776829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178938, 33.471699, 35.474979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.545498, 33.429287, 35.320595>,  <26.765434, 33.403839, 35.227962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.545498, 33.429287, 35.320595>,  <26.178938, 33.471699, 35.474979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545498, 33.429287, 35.320595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177942, -0.755829, 0.630126,
		-0.358533, -0.646127, -0.673776,
		0.916401, -0.106028, -0.385964,
		26.820417, 33.397480, 35.204807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398109, 32.835426, 34.994728>,  <26.178938, 33.471699, 35.474979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398109, 32.835426, 34.994728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678696, 33.007187, 35.222256>,  <26.847048, 33.110245, 35.358772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678696, 33.007187, 35.222256>,  <26.398109, 32.835426, 34.994728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678696, 33.007187, 35.222256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015274, -0.788879, 0.614358,
		0.712539, -0.439640, -0.546814,
		0.701467, 0.429402, 0.568822,
		26.889135, 33.136009, 35.392902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854094, 32.248703, 35.237679>,  <26.398109, 32.835426, 34.994728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854094, 32.248703, 35.237679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.883110, 32.565147, 35.480621>,  <26.900520, 32.755016, 35.626385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.883110, 32.565147, 35.480621>,  <26.854094, 32.248703, 35.237679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883110, 32.565147, 35.480621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042175, -0.605979, 0.794362,
		0.996473, -0.083239, -0.010593,
		0.072540, 0.791113, 0.607352,
		26.904873, 32.802483, 35.662827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386906, 32.015415, 35.666107>,  <26.854094, 32.248703, 35.237679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386906, 32.015415, 35.666107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190632, 32.311756, 35.849571>,  <27.072868, 32.489559, 35.959648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.190632, 32.311756, 35.849571>,  <27.386906, 32.015415, 35.666107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190632, 32.311756, 35.849571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124554, -0.580617, 0.804593,
		0.862389, 0.337673, 0.377176,
		-0.490684, 0.740852, 0.458659,
		27.043427, 32.534012, 35.987167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717571, 32.126514, 36.272011>,  <27.386906, 32.015415, 35.666107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717571, 32.126514, 36.272011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340807, 32.255100, 36.310921>,  <27.114748, 32.332253, 36.334267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.340807, 32.255100, 36.310921>,  <27.717571, 32.126514, 36.272011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340807, 32.255100, 36.310921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113393, -0.576997, 0.808837,
		0.316136, 0.750824, 0.579932,
		-0.941913, 0.321462, 0.097271,
		27.058233, 32.351540, 36.340103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620634, 31.973803, 36.910248>,  <27.717571, 32.126514, 36.272011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620634, 31.973803, 36.910248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247311, 32.091702, 36.828217>,  <27.023315, 32.162441, 36.778999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247311, 32.091702, 36.828217>,  <27.620634, 31.973803, 36.910248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247311, 32.091702, 36.828217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342821, -0.561584, 0.753058,
		0.106792, 0.773142, 0.625177,
		-0.933311, 0.294745, -0.205077,
		26.967318, 32.180126, 36.766693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340395, 32.286449, 37.512699>,  <27.620634, 31.973803, 36.910248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340395, 32.286449, 37.512699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057575, 32.122463, 37.282219>,  <26.887882, 32.024071, 37.143932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.057575, 32.122463, 37.282219>,  <27.340395, 32.286449, 37.512699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057575, 32.122463, 37.282219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212634, -0.653842, 0.726139,
		-0.674437, 0.635937, 0.375126,
		-0.707051, -0.409970, -0.576197,
		26.845459, 31.999472, 37.109360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603727, 32.250652, 37.856625>,  <27.340395, 32.286449, 37.512699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603727, 32.250652, 37.856625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615479, 31.966167, 37.575680>,  <26.622530, 31.795477, 37.407112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.615479, 31.966167, 37.575680>,  <26.603727, 32.250652, 37.856625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615479, 31.966167, 37.575680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098303, -0.701315, 0.706041,
		-0.994723, 0.048302, -0.090518,
		0.029379, -0.711213, -0.702362,
		26.624292, 31.752804, 37.364971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200201, 31.736612, 38.142361>,  <26.603727, 32.250652, 37.856625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200201, 31.736612, 38.142361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364437, 31.530869, 37.841202>,  <26.462978, 31.407423, 37.660507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.364437, 31.530869, 37.841202>,  <26.200201, 31.736612, 38.142361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364437, 31.530869, 37.841202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082211, -0.843226, 0.531236,
		-0.908107, -0.156223, -0.388505,
		0.410589, -0.514358, -0.752896,
		26.487614, 31.376560, 37.615334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766665, 31.229351, 38.174770>,  <26.200201, 31.736612, 38.142361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766665, 31.229351, 38.174770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101784, 31.109461, 37.992229>,  <26.302855, 31.037527, 37.882706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101784, 31.109461, 37.992229>,  <25.766665, 31.229351, 38.174770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101784, 31.109461, 37.992229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049242, -0.790956, 0.609888,
		-0.543754, -0.533435, -0.647904,
		0.837799, -0.299724, -0.456353,
		26.353123, 31.019543, 37.855324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.707701, 30.518713, 38.181320>,  <25.766665, 31.229351, 38.174770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.707701, 30.518713, 38.181320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098894, 30.590670, 38.139019>,  <26.333611, 30.633842, 38.113640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098894, 30.590670, 38.139019>,  <25.707701, 30.518713, 38.181320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098894, 30.590670, 38.139019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200628, -0.671253, 0.713560,
		0.057377, -0.719068, -0.692567,
		0.977986, 0.179890, -0.105751,
		26.392290, 30.644636, 38.107292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947456, 29.913811, 37.983723>,  <25.707701, 30.518713, 38.181320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947456, 29.913811, 37.983723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.250095, 30.114376, 38.151600>,  <26.431679, 30.234716, 38.252327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.250095, 30.114376, 38.151600>,  <25.947456, 29.913811, 37.983723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.250095, 30.114376, 38.151600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199545, -0.788289, 0.582051,
		0.622690, -0.356630, -0.696471,
		0.756597, 0.501414, 0.419696,
		26.477074, 30.264801, 38.277508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493366, 29.445013, 38.012001>,  <25.947456, 29.913811, 37.983723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493366, 29.445013, 38.012001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.598497, 29.729540, 38.272755>,  <26.661575, 29.900255, 38.429207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.598497, 29.729540, 38.272755>,  <26.493366, 29.445013, 38.012001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598497, 29.729540, 38.272755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388307, -0.696485, 0.603429,
		0.883256, 0.094534, -0.459264,
		0.262826, 0.711317, 0.651883,
		26.677345, 29.942934, 38.468319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228107, 29.255991, 38.313625>,  <26.493366, 29.445013, 38.012001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228107, 29.255991, 38.313625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053873, 29.503607, 38.575024>,  <26.949333, 29.652176, 38.731861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.053873, 29.503607, 38.575024>,  <27.228107, 29.255991, 38.313625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053873, 29.503607, 38.575024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174938, -0.653929, 0.736053,
		0.882985, 0.434935, 0.176548,
		-0.435585, 0.619039, 0.653496,
		26.923197, 29.689318, 38.771072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679461, 29.173740, 38.860413>,  <27.228107, 29.255991, 38.313625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679461, 29.173740, 38.860413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356878, 29.355766, 39.011433>,  <27.163328, 29.464981, 39.102047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.356878, 29.355766, 39.011433>,  <27.679461, 29.173740, 38.860413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356878, 29.355766, 39.011433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068277, -0.562580, 0.823919,
		0.587338, 0.690233, 0.422625,
		-0.806456, 0.455064, 0.377552,
		27.114941, 29.492285, 39.124699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800549, 29.517582, 39.532169>,  <27.679461, 29.173740, 38.860413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800549, 29.517582, 39.532169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408274, 29.442591, 39.509876>,  <27.172909, 29.397596, 39.496498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.408274, 29.442591, 39.509876>,  <27.800549, 29.517582, 39.532169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408274, 29.442591, 39.509876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021137, -0.384878, 0.922725,
		-0.194442, 0.903726, 0.381408,
		-0.980686, -0.187478, -0.055734,
		27.114067, 29.386347, 39.493156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477037, 29.788223, 40.088486>,  <27.800549, 29.517582, 39.532169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477037, 29.788223, 40.088486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222221, 29.497107, 39.986900>,  <27.069332, 29.322435, 39.925949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.222221, 29.497107, 39.986900>,  <27.477037, 29.788223, 40.088486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222221, 29.497107, 39.986900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033802, -0.302776, 0.952462,
		-0.770090, 0.615340, 0.168279,
		-0.637039, -0.727793, -0.253965,
		27.031109, 29.278769, 39.910709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268417, 29.598347, 40.715588>,  <27.477037, 29.788223, 40.088486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268417, 29.598347, 40.715588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065712, 29.328178, 40.501301>,  <26.944088, 29.166077, 40.372726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065712, 29.328178, 40.501301>,  <27.268417, 29.598347, 40.715588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065712, 29.328178, 40.501301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237304, -0.488126, 0.839893,
		-0.828781, 0.552756, 0.087083,
		-0.506763, -0.675422, -0.535720,
		26.913683, 29.125551, 40.340584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612827, 29.611715, 40.948826>,  <27.268417, 29.598347, 40.715588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612827, 29.611715, 40.948826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701433, 29.252766, 40.796169>,  <26.754597, 29.037395, 40.704575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.701433, 29.252766, 40.796169>,  <26.612827, 29.611715, 40.948826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701433, 29.252766, 40.796169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188184, -0.423344, 0.886209,
		-0.956828, -0.124487, -0.262648,
		0.221512, -0.897376, -0.381641,
		26.767887, 28.983553, 40.681679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181871, 29.122152, 41.260113>,  <26.612827, 29.611715, 40.948826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181871, 29.122152, 41.260113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429737, 28.861156, 41.085632>,  <26.578457, 28.704559, 40.980942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.429737, 28.861156, 41.085632>,  <26.181871, 29.122152, 41.260113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429737, 28.861156, 41.085632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052080, -0.520361, 0.852357,
		-0.783136, -0.550894, -0.288468,
		0.619665, -0.652488, -0.436204,
		26.615637, 28.665411, 40.954773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938810, 28.501398, 41.381634>,  <26.181871, 29.122152, 41.260113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938810, 28.501398, 41.381634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321957, 28.409271, 41.312988>,  <26.551844, 28.353994, 41.271801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321957, 28.409271, 41.312988>,  <25.938810, 28.501398, 41.381634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321957, 28.409271, 41.312988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005791, -0.581887, 0.813249,
		-0.287165, -0.779976, -0.556034,
		0.957864, -0.230317, -0.171614,
		26.609316, 28.340176, 41.261505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.189915, 29.464491, 47.743114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810066, 29.422583, 47.624966>,  <35.582157, 29.397438, 47.554077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810066, 29.422583, 47.624966>,  <36.189915, 29.464491, 47.743114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810066, 29.422583, 47.624966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313037, 0.271431, 0.910128,
		-0.015179, 0.956739, -0.290553,
		-0.949619, -0.104769, -0.295375,
		35.525181, 29.391151, 47.536354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948109, 29.811266, 48.267979>,  <36.189915, 29.464491, 47.743114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948109, 29.811266, 48.267979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617073, 29.691032, 48.078350>,  <35.418449, 29.618893, 47.964573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617073, 29.691032, 48.078350>,  <35.948109, 29.811266, 48.267979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617073, 29.691032, 48.078350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527371, 0.127061, 0.840081,
		-0.192279, 0.945254, -0.263674,
		-0.827592, -0.300584, -0.474068,
		35.368797, 29.600857, 47.936131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269802, 30.269653, 48.377758>,  <35.948109, 29.811266, 48.267979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269802, 30.269653, 48.377758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141994, 29.896652, 48.310417>,  <35.065311, 29.672852, 48.270012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141994, 29.896652, 48.310417>,  <35.269802, 30.269653, 48.377758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141994, 29.896652, 48.310417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530796, 0.028960, 0.847005,
		-0.784961, 0.359995, -0.504223,
		-0.319519, -0.932505, -0.168351,
		35.046139, 29.616901, 48.259911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644890, 30.282906, 48.574284>,  <35.269802, 30.269653, 48.377758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644890, 30.282906, 48.574284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700504, 29.886858, 48.566963>,  <34.733871, 29.649229, 48.562569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.700504, 29.886858, 48.566963>,  <34.644890, 30.282906, 48.574284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700504, 29.886858, 48.566963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649960, -0.105183, 0.752654,
		-0.747141, -0.092750, -0.658162,
		0.139036, -0.990118, -0.018303,
		34.742214, 29.589823, 48.561474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029587, 30.089125, 48.858185>,  <34.644890, 30.282906, 48.574284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029587, 30.089125, 48.858185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229584, 29.742748, 48.853203>,  <34.349583, 29.534922, 48.850212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.229584, 29.742748, 48.853203>,  <34.029587, 30.089125, 48.858185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229584, 29.742748, 48.853203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611061, -0.362943, 0.703475,
		-0.613689, -0.344119, -0.710611,
		0.499991, -0.865941, -0.012456,
		34.379581, 29.482965, 48.849464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546707, 29.567091, 48.889851>,  <34.029587, 30.089125, 48.858185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546707, 29.567091, 48.889851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877544, 29.363468, 48.985165>,  <34.076046, 29.241295, 49.042355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877544, 29.363468, 48.985165>,  <33.546707, 29.567091, 48.889851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877544, 29.363468, 48.985165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510839, -0.503975, 0.696457,
		-0.234444, -0.697762, -0.676879,
		0.827091, -0.509057, 0.238290,
		34.125671, 29.210751, 49.056652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345428, 28.849220, 48.888088>,  <33.546707, 29.567091, 48.889851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345428, 28.849220, 48.888088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672325, 28.889677, 49.115028>,  <33.868462, 28.913952, 49.251194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672325, 28.889677, 49.115028>,  <33.345428, 28.849220, 48.888088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672325, 28.889677, 49.115028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483647, -0.414955, 0.770647,
		0.313370, -0.904203, -0.290202,
		0.817242, 0.101142, 0.567350,
		33.917500, 28.920019, 49.285233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460140, 28.165045, 49.223877>,  <33.345428, 28.849220, 48.888088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460140, 28.165045, 49.223877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647076, 28.445356, 49.439472>,  <33.759235, 28.613543, 49.568829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647076, 28.445356, 49.439472>,  <33.460140, 28.165045, 49.223877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647076, 28.445356, 49.439472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320002, -0.434233, 0.842045,
		0.824134, -0.565994, 0.021318,
		0.467336, 0.700780, 0.538985,
		33.787277, 28.655590, 49.601170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788624, 27.804247, 49.892868>,  <33.460140, 28.165045, 49.223877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788624, 27.804247, 49.892868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780544, 28.188099, 50.005085>,  <33.775696, 28.418409, 50.072414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780544, 28.188099, 50.005085>,  <33.788624, 27.804247, 49.892868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780544, 28.188099, 50.005085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176326, -0.279624, 0.943780,
		0.984125, -0.030407, 0.174855,
		-0.020196, 0.959628, 0.280546,
		33.774487, 28.475986, 50.089249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178391, 27.816595, 50.547611>,  <33.788624, 27.804247, 49.892868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178391, 27.816595, 50.547611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944492, 28.140980, 50.539520>,  <33.804153, 28.335611, 50.534664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944492, 28.140980, 50.539520>,  <34.178391, 27.816595, 50.547611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944492, 28.140980, 50.539520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251847, -0.157774, 0.954820,
		0.771132, 0.563423, 0.296497,
		-0.584747, 0.810963, -0.020232,
		33.769070, 28.384270, 50.533451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181171, 28.201481, 51.188824>,  <34.178391, 27.816595, 50.547611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181171, 28.201481, 51.188824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824371, 28.314867, 51.047977>,  <33.610291, 28.382898, 50.963470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824371, 28.314867, 51.047977>,  <34.181171, 28.201481, 51.188824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824371, 28.314867, 51.047977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384214, -0.065038, 0.920950,
		0.238155, 0.956775, 0.166924,
		-0.891999, 0.283464, -0.352117,
		33.556770, 28.399906, 50.942341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925617, 28.707773, 51.716179>,  <34.181171, 28.201481, 51.188824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925617, 28.707773, 51.716179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606907, 28.572670, 51.515755>,  <33.415680, 28.491608, 51.395500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.606907, 28.572670, 51.515755>,  <33.925617, 28.707773, 51.716179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606907, 28.572670, 51.515755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472552, -0.168525, 0.865040,
		-0.376617, 0.926023, -0.025332,
		-0.796777, -0.337759, -0.501064,
		33.367874, 28.471342, 51.365437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232632, 29.061775, 51.908623>,  <33.925617, 28.707773, 51.716179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232632, 29.061775, 51.908623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184433, 28.696104, 51.753826>,  <33.155514, 28.476702, 51.660950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184433, 28.696104, 51.753826>,  <33.232632, 29.061775, 51.908623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184433, 28.696104, 51.753826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521285, -0.273487, 0.808373,
		-0.844833, 0.299139, -0.443592,
		-0.120499, -0.914178, -0.386987,
		33.148285, 28.421850, 51.637730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496445, 28.909140, 51.925179>,  <33.232632, 29.061775, 51.908623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496445, 28.909140, 51.925179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643013, 28.537989, 51.897541>,  <32.730953, 28.315298, 51.880959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.643013, 28.537989, 51.897541>,  <32.496445, 28.909140, 51.925179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643013, 28.537989, 51.897541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595606, -0.290965, 0.748727,
		-0.714833, -0.233198, -0.659267,
		0.366425, -0.927878, -0.069097,
		32.752941, 28.259624, 51.876812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193127, 29.552162, 52.242886>,  <32.496445, 28.909140, 51.925179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193127, 29.552162, 52.242886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159847, 29.866541, 52.487953>,  <32.139881, 30.055168, 52.634995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159847, 29.866541, 52.487953>,  <32.193127, 29.552162, 52.242886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159847, 29.866541, 52.487953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445122, 0.579372, -0.682785,
		-0.891597, 0.215908, -0.398044,
		-0.083197, 0.785946, 0.612672,
		32.134888, 30.102325, 52.671753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972635, 30.080271, 51.827072>,  <32.193127, 29.552162, 52.242886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972635, 30.080271, 51.827072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157612, 30.262648, 52.131245>,  <32.268597, 30.372074, 52.313751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.157612, 30.262648, 52.131245>,  <31.972635, 30.080271, 51.827072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157612, 30.262648, 52.131245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584995, 0.487590, -0.648102,
		-0.666278, 0.744562, -0.041242,
		0.462443, 0.455943, 0.760436,
		32.296345, 30.399431, 52.359375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028130, 30.694910, 51.606522>,  <31.972635, 30.080271, 51.827072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028130, 30.694910, 51.606522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291599, 30.664001, 51.905899>,  <32.449680, 30.645456, 52.085526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291599, 30.664001, 51.905899>,  <32.028130, 30.694910, 51.606522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291599, 30.664001, 51.905899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735078, 0.278445, -0.618165,
		-0.160634, 0.957339, 0.240208,
		0.658678, -0.077273, 0.748446,
		32.489204, 30.640820, 52.130432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195271, 31.403954, 51.665878>,  <32.028130, 30.694910, 51.606522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195271, 31.403954, 51.665878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484303, 31.170135, 51.813488>,  <32.657722, 31.029844, 51.902054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484303, 31.170135, 51.813488>,  <32.195271, 31.403954, 51.665878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484303, 31.170135, 51.813488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672766, 0.471923, -0.569802,
		0.158925, 0.659996, 0.734267,
		0.722585, -0.584545, 0.369023,
		32.701077, 30.994772, 51.924194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784409, 31.874146, 51.836945>,  <32.195271, 31.403954, 51.665878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784409, 31.874146, 51.836945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916477, 31.498552, 51.798378>,  <32.995720, 31.273197, 51.775238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916477, 31.498552, 51.798378>,  <32.784409, 31.874146, 51.836945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916477, 31.498552, 51.798378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792861, 0.331309, -0.511474,
		0.512208, 0.092434, 0.853873,
		0.330174, -0.938984, -0.096412,
		33.015530, 31.216858, 51.769455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528595, 31.918985, 51.934723>,  <32.784409, 31.874146, 51.836945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528595, 31.918985, 51.934723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466709, 31.576937, 51.736801>,  <33.429577, 31.371708, 51.618050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466709, 31.576937, 51.736801>,  <33.528595, 31.918985, 51.934723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466709, 31.576937, 51.736801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690181, 0.264806, -0.673445,
		0.706903, -0.445698, 0.549218,
		-0.154717, -0.855120, -0.494805,
		33.420296, 31.320400, 51.588360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147202, 31.706007, 51.672821>,  <33.528595, 31.918985, 51.934723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147202, 31.706007, 51.672821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883659, 31.522276, 51.434517>,  <33.725533, 31.412037, 51.291534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.883659, 31.522276, 51.434517>,  <34.147202, 31.706007, 51.672821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883659, 31.522276, 51.434517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484736, 0.346397, -0.803144,
		0.575276, -0.817940, -0.005572,
		-0.658854, -0.459329, -0.595759,
		33.686005, 31.384478, 51.255791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501087, 31.528793, 51.175941>,  <34.147202, 31.706007, 51.672821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501087, 31.528793, 51.175941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148548, 31.446726, 51.005703>,  <33.937023, 31.397486, 50.903561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.148548, 31.446726, 51.005703>,  <34.501087, 31.528793, 51.175941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148548, 31.446726, 51.005703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371259, 0.256413, -0.892423,
		0.292226, -0.944542, -0.149819,
		-0.881346, -0.205167, -0.425600,
		33.884144, 31.385176, 50.878021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706360, 31.093971, 50.598625>,  <34.501087, 31.528793, 51.175941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706360, 31.093971, 50.598625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336468, 31.226606, 50.523876>,  <34.114532, 31.306187, 50.479027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336468, 31.226606, 50.523876>,  <34.706360, 31.093971, 50.598625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336468, 31.226606, 50.523876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233093, 0.105220, -0.966745,
		-0.300897, -0.937539, -0.174591,
		-0.924732, 0.331586, -0.186874,
		34.059048, 31.326082, 50.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536312, 30.896320, 49.848011>,  <34.706360, 31.093971, 50.598625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536312, 30.896320, 49.848011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276424, 31.187210, 49.936565>,  <34.120491, 31.361744, 49.989697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.276424, 31.187210, 49.936565>,  <34.536312, 30.896320, 49.848011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276424, 31.187210, 49.936565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014375, 0.279421, -0.960061,
		-0.760041, -0.626950, -0.171091,
		-0.649717, 0.727226, 0.221384,
		34.081509, 31.405378, 50.002979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948494, 30.761297, 49.440475>,  <34.536312, 30.896320, 49.848011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948494, 30.761297, 49.440475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986351, 31.146700, 49.540634>,  <34.009064, 31.377941, 49.600727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986351, 31.146700, 49.540634>,  <33.948494, 30.761297, 49.440475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986351, 31.146700, 49.540634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082373, 0.243080, -0.966502,
		-0.992097, 0.112099, -0.056361,
		0.094644, 0.963507, 0.250393,
		34.014744, 31.435753, 49.615753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489822, 31.140291, 49.054661>,  <33.948494, 30.761297, 49.440475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489822, 31.140291, 49.054661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788071, 31.380941, 49.169270>,  <33.967018, 31.525331, 49.238037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788071, 31.380941, 49.169270>,  <33.489822, 31.140291, 49.054661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788071, 31.380941, 49.169270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134685, 0.285043, -0.949005,
		-0.652616, 0.746189, 0.131504,
		0.745622, 0.601625, 0.286523,
		34.011757, 31.561428, 49.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391972, 31.705080, 48.750839>,  <33.489822, 31.140291, 49.054661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391972, 31.705080, 48.750839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777435, 31.757566, 48.843906>,  <34.008713, 31.789059, 48.899746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777435, 31.757566, 48.843906>,  <33.391972, 31.705080, 48.750839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777435, 31.757566, 48.843906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207557, 0.180470, -0.961431,
		-0.168147, 0.974788, 0.146677,
		0.963663, 0.131218, 0.232670,
		34.066536, 31.796932, 48.913708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697495, 32.201721, 48.293198>,  <33.391972, 31.705080, 48.750839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697495, 32.201721, 48.293198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021679, 32.036793, 48.459641>,  <34.216190, 31.937836, 48.559505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021679, 32.036793, 48.459641>,  <33.697495, 32.201721, 48.293198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021679, 32.036793, 48.459641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555915, 0.317389, -0.768259,
		0.184703, 0.853964, 0.486447,
		0.810458, -0.412323, 0.416109,
		34.264816, 31.913095, 48.584473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537979, 32.976437, 48.068481>,  <33.697495, 32.201721, 48.293198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537979, 32.976437, 48.068481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221600, 33.043991, 47.833237>,  <33.031773, 33.084522, 47.692089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.221600, 33.043991, 47.833237>,  <33.537979, 32.976437, 48.068481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221600, 33.043991, 47.833237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604814, -0.361473, 0.709603,
		-0.092744, 0.916959, 0.388052,
		-0.790947, 0.168888, -0.588115,
		32.984314, 33.094658, 47.656803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079655, 33.069691, 48.556763>,  <33.537979, 32.976437, 48.068481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079655, 33.069691, 48.556763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843864, 33.031528, 48.235912>,  <32.702389, 33.008629, 48.043400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843864, 33.031528, 48.235912>,  <33.079655, 33.069691, 48.556763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843864, 33.031528, 48.235912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741218, -0.330851, 0.584067,
		-0.321110, 0.938848, 0.124311,
		-0.589478, -0.095408, -0.802130,
		32.667023, 33.002907, 47.995274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444973, 33.519241, 48.617085>,  <33.079655, 33.069691, 48.556763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444973, 33.519241, 48.617085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350780, 33.213570, 48.376892>,  <32.294266, 33.030167, 48.232777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.350780, 33.213570, 48.376892>,  <32.444973, 33.519241, 48.617085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350780, 33.213570, 48.376892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726612, -0.271888, 0.630961,
		-0.645431, 0.584897, -0.491237,
		-0.235486, -0.764180, -0.600479,
		32.280136, 32.984314, 48.196747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738983, 33.432899, 48.642838>,  <32.444973, 33.519241, 48.617085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738983, 33.432899, 48.642838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832956, 33.069344, 48.505016>,  <31.889341, 32.851208, 48.422321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832956, 33.069344, 48.505016>,  <31.738983, 33.432899, 48.642838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832956, 33.069344, 48.505016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721855, -0.400532, 0.564357,
		-0.650946, 0.116132, -0.750188,
		0.234935, -0.908894, -0.344556,
		31.903437, 32.796677, 48.401649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085264, 33.148022, 48.565262>,  <31.738983, 33.432899, 48.642838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085264, 33.148022, 48.565262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342218, 32.841480, 48.567894>,  <31.496391, 32.657555, 48.569473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.342218, 32.841480, 48.567894>,  <31.085264, 33.148022, 48.565262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342218, 32.841480, 48.567894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520329, -0.429821, 0.737910,
		-0.562672, -0.477447, -0.674867,
		0.642385, -0.766354, 0.006581,
		31.534933, 32.611572, 48.569870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663519, 32.638187, 48.515160>,  <31.085264, 33.148022, 48.565262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663519, 32.638187, 48.515160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.995697, 32.482456, 48.674549>,  <31.195004, 32.389015, 48.770184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.995697, 32.482456, 48.674549>,  <30.663519, 32.638187, 48.515160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995697, 32.482456, 48.674549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546588, -0.431131, 0.717891,
		-0.107704, -0.813970, -0.570835,
		0.830446, -0.389332, 0.398472,
		31.244831, 32.365658, 48.794090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467049, 31.932823, 48.689232>,  <30.663519, 32.638187, 48.515160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467049, 31.932823, 48.689232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.796280, 32.012604, 48.901932>,  <30.993818, 32.060474, 49.029552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.796280, 32.012604, 48.901932>,  <30.467049, 31.932823, 48.689232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796280, 32.012604, 48.901932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425880, -0.402663, 0.810240,
		0.375721, -0.893354, -0.246480,
		0.823080, 0.199454, 0.531750,
		31.043203, 32.072441, 49.061459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520552, 31.334187, 48.253254>,  <30.467049, 31.932823, 48.689232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520552, 31.334187, 48.253254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174603, 31.314627, 48.053413>,  <29.967033, 31.302891, 47.933510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174603, 31.314627, 48.053413>,  <30.520552, 31.334187, 48.253254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174603, 31.314627, 48.053413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345938, 0.663126, -0.663770,
		0.363756, -0.746909, -0.556604,
		-0.864875, -0.048900, -0.499600,
		29.915140, 31.299957, 47.903534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675632, 31.177353, 47.622433>,  <30.520552, 31.334187, 48.253254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675632, 31.177353, 47.622433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313776, 31.340446, 47.572834>,  <30.096663, 31.438303, 47.543076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313776, 31.340446, 47.572834>,  <30.675632, 31.177353, 47.622433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313776, 31.340446, 47.572834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339194, 0.512717, -0.788713,
		-0.258010, -0.755562, -0.602127,
		-0.904642, 0.407734, -0.123996,
		30.042383, 31.462767, 47.535637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553528, 31.214680, 46.831284>,  <30.675632, 31.177353, 47.622433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553528, 31.214680, 46.831284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286072, 31.467712, 46.987621>,  <30.125599, 31.619532, 47.081425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286072, 31.467712, 46.987621>,  <30.553528, 31.214680, 46.831284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286072, 31.467712, 46.987621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207925, 0.663716, -0.718505,
		-0.713925, -0.399153, -0.575316,
		-0.668640, 0.632581, 0.390849,
		30.085480, 31.657486, 47.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279890, 31.525373, 46.255993>,  <30.553528, 31.214680, 46.831284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279890, 31.525373, 46.255993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177952, 31.771503, 46.554371>,  <30.116789, 31.919182, 46.733398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177952, 31.771503, 46.554371>,  <30.279890, 31.525373, 46.255993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177952, 31.771503, 46.554371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084136, 0.782597, -0.616816,
		-0.963315, -0.094432, -0.251211,
		-0.254844, 0.615324, 0.745943,
		30.101498, 31.956100, 46.778152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778423, 31.942772, 45.870564>,  <30.279890, 31.525373, 46.255993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778423, 31.942772, 45.870564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.884651, 32.156624, 46.191471>,  <29.948387, 32.284935, 46.384018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.884651, 32.156624, 46.191471>,  <29.778423, 31.942772, 45.870564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884651, 32.156624, 46.191471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069705, 0.840624, -0.537114,
		-0.961569, 0.086718, 0.260510,
		0.265569, 0.534631, 0.802274,
		29.964321, 32.317013, 46.432152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262722, 32.448658, 45.910107>,  <29.778423, 31.942772, 45.870564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262722, 32.448658, 45.910107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606205, 32.581997, 46.065800>,  <29.812294, 32.661999, 46.159218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606205, 32.581997, 46.065800>,  <29.262722, 32.448658, 45.910107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606205, 32.581997, 46.065800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003961, 0.763826, -0.645409,
		-0.512455, 0.552674, 0.657222,
		0.858705, 0.333347, 0.389237,
		29.863817, 32.681999, 46.182571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250828, 33.113541, 45.692661>,  <29.262722, 32.448658, 45.910107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250828, 33.113541, 45.692661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.634874, 33.057827, 45.789635>,  <29.865303, 33.024399, 45.847820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.634874, 33.057827, 45.789635>,  <29.250828, 33.113541, 45.692661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634874, 33.057827, 45.789635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276904, 0.593777, -0.755482,
		-0.038728, 0.792483, 0.608663,
		0.960117, -0.139283, 0.242437,
		29.922909, 33.016041, 45.862366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.725922, 27.146397, 48.676750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.816936, 27.535875, 48.681454>,  <30.871546, 27.769564, 48.684277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.816936, 27.535875, 48.681454>,  <30.725922, 27.146397, 48.676750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816936, 27.535875, 48.681454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134666, 0.019506, 0.990699,
		0.964413, -0.227005, 0.135562,
		0.227538, 0.973698, 0.011758,
		30.885199, 27.827984, 48.684982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330526, 27.442446, 49.001907>,  <30.725922, 27.146397, 48.676750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330526, 27.442446, 49.001907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671028, 27.404932, 49.208431>,  <31.875328, 27.382423, 49.332344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.671028, 27.404932, 49.208431>,  <31.330526, 27.442446, 49.001907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671028, 27.404932, 49.208431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484311, -0.238377, -0.841796,
		0.202022, 0.966634, -0.157499,
		0.851252, -0.093783, 0.516308,
		31.926403, 27.376797, 49.363323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894302, 27.863258, 48.732059>,  <31.330526, 27.442446, 49.001907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894302, 27.863258, 48.732059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.066193, 27.536810, 48.886608>,  <32.169327, 27.340940, 48.979340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.066193, 27.536810, 48.886608>,  <31.894302, 27.863258, 48.732059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066193, 27.536810, 48.886608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517685, -0.127912, -0.845955,
		0.739822, 0.563550, 0.367526,
		0.429727, -0.816119, 0.386373,
		32.195110, 27.291975, 49.002522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582958, 27.914244, 48.466244>,  <31.894302, 27.863258, 48.732059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582958, 27.914244, 48.466244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574768, 27.545126, 48.620140>,  <32.569855, 27.323654, 48.712479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574768, 27.545126, 48.620140>,  <32.582958, 27.914244, 48.466244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574768, 27.545126, 48.620140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680909, -0.294656, -0.670478,
		0.732081, 0.248245, 0.634375,
		-0.020479, -0.922796, 0.384745,
		32.568623, 27.268288, 48.735565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234287, 27.679831, 48.390205>,  <32.582958, 27.914244, 48.466244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234287, 27.679831, 48.390205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064461, 27.324957, 48.462482>,  <32.962566, 27.112032, 48.505848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.064461, 27.324957, 48.462482>,  <33.234287, 27.679831, 48.390205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064461, 27.324957, 48.462482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571470, -0.417380, -0.706553,
		0.702258, -0.196719, 0.684204,
		-0.424565, -0.887184, 0.180689,
		32.937092, 27.058802, 48.516689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747887, 27.196716, 48.425587>,  <33.234287, 27.679831, 48.390205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747887, 27.196716, 48.425587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.426502, 26.974062, 48.341099>,  <33.233673, 26.840469, 48.290405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.426502, 26.974062, 48.341099>,  <33.747887, 27.196716, 48.425587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426502, 26.974062, 48.341099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535587, -0.520831, -0.664742,
		0.260008, -0.647219, 0.716592,
		-0.803457, -0.556635, -0.211222,
		33.185467, 26.807072, 48.277733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048107, 26.507044, 48.439789>,  <33.747887, 27.196716, 48.425587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048107, 26.507044, 48.439789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.718712, 26.543192, 48.215755>,  <33.521076, 26.564880, 48.081333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.718712, 26.543192, 48.215755>,  <34.048107, 26.507044, 48.439789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718712, 26.543192, 48.215755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483420, -0.404937, -0.776100,
		-0.296933, -0.909868, 0.289777,
		-0.823490, 0.090366, -0.560087,
		33.471664, 26.570303, 48.047729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114254, 25.920164, 48.047497>,  <34.048107, 26.507044, 48.439789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114254, 25.920164, 48.047497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884602, 26.171196, 47.837158>,  <33.746811, 26.321815, 47.710957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884602, 26.171196, 47.837158>,  <34.114254, 25.920164, 48.047497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884602, 26.171196, 47.837158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594831, -0.121610, -0.794599,
		-0.562623, -0.768994, -0.303485,
		-0.574135, 0.627582, -0.525843,
		33.712360, 26.359470, 47.679405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013981, 25.567656, 47.430054>,  <34.114254, 25.920164, 48.047497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013981, 25.567656, 47.430054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915668, 25.947771, 47.353596>,  <33.856682, 26.175840, 47.307720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.915668, 25.947771, 47.353596>,  <34.013981, 25.567656, 47.430054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915668, 25.947771, 47.353596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375746, -0.088373, -0.922499,
		-0.893535, -0.298560, -0.335347,
		-0.245785, 0.950291, -0.191147,
		33.841934, 26.232859, 47.296253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678013, 25.621643, 46.662785>,  <34.013981, 25.567656, 47.430054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678013, 25.621643, 46.662785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770222, 25.998123, 46.761581>,  <33.825546, 26.224010, 46.820858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770222, 25.998123, 46.761581>,  <33.678013, 25.621643, 46.662785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770222, 25.998123, 46.761581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252230, 0.187352, -0.949357,
		-0.939808, 0.281148, -0.194209,
		0.230524, 0.941199, 0.246989,
		33.839378, 26.280483, 46.835678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348854, 25.974709, 46.174397>,  <33.678013, 25.621643, 46.662785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348854, 25.974709, 46.174397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626572, 26.215151, 46.332699>,  <33.793201, 26.359417, 46.427681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.626572, 26.215151, 46.332699>,  <33.348854, 25.974709, 46.174397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626572, 26.215151, 46.332699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247970, 0.316420, -0.915636,
		-0.675620, 0.733858, 0.070633,
		0.694297, 0.601107, 0.395755,
		33.834862, 26.395483, 46.451424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277760, 26.608595, 45.746471>,  <33.348854, 25.974709, 46.174397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277760, 26.608595, 45.746471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.628750, 26.613756, 45.938251>,  <33.839344, 26.616854, 46.053318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.628750, 26.613756, 45.938251>,  <33.277760, 26.608595, 45.746471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628750, 26.613756, 45.938251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461172, 0.251911, -0.850800,
		-0.131759, 0.967664, 0.215094,
		0.877473, 0.012905, 0.479451,
		33.891991, 26.617628, 46.082088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058720, 27.322985, 45.948456>,  <33.277760, 26.608595, 45.746471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058720, 27.322985, 45.948456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.813534, 27.592316, 45.783092>,  <32.666424, 27.753914, 45.683876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.813534, 27.592316, 45.783092>,  <33.058720, 27.322985, 45.948456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813534, 27.592316, 45.783092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749500, -0.329923, 0.573935,
		0.250054, 0.661649, 0.706890,
		-0.612962, 0.673329, -0.413407,
		32.629646, 27.794313, 45.659069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857159, 27.838818, 46.486813>,  <33.058720, 27.322985, 45.948456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857159, 27.838818, 46.486813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594856, 27.803654, 46.186878>,  <32.437473, 27.782557, 46.006916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594856, 27.803654, 46.186878>,  <32.857159, 27.838818, 46.486813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594856, 27.803654, 46.186878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661716, -0.411247, 0.626904,
		-0.363478, 0.907275, 0.211508,
		-0.655756, -0.087908, -0.749837,
		32.398129, 27.777281, 45.961926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267162, 28.126400, 46.694332>,  <32.857159, 27.838818, 46.486813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267162, 28.126400, 46.694332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126945, 27.922091, 46.380329>,  <32.042816, 27.799505, 46.191929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126945, 27.922091, 46.380329>,  <32.267162, 28.126400, 46.694332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126945, 27.922091, 46.380329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816175, -0.244477, 0.523536,
		-0.459323, 0.824222, -0.331180,
		-0.350544, -0.510773, -0.785003,
		32.021782, 27.768858, 46.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596243, 28.360119, 46.697155>,  <32.267162, 28.126400, 46.694332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596243, 28.360119, 46.697155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.599072, 28.007048, 46.509186>,  <31.600769, 27.795204, 46.396404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.599072, 28.007048, 46.509186>,  <31.596243, 28.360119, 46.697155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599072, 28.007048, 46.509186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755656, -0.312501, 0.575611,
		-0.654931, 0.351031, -0.669210,
		0.007071, -0.882678, -0.469925,
		31.601192, 27.742245, 46.368210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903925, 28.312902, 46.333935>,  <31.596243, 28.360119, 46.697155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903925, 28.312902, 46.333935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009871, 27.929138, 46.372677>,  <31.073439, 27.698879, 46.395920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009871, 27.929138, 46.372677>,  <30.903925, 28.312902, 46.333935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009871, 27.929138, 46.372677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892402, -0.205828, 0.401563,
		-0.365328, -0.192789, -0.910696,
		0.264864, -0.959410, 0.096851,
		31.089331, 27.641315, 46.401733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265345, 27.861481, 46.157024>,  <30.903925, 28.312902, 46.333935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265345, 27.861481, 46.157024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.503616, 27.626938, 46.376606>,  <30.646580, 27.486212, 46.508354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.503616, 27.626938, 46.376606>,  <30.265345, 27.861481, 46.157024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503616, 27.626938, 46.376606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802435, -0.404172, 0.439026,
		-0.035554, -0.702019, -0.711271,
		0.595680, -0.586357, 0.548954,
		30.682320, 27.451031, 46.541294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008095, 27.161869, 46.050858>,  <30.265345, 27.861481, 46.157024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008095, 27.161869, 46.050858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193760, 27.192160, 46.403858>,  <30.305159, 27.210335, 46.615658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193760, 27.192160, 46.403858>,  <30.008095, 27.161869, 46.050858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193760, 27.192160, 46.403858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832307, -0.303555, 0.463810,
		0.303012, -0.949800, -0.077872,
		0.464165, 0.075727, 0.882506,
		30.333010, 27.214878, 46.668610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902555, 26.568836, 46.439957>,  <30.008095, 27.161869, 46.050858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902555, 26.568836, 46.439957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.998703, 26.828098, 46.728989>,  <30.056391, 26.983656, 46.902409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.998703, 26.828098, 46.728989>,  <29.902555, 26.568836, 46.439957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998703, 26.828098, 46.728989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769760, -0.326216, 0.548682,
		0.591347, -0.688097, 0.420512,
		0.240369, 0.648155, 0.722577,
		30.070814, 27.022545, 46.945763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487862, 26.224028, 46.956524>,  <29.902555, 26.568836, 46.439957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487862, 26.224028, 46.956524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.665182, 26.516064, 47.164543>,  <29.771574, 26.691286, 47.289356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.665182, 26.516064, 47.164543>,  <29.487862, 26.224028, 46.956524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665182, 26.516064, 47.164543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517199, -0.265522, 0.813636,
		0.732113, -0.629654, 0.259897,
		0.443300, 0.730092, 0.520049,
		29.798172, 26.735092, 47.320557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865294, 25.928444, 47.669300>,  <29.487862, 26.224028, 46.956524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865294, 25.928444, 47.669300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.781010, 26.318645, 47.694576>,  <29.730438, 26.552767, 47.709743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.781010, 26.318645, 47.694576>,  <29.865294, 25.928444, 47.669300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781010, 26.318645, 47.694576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550724, -0.171869, 0.816801,
		0.807653, 0.137309, 0.573448,
		-0.210712, 0.975504, 0.063191,
		29.717796, 26.611296, 47.713535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981184, 26.103512, 48.353111>,  <29.865294, 25.928444, 47.669300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981184, 26.103512, 48.353111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.748077, 26.384846, 48.190285>,  <29.608213, 26.553646, 48.092590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.748077, 26.384846, 48.190285>,  <29.981184, 26.103512, 48.353111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748077, 26.384846, 48.190285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561647, 0.013424, 0.827268,
		0.587311, 0.710732, 0.387203,
		-0.582768, 0.703335, -0.407065,
		29.573248, 26.595846, 48.068165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964024, 26.714596, 48.837978>,  <29.981184, 26.103512, 48.353111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964024, 26.714596, 48.837978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.628239, 26.697573, 48.621277>,  <29.426767, 26.687359, 48.491257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.628239, 26.697573, 48.621277>,  <29.964024, 26.714596, 48.837978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.628239, 26.697573, 48.621277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543105, 0.031722, 0.839065,
		-0.018524, 0.998590, -0.049743,
		-0.839460, -0.042559, -0.541752,
		29.376400, 26.684805, 48.458752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576632, 27.216450, 49.217846>,  <29.964024, 26.714596, 48.837978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576632, 27.216450, 49.217846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.308369, 27.025795, 48.990501>,  <29.147411, 26.911402, 48.854095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.308369, 27.025795, 48.990501>,  <29.576632, 27.216450, 49.217846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308369, 27.025795, 48.990501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741767, 0.432290, 0.512744,
		0.001307, 0.765470, -0.643470,
		-0.670656, -0.476635, -0.568366,
		29.107172, 26.882805, 48.819992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361849, 27.902149, 48.969646>,  <29.576632, 27.216450, 49.217846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361849, 27.902149, 48.969646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.083448, 27.625576, 48.892181>,  <28.916409, 27.459633, 48.845703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.083448, 27.625576, 48.892181>,  <29.361849, 27.902149, 48.969646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083448, 27.625576, 48.892181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375608, -0.120720, -0.918883,
		0.611966, -0.712283, 0.343729,
		-0.696000, -0.691433, -0.193663,
		28.874649, 27.418146, 48.834084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985020, 28.512064, 49.068474>,  <29.361849, 27.902149, 48.969646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985020, 28.512064, 49.068474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.984434, 28.851742, 49.279705>,  <28.984083, 29.055550, 49.406445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.984434, 28.851742, 49.279705>,  <28.985020, 28.512064, 49.068474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984434, 28.851742, 49.279705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119175, 0.524164, -0.843237,
		-0.992872, -0.064169, 0.100435,
		-0.001465, 0.849196, 0.528076,
		28.983995, 29.106501, 49.438129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436003, 28.925112, 48.769653>,  <28.985020, 28.512064, 49.068474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436003, 28.925112, 48.769653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.663622, 29.185099, 48.971138>,  <28.800194, 29.341091, 49.092030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.663622, 29.185099, 48.971138>,  <28.436003, 28.925112, 48.769653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663622, 29.185099, 48.971138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088513, 0.657416, -0.748311,
		-0.817526, 0.381240, 0.431632,
		0.569048, 0.649969, 0.503710,
		28.834337, 29.380089, 49.122250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181602, 29.643858, 48.560726>,  <28.436003, 28.925112, 48.769653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181602, 29.643858, 48.560726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544447, 29.699116, 48.719757>,  <28.762154, 29.732271, 48.815174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.544447, 29.699116, 48.719757>,  <28.181602, 29.643858, 48.560726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544447, 29.699116, 48.719757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174205, 0.736667, -0.653433,
		-0.383151, 0.661996, 0.644172,
		0.907110, 0.138145, 0.397577,
		28.816580, 29.740559, 48.839031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243692, 30.338354, 48.839172>,  <28.181602, 29.643858, 48.560726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243692, 30.338354, 48.839172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.621016, 30.222872, 48.773666>,  <28.847410, 30.153582, 48.734364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.621016, 30.222872, 48.773666>,  <28.243692, 30.338354, 48.839172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621016, 30.222872, 48.773666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209883, 0.901055, -0.379537,
		0.257137, 0.323648, 0.910567,
		0.943308, -0.288705, -0.163767,
		28.904007, 30.136261, 48.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637459, 30.980045, 48.932205>,  <28.243692, 30.338354, 48.839172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637459, 30.980045, 48.932205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.870653, 30.722710, 48.733715>,  <29.010571, 30.568308, 48.614620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.870653, 30.722710, 48.733715>,  <28.637459, 30.980045, 48.932205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870653, 30.722710, 48.733715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253717, 0.724363, -0.641035,
		0.771851, 0.247814, 0.585521,
		0.582987, -0.643340, -0.496226,
		29.045549, 30.529707, 48.584846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276255, 31.340666, 48.936169>,  <28.637459, 30.980045, 48.932205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276255, 31.340666, 48.936169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.293909, 31.080896, 48.632511>,  <29.304501, 30.925035, 48.450317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.293909, 31.080896, 48.632511>,  <29.276255, 31.340666, 48.936169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293909, 31.080896, 48.632511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346809, 0.722589, -0.597987,
		0.936897, -0.236887, 0.257117,
		0.044134, -0.649423, -0.759146,
		29.307150, 30.886070, 48.404766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943171, 31.375475, 48.728981>,  <29.276255, 31.340666, 48.936169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943171, 31.375475, 48.728981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.775852, 31.206545, 48.407318>,  <29.675461, 31.105186, 48.214321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.775852, 31.206545, 48.407318>,  <29.943171, 31.375475, 48.728981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775852, 31.206545, 48.407318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532362, 0.603339, -0.593778,
		0.735948, -0.676478, -0.027544,
		-0.418296, -0.422327, -0.804157,
		29.650364, 31.079847, 48.166073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715044, 31.269133, 48.963711>,  <29.943171, 31.375475, 48.728981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715044, 31.269133, 48.963711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.912785, 31.523409, 49.200867>,  <31.031429, 31.675974, 49.343159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.912785, 31.523409, 49.200867>,  <30.715044, 31.269133, 48.963711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912785, 31.523409, 49.200867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270263, -0.535856, 0.799885,
		0.826181, -0.555659, -0.093098,
		0.494351, 0.635689, 0.592889,
		31.061090, 31.714115, 49.378735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130102, 30.872169, 49.453300>,  <30.715044, 31.269133, 48.963711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130102, 30.872169, 49.453300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.091806, 31.234577, 49.618206>,  <31.068829, 31.452023, 49.717148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.091806, 31.234577, 49.618206>,  <31.130102, 30.872169, 49.453300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.091806, 31.234577, 49.618206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228693, -0.423105, 0.876745,
		0.968779, -0.010343, 0.247709,
		-0.095738, 0.906021, 0.412261,
		31.063086, 31.506384, 49.741886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519289, 30.840687, 50.103634>,  <31.130102, 30.872169, 49.453300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519289, 30.840687, 50.103634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.244017, 31.129150, 50.135475>,  <31.078854, 31.302229, 50.154579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.244017, 31.129150, 50.135475>,  <31.519289, 30.840687, 50.103634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244017, 31.129150, 50.135475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258288, -0.346036, 0.901968,
		0.678006, 0.600158, 0.424402,
		-0.688182, 0.721158, 0.079601,
		31.037561, 31.345497, 50.159355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646124, 31.164652, 50.790890>,  <31.519289, 30.840687, 50.103634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646124, 31.164652, 50.790890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271412, 31.267546, 50.696003>,  <31.046585, 31.329283, 50.639072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.271412, 31.267546, 50.696003>,  <31.646124, 31.164652, 50.790890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271412, 31.267546, 50.696003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293028, -0.206172, 0.933610,
		0.191251, 0.944099, 0.268515,
		-0.936781, 0.257236, -0.237217,
		30.990377, 31.344717, 50.624840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413500, 31.533724, 51.382618>,  <31.646124, 31.164652, 50.790890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413500, 31.533724, 51.382618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.081497, 31.403803, 51.201248>,  <30.882296, 31.325850, 51.092426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.081497, 31.403803, 51.201248>,  <31.413500, 31.533724, 51.382618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081497, 31.403803, 51.201248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392083, -0.238413, 0.888499,
		-0.396690, 0.915239, 0.070534,
		-0.830005, -0.324803, -0.453426,
		30.832497, 31.306362, 51.065220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941591, 31.916862, 51.580692>,  <31.413500, 31.533724, 51.382618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941591, 31.916862, 51.580692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720636, 31.604223, 51.464783>,  <30.588064, 31.416639, 51.395237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.720636, 31.604223, 51.464783>,  <30.941591, 31.916862, 51.580692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720636, 31.604223, 51.464783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303053, -0.135544, 0.943285,
		-0.776549, 0.608876, -0.161993,
		-0.552387, -0.781599, -0.289778,
		30.554920, 31.369743, 51.377850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205717, 32.063736, 51.719822>,  <30.941591, 31.916862, 51.580692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205717, 32.063736, 51.719822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.197548, 31.665436, 51.683895>,  <30.192646, 31.426456, 51.662338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.197548, 31.665436, 51.683895>,  <30.205717, 32.063736, 51.719822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197548, 31.665436, 51.683895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392664, -0.074631, 0.916649,
		-0.919456, 0.053989, -0.389470,
		-0.020422, -0.995749, -0.089819,
		30.191422, 31.366711, 51.656948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575703, 32.034260, 51.874825>,  <30.205717, 32.063736, 51.719822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575703, 32.034260, 51.874825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762568, 31.683588, 51.920784>,  <29.874687, 31.473186, 51.948360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.762568, 31.683588, 51.920784>,  <29.575703, 32.034260, 51.874825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762568, 31.683588, 51.920784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358911, -0.069267, 0.930798,
		-0.808049, -0.476070, -0.347007,
		0.467161, -0.876675, 0.114896,
		29.902716, 31.420586, 51.955254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092442, 31.740553, 52.237347>,  <29.575703, 32.034260, 51.874825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092442, 31.740553, 52.237347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.409868, 31.501457, 52.282879>,  <29.600325, 31.358000, 52.310200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.409868, 31.501457, 52.282879>,  <29.092442, 31.740553, 52.237347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409868, 31.501457, 52.282879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220058, -0.107517, 0.969543,
		-0.567295, -0.794448, -0.216859,
		0.793568, -0.597739, 0.113831,
		29.647940, 31.322136, 52.317028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.292084, 35.216442, 39.073761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379787, 34.915909, 39.322735>,  <38.432407, 34.735588, 39.472118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379787, 34.915909, 39.322735>,  <38.292084, 35.216442, 39.073761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379787, 34.915909, 39.322735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872300, 0.134823, 0.470016,
		-0.437057, -0.646004, -0.625827,
		0.219256, -0.751333, 0.622435,
		38.445564, 34.690510, 39.509464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802570, 34.596325, 39.116688>,  <38.292084, 35.216442, 39.073761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802570, 34.596325, 39.116688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978271, 34.648804, 39.472179>,  <38.083691, 34.680290, 39.685474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978271, 34.648804, 39.472179>,  <37.802570, 34.596325, 39.116688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978271, 34.648804, 39.472179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898158, 0.042929, 0.437571,
		0.019252, -0.990427, 0.136685,
		0.439250, 0.131189, 0.888734,
		38.110046, 34.688164, 39.738800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348564, 34.187401, 39.503914>,  <37.802570, 34.596325, 39.116688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348564, 34.187401, 39.503914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580620, 34.379471, 39.767086>,  <37.719852, 34.494713, 39.924992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580620, 34.379471, 39.767086>,  <37.348564, 34.187401, 39.503914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580620, 34.379471, 39.767086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747756, -0.006313, 0.663944,
		0.322962, -0.877150, 0.355391,
		0.580135, 0.480175, 0.657933,
		37.754662, 34.523521, 39.964466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201336, 33.886063, 40.138306>,  <37.348564, 34.187401, 39.503914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201336, 33.886063, 40.138306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361168, 34.239872, 40.234600>,  <37.457066, 34.452156, 40.292377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361168, 34.239872, 40.234600>,  <37.201336, 33.886063, 40.138306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361168, 34.239872, 40.234600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749549, 0.164065, 0.641295,
		0.527743, -0.436695, 0.728550,
		0.399580, 0.884523, 0.240740,
		37.481041, 34.505230, 40.306824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173073, 33.842258, 40.913879>,  <37.201336, 33.886063, 40.138306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173073, 33.842258, 40.913879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206318, 34.226185, 40.806667>,  <37.226265, 34.456543, 40.742340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206318, 34.226185, 40.806667>,  <37.173073, 33.842258, 40.913879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206318, 34.226185, 40.806667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711843, 0.245407, 0.658069,
		0.697404, 0.136100, 0.703637,
		0.083114, 0.959819, -0.268030,
		37.231251, 34.514130, 40.726257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180538, 34.222527, 41.557945>,  <37.173073, 33.842258, 40.913879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180538, 34.222527, 41.557945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065567, 34.471828, 41.267033>,  <36.996582, 34.621410, 41.092487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065567, 34.471828, 41.267033>,  <37.180538, 34.222527, 41.557945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065567, 34.471828, 41.267033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724927, 0.354708, 0.590477,
		0.625991, 0.696945, 0.349862,
		-0.287431, 0.623258, -0.727278,
		36.979340, 34.658806, 41.048851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247467, 34.844048, 41.918388>,  <37.180538, 34.222527, 41.557945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247467, 34.844048, 41.918388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986065, 34.869400, 41.616684>,  <36.829224, 34.884613, 41.435661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986065, 34.869400, 41.616684>,  <37.247467, 34.844048, 41.918388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986065, 34.869400, 41.616684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712851, 0.283530, 0.641447,
		0.254512, 0.956867, -0.140108,
		-0.653504, 0.063380, -0.754265,
		36.790012, 34.888412, 41.390404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890465, 35.508427, 41.949787>,  <37.247467, 34.844048, 41.918388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890465, 35.508427, 41.949787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650066, 35.270576, 41.736164>,  <36.505825, 35.127865, 41.607990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650066, 35.270576, 41.736164>,  <36.890465, 35.508427, 41.949787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650066, 35.270576, 41.736164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737569, 0.155224, 0.657189,
		-0.307884, 0.788875, -0.531868,
		-0.600998, -0.594627, -0.534059,
		36.469769, 35.092190, 41.575947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320248, 35.890163, 42.001064>,  <36.890465, 35.508427, 41.949787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320248, 35.890163, 42.001064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196846, 35.536987, 41.859501>,  <36.122807, 35.325081, 41.774563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196846, 35.536987, 41.859501>,  <36.320248, 35.890163, 42.001064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196846, 35.536987, 41.859501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723947, -0.023405, 0.689459,
		-0.617032, 0.468908, -0.631979,
		-0.308501, -0.882937, -0.353906,
		36.104294, 35.272106, 41.753330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528873, 35.942730, 41.778065>,  <36.320248, 35.890163, 42.001064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528873, 35.942730, 41.778065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612103, 35.554054, 41.822834>,  <35.662041, 35.320850, 41.849697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612103, 35.554054, 41.822834>,  <35.528873, 35.942730, 41.778065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612103, 35.554054, 41.822834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732939, -0.079124, 0.675677,
		-0.647692, -0.222625, -0.728652,
		0.208077, -0.971688, 0.111923,
		35.674526, 35.262547, 41.856411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915508, 35.694035, 41.864895>,  <35.528873, 35.942730, 41.778065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915508, 35.694035, 41.864895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141159, 35.395596, 42.006374>,  <35.276550, 35.216534, 42.091263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141159, 35.395596, 42.006374>,  <34.915508, 35.694035, 41.864895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141159, 35.395596, 42.006374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718359, -0.232288, 0.655746,
		-0.407088, -0.624009, -0.667003,
		0.564129, -0.746093, 0.353700,
		35.310398, 35.171768, 42.112484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454628, 35.006603, 41.924286>,  <34.915508, 35.694035, 41.864895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454628, 35.006603, 41.924286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765594, 35.035442, 42.174221>,  <34.952175, 35.052746, 42.324181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765594, 35.035442, 42.174221>,  <34.454628, 35.006603, 41.924286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765594, 35.035442, 42.174221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606941, -0.174700, 0.775308,
		0.165060, -0.981978, -0.092054,
		0.777417, 0.072101, 0.624839,
		34.998821, 35.057072, 42.361671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277222, 34.413792, 41.505314>,  <34.454628, 35.006603, 41.924286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277222, 34.413792, 41.505314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900505, 34.436897, 41.372833>,  <33.674477, 34.450760, 41.293343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900505, 34.436897, 41.372833>,  <34.277222, 34.413792, 41.505314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900505, 34.436897, 41.372833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332665, 0.017554, -0.942882,
		-0.048646, -0.998176, -0.035746,
		-0.941790, 0.057759, -0.331204,
		33.617970, 34.454224, 41.273472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363480, 34.115398, 40.916855>,  <34.277222, 34.413792, 41.505314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363480, 34.115398, 40.916855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010746, 34.295376, 40.860390>,  <33.799107, 34.403362, 40.826511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010746, 34.295376, 40.860390>,  <34.363480, 34.115398, 40.916855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010746, 34.295376, 40.860390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149463, -0.017230, -0.988617,
		-0.447255, -0.892891, -0.052056,
		-0.881830, 0.449944, -0.141160,
		33.746197, 34.430359, 40.818043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037487, 33.683979, 40.374275>,  <34.363480, 34.115398, 40.916855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037487, 33.683979, 40.374275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843384, 34.032825, 40.349148>,  <33.726921, 34.242134, 40.334072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843384, 34.032825, 40.349148>,  <34.037487, 33.683979, 40.374275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843384, 34.032825, 40.349148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117651, -0.006067, -0.993037,
		-0.866422, -0.489266, -0.099661,
		-0.485254, 0.872114, -0.062819,
		33.697807, 34.294460, 40.330303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494961, 33.597115, 39.919064>,  <34.037487, 33.683979, 40.374275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494961, 33.597115, 39.919064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515804, 33.996216, 39.935955>,  <33.528309, 34.235676, 39.946091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515804, 33.996216, 39.935955>,  <33.494961, 33.597115, 39.919064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515804, 33.996216, 39.935955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063411, 0.038892, -0.997229,
		-0.996626, 0.054639, -0.061242,
		0.052106, 0.997748, 0.042226,
		33.531437, 34.295540, 39.948624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950279, 33.803684, 39.488838>,  <33.494961, 33.597115, 39.919064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950279, 33.803684, 39.488838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226189, 34.093185, 39.496750>,  <33.391735, 34.266888, 39.501499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226189, 34.093185, 39.496750>,  <32.950279, 33.803684, 39.488838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226189, 34.093185, 39.496750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004110, 0.023407, -0.999718,
		-0.724010, 0.689663, 0.013171,
		0.689777, 0.723752, 0.019781,
		33.433121, 34.310310, 39.502686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597034, 34.353317, 39.061161>,  <32.950279, 33.803684, 39.488838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597034, 34.353317, 39.061161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991966, 34.410297, 39.089142>,  <33.228924, 34.444485, 39.105930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991966, 34.410297, 39.089142>,  <32.597034, 34.353317, 39.061161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991966, 34.410297, 39.089142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055563, 0.102611, -0.993168,
		-0.148659, 0.984468, 0.093395,
		0.987326, 0.142454, 0.069954,
		33.288162, 34.453033, 39.110126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735203, 34.988201, 38.676113>,  <32.597034, 34.353317, 39.061161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735203, 34.988201, 38.676113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091591, 34.810612, 38.714188>,  <33.305424, 34.704060, 38.737034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091591, 34.810612, 38.714188>,  <32.735203, 34.988201, 38.676113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091591, 34.810612, 38.714188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076556, -0.059761, -0.995273,
		0.447564, 0.894045, -0.019256,
		0.890969, -0.443974, 0.095191,
		33.358883, 34.677418, 38.742744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129391, 35.244110, 38.129738>,  <32.735203, 34.988201, 38.676113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129391, 35.244110, 38.129738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320908, 34.903927, 38.216904>,  <33.435818, 34.699818, 38.269203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320908, 34.903927, 38.216904>,  <33.129391, 35.244110, 38.129738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320908, 34.903927, 38.216904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185010, -0.144896, -0.971996,
		0.858212, 0.505702, 0.087967,
		0.478794, -0.850453, 0.217911,
		33.464546, 34.648792, 38.282276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647331, 35.194172, 37.667118>,  <33.129391, 35.244110, 38.129738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647331, 35.194172, 37.667118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644733, 34.817833, 37.802624>,  <33.643173, 34.592030, 37.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644733, 34.817833, 37.802624>,  <33.647331, 35.194172, 37.667118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644733, 34.817833, 37.802624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009281, -0.338813, -0.940808,
		0.999936, -0.002967, 0.010933,
		-0.006495, -0.940849, 0.338764,
		33.642784, 34.535580, 37.904251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098648, 34.949970, 37.284973>,  <33.647331, 35.194172, 37.667118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098648, 34.949970, 37.284973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907330, 34.621155, 37.408577>,  <33.792538, 34.423866, 37.482738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907330, 34.621155, 37.408577>,  <34.098648, 34.949970, 37.284973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907330, 34.621155, 37.408577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184903, -0.438246, -0.879632,
		0.858511, -0.363590, 0.361610,
		-0.478299, -0.822036, 0.309010,
		33.763840, 34.374542, 37.501282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485931, 34.404808, 36.989418>,  <34.098648, 34.949970, 37.284973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485931, 34.404808, 36.989418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144020, 34.221157, 37.086212>,  <33.938873, 34.110966, 37.144291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144020, 34.221157, 37.086212>,  <34.485931, 34.404808, 36.989418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144020, 34.221157, 37.086212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027801, -0.506097, -0.862028,
		0.518250, -0.730115, 0.445365,
		-0.854777, -0.459127, 0.241987,
		33.887589, 34.083420, 37.158810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505405, 33.790653, 36.719521>,  <34.485931, 34.404808, 36.989418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505405, 33.790653, 36.719521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111370, 33.832794, 36.773941>,  <33.874950, 33.858078, 36.806595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111370, 33.832794, 36.773941>,  <34.505405, 33.790653, 36.719521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111370, 33.832794, 36.773941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170534, -0.492353, -0.853526,
		-0.022933, -0.863997, 0.502975,
		-0.985085, 0.105348, 0.136050,
		33.815845, 33.864399, 36.814754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356838, 33.163376, 36.623283>,  <34.505405, 33.790653, 36.719521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356838, 33.163376, 36.623283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051823, 33.411621, 36.550217>,  <33.868813, 33.560570, 36.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051823, 33.411621, 36.550217>,  <34.356838, 33.163376, 36.623283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051823, 33.411621, 36.550217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074875, -0.365122, -0.927944,
		-0.642594, -0.693917, 0.324889,
		-0.762540, 0.620617, -0.182668,
		33.823059, 33.597805, 36.495415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448353, 32.871689, 35.913631>,  <34.356838, 33.163376, 36.623283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448353, 32.871689, 35.913631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482094, 32.556709, 35.669399>,  <34.502338, 32.367722, 35.522861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482094, 32.556709, 35.669399>,  <34.448353, 32.871689, 35.913631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482094, 32.556709, 35.669399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362489, -0.595031, 0.717314,
		-0.928163, 0.160822, -0.335633,
		0.084352, -0.787448, -0.610582,
		34.507401, 32.320477, 35.486225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817734, 32.478607, 35.780159>,  <34.448353, 32.871689, 35.913631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817734, 32.478607, 35.780159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119236, 32.218948, 35.739239>,  <34.300137, 32.063152, 35.714687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119236, 32.218948, 35.739239>,  <33.817734, 32.478607, 35.780159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119236, 32.218948, 35.739239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483476, -0.653221, 0.582711,
		-0.445091, -0.389760, -0.806214,
		0.753754, -0.649145, -0.102303,
		34.345364, 32.024204, 35.708549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823521, 31.862556, 35.602551>,  <33.817734, 32.478607, 35.780159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823521, 31.862556, 35.602551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925278, 31.482569, 35.675037>,  <33.986332, 31.254576, 35.718529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925278, 31.482569, 35.675037>,  <33.823521, 31.862556, 35.602551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925278, 31.482569, 35.675037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055574, 0.172714, 0.983403,
		-0.965502, -0.260245, -0.008856,
		0.254396, -0.949970, 0.181219,
		34.001595, 31.197578, 35.729404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402927, 31.575630, 36.062042>,  <33.823521, 31.862556, 35.602551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402927, 31.575630, 36.062042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769981, 31.417881, 36.081699>,  <33.990215, 31.323231, 36.093494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769981, 31.417881, 36.081699>,  <33.402927, 31.575630, 36.062042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769981, 31.417881, 36.081699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028341, 0.058411, 0.997890,
		-0.396414, -0.917091, 0.042423,
		0.917634, -0.394375, 0.049146,
		34.045273, 31.299568, 36.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248875, 31.062067, 36.505966>,  <33.402927, 31.575630, 36.062042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248875, 31.062067, 36.505966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637848, 31.151640, 36.531952>,  <33.871231, 31.205383, 36.547543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637848, 31.151640, 36.531952>,  <33.248875, 31.062067, 36.505966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637848, 31.151640, 36.531952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000571, -0.276336, 0.961061,
		0.233164, -0.934609, -0.268591,
		0.972437, 0.223931, 0.064966,
		33.929581, 31.218819, 36.551441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595829, 30.519863, 36.932880>,  <33.248875, 31.062067, 36.505966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595829, 30.519863, 36.932880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834526, 30.840731, 36.941078>,  <33.977745, 31.033251, 36.945999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834526, 30.840731, 36.941078>,  <33.595829, 30.519863, 36.932880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834526, 30.840731, 36.941078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163278, -0.146394, 0.975658,
		0.785645, -0.578871, -0.218336,
		0.596743, 0.802170, 0.020497,
		34.013550, 31.081381, 36.947227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180134, 30.373735, 37.402412>,  <33.595829, 30.519863, 36.932880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180134, 30.373735, 37.402412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205379, 30.772890, 37.396233>,  <34.220528, 31.012383, 37.392525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205379, 30.772890, 37.396233>,  <34.180134, 30.373735, 37.402412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205379, 30.772890, 37.396233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245311, -0.000510, 0.969444,
		0.967388, -0.064975, -0.244825,
		0.063114, 0.997887, -0.015446,
		34.224316, 31.072256, 37.391598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687035, 30.517103, 37.853329>,  <34.180134, 30.373735, 37.402412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687035, 30.517103, 37.853329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514427, 30.877943, 37.852188>,  <34.410862, 31.094446, 37.851505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514427, 30.877943, 37.852188>,  <34.687035, 30.517103, 37.853329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514427, 30.877943, 37.852188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058240, 0.031014, 0.997821,
		0.900220, 0.430416, -0.065921,
		-0.431522, 0.902098, -0.002852,
		34.384972, 31.148573, 37.851334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119919, 31.029745, 38.240864>,  <34.687035, 30.517103, 37.853329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119919, 31.029745, 38.240864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760742, 31.203106, 38.210251>,  <34.545235, 31.307121, 38.191883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760742, 31.203106, 38.210251>,  <35.119919, 31.029745, 38.240864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760742, 31.203106, 38.210251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011374, 0.150982, 0.988471,
		0.439958, 0.888465, -0.130644,
		-0.897946, 0.433400, -0.076532,
		34.491360, 31.333126, 38.187290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194374, 31.575619, 38.688072>,  <35.119919, 31.029745, 38.240864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194374, 31.575619, 38.688072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802040, 31.503727, 38.657982>,  <34.566639, 31.460592, 38.639927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802040, 31.503727, 38.657982>,  <35.194374, 31.575619, 38.688072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802040, 31.503727, 38.657982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088909, 0.069309, 0.993625,
		-0.173371, 0.981271, -0.083961,
		-0.980835, -0.179731, -0.075227,
		34.507790, 31.449808, 38.635414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828770, 32.155277, 39.023907>,  <35.194374, 31.575619, 38.688072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828770, 32.155277, 39.023907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591194, 31.833492, 39.027374>,  <34.448650, 31.640421, 39.029453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591194, 31.833492, 39.027374>,  <34.828770, 32.155277, 39.023907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591194, 31.833492, 39.027374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000604, 0.011221, 0.999937,
		-0.804511, 0.593895, -0.007151,
		-0.593938, -0.804464, 0.008668,
		34.413013, 31.592154, 39.029976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432690, 32.284328, 39.586628>,  <34.828770, 32.155277, 39.023907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432690, 32.284328, 39.586628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337753, 31.909492, 39.484226>,  <34.280792, 31.684591, 39.422787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337753, 31.909492, 39.484226>,  <34.432690, 32.284328, 39.586628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337753, 31.909492, 39.484226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186599, -0.214646, 0.958701,
		-0.953336, 0.275312, -0.123914,
		-0.237344, -0.937086, -0.256002,
		34.266552, 31.628366, 39.407425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817184, 32.132759, 39.937252>,  <34.432690, 32.284328, 39.586628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817184, 32.132759, 39.937252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970833, 31.780428, 39.826546>,  <34.063023, 31.569029, 39.760120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970833, 31.780428, 39.826546>,  <33.817184, 32.132759, 39.937252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970833, 31.780428, 39.826546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196941, -0.371030, 0.907497,
		-0.902036, -0.294078, -0.315990,
		0.384116, -0.880826, -0.276766,
		34.086067, 31.516180, 39.743515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316845, 31.597799, 40.192429>,  <33.817184, 32.132759, 39.937252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316845, 31.597799, 40.192429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679558, 31.429312, 40.185207>,  <33.897186, 31.328218, 40.180874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679558, 31.429312, 40.185207>,  <33.316845, 31.597799, 40.192429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679558, 31.429312, 40.185207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220020, -0.509298, 0.831990,
		-0.359642, -0.750460, -0.554497,
		0.906779, -0.421219, -0.018049,
		33.951591, 31.302946, 40.179794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150204, 30.990625, 40.270836>,  <33.316845, 31.597799, 40.192429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150204, 30.990625, 40.270836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534492, 30.978300, 40.381157>,  <33.765064, 30.970905, 40.447350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534492, 30.978300, 40.381157>,  <33.150204, 30.990625, 40.270836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534492, 30.978300, 40.381157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240225, -0.589922, 0.770898,
		0.138947, -0.806872, -0.574152,
		0.960722, -0.030812, 0.275798,
		33.822708, 30.969057, 40.463898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224815, 30.280611, 40.345711>,  <33.150204, 30.990625, 40.270836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224815, 30.280611, 40.345711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526081, 30.464148, 40.534267>,  <33.706841, 30.574268, 40.647404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526081, 30.464148, 40.534267>,  <33.224815, 30.280611, 40.345711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526081, 30.464148, 40.534267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094248, -0.633929, 0.767627,
		0.651049, -0.622576, -0.434206,
		0.753162, 0.458839, 0.471395,
		33.752029, 30.601799, 40.675686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669430, 29.780985, 40.657333>,  <33.224815, 30.280611, 40.345711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669430, 29.780985, 40.657333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765987, 30.115265, 40.854649>,  <33.823921, 30.315832, 40.973038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765987, 30.115265, 40.854649>,  <33.669430, 29.780985, 40.657333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765987, 30.115265, 40.854649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153591, -0.469014, 0.869733,
		0.958196, -0.285712, 0.015140,
		0.241392, 0.835700, 0.493290,
		33.838406, 30.365974, 41.002636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201061, 29.544456, 41.073837>,  <33.669430, 29.780985, 40.657333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201061, 29.544456, 41.073837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055603, 29.876749, 41.242432>,  <33.968327, 30.076124, 41.343586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.055603, 29.876749, 41.242432>,  <34.201061, 29.544456, 41.073837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055603, 29.876749, 41.242432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046100, -0.467953, 0.882550,
		0.930394, 0.301509, 0.208467,
		-0.363650, 0.830730, 0.421481,
		33.946507, 30.125969, 41.368877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484749, 29.553215, 41.718575>,  <34.201061, 29.544456, 41.073837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484749, 29.553215, 41.718575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189919, 29.818449, 41.770779>,  <34.013020, 29.977589, 41.802101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189919, 29.818449, 41.770779>,  <34.484749, 29.553215, 41.718575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189919, 29.818449, 41.770779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131604, -0.330259, 0.934671,
		0.662867, 0.671751, 0.330692,
		-0.737080, 0.663083, 0.130512,
		33.968796, 30.017374, 41.809933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528690, 29.778267, 42.482800>,  <34.484749, 29.553215, 41.718575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528690, 29.778267, 42.482800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162853, 29.883226, 42.359730>,  <33.943352, 29.946201, 42.285889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162853, 29.883226, 42.359730>,  <34.528690, 29.778267, 42.482800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162853, 29.883226, 42.359730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367830, -0.223782, 0.902564,
		0.167979, 0.938653, 0.301188,
		-0.914595, 0.262398, -0.307674,
		33.888474, 29.961946, 42.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290775, 30.188938, 43.048214>,  <34.528690, 29.778267, 42.482800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290775, 30.188938, 43.048214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993248, 30.026575, 42.835808>,  <33.814732, 29.929157, 42.708363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993248, 30.026575, 42.835808>,  <34.290775, 30.188938, 43.048214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993248, 30.026575, 42.835808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415176, -0.342030, 0.842997,
		-0.523802, 0.847499, 0.085884,
		-0.743815, -0.405907, -0.531018,
		33.770103, 29.904802, 42.676502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706383, 30.471600, 43.274643>,  <34.290775, 30.188938, 43.048214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706383, 30.471600, 43.274643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586712, 30.131123, 43.102150>,  <33.514908, 29.926836, 42.998653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586712, 30.131123, 43.102150>,  <33.706383, 30.471600, 43.274643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586712, 30.131123, 43.102150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385837, -0.305423, 0.870544,
		-0.872710, 0.426832, -0.237047,
		-0.299177, -0.851194, -0.431234,
		33.496960, 29.875765, 42.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058868, 30.320187, 43.576221>,  <33.706383, 30.471600, 43.274643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058868, 30.320187, 43.576221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162865, 29.972588, 43.407818>,  <33.225262, 29.764029, 43.306778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162865, 29.972588, 43.407818>,  <33.058868, 30.320187, 43.576221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162865, 29.972588, 43.407818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423464, -0.494446, 0.759079,
		-0.867804, -0.019072, -0.496541,
		0.259990, -0.868999, -0.421006,
		33.240860, 29.711887, 43.281517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514610, 29.927320, 43.785259>,  <33.058868, 30.320187, 43.576221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514610, 29.927320, 43.785259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808826, 29.683540, 43.666901>,  <32.985355, 29.537271, 43.595886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808826, 29.683540, 43.666901>,  <32.514610, 29.927320, 43.785259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808826, 29.683540, 43.666901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239661, -0.642582, 0.727771,
		-0.633678, -0.464388, -0.618705,
		0.735537, -0.609452, -0.295895,
		33.029488, 29.500706, 43.578133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187813, 29.290455, 43.826374>,  <32.514610, 29.927320, 43.785259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187813, 29.290455, 43.826374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576496, 29.200974, 43.856689>,  <32.809704, 29.147284, 43.874878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576496, 29.200974, 43.856689>,  <32.187813, 29.290455, 43.826374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576496, 29.200974, 43.856689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212223, -0.686059, 0.695905,
		-0.103680, -0.692300, -0.714123,
		0.971705, -0.223705, 0.075791,
		32.868008, 29.133862, 43.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210979, 28.657127, 44.043385>,  <32.187813, 29.290455, 43.826374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210979, 28.657127, 44.043385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602802, 28.716497, 44.097694>,  <32.837898, 28.752119, 44.130280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602802, 28.716497, 44.097694>,  <32.210979, 28.657127, 44.043385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602802, 28.716497, 44.097694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012833, -0.627480, 0.778527,
		0.200748, -0.764355, -0.612749,
		0.979558, 0.148424, 0.135774,
		32.896671, 28.761024, 44.138428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623001, 28.030478, 43.874226>,  <32.210979, 28.657127, 44.043385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623001, 28.030478, 43.874226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803123, 28.270126, 44.139034>,  <32.911198, 28.413916, 44.297920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803123, 28.270126, 44.139034>,  <32.623001, 28.030478, 43.874226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803123, 28.270126, 44.139034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063439, -0.718110, 0.693032,
		0.890619, -0.354073, -0.285360,
		0.450304, 0.599124, 0.662025,
		32.938213, 28.449863, 44.337643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082314, 27.648129, 44.241577>,  <32.623001, 28.030478, 43.874226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082314, 27.648129, 44.241577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977859, 27.957769, 44.472252>,  <32.915188, 28.143555, 44.610657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977859, 27.957769, 44.472252>,  <33.082314, 27.648129, 44.241577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977859, 27.957769, 44.472252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416997, -0.629265, 0.655850,
		0.870587, -0.069212, 0.487123,
		-0.261137, 0.774103, 0.576691,
		32.899517, 28.190001, 44.645260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244831, 27.479073, 44.936012>,  <33.082314, 27.648129, 44.241577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244831, 27.479073, 44.936012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970795, 27.767855, 44.974846>,  <32.806374, 27.941124, 44.998146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970795, 27.767855, 44.974846>,  <33.244831, 27.479073, 44.936012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970795, 27.767855, 44.974846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480196, -0.547803, 0.685072,
		0.547777, 0.422717, 0.721977,
		-0.685093, 0.721957, 0.097087,
		32.765266, 27.984442, 45.003971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648785, 27.272797, 45.492092>,  <33.244831, 27.479073, 44.936012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648785, 27.272797, 45.492092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938625, 27.041655, 45.642307>,  <34.112530, 26.902969, 45.732437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938625, 27.041655, 45.642307>,  <33.648785, 27.272797, 45.492092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938625, 27.041655, 45.642307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592687, 0.244456, -0.767439,
		0.351667, 0.778668, 0.519622,
		0.724605, -0.577856, 0.375539,
		34.156006, 26.868298, 45.754971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303001, 27.628847, 45.495083>,  <33.648785, 27.272797, 45.492092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303001, 27.628847, 45.495083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420853, 27.246601, 45.495407>,  <34.491562, 27.017254, 45.495602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420853, 27.246601, 45.495407>,  <34.303001, 27.628847, 45.495083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420853, 27.246601, 45.495407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681510, 0.209518, -0.701175,
		0.669881, 0.207138, 0.712989,
		0.294625, -0.955613, 0.000815,
		34.509239, 26.959917, 45.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950974, 27.657925, 45.627281>,  <34.303001, 27.628847, 45.495083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950974, 27.657925, 45.627281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905666, 27.293144, 45.469540>,  <34.878483, 27.074276, 45.374893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905666, 27.293144, 45.469540>,  <34.950974, 27.657925, 45.627281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905666, 27.293144, 45.469540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701663, 0.207594, -0.681596,
		0.703448, -0.353907, 0.616369,
		-0.113267, -0.911951, -0.394355,
		34.871685, 27.019558, 45.351234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604740, 27.410843, 45.453743>,  <34.950974, 27.657925, 45.627281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604740, 27.410843, 45.453743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385586, 27.181633, 45.209953>,  <35.254093, 27.044107, 45.063679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385586, 27.181633, 45.209953>,  <35.604740, 27.410843, 45.453743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385586, 27.181633, 45.209953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642540, 0.178282, -0.745223,
		0.535691, -0.799911, 0.270514,
		-0.547884, -0.573025, -0.609479,
		35.221222, 27.009726, 45.027111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076473, 26.884789, 44.980907>,  <35.604740, 27.410843, 45.453743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076473, 26.884789, 44.980907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726952, 26.923094, 44.790207>,  <35.517239, 26.946077, 44.675785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726952, 26.923094, 44.790207>,  <36.076473, 26.884789, 44.980907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726952, 26.923094, 44.790207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485859, 0.131243, -0.864127,
		-0.020182, -0.986714, -0.161209,
		-0.873804, 0.095765, -0.476755,
		35.464809, 26.951822, 44.647179>
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
