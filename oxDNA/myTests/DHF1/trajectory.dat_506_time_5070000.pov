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
	<1.877937, 3.352560, 5.226445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718825, 3.268452, 4.869221>,  <1.623358, 3.217987, 4.654886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718825, 3.268452, 4.869221>,  <1.877937, 3.352560, 5.226445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718825, 3.268452, 4.869221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143992, -0.947013, 0.287110,
		-0.906112, 0.242800, 0.346425,
		-0.397779, -0.210271, -0.893061,
		1.599492, 3.205370, 4.601303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.346818, 2.907975, 5.393034>,  <1.877937, 3.352560, 5.226445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.346818, 2.907975, 5.393034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.422856, 2.845928, 5.005260>,  <1.468480, 2.808700, 4.772596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.422856, 2.845928, 5.005260>,  <1.346818, 2.907975, 5.393034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.422856, 2.845928, 5.005260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255612, -0.961204, 0.103677,
		-0.947906, 0.228090, -0.222372,
		0.190098, -0.155117, -0.969434,
		1.479885, 2.799393, 4.714430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.750173, 2.793382, 4.958395>,  <1.346818, 2.907975, 5.393034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.750173, 2.793382, 4.958395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.092668, 2.602928, 4.878242>,  <1.298164, 2.488656, 4.830151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.092668, 2.602928, 4.878242>,  <0.750173, 2.793382, 4.958395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.092668, 2.602928, 4.878242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475205, -0.878096, 0.055920,
		-0.202579, 0.047342, -0.978121,
		0.856237, -0.476136, -0.200381,
		1.349539, 2.460087, 4.818128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.702408, 2.351614, 4.381732>,  <0.750173, 2.793382, 4.958395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.702408, 2.351614, 4.381732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005733, 2.206646, 4.598476>,  <1.187729, 2.119665, 4.728523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.005733, 2.206646, 4.598476>,  <0.702408, 2.351614, 4.381732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.005733, 2.206646, 4.598476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376304, -0.922102, -0.090121,
		0.532313, -0.135564, -0.835623,
		0.758313, -0.362421, 0.541860,
		1.233227, 2.097919, 4.761034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044984, 1.955662, 4.036663>,  <0.702408, 2.351614, 4.381732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044984, 1.955662, 4.036663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.119667, 1.821049, 4.405853>,  <1.164477, 1.740281, 4.627367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.119667, 1.821049, 4.405853>,  <1.044984, 1.955662, 4.036663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.119667, 1.821049, 4.405853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250207, -0.924806, -0.286586,
		0.950019, -0.177427, -0.256871,
		0.186708, -0.336533, 0.922977,
		1.175679, 1.720089, 4.682746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.220359, 1.324983, 3.864427>,  <1.044984, 1.955662, 4.036663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.220359, 1.324983, 3.864427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.148166, 1.281288, 4.255424>,  <1.104849, 1.255071, 4.490023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.148166, 1.281288, 4.255424>,  <1.220359, 1.324983, 3.864427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.148166, 1.281288, 4.255424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467534, -0.864831, -0.182973,
		0.865354, -0.490035, 0.105016,
		-0.180484, -0.109238, 0.977493,
		1.094020, 1.248517, 4.548672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.611966, 0.676128, 4.134054>,  <1.220359, 1.324983, 3.864427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.611966, 0.676128, 4.134054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.279695, 0.776436, 4.332886>,  <1.080332, 0.836621, 4.452185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.279695, 0.776436, 4.332886>,  <1.611966, 0.676128, 4.134054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.279695, 0.776436, 4.332886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367244, -0.917840, -0.150669,
		0.418457, -0.307707, 0.854524,
		-0.830678, 0.250770, 0.497080,
		1.030491, 0.851667, 4.482010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.504969, 0.163378, 4.717799>,  <1.611966, 0.676128, 4.134054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.504969, 0.163378, 4.717799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.142509, 0.320759, 4.655716>,  <0.925034, 0.415187, 4.618466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.142509, 0.320759, 4.655716>,  <1.504969, 0.163378, 4.717799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.142509, 0.320759, 4.655716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391698, -0.919087, -0.043034,
		-0.159581, 0.021799, 0.986944,
		-0.906149, 0.393452, -0.155208,
		0.870665, 0.438794, 4.609154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.051921, -0.308755, 3.540155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.354933, -0.243385, 3.792961>,  <-0.536740, -0.204163, 3.944645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.354933, -0.243385, 3.792961>,  <-0.051921, -0.308755, 3.540155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.354933, -0.243385, 3.792961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620921, 0.479242, 0.620310,
		-0.201513, 0.862334, -0.464513,
		-0.757529, 0.163425, 0.632015,
		-0.582191, -0.194358, 3.982565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.107113, 0.335437, 3.578366>,  <-0.051921, -0.308755, 3.540155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.107113, 0.335437, 3.578366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061960, 0.206009, 3.916985>,  <-0.163404, 0.128352, 4.120156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.061960, 0.206009, 3.916985>,  <0.107113, 0.335437, 3.578366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.061960, 0.206009, 3.916985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691226, 0.489014, 0.532045,
		-0.586127, 0.810042, 0.016962,
		-0.422684, -0.323570, 0.846546,
		-0.188765, 0.108938, 4.170949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.149009, 0.880943, 4.071406>,  <0.107113, 0.335437, 3.578366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.149009, 0.880943, 4.071406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.011360, 0.598320, 4.304657>,  <0.107582, 0.428746, 4.444607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.011360, 0.598320, 4.304657>,  <-0.149009, 0.880943, 4.071406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.011360, 0.598320, 4.304657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656976, 0.665364, 0.354504,
		-0.638469, 0.240972, 0.730952,
		0.400924, -0.706557, 0.583127,
		0.131637, 0.386353, 4.479595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.156850, 1.158747, 4.720940>,  <-0.149009, 0.880943, 4.071406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.156850, 1.158747, 4.720940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.133356, 0.884308, 4.699409>,  <0.307480, 0.719644, 4.686491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.133356, 0.884308, 4.699409>,  <-0.156850, 1.158747, 4.720940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.133356, 0.884308, 4.699409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649216, 0.656365, 0.384323,
		-0.228354, -0.313777, 0.921628,
		0.725516, -0.686097, -0.053825,
		0.351011, 0.678479, 4.683262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.116734, 1.069737, 5.430681>,  <-0.156850, 1.158747, 4.720940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.116734, 1.069737, 5.430681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.391331, 1.023647, 5.143501>,  <0.556089, 0.995993, 4.971193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.391331, 1.023647, 5.143501>,  <0.116734, 1.069737, 5.430681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.391331, 1.023647, 5.143501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505973, 0.784816, 0.357848,
		0.522225, -0.608922, 0.597072,
		0.686493, -0.115225, -0.717949,
		0.597279, 0.989080, 4.928117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.700676, 1.126894, 5.817810>,  <0.116733, 1.069737, 5.430681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.700676, 1.126894, 5.817810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.802162, 1.193985, 5.436760>,  <0.863054, 1.234240, 5.208130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.802162, 1.193985, 5.436760>,  <0.700676, 1.126894, 5.817810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802162, 1.193985, 5.436760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462785, 0.843769, 0.271817,
		0.849386, -0.509825, 0.136458,
		0.253718, 0.167727, -0.952625,
		0.878277, 1.244303, 5.150972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.370485, 1.355955, 5.864161>,  <0.700676, 1.126894, 5.817810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.370485, 1.355955, 5.864161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.326235, 1.468006, 5.482735>,  <1.299685, 1.535237, 5.253879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.326235, 1.468006, 5.482735>,  <1.370485, 1.355955, 5.864161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.326235, 1.468006, 5.482735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503185, 0.843185, 0.189326,
		0.857069, -0.458876, -0.234234,
		-0.110625, 0.280128, -0.953567,
		1.293047, 1.552045, 5.196664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.108388, 1.596984, 5.587930>,  <1.370485, 1.355955, 5.864161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.108388, 1.596984, 5.587930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.835100, 1.749142, 5.338608>,  <1.671127, 1.840436, 5.189014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.835100, 1.749142, 5.338608>,  <2.108388, 1.596984, 5.587930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.835100, 1.749142, 5.338608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591642, 0.788673, -0.167196,
		0.427984, -0.483005, -0.763895,
		-0.683220, 0.380395, -0.623305,
		1.630134, 1.863260, 5.151616>
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
