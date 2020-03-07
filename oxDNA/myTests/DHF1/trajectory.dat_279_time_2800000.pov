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
	<2.814662, 2.373929, 4.009463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.432297, 2.483322, 4.052238>,  <2.202878, 2.548958, 4.077904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.432297, 2.483322, 4.052238>,  <2.814662, 2.373929, 4.009463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.432297, 2.483322, 4.052238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260552, 0.621975, 0.738417,
		0.135432, 0.733726, -0.665811,
		-0.955914, 0.273484, 0.106938,
		2.145523, 2.565367, 4.084320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.895761, 3.061221, 4.303208>,  <2.814662, 2.373929, 4.009463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.895761, 3.061221, 4.303208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.524227, 2.930115, 4.372299>,  <2.301306, 2.851451, 4.413754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.524227, 2.930115, 4.372299>,  <2.895761, 3.061221, 4.303208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.524227, 2.930115, 4.372299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008563, 0.485077, 0.874429,
		-0.370393, 0.810722, -0.453364,
		-0.928836, -0.327765, 0.172727,
		2.245576, 2.831785, 4.424117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.228113, 3.533703, 4.119108>,  <2.895761, 3.061221, 4.303208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.228113, 3.533703, 4.119108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.200699, 3.298615, 4.441570>,  <2.184251, 3.157561, 4.635047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.200699, 3.298615, 4.441570>,  <2.228113, 3.533703, 4.119108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.200699, 3.298615, 4.441570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177716, 0.787939, 0.589549,
		-0.981692, 0.183671, 0.050446,
		-0.068535, -0.587721, 0.806156,
		2.180138, 3.122298, 4.683417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.022315, 4.310066, 3.947321>,  <2.228113, 3.533703, 4.119108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.022315, 4.310066, 3.947321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.152916, 4.685974, 3.987774>,  <2.231277, 4.911519, 4.012045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.152916, 4.685974, 3.987774>,  <2.022315, 4.310066, 3.947321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.152916, 4.685974, 3.987774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530984, -0.270884, 0.802918,
		0.781954, -0.208456, -0.587447,
		0.326503, 0.939770, 0.101132,
		2.250867, 4.967905, 4.018114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.822251, 4.384470, 4.035151>,  <2.022315, 4.310066, 3.947321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.822251, 4.384470, 4.035151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.642761, 4.707520, 4.188194>,  <2.535068, 4.901350, 4.280020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.642761, 4.707520, 4.188194>,  <2.822251, 4.384470, 4.035151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.642761, 4.707520, 4.188194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572107, -0.069299, 0.817246,
		0.686543, 0.585611, -0.430951,
		-0.448724, 0.807624, 0.382609,
		2.508144, 4.949807, 4.302977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.364836, 4.782031, 4.370028>,  <2.822251, 4.384470, 4.035151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.364836, 4.782031, 4.370028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.011841, 4.894928, 4.520523>,  <2.800044, 4.962667, 4.610820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.011841, 4.894928, 4.520523>,  <3.364836, 4.782031, 4.370028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.011841, 4.894928, 4.520523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389160, -0.011075, 0.921103,
		0.264143, 0.959279, -0.100065,
		-0.882487, 0.282244, 0.376239,
		2.747095, 4.979601, 4.633395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.588528, 5.068188, 4.998795>,  <3.364836, 4.782031, 4.370028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.588528, 5.068188, 4.998795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193054, 5.037506, 5.050358>,  <2.955770, 5.019097, 5.081295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193054, 5.037506, 5.050358>,  <3.588528, 5.068188, 4.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193054, 5.037506, 5.050358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133309, -0.055305, 0.989530,
		-0.068773, 0.995519, 0.064904,
		-0.988685, -0.076705, 0.128908,
		2.896449, 5.014494, 5.089030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.338895, 5.581148, 5.543550>,  <3.588528, 5.068188, 4.998795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.338895, 5.581148, 5.543550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.071037, 5.284134, 5.537647>,  <2.910323, 5.105925, 5.534106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.071037, 5.284134, 5.537647>,  <3.338895, 5.581148, 5.543550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.071037, 5.284134, 5.537647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069349, -0.082297, 0.994192,
		-0.739438, 0.664731, 0.106603,
		-0.669644, -0.742536, -0.014755,
		2.870144, 5.061373, 5.533221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.002899, 4.049099, 2.373065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.688763, 3.993774, 2.131699>,  <2.500281, 3.960580, 1.986879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.688763, 3.993774, 2.131699>,  <3.002899, 4.049099, 2.373065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.688763, 3.993774, 2.131699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560621, 0.254534, -0.787983,
		0.262590, -0.957120, -0.122346,
		-0.785335, -0.138327, -0.603419,
		2.453161, 3.952281, 1.950674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.252181, 4.179740, 1.700519>,  <3.002899, 4.049099, 2.373065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.252181, 4.179740, 1.700519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866984, 4.117844, 1.612244>,  <2.635867, 4.080706, 1.559278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866984, 4.117844, 1.612244>,  <3.252181, 4.179740, 1.700519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.866984, 4.117844, 1.612244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149336, 0.375305, -0.914792,
		0.224381, -0.913893, -0.338307,
		-0.962991, -0.154740, -0.220689,
		2.578087, 4.071421, 1.546037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.175881, 3.809864, 1.079269>,  <3.252181, 4.179740, 1.700519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.175881, 3.809864, 1.079269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.862769, 4.053162, 1.131874>,  <2.674902, 4.199141, 1.163437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.862769, 4.053162, 1.131874>,  <3.175881, 3.809864, 1.079269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.862769, 4.053162, 1.131874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079518, 0.307364, -0.948264,
		-0.617199, -0.731823, -0.288965,
		-0.782778, 0.608245, 0.131512,
		2.627935, 4.235635, 1.171328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.832840, 3.875858, 0.447694>,  <3.175881, 3.809864, 1.079269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.832840, 3.875858, 0.447694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702433, 4.190613, 0.657272>,  <2.624188, 4.379466, 0.783019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702433, 4.190613, 0.657272>,  <2.832840, 3.875858, 0.447694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702433, 4.190613, 0.657272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159733, 0.500407, -0.850928,
		-0.931771, -0.361109, -0.037450,
		-0.326018, 0.786888, 0.523946,
		2.604627, 4.426679, 0.814456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.029748, 4.097423, 0.365860>,  <2.832840, 3.875858, 0.447694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.029748, 4.097423, 0.365860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283526, 4.397537, 0.440208>,  <2.435793, 4.577606, 0.484818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.283526, 4.397537, 0.440208>,  <2.029748, 4.097423, 0.365860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.283526, 4.397537, 0.440208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243760, 0.422400, -0.873017,
		-0.733526, 0.508574, 0.450880,
		0.634446, 0.750287, 0.185871,
		2.473860, 4.622623, 0.495970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.661601, 4.755460, 0.205576>,  <2.029748, 4.097423, 0.365860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.661601, 4.755460, 0.205576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.049232, 4.851212, 0.181610>,  <2.281810, 4.908663, 0.167231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.049232, 4.851212, 0.181610>,  <1.661601, 4.755460, 0.205576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.049232, 4.851212, 0.181610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181295, 0.525954, -0.830966,
		-0.167404, 0.816131, 0.553088,
		0.969076, 0.239380, -0.059914,
		2.339954, 4.923026, 0.163636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.684431, 5.479273, 0.198216>,  <1.661601, 4.755460, 0.205576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.684431, 5.479273, 0.198216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.028601, 5.354980, 0.036667>,  <2.235103, 5.280405, -0.060263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.028601, 5.354980, 0.036667>,  <1.684431, 5.479273, 0.198216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.028601, 5.354980, 0.036667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244572, 0.443496, -0.862262,
		0.447049, 0.840688, 0.305599,
		0.860425, -0.310733, -0.403873,
		2.286728, 5.261761, -0.084495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.857765, 5.993716, -0.320998>,  <1.684431, 5.479273, 0.198216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.857765, 5.993716, -0.320998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053052, 5.658218, -0.417458>,  <2.170224, 5.456920, -0.475333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053052, 5.658218, -0.417458>,  <1.857765, 5.993716, -0.320998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053052, 5.658218, -0.417458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322545, 0.083341, -0.942878,
		0.810931, 0.538111, -0.229844,
		0.488218, -0.838744, -0.241148,
		2.199517, 5.406595, -0.489802>
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
