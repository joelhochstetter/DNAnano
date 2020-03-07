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
	<0.016938, -1.493925, 4.193759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.170860, -1.214752, 4.410080>,  <-0.283539, -1.047249, 4.539872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.170860, -1.214752, 4.410080>,  <0.016938, -1.493925, 4.193759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.170860, -1.214752, 4.410080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200947, 0.680894, -0.704275,
		-0.859764, -0.221983, -0.459925,
		-0.469497, 0.697931, 0.540801,
		-0.311709, -1.005373, 4.572320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.560167, -1.097726, 3.866997>,  <0.016938, -1.493925, 4.193759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.560167, -1.097726, 3.866997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.358376, -0.868813, 4.125607>,  <-0.237301, -0.731465, 4.280772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.358376, -0.868813, 4.125607>,  <-0.560167, -1.097726, 3.866997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.358376, -0.868813, 4.125607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270364, 0.606433, -0.747759,
		-0.820003, 0.552025, 0.151208,
		0.504479, 0.572283, 0.646524,
		-0.207032, -0.697128, 4.319564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.476406, -0.643061, 3.434932>,  <-0.560167, -1.097726, 3.866997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.476406, -0.643061, 3.434932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.263664, -0.512573, 3.747524>,  <-0.136019, -0.434281, 3.935080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.263664, -0.512573, 3.747524>,  <-0.476406, -0.643061, 3.434932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.263664, -0.512573, 3.747524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442254, 0.679984, -0.584836,
		-0.722179, 0.656660, 0.217380,
		0.531854, 0.326219, 0.781481,
		-0.104108, -0.414707, 3.981969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.684990, 0.009789, 3.591427>,  <-0.476406, -0.643061, 3.434932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.684990, 0.009789, 3.591427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.311775, -0.050781, 3.721973>,  <-0.087847, -0.087123, 3.800301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.311775, -0.050781, 3.721973>,  <-0.684990, 0.009789, 3.591427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.311775, -0.050781, 3.721973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302661, 0.820803, -0.484436,
		-0.194527, 0.550774, 0.811669,
		0.933036, -0.151425, 0.326366,
		-0.031864, -0.096209, 3.819883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.430902, 0.590140, 4.052015>,  <-0.684990, 0.009789, 3.591427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.430902, 0.590140, 4.052015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.145573, 0.403931, 3.842461>,  <0.025625, 0.292205, 3.716728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.145573, 0.403931, 3.842461>,  <-0.430902, 0.590140, 4.052015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.145573, 0.403931, 3.842461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213386, 0.856291, -0.470353,
		0.667559, 0.223724, 0.710149,
		0.713324, -0.465524, -0.523886,
		0.068424, 0.264273, 3.685295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.178415, 1.023938, 3.979521>,  <-0.430902, 0.590140, 4.052015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.178415, 1.023938, 3.979521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.249359, 0.778847, 3.671467>,  <0.291926, 0.631792, 3.486634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.249359, 0.778847, 3.671467>,  <0.178415, 1.023938, 3.979521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.249359, 0.778847, 3.671467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357852, 0.769127, -0.529513,
		0.916780, -0.181680, 0.355679,
		0.177360, -0.612728, -0.770135,
		0.302567, 0.595028, 3.440426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.819052, 1.212890, 3.787042>,  <0.178415, 1.023938, 3.979521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.819052, 1.212890, 3.787042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.674194, 1.008568, 3.475163>,  <0.587280, 0.885975, 3.288035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.674194, 1.008568, 3.475163>,  <0.819052, 1.212890, 3.787042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.674194, 1.008568, 3.475163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251511, 0.751904, -0.609412,
		0.897549, -0.416797, -0.143824,
		-0.362143, -0.510804, -0.779700,
		0.565551, 0.855327, 3.241253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.267437, 1.337371, 3.206758>,  <0.819052, 1.212890, 3.787042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.267437, 1.337371, 3.206758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.928715, 1.214676, 3.032940>,  <0.725481, 1.141059, 2.928649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.928715, 1.214676, 3.032940>,  <1.267437, 1.337371, 3.206758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.928715, 1.214676, 3.032940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095064, 0.716536, -0.691042,
		0.523337, -0.626489, -0.577607,
		-0.846806, -0.306738, -0.434546,
		0.674673, 1.122654, 2.902576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.433151, 1.896265, 2.533094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.263397, 1.900040, 2.170921>,  <1.161545, 1.902304, 1.953617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.263397, 1.900040, 2.170921>,  <1.433151, 1.896265, 2.533094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.263397, 1.900040, 2.170921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495752, -0.839181, 0.223618,
		-0.757712, 0.543771, 0.360814,
		-0.424385, 0.009436, -0.905433,
		1.136082, 1.902871, 1.899292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.697982, 1.937726, 2.506958>,  <1.433151, 1.896265, 2.533094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.697982, 1.937726, 2.506958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782919, 1.742218, 2.168488>,  <0.833881, 1.624913, 1.965405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.782919, 1.742218, 2.168488>,  <0.697982, 1.937726, 2.506958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.782919, 1.742218, 2.168488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579564, -0.760179, 0.293658,
		-0.786777, 0.428058, -0.444690,
		0.212341, -0.488769, -0.846177,
		0.846621, 1.595587, 1.914634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.061224, 1.945619, 2.062730>,  <0.697982, 1.937726, 2.506958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.061224, 1.945619, 2.062730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.341618, 1.660522, 2.072716>,  <0.509854, 1.489465, 2.078707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.341618, 1.660522, 2.072716>,  <0.061224, 1.945619, 2.062730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.341618, 1.660522, 2.072716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622430, -0.594325, 0.509272,
		-0.348142, -0.372530, -0.860243,
		0.700983, -0.712741, 0.024964,
		0.551913, 1.446700, 2.080205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.291450, 1.317403, 1.872648>,  <0.061224, 1.945619, 2.062730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.291450, 1.317403, 1.872648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.036295, 1.255661, 2.093491>,  <0.232942, 1.218616, 2.225996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.036295, 1.255661, 2.093491>,  <-0.291450, 1.317403, 1.872648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.036295, 1.255661, 2.093491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514864, -0.621671, 0.590288,
		0.252113, -0.767919, -0.588846,
		0.819362, -0.154356, 0.552105,
		0.282104, 1.209354, 2.259122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.430176, 0.782489, 2.335025>,  <-0.291450, 1.317403, 1.872648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.430176, 0.782489, 2.335025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.072273, 0.881348, 2.483795>,  <0.142468, 0.940663, 2.573057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.072273, 0.881348, 2.483795>,  <-0.430176, 0.782489, 2.335025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.072273, 0.881348, 2.483795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001041, -0.834031, 0.551716,
		0.446553, -0.493264, -0.746512,
		0.894756, 0.247148, 0.371926,
		0.196154, 0.955492, 2.595373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.074679, 0.248733, 2.213320>,  <-0.430176, 0.782489, 2.335025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.074679, 0.248733, 2.213320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.202122, 0.448334, 2.535683>,  <0.278588, 0.568094, 2.729100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.202122, 0.448334, 2.535683>,  <0.074679, 0.248733, 2.213320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.202122, 0.448334, 2.535683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061842, -0.837460, 0.542988,
		0.945867, -0.222839, -0.235961,
		0.318607, 0.499003, 0.805907,
		0.297704, 0.598035, 2.777455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.585504, -0.213949, 2.465338>,  <0.074679, 0.248733, 2.213320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.585504, -0.213949, 2.465338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.464977, 0.036026, 2.753410>,  <0.392661, 0.186011, 2.926254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.464977, 0.036026, 2.753410>,  <0.585504, -0.213949, 2.465338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.464977, 0.036026, 2.753410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058148, -0.765922, 0.640299,
		0.951750, 0.151056, 0.267124,
		-0.301317, 0.624937, 0.720182,
		0.374582, 0.223507, 2.969465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.074315, -0.251895, 2.991627>,  <0.585504, -0.213949, 2.465338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.074315, -0.251895, 2.991627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738132, -0.098541, 3.144806>,  <0.536423, -0.006529, 3.236713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738132, -0.098541, 3.144806>,  <1.074315, -0.251895, 2.991627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.738132, -0.098541, 3.144806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147583, -0.841937, 0.519001,
		0.521394, 0.379681, 0.764193,
		-0.840457, 0.383386, 0.382946,
		0.485995, 0.016474, 3.259690>
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
