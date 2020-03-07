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
	<1.943682, 1.247016, 4.443362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.251827, 1.424980, 4.260673>,  <2.436714, 1.531759, 4.151060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.251827, 1.424980, 4.260673>,  <1.943682, 1.247016, 4.443362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.251827, 1.424980, 4.260673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203923, -0.506765, -0.837619,
		-0.604116, 0.738406, -0.299665,
		0.770363, 0.444911, -0.456723,
		2.482936, 1.558453, 4.123656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.705021, 1.592940, 3.904857>,  <1.943682, 1.247016, 4.443362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.705021, 1.592940, 3.904857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.086689, 1.498563, 3.831218>,  <2.315690, 1.441937, 3.787035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.086689, 1.498563, 3.831218>,  <1.705021, 1.592940, 3.904857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.086689, 1.498563, 3.831218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288438, -0.561056, -0.775899,
		0.079778, 0.793440, -0.603397,
		0.954169, -0.235942, -0.184098,
		2.372940, 1.427780, 3.775989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.789013, 1.639597, 3.198077>,  <1.705021, 1.592940, 3.904857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.789013, 1.639597, 3.198077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.050350, 1.376747, 3.348452>,  <2.207153, 1.219037, 3.438678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.050350, 1.376747, 3.348452>,  <1.789013, 1.639597, 3.198077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.050350, 1.376747, 3.348452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181620, -0.618122, -0.764814,
		0.734954, 0.431408, -0.523193,
		0.653343, -0.657124, 0.375939,
		2.246353, 1.179610, 3.461234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288860, 1.554607, 2.656481>,  <1.789013, 1.639597, 3.198077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288860, 1.554607, 2.656481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.268505, 1.241150, 2.904130>,  <2.256292, 1.053075, 3.052720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.268505, 1.241150, 2.904130>,  <2.288860, 1.554607, 2.656481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.268505, 1.241150, 2.904130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085924, -0.621063, -0.779037,
		0.995001, 0.013555, 0.098938,
		-0.050887, -0.783643, 0.619123,
		2.253239, 1.006057, 3.089867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.967047, 1.209911, 2.633721>,  <2.288860, 1.554607, 2.656481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.967047, 1.209911, 2.633721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.691936, 0.948268, 2.759645>,  <2.526870, 0.791282, 2.835200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.691936, 0.948268, 2.759645>,  <2.967047, 1.209911, 2.633721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.691936, 0.948268, 2.759645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150240, -0.552544, -0.819831,
		0.710205, -0.516564, 0.478300,
		-0.687777, -0.654108, 0.314810,
		2.485603, 0.752036, 2.854088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.224446, 0.550030, 2.443778>,  <2.967047, 1.209911, 2.633721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.224446, 0.550030, 2.443778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.837418, 0.470321, 2.505870>,  <2.605201, 0.422495, 2.543125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.837418, 0.470321, 2.505870>,  <3.224446, 0.550030, 2.443778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.837418, 0.470321, 2.505870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001538, -0.609873, -0.792497,
		0.252594, -0.767036, 0.589789,
		-0.967571, -0.199273, 0.155230,
		2.547146, 0.410539, 2.552439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.111507, -0.157697, 2.319720>,  <3.224446, 0.550030, 2.443778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.111507, -0.157697, 2.319720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.747211, 0.005496, 2.294092>,  <2.528634, 0.103413, 2.278715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.747211, 0.005496, 2.294092>,  <3.111507, -0.157697, 2.319720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.747211, 0.005496, 2.294092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195647, -0.562853, -0.803068,
		-0.363700, -0.718850, 0.592433,
		-0.910738, 0.407983, -0.064069,
		2.473990, 0.127892, 2.274871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.597146, -0.734014, 2.232122>,  <3.111507, -0.157697, 2.319720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.597146, -0.734014, 2.232122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.430695, -0.388716, 2.117828>,  <2.330824, -0.181537, 2.049251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.430695, -0.388716, 2.117828>,  <2.597146, -0.734014, 2.232122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.430695, -0.388716, 2.117828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179891, -0.386178, -0.904713,
		-0.891334, -0.325075, 0.315989,
		-0.416128, 0.863245, -0.285736,
		2.305856, -0.129742, 2.032107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.216168, -0.570672, 0.738669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.908363, -0.315613, 0.752845>,  <1.723680, -0.162577, 0.761350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.908363, -0.315613, 0.752845>,  <2.216168, -0.570672, 0.738669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.908363, -0.315613, 0.752845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294065, 0.304526, 0.905974,
		0.566900, 0.707580, -0.421847,
		-0.769513, 0.637647, 0.035439,
		1.677509, -0.124319, 0.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.367763, 0.189125, 0.783332>,  <2.216168, -0.570672, 0.738669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.367763, 0.189125, 0.783332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023613, 0.101475, 0.967393>,  <1.817123, 0.048885, 1.077830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.023613, 0.101475, 0.967393>,  <2.367763, 0.189125, 0.783332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.023613, 0.101475, 0.967393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391872, 0.292858, 0.872164,
		-0.325872, 0.930709, -0.166098,
		-0.860374, -0.219125, 0.460153,
		1.765501, 0.035737, 1.105439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.324639, 0.684490, 1.244022>,  <2.367763, 0.189125, 0.783332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.324639, 0.684490, 1.244022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083977, 0.395948, 1.381227>,  <1.939579, 0.222823, 1.463549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083977, 0.395948, 1.381227>,  <2.324639, 0.684490, 1.244022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.083977, 0.395948, 1.381227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140210, 0.327388, 0.934430,
		-0.786353, 0.610298, -0.095834,
		-0.601656, -0.721355, 0.343012,
		1.903480, 0.179542, 1.484130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.692367, 0.985708, 1.613670>,  <2.324639, 0.684490, 1.244022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.692367, 0.985708, 1.613670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.833939, 0.631889, 1.735200>,  <1.918881, 0.419598, 1.808118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.833939, 0.631889, 1.735200>,  <1.692367, 0.985708, 1.613670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.833939, 0.631889, 1.735200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129706, 0.368135, 0.920680,
		-0.926235, -0.286447, 0.245025,
		0.353928, -0.884547, 0.303826,
		1.940117, 0.366525, 1.826348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.313124, 0.748271, 2.211434>,  <1.692367, 0.985708, 1.613670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.313124, 0.748271, 2.211434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.664101, 0.556459, 2.216324>,  <1.874686, 0.441372, 2.219258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.664101, 0.556459, 2.216324>,  <1.313124, 0.748271, 2.211434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.664101, 0.556459, 2.216324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088597, 0.187056, 0.978346,
		-0.471432, -0.857357, 0.206616,
		0.877441, -0.479530, 0.012225,
		1.927333, 0.412601, 2.219991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.226322, 0.350245, 2.763555>,  <1.313124, 0.748271, 2.211434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.226322, 0.350245, 2.763555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.623505, 0.348648, 2.716192>,  <1.861814, 0.347690, 2.687775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.623505, 0.348648, 2.716192>,  <1.226322, 0.350245, 2.763555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.623505, 0.348648, 2.716192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115833, 0.242586, 0.963190,
		0.024877, -0.970122, 0.241341,
		0.992958, -0.003994, -0.118407,
		1.921392, 0.347450, 2.680670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.536810, 0.021829, 3.310569>,  <1.226322, 0.350245, 2.763555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.536810, 0.021829, 3.310569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.839272, 0.247522, 3.177981>,  <2.020749, 0.382938, 3.098429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.839272, 0.247522, 3.177981>,  <1.536810, 0.021829, 3.310569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.839272, 0.247522, 3.177981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201731, 0.280875, 0.938304,
		0.622524, -0.776370, 0.098562,
		0.756154, 0.564233, -0.331469,
		2.066118, 0.416792, 3.078541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.096616, -0.084949, 3.834819>,  <1.536810, 0.021829, 3.310569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.096616, -0.084949, 3.834819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.151299, 0.255688, 3.632392>,  <2.184108, 0.460070, 3.510936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.151299, 0.255688, 3.632392>,  <2.096616, -0.084949, 3.834819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.151299, 0.255688, 3.632392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163357, 0.484490, 0.859409,
		0.977050, -0.200156, -0.072881,
		0.136706, 0.851591, -0.506067,
		2.192310, 0.511165, 3.480572>
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
