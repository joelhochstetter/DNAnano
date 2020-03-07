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
	<5.018186, 2.516628, 3.787033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.711058, 2.735847, 3.654312>,  <4.526781, 2.867379, 3.574680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.711058, 2.735847, 3.654312>,  <5.018186, 2.516628, 3.787033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.711058, 2.735847, 3.654312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088842, -0.421817, -0.902318,
		-0.634475, -0.722296, 0.275190,
		-0.767820, 0.548050, -0.331803,
		4.480711, 2.900262, 3.554771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.408951, 2.194826, 3.867890>,  <5.018186, 2.516628, 3.787033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.408951, 2.194826, 3.867890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.456566, 2.433865, 3.550725>,  <4.485135, 2.577288, 3.360426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.456566, 2.433865, 3.550725>,  <4.408951, 2.194826, 3.867890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.456566, 2.433865, 3.550725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108860, -0.801631, -0.587824,
		-0.986904, -0.016343, -0.160478,
		0.119037, 0.597596, -0.792912,
		4.492277, 2.613143, 3.312851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.922692, 2.175559, 3.263958>,  <4.408951, 2.194826, 3.867890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.922692, 2.175559, 3.263958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.289553, 2.275341, 3.139634>,  <4.509669, 2.335211, 3.065040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.289553, 2.275341, 3.139634>,  <3.922692, 2.175559, 3.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.289553, 2.275341, 3.139634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031560, -0.822890, -0.567324,
		-0.397285, 0.510513, -0.762588,
		0.917152, 0.249456, -0.310810,
		4.564698, 2.350178, 3.046391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.991715, 2.226050, 2.494920>,  <3.922692, 2.175559, 3.263958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.991715, 2.226050, 2.494920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333832, 2.111465, 2.667624>,  <4.539102, 2.042715, 2.771246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.333832, 2.111465, 2.667624>,  <3.991715, 2.226050, 2.494920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.333832, 2.111465, 2.667624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039991, -0.794295, -0.606215,
		0.516601, 0.535757, -0.667898,
		0.855292, -0.286461, 0.431759,
		4.590419, 2.025527, 2.797151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.407393, 2.107523, 1.976133>,  <3.991715, 2.226050, 2.494920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.407393, 2.107523, 1.976133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519650, 1.888557, 2.291494>,  <4.587003, 1.757178, 2.480711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.519650, 1.888557, 2.291494>,  <4.407393, 2.107523, 1.976133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.519650, 1.888557, 2.291494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090826, -0.832873, -0.545960,
		0.955506, 0.081611, -0.283457,
		0.280640, -0.547414, 0.788403,
		4.603841, 1.724333, 2.528015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.034665, 1.736233, 1.817007>,  <4.407393, 2.107523, 1.976133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.034665, 1.736233, 1.817007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.815794, 1.541725, 2.089518>,  <4.684472, 1.425020, 2.253024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.815794, 1.541725, 2.089518>,  <5.034665, 1.736233, 1.817007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.815794, 1.541725, 2.089518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050543, -0.831645, -0.553002,
		0.835489, -0.268157, 0.479635,
		-0.547177, -0.486270, 0.681277,
		4.651641, 1.395844, 2.293901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.283008, 1.132704, 1.803137>,  <5.034665, 1.736233, 1.817007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.283008, 1.132704, 1.803137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.910154, 1.103127, 1.944931>,  <4.686442, 1.085380, 2.030007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.910154, 1.103127, 1.944931>,  <5.283008, 1.132704, 1.803137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910154, 1.103127, 1.944931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062793, -0.931092, -0.359339,
		0.356628, -0.357211, 0.863259,
		-0.932134, -0.073944, 0.354484,
		4.630514, 1.080943, 2.051276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.264733, 0.564515, 2.155045>,  <5.283008, 1.132704, 1.803137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.264733, 0.564515, 2.155045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.877422, 0.621002, 2.072586>,  <4.645036, 0.654894, 2.023111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.877422, 0.621002, 2.072586>,  <5.264733, 0.564515, 2.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.877422, 0.621002, 2.072586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034738, -0.893054, -0.448607,
		-0.247451, -0.427215, 0.869629,
		-0.968277, 0.141217, -0.206146,
		4.586939, 0.663367, 2.010742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.122165, 0.163812, 1.608449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506023, 0.051876, 1.619543>,  <3.736338, -0.015286, 1.626199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.506023, 0.051876, 1.619543>,  <3.122165, 0.163812, 1.608449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.506023, 0.051876, 1.619543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171750, -0.661341, -0.730157,
		0.222670, 0.695929, -0.682716,
		0.959646, -0.279841, 0.027735,
		3.793917, -0.032076, 1.627863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.773055, 0.462577, 0.927886>,  <3.122165, 0.163812, 1.608449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.773055, 0.462577, 0.927886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.735598, 0.629585, 0.566354>,  <2.713123, 0.729790, 0.349434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.735598, 0.629585, 0.566354>,  <2.773055, 0.462577, 0.927886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.735598, 0.629585, 0.566354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978270, 0.207260, -0.005613,
		0.184984, -0.884715, -0.427855,
		-0.093644, 0.417520, -0.903830,
		2.707505, 0.754841, 0.295205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.296782, 0.213929, 0.513241>,  <2.773055, 0.462577, 0.927886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.296782, 0.213929, 0.513241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176657, 0.583824, 0.419712>,  <3.104582, 0.805761, 0.363595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.176657, 0.583824, 0.419712>,  <3.296782, 0.213929, 0.513241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.176657, 0.583824, 0.419712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933918, 0.334909, 0.125031,
		0.193930, -0.180821, -0.964207,
		-0.300313, 0.924738, -0.233821,
		3.086563, 0.861246, 0.349566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.801762, 0.432280, 0.070931>,  <3.296782, 0.213929, 0.513241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.801762, 0.432280, 0.070931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625881, 0.737331, 0.260693>,  <3.520353, 0.920362, 0.374551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625881, 0.737331, 0.260693>,  <3.801762, 0.432280, 0.070931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625881, 0.737331, 0.260693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897519, 0.353398, 0.263759,
		0.033496, 0.541764, -0.839863,
		-0.439701, 0.762628, 0.474406,
		3.493971, 0.966120, 0.403015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.186969, 1.069450, -0.110646>,  <3.801762, 0.432280, 0.070931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.186969, 1.069450, -0.110646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.974722, 1.150604, 0.218543>,  <3.847374, 1.199297, 0.416056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.974722, 1.150604, 0.218543>,  <4.186969, 1.069450, -0.110646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.974722, 1.150604, 0.218543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769899, 0.521488, 0.367838,
		-0.354541, 0.828787, -0.432912,
		-0.530618, 0.202885, 0.822972,
		3.815536, 1.211470, 0.465435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.236092, 1.827091, -0.097832>,  <4.186969, 1.069450, -0.110646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.236092, 1.827091, -0.097832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.223103, 1.648075, 0.259638>,  <4.215309, 1.540665, 0.474120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.223103, 1.648075, 0.259638>,  <4.236092, 1.827091, -0.097832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.223103, 1.648075, 0.259638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723123, 0.606726, 0.330117,
		-0.689956, 0.656956, 0.303924,
		-0.032474, -0.447540, 0.893674,
		4.213360, 1.513813, 0.527740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.094386, 2.243677, 0.439187>,  <4.236092, 1.827091, -0.097832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.094386, 2.243677, 0.439187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.309744, 1.949627, 0.603977>,  <4.438959, 1.773197, 0.702850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.309744, 1.949627, 0.603977>,  <4.094386, 2.243677, 0.439187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.309744, 1.949627, 0.603977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728010, 0.651974, 0.211971,
		-0.424421, 0.185797, 0.886198,
		0.538394, -0.735126, 0.411974,
		4.471262, 1.729089, 0.727569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.330580, 2.451623, 1.090770>,  <4.094386, 2.243677, 0.439187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.330580, 2.451623, 1.090770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.603235, 2.191437, 0.956746>,  <4.766829, 2.035325, 0.876332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.603235, 2.191437, 0.956746>,  <4.330580, 2.451623, 1.090770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.603235, 2.191437, 0.956746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713338, 0.692688, 0.106456,
		0.162845, -0.311575, 0.936164,
		0.681638, -0.650465, -0.335059,
		4.807727, 1.996297, 0.856229>
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
