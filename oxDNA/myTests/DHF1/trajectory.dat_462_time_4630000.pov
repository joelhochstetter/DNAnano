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
	<-0.430361, 4.009960, 3.404621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.525485, 4.149864, 3.042160>,  <-0.582559, 4.233807, 2.824683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.525485, 4.149864, 3.042160>,  <-0.430361, 4.009960, 3.404621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.525485, 4.149864, 3.042160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968997, 0.021055, -0.246175,
		-0.067023, -0.936602, -0.343924,
		-0.237809, 0.349761, -0.906153,
		-0.596827, 4.254793, 2.770314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.232671, 3.505301, 2.856125>,  <-0.430361, 4.009960, 3.404621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.232671, 3.505301, 2.856125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.221049, 3.899788, 2.790970>,  <-0.214076, 4.136480, 2.751877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.221049, 3.899788, 2.790970>,  <-0.232671, 3.505301, 2.856125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.221049, 3.899788, 2.790970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997736, -0.038502, -0.055138,
		-0.060650, -0.160918, -0.985103,
		0.029056, 0.986217, -0.162889,
		-0.212332, 4.195653, 2.742103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.095821, 3.683157, 2.282614>,  <-0.232671, 3.505301, 2.856125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.095821, 3.683157, 2.282614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.150017, 3.978256, 2.547150>,  <0.182534, 4.155316, 2.705871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.150017, 3.978256, 2.547150>,  <0.095821, 3.683157, 2.282614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.150017, 3.978256, 2.547150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979644, -0.199547, 0.021900,
		0.148125, 0.644910, -0.749767,
		0.135490, 0.737748, 0.661339,
		0.190664, 4.199581, 2.745551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.612458, 4.069567, 1.988826>,  <0.095821, 3.683157, 2.282614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.612458, 4.069567, 1.988826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.611906, 4.127884, 2.384552>,  <0.611574, 4.162874, 2.621987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.611906, 4.127884, 2.384552>,  <0.612458, 4.069567, 1.988826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.611906, 4.127884, 2.384552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983002, -0.181433, 0.028108,
		0.183592, 0.972536, -0.143064,
		-0.001380, 0.145792, 0.989314,
		0.611492, 4.171622, 2.681346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.181673, 4.538007, 2.208532>,  <0.612458, 4.069567, 1.988826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.181673, 4.538007, 2.208532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.086814, 4.291000, 2.508514>,  <1.029898, 4.142797, 2.688504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.086814, 4.291000, 2.508514>,  <1.181673, 4.538007, 2.208532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.086814, 4.291000, 2.508514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954809, -0.290531, 0.062703,
		0.179166, 0.730936, 0.658508,
		-0.237148, -0.617515, 0.749957,
		1.015669, 4.105746, 2.733501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.732475, 4.721078, 2.688052>,  <1.181673, 4.538007, 2.208532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.732475, 4.721078, 2.688052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.571939, 4.365105, 2.774719>,  <1.475618, 4.151521, 2.826720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.571939, 4.365105, 2.774719>,  <1.732475, 4.721078, 2.688052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.571939, 4.365105, 2.774719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912591, -0.368345, 0.177482,
		-0.078139, 0.268960, 0.959977,
		-0.401339, -0.889934, 0.216668,
		1.451538, 4.098125, 2.839720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.163336, 4.443552, 3.252747>,  <1.732475, 4.721078, 2.688052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.163336, 4.443552, 3.252747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.988188, 4.108459, 3.122223>,  <1.883099, 3.907404, 3.043908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.988188, 4.108459, 3.122223>,  <2.163336, 4.443552, 3.252747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.988188, 4.108459, 3.122223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892878, -0.447632, -0.048941,
		-0.105068, -0.312785, 0.943995,
		-0.437870, -0.837730, -0.326311,
		1.856827, 3.857141, 3.024330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.358218, 3.912139, 3.659342>,  <2.163336, 4.443552, 3.252747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.358218, 3.912139, 3.659342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281746, 3.755157, 3.299469>,  <2.235863, 3.660968, 3.083545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.281746, 3.755157, 3.299469>,  <2.358218, 3.912139, 3.659342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.281746, 3.755157, 3.299469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913854, -0.405677, -0.017227,
		-0.358219, -0.825473, 0.436203,
		-0.191178, -0.392455, -0.899683,
		2.224393, 3.637421, 3.029564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.393957, 2.751293, 2.486295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.049421, 2.579918, 2.377090>,  <2.842700, 2.477093, 2.311568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.049421, 2.579918, 2.377090>,  <3.393957, 2.751293, 2.486295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.049421, 2.579918, 2.377090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475906, 0.868524, 0.138487,
		0.177783, 0.249212, -0.951991,
		-0.861340, -0.428438, -0.273011,
		2.791019, 2.451387, 2.295187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.054703, 3.320963, 1.998006>,  <3.393957, 2.751293, 2.486295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.054703, 3.320963, 1.998006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.840334, 3.053131, 2.203705>,  <2.711713, 2.892432, 2.327124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.840334, 3.053131, 2.203705>,  <3.054703, 3.320963, 1.998006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.840334, 3.053131, 2.203705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701318, 0.692185, 0.170390,
		-0.470044, -0.269335, -0.840546,
		-0.535922, -0.669581, 0.514247,
		2.679557, 2.852257, 2.357979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.359157, 3.247190, 1.780067>,  <3.054703, 3.320963, 1.998006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.359157, 3.247190, 1.780067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359863, 3.151398, 2.168427>,  <2.360287, 3.093922, 2.401443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.359863, 3.151398, 2.168427>,  <2.359157, 3.247190, 1.780067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.359863, 3.151398, 2.168427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821500, 0.553267, 0.137963,
		-0.570206, -0.797837, -0.195756,
		0.001767, -0.239480, 0.970899,
		2.360393, 3.079554, 2.459696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.692347, 2.986057, 2.070885>,  <2.359157, 3.247190, 1.780067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.692347, 2.986057, 2.070885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.882229, 3.171837, 2.369934>,  <1.996158, 3.283305, 2.549364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.882229, 3.171837, 2.369934>,  <1.692347, 2.986057, 2.070885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.882229, 3.171837, 2.369934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817513, 0.547376, 0.179031,
		-0.326080, -0.696179, 0.639537,
		0.474705, 0.464451, 0.747623,
		2.024640, 3.311172, 2.594221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.213645, 2.828610, 2.594429>,  <1.692347, 2.986057, 2.070885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.213645, 2.828610, 2.594429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.411793, 3.152115, 2.721245>,  <1.530682, 3.346218, 2.797334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.411793, 3.152115, 2.721245>,  <1.213645, 2.828610, 2.594429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.411793, 3.152115, 2.721245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866762, 0.435929, 0.242260,
		0.057724, -0.394805, 0.916950,
		0.495370, 0.808762, 0.317038,
		1.560404, 3.394743, 2.816356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.918147, 2.934768, 3.246513>,  <1.213645, 2.828610, 2.594429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.918147, 2.934768, 3.246513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.085352, 3.274399, 3.117310>,  <1.185675, 3.478177, 3.039787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.085352, 3.274399, 3.117310>,  <0.918147, 2.934768, 3.246513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.085352, 3.274399, 3.117310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713401, 0.526949, 0.461934,
		0.562428, 0.037343, 0.826003,
		0.418012, 0.849076, -0.323011,
		1.210756, 3.529122, 3.020407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.928569, 3.395736, 3.814379>,  <0.918147, 2.934768, 3.246513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.928569, 3.395736, 3.814379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920233, 3.615211, 3.480072>,  <0.915231, 3.746897, 3.279488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.920233, 3.615211, 3.480072>,  <0.928569, 3.395736, 3.814379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.920233, 3.615211, 3.480072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727092, 0.565454, 0.389357,
		0.686224, 0.615795, 0.387162,
		-0.020842, 0.548688, -0.835767,
		0.913980, 3.779818, 3.229342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.885089, 4.198650, 3.985407>,  <0.928569, 3.395736, 3.814379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.885089, 4.198650, 3.985407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745615, 4.137680, 3.615501>,  <0.661931, 4.101098, 3.393558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745615, 4.137680, 3.615501>,  <0.885089, 4.198650, 3.985407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.745615, 4.137680, 3.615501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830882, 0.506803, 0.229752,
		0.433653, 0.848480, -0.303361,
		-0.348684, -0.152424, -0.924763,
		0.641010, 4.091953, 3.338073>
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
