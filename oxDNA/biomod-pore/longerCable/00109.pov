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
	<24.644505, 35.080353, 34.902641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254620, 35.121311, 34.982090>,  <24.020689, 35.145885, 35.029758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254620, 35.121311, 34.982090>,  <24.644505, 35.080353, 34.902641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254620, 35.121311, 34.982090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153675, -0.952452, -0.263095,
		0.162241, -0.286965, 0.944102,
		-0.974711, 0.102401, 0.198626,
		23.962206, 35.152031, 35.041679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081871, 34.467258, 34.903599>,  <24.644505, 35.080353, 34.902641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081871, 34.467258, 34.903599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113369, 34.800507, 35.122585>,  <25.132267, 35.000454, 35.253975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113369, 34.800507, 35.122585>,  <25.081871, 34.467258, 34.903599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113369, 34.800507, 35.122585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361081, -0.488042, 0.794629,
		0.929204, -0.260250, 0.262393,
		0.078743, 0.833117, 0.547462,
		25.136992, 35.050442, 35.286823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521450, 34.453991, 34.282444>,  <25.081871, 34.467258, 34.903599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521450, 34.453991, 34.282444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815950, 34.184139, 34.303635>,  <25.992651, 34.022228, 34.316349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815950, 34.184139, 34.303635>,  <25.521450, 34.453991, 34.282444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815950, 34.184139, 34.303635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354423, -0.451122, -0.819068,
		0.576469, 0.584264, -0.571244,
		0.736253, -0.674629, 0.052981,
		26.036827, 33.981750, 34.319530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816900, 34.163551, 34.843555>,  <25.521450, 34.453991, 34.282444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816900, 34.163551, 34.843555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633436, 34.024307, 34.516521>,  <25.523357, 33.940762, 34.320301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633436, 34.024307, 34.516521>,  <25.816900, 34.163551, 34.843555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633436, 34.024307, 34.516521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615949, -0.538627, 0.574880,
		-0.640499, 0.767266, 0.032626,
		-0.458659, -0.348114, -0.817587,
		25.495838, 33.919872, 34.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355526, 34.330811, 35.328407>,  <25.816900, 34.163551, 34.843555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355526, 34.330811, 35.328407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522303, 33.991508, 35.459015>,  <26.622368, 33.787926, 35.537380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522303, 33.991508, 35.459015>,  <26.355526, 34.330811, 35.328407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522303, 33.991508, 35.459015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578232, 0.029633, 0.815334,
		-0.701290, -0.528753, -0.478135,
		0.416942, -0.848259, 0.326523,
		26.647385, 33.737030, 35.556973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848436, 33.803257, 35.529480>,  <26.355526, 34.330811, 35.328407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848436, 33.803257, 35.529480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142847, 33.689758, 35.775330>,  <26.319492, 33.621658, 35.922840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142847, 33.689758, 35.775330>,  <25.848436, 33.803257, 35.529480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142847, 33.689758, 35.775330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654820, -0.068143, 0.752707,
		-0.171695, -0.956475, -0.235957,
		0.736024, -0.283746, 0.614619,
		26.363655, 33.604637, 35.959717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691729, 33.140079, 35.951744>,  <25.848436, 33.803257, 35.529480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691729, 33.140079, 35.951744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962845, 33.357697, 36.149582>,  <26.125515, 33.488266, 36.268284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962845, 33.357697, 36.149582>,  <25.691729, 33.140079, 35.951744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962845, 33.357697, 36.149582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539079, -0.089731, 0.837462,
		0.499993, -0.834248, 0.232462,
		0.677791, 0.544040, 0.494590,
		26.166182, 33.520908, 36.297958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.859947, 32.771210, 36.705757>,  <25.691729, 33.140079, 35.951744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.859947, 32.771210, 36.705757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976650, 33.152889, 36.732212>,  <26.046673, 33.381897, 36.748085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976650, 33.152889, 36.732212>,  <25.859947, 32.771210, 36.705757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976650, 33.152889, 36.732212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321549, 0.032724, 0.946327,
		0.900824, -0.297364, 0.316371,
		0.291757, 0.954203, 0.066138,
		26.064177, 33.439152, 36.752052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119337, 32.835102, 37.467770>,  <25.859947, 32.771210, 36.705757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119337, 32.835102, 37.467770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053444, 33.209789, 37.344204>,  <26.013908, 33.434601, 37.270065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053444, 33.209789, 37.344204>,  <26.119337, 32.835102, 37.467770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053444, 33.209789, 37.344204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475594, 0.198949, 0.856872,
		0.864103, 0.288073, 0.412722,
		-0.164731, 0.936714, -0.308918,
		26.004025, 33.490803, 37.251530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364222, 33.234638, 37.979919>,  <26.119337, 32.835102, 37.467770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364222, 33.234638, 37.979919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072197, 33.416203, 37.775578>,  <25.896982, 33.525143, 37.652973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.072197, 33.416203, 37.775578>,  <26.364222, 33.234638, 37.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.072197, 33.416203, 37.775578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497490, 0.159499, 0.852681,
		0.468521, 0.876656, 0.109371,
		-0.730063, 0.453910, -0.510856,
		25.853178, 33.552376, 37.622322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049498, 33.823833, 38.415779>,  <26.364222, 33.234638, 37.979919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049498, 33.823833, 38.415779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757229, 33.755463, 38.151382>,  <25.581867, 33.714439, 37.992744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757229, 33.755463, 38.151382>,  <26.049498, 33.823833, 38.415779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757229, 33.755463, 38.151382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678479, 0.073901, 0.730893,
		-0.076080, 0.982509, -0.169966,
		-0.730670, -0.170925, -0.660989,
		25.538029, 33.704185, 37.953087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513514, 34.238346, 38.658916>,  <26.049498, 33.823833, 38.415779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513514, 34.238346, 38.658916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376984, 33.920464, 38.458141>,  <25.295067, 33.729733, 38.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376984, 33.920464, 38.458141>,  <25.513514, 34.238346, 38.658916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376984, 33.920464, 38.458141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807067, -0.025941, 0.589890,
		-0.481810, 0.606439, -0.632527,
		-0.341324, -0.794707, -0.501935,
		25.274586, 33.682053, 38.307560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.869980, 33.992699, 39.063877>,  <25.513514, 34.238346, 38.658916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.869980, 33.992699, 39.063877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664612, 33.651794, 39.023758>,  <24.541391, 33.447254, 38.999687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664612, 33.651794, 39.023758>,  <24.869980, 33.992699, 39.063877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664612, 33.651794, 39.023758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157389, 0.021378, -0.987305,
		0.843581, -0.522687, 0.123160,
		-0.513419, -0.852256, -0.100299,
		24.510586, 33.396118, 38.993668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231056, 33.374916, 38.726624>,  <24.869980, 33.992699, 39.063877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231056, 33.374916, 38.726624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839008, 33.384945, 38.647896>,  <24.603779, 33.390961, 38.600658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.839008, 33.384945, 38.647896>,  <25.231056, 33.374916, 38.726624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839008, 33.384945, 38.647896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198294, 0.157639, -0.967383,
		0.006775, -0.987179, -0.159476,
		-0.980119, 0.025069, -0.196819,
		24.544973, 33.392464, 38.588848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005386, 32.931072, 38.163364>,  <25.231056, 33.374916, 38.726624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005386, 32.931072, 38.163364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838066, 33.289757, 38.221230>,  <24.737675, 33.504967, 38.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838066, 33.289757, 38.221230>,  <25.005386, 32.931072, 38.163364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838066, 33.289757, 38.221230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427893, 0.335032, -0.839441,
		-0.801207, -0.289236, -0.523841,
		-0.418300, 0.896714, 0.144668,
		24.712576, 33.558769, 38.264629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.671116, 33.077187, 37.568314>,  <25.005386, 32.931072, 38.163364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.671116, 33.077187, 37.568314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806528, 33.406116, 37.751259>,  <24.887775, 33.603474, 37.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806528, 33.406116, 37.751259>,  <24.671116, 33.077187, 37.568314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806528, 33.406116, 37.751259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686387, 0.116674, -0.717817,
		-0.643639, 0.556933, -0.524933,
		0.338530, 0.822322, 0.457367,
		24.908087, 33.652813, 37.888470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626060, 33.627457, 37.115746>,  <24.671116, 33.077187, 37.568314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626060, 33.627457, 37.115746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920643, 33.669331, 37.383080>,  <25.097393, 33.694454, 37.543480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920643, 33.669331, 37.383080>,  <24.626060, 33.627457, 37.115746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920643, 33.669331, 37.383080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636134, 0.228934, -0.736833,
		-0.230141, 0.967797, 0.102006,
		0.736457, 0.104686, 0.668335,
		25.141581, 33.700737, 37.583580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941782, 34.181816, 36.933853>,  <24.626060, 33.627457, 37.115746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941782, 34.181816, 36.933853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218307, 33.998486, 37.157288>,  <25.384222, 33.888489, 37.291348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218307, 33.998486, 37.157288>,  <24.941782, 34.181816, 36.933853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218307, 33.998486, 37.157288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678693, 0.146644, -0.719632,
		0.247911, 0.876604, 0.412439,
		0.691314, -0.458324, 0.558590,
		25.425701, 33.860989, 37.324863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469622, 34.619011, 36.920921>,  <24.941782, 34.181816, 36.933853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469622, 34.619011, 36.920921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622162, 34.254375, 36.982353>,  <25.713686, 34.035595, 37.019211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.622162, 34.254375, 36.982353>,  <25.469622, 34.619011, 36.920921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622162, 34.254375, 36.982353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696012, 0.173793, -0.696680,
		0.608391, 0.372573, 0.700749,
		0.381349, -0.911584, 0.153581,
		25.736567, 33.980900, 37.028427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231802, 34.690811, 36.896633>,  <25.469622, 34.619011, 36.920921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231802, 34.690811, 36.896633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176819, 34.297527, 36.848610>,  <26.143829, 34.061558, 36.819798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176819, 34.297527, 36.848610>,  <26.231802, 34.690811, 36.896633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176819, 34.297527, 36.848610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535911, 0.028112, -0.843807,
		0.833010, -0.180327, 0.523046,
		-0.137457, -0.983205, -0.120057,
		26.135582, 34.002567, 36.812592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926552, 34.376755, 36.799843>,  <26.231802, 34.690811, 36.896633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926552, 34.376755, 36.799843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644163, 34.160454, 36.616898>,  <26.474730, 34.030674, 36.507130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644163, 34.160454, 36.616898>,  <26.926552, 34.376755, 36.799843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644163, 34.160454, 36.616898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524009, 0.035633, -0.850967,
		0.476463, -0.840424, 0.258205,
		-0.705973, -0.540756, -0.457367,
		26.432371, 33.998226, 36.479687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229950, 33.718693, 36.423256>,  <26.926552, 34.376755, 36.799843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229950, 33.718693, 36.423256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903248, 33.886185, 36.264473>,  <26.707226, 33.986679, 36.169201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903248, 33.886185, 36.264473>,  <27.229950, 33.718693, 36.423256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903248, 33.886185, 36.264473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507951, 0.195492, -0.838909,
		-0.273671, -0.886821, -0.372362,
		-0.816756, 0.418727, -0.396961,
		26.658220, 34.011803, 36.145386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904587, 33.924534, 36.357857>,  <27.229950, 33.718693, 36.423256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904587, 33.924534, 36.357857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172525, 34.121387, 36.135464>,  <28.333288, 34.239498, 36.002029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172525, 34.121387, 36.135464>,  <27.904587, 33.924534, 36.357857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172525, 34.121387, 36.135464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509239, 0.240438, 0.826357,
		0.540355, -0.836658, -0.089555,
		0.669845, 0.492131, -0.555981,
		28.373480, 34.269028, 35.968670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560848, 33.714470, 36.641941>,  <27.904587, 33.924534, 36.357857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560848, 33.714470, 36.641941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589186, 34.062630, 36.447048>,  <28.606188, 34.271526, 36.330112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589186, 34.062630, 36.447048>,  <28.560848, 33.714470, 36.641941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589186, 34.062630, 36.447048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409539, 0.420010, 0.809858,
		0.909538, -0.256912, -0.326707,
		0.070842, 0.870395, -0.487230,
		28.610439, 34.323750, 36.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290567, 33.937637, 36.707085>,  <28.560848, 33.714470, 36.641941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290567, 33.937637, 36.707085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026602, 34.235661, 36.668289>,  <28.868221, 34.414474, 36.645012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026602, 34.235661, 36.668289>,  <29.290567, 33.937637, 36.707085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026602, 34.235661, 36.668289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418826, 0.471959, 0.775783,
		0.623776, 0.471328, -0.623501,
		-0.659915, 0.745053, -0.096992,
		28.828627, 34.459175, 36.639191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480606, 34.656723, 36.332478>,  <29.290567, 33.937637, 36.707085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480606, 34.656723, 36.332478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236855, 34.642288, 36.649300>,  <29.090605, 34.633629, 36.839394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236855, 34.642288, 36.649300>,  <29.480606, 34.656723, 36.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236855, 34.642288, 36.649300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705196, 0.431973, 0.562226,
		-0.362435, 0.901165, -0.237788,
		-0.609377, -0.036083, 0.792060,
		29.054041, 34.631462, 36.886917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466522, 35.339275, 36.720589>,  <29.480606, 34.656723, 36.332478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466522, 35.339275, 36.720589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376513, 35.050129, 36.981918>,  <29.322508, 34.876640, 37.138714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376513, 35.050129, 36.981918>,  <29.466522, 35.339275, 36.720589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376513, 35.050129, 36.981918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584182, 0.436543, 0.684224,
		-0.779805, 0.535624, 0.324055,
		-0.225023, -0.722868, 0.653320,
		29.309006, 34.833267, 37.177914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149010, 35.637146, 37.399986>,  <29.466522, 35.339275, 36.720589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149010, 35.637146, 37.399986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314423, 35.280617, 37.474319>,  <29.413671, 35.066700, 37.518921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314423, 35.280617, 37.474319>,  <29.149010, 35.637146, 37.399986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314423, 35.280617, 37.474319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592938, 0.418526, 0.687939,
		-0.690952, -0.174299, 0.701574,
		0.413534, -0.891323, 0.185833,
		29.438482, 35.013222, 37.530067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003273, 35.700424, 38.087719>,  <29.149010, 35.637146, 37.399986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003273, 35.700424, 38.087719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294468, 35.445629, 37.986301>,  <29.469185, 35.292751, 37.925449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294468, 35.445629, 37.986301>,  <29.003273, 35.700424, 38.087719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294468, 35.445629, 37.986301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576687, 0.368940, 0.728914,
		-0.370764, -0.676857, 0.635924,
		0.727988, -0.636984, -0.253545,
		29.512865, 35.254536, 37.910236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246075, 35.179268, 38.634182>,  <29.003273, 35.700424, 38.087719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246075, 35.179268, 38.634182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548660, 35.304939, 38.404728>,  <29.730211, 35.380341, 38.267056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548660, 35.304939, 38.404728>,  <29.246075, 35.179268, 38.634182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548660, 35.304939, 38.404728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474238, 0.340506, 0.811883,
		0.450402, -0.886198, 0.108584,
		0.756463, 0.314180, -0.573633,
		29.775599, 35.399193, 38.232639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904106, 34.843094, 38.813381>,  <29.246075, 35.179268, 38.634182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904106, 34.843094, 38.813381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940414, 35.220528, 38.686001>,  <29.962200, 35.446987, 38.609573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940414, 35.220528, 38.686001>,  <29.904106, 34.843094, 38.813381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940414, 35.220528, 38.686001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285421, 0.281703, 0.916067,
		0.954094, -0.174044, -0.243748,
		0.090771, 0.943585, -0.318447,
		29.967646, 35.503605, 38.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547028, 35.094479, 39.102333>,  <29.904106, 34.843094, 38.813381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547028, 35.094479, 39.102333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344540, 35.427704, 39.013119>,  <30.223047, 35.627640, 38.959591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344540, 35.427704, 39.013119>,  <30.547028, 35.094479, 39.102333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344540, 35.427704, 39.013119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461010, 0.479971, 0.746390,
		0.728844, 0.275013, -0.627021,
		-0.506218, 0.833064, -0.223040,
		30.192675, 35.677624, 38.946205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958406, 35.603516, 39.266262>,  <30.547028, 35.094479, 39.102333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958406, 35.603516, 39.266262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615685, 35.806580, 39.230106>,  <30.410051, 35.928417, 39.208412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615685, 35.806580, 39.230106>,  <30.958406, 35.603516, 39.266262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615685, 35.806580, 39.230106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320369, 0.661451, 0.678120,
		0.404042, 0.552057, -0.729372,
		-0.856804, 0.507657, -0.090392,
		30.358643, 35.958878, 39.202988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171589, 36.269337, 39.316349>,  <30.958406, 35.603516, 39.266262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171589, 36.269337, 39.316349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787571, 36.266106, 39.428242>,  <30.557159, 36.264168, 39.495377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787571, 36.266106, 39.428242>,  <31.171589, 36.269337, 39.316349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787571, 36.266106, 39.428242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236557, 0.510641, 0.826611,
		-0.149515, 0.859756, -0.488329,
		-0.960045, -0.008073, 0.279730,
		30.499557, 36.263683, 39.512161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370186, 37.027233, 39.394524>,  <31.171589, 36.269337, 39.316349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370186, 37.027233, 39.394524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501284, 37.335644, 39.176128>,  <31.579943, 37.520691, 39.045090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501284, 37.335644, 39.176128>,  <31.370186, 37.027233, 39.394524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501284, 37.335644, 39.176128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936723, -0.340446, 0.081524,
		-0.123023, -0.538160, -0.833816,
		0.327742, 0.771025, -0.545990,
		31.599606, 37.566952, 39.012333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277027, 36.832294, 40.166386>,  <31.370186, 37.027233, 39.394524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277027, 36.832294, 40.166386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066517, 36.982910, 40.471344>,  <30.940210, 37.073280, 40.654320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066517, 36.982910, 40.471344>,  <31.277027, 36.832294, 40.166386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066517, 36.982910, 40.471344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595962, -0.802875, -0.014855,
		0.606519, -0.462179, 0.646936,
		-0.526274, 0.376539, 0.762400,
		30.908634, 37.095871, 40.700066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051195, 36.293701, 40.715172>,  <31.277027, 36.832294, 40.166386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051195, 36.293701, 40.715172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803213, 36.606937, 40.695465>,  <30.654425, 36.794880, 40.683640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803213, 36.606937, 40.695465>,  <31.051195, 36.293701, 40.715172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803213, 36.606937, 40.695465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670837, -0.561563, -0.484380,
		-0.406981, -0.267241, 0.873469,
		-0.619955, 0.783089, -0.049270,
		30.617228, 36.841866, 40.680683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317535, 36.217056, 40.726711>,  <31.051195, 36.293701, 40.715172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317535, 36.217056, 40.726711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349590, 36.528400, 40.477638>,  <30.368822, 36.715206, 40.328194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349590, 36.528400, 40.477638>,  <30.317535, 36.217056, 40.726711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349590, 36.528400, 40.477638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380887, -0.553379, -0.740740,
		-0.921142, 0.296534, 0.252120,
		0.080137, 0.778357, -0.622687,
		30.373631, 36.761906, 40.290833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703201, 36.198326, 40.453205>,  <30.317535, 36.217056, 40.726711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703201, 36.198326, 40.453205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953573, 36.398006, 40.213535>,  <30.103796, 36.517815, 40.069733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953573, 36.398006, 40.213535>,  <29.703201, 36.198326, 40.453205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953573, 36.398006, 40.213535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396582, -0.457799, -0.795703,
		-0.671516, 0.735676, -0.088577,
		0.625930, 0.499200, -0.599176,
		30.141352, 36.547768, 40.033783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268570, 36.484032, 39.861847>,  <29.703201, 36.198326, 40.453205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268570, 36.484032, 39.861847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642649, 36.399910, 39.747879>,  <29.867096, 36.349438, 39.679501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642649, 36.399910, 39.747879>,  <29.268570, 36.484032, 39.861847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642649, 36.399910, 39.747879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353882, -0.525269, -0.773860,
		0.013085, 0.824540, -0.565653,
		0.935199, -0.210301, -0.284917,
		29.923208, 36.336819, 39.662403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270016, 36.677929, 39.189087>,  <29.268570, 36.484032, 39.861847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270016, 36.677929, 39.189087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599764, 36.451839, 39.201328>,  <29.797613, 36.316185, 39.208675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599764, 36.451839, 39.201328>,  <29.270016, 36.677929, 39.189087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599764, 36.451839, 39.201328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106657, -0.208202, -0.972253,
		0.555915, 0.798230, -0.231921,
		0.824368, -0.565226, 0.030606,
		29.847075, 36.282272, 39.210510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578066, 36.825459, 38.673813>,  <29.270016, 36.677929, 39.189087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578066, 36.825459, 38.673813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747105, 36.472706, 38.757423>,  <29.848528, 36.261055, 38.807590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747105, 36.472706, 38.757423>,  <29.578066, 36.825459, 38.673813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747105, 36.472706, 38.757423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163287, -0.300942, -0.939559,
		0.891488, 0.362922, -0.271177,
		0.422595, -0.881885, 0.209026,
		29.873882, 36.208141, 38.820129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974970, 36.683395, 38.197395>,  <29.578066, 36.825459, 38.673813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974970, 36.683395, 38.197395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908176, 36.314518, 38.336918>,  <29.868099, 36.093189, 38.420631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908176, 36.314518, 38.336918>,  <29.974970, 36.683395, 38.197395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908176, 36.314518, 38.336918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254147, -0.301559, -0.918951,
		0.952641, -0.242100, -0.184018,
		-0.166986, -0.922198, 0.348807,
		29.858080, 36.037857, 38.441559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546299, 36.094601, 38.217957>,  <29.974970, 36.683395, 38.197395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546299, 36.094601, 38.217957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159359, 36.044788, 38.129662>,  <29.927195, 36.014900, 38.076683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159359, 36.044788, 38.129662>,  <30.546299, 36.094601, 38.217957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159359, 36.044788, 38.129662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185128, 0.247631, -0.951003,
		0.173084, -0.960819, -0.216493,
		-0.967352, -0.124525, -0.220735,
		29.869154, 36.007431, 38.063442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413305, 35.647141, 37.599892>,  <30.546299, 36.094601, 38.217957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413305, 35.647141, 37.599892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092512, 35.884140, 37.630257>,  <29.900036, 36.026340, 37.648476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092512, 35.884140, 37.630257>,  <30.413305, 35.647141, 37.599892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092512, 35.884140, 37.630257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122917, 0.288057, -0.949692,
		-0.584563, -0.752306, -0.303846,
		-0.801984, 0.592503, 0.075916,
		29.851917, 36.061890, 37.653030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084955, 35.304901, 37.741268>,  <30.413305, 35.647141, 37.599892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084955, 35.304901, 37.741268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315107, 35.024811, 37.572212>,  <31.453199, 34.856758, 37.470779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315107, 35.024811, 37.572212>,  <31.084955, 35.304901, 37.741268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315107, 35.024811, 37.572212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268520, -0.326371, 0.906300,
		-0.772551, -0.634952, 0.000238,
		0.575379, -0.700227, -0.422635,
		31.487720, 34.814743, 37.445423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987738, 34.766651, 38.134022>,  <31.084955, 35.304901, 37.741268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987738, 34.766651, 38.134022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324242, 34.654133, 37.949345>,  <31.526144, 34.586620, 37.838539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324242, 34.654133, 37.949345>,  <30.987738, 34.766651, 38.134022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324242, 34.654133, 37.949345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337771, -0.393326, 0.855106,
		-0.422131, -0.875310, -0.235875,
		0.841259, -0.281295, -0.461690,
		31.576618, 34.569744, 37.810837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089918, 34.088486, 38.253963>,  <30.987738, 34.766651, 38.134022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089918, 34.088486, 38.253963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452488, 34.225838, 38.155586>,  <31.670031, 34.308250, 38.096561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452488, 34.225838, 38.155586>,  <31.089918, 34.088486, 38.253963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452488, 34.225838, 38.155586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409827, -0.574174, 0.708778,
		0.102166, -0.743247, -0.661171,
		0.906424, 0.343379, -0.245941,
		31.724415, 34.328850, 38.081802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349230, 33.823456, 38.896938>,  <31.089918, 34.088486, 38.253963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349230, 33.823456, 38.896938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631979, 33.958660, 38.648399>,  <31.801628, 34.039783, 38.499275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631979, 33.958660, 38.648399>,  <31.349230, 33.823456, 38.896938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631979, 33.958660, 38.648399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684707, -0.106555, 0.720987,
		0.177497, -0.935089, -0.306762,
		0.706874, 0.338015, -0.621349,
		31.844042, 34.060066, 38.461994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994345, 33.488457, 38.755741>,  <31.349230, 33.823456, 38.896938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994345, 33.488457, 38.755741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116531, 33.858082, 38.663826>,  <32.189842, 34.079857, 38.608677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116531, 33.858082, 38.663826>,  <31.994345, 33.488457, 38.755741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116531, 33.858082, 38.663826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626840, -0.013493, 0.779031,
		0.716772, -0.382006, -0.583360,
		0.305466, 0.924061, -0.229785,
		32.208172, 34.135300, 38.594891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769329, 33.403893, 38.846340>,  <31.994345, 33.488457, 38.755741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769329, 33.403893, 38.846340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616714, 33.769703, 38.900105>,  <32.525146, 33.989189, 38.932362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616714, 33.769703, 38.900105>,  <32.769329, 33.403893, 38.846340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616714, 33.769703, 38.900105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518076, 0.091147, 0.850464,
		0.765523, 0.394120, -0.508571,
		-0.381540, 0.914528, 0.134409,
		32.502251, 34.044060, 38.940426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176624, 34.014225, 38.590523>,  <32.769329, 33.403893, 38.846340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176624, 34.014225, 38.590523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317547, 34.377033, 38.498272>,  <33.402100, 34.594719, 38.442921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317547, 34.377033, 38.498272>,  <33.176624, 34.014225, 38.590523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317547, 34.377033, 38.498272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522694, 0.395110, 0.755433,
		0.776320, -0.145592, 0.613294,
		0.352304, 0.907023, -0.230631,
		33.423237, 34.649139, 38.429081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587841, 34.284092, 39.115128>,  <33.176624, 34.014225, 38.590523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587841, 34.284092, 39.115128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394379, 34.576809, 38.923065>,  <33.278301, 34.752438, 38.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394379, 34.576809, 38.923065>,  <33.587841, 34.284092, 39.115128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394379, 34.576809, 38.923065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412285, 0.293437, 0.862506,
		0.772073, 0.615120, 0.159785,
		-0.483658, 0.731794, -0.480159,
		33.249283, 34.796349, 38.779018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625381, 35.031239, 39.349846>,  <33.587841, 34.284092, 39.115128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625381, 35.031239, 39.349846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236698, 34.994617, 39.262760>,  <33.003487, 34.972645, 39.210510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236698, 34.994617, 39.262760>,  <33.625381, 35.031239, 39.349846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236698, 34.994617, 39.262760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228937, 0.138598, 0.963524,
		-0.058038, 0.986108, -0.155637,
		-0.971709, -0.091552, -0.217713,
		32.945187, 34.967152, 39.197445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301922, 35.610085, 39.480495>,  <33.625381, 35.031239, 39.349846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301922, 35.610085, 39.480495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066601, 35.291172, 39.534512>,  <32.925407, 35.099823, 39.566921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066601, 35.291172, 39.534512>,  <33.301922, 35.610085, 39.480495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066601, 35.291172, 39.534512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062175, 0.121907, 0.990592,
		-0.806246, 0.591165, -0.022147,
		-0.588304, -0.797284, 0.135043,
		32.890110, 35.051987, 39.575024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856113, 35.871143, 39.996368>,  <33.301922, 35.610085, 39.480495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856113, 35.871143, 39.996368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830162, 35.472076, 40.004906>,  <32.814590, 35.232635, 40.010029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830162, 35.472076, 40.004906>,  <32.856113, 35.871143, 39.996368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830162, 35.472076, 40.004906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033283, 0.023543, 0.999169,
		-0.997338, 0.064110, -0.034733,
		-0.064874, -0.997665, 0.021347,
		32.810699, 35.172775, 40.011311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866543, 35.623573, 40.665569>,  <32.856113, 35.871143, 39.996368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866543, 35.623573, 40.665569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140205, 35.915279, 40.669453>,  <33.304405, 36.090302, 40.671783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140205, 35.915279, 40.669453>,  <32.866543, 35.623573, 40.665569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140205, 35.915279, 40.669453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028626, -0.040156, 0.998783,
		0.728770, -0.683050, -0.048349,
		0.684160, 0.729267, 0.009712,
		33.345455, 36.134060, 40.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402687, 35.317867, 41.023232>,  <32.866543, 35.623573, 40.665569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402687, 35.317867, 41.023232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227928, 34.965309, 41.095085>,  <33.123074, 34.753777, 41.138199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227928, 34.965309, 41.095085>,  <33.402687, 35.317867, 41.023232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227928, 34.965309, 41.095085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084043, -0.238831, -0.967418,
		0.895577, -0.407564, 0.178419,
		-0.436896, -0.881392, 0.179639,
		33.096859, 34.700893, 41.148975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772209, 34.789131, 40.675743>,  <33.402687, 35.317867, 41.023232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772209, 34.789131, 40.675743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394424, 34.673794, 40.738792>,  <33.167751, 34.604591, 40.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394424, 34.673794, 40.738792>,  <33.772209, 34.789131, 40.675743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394424, 34.673794, 40.738792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180435, 0.054141, -0.982096,
		0.274648, -0.955995, -0.103161,
		-0.944464, -0.288344, 0.157625,
		33.111084, 34.587292, 40.786079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411907, 34.175018, 40.346733>,  <33.772209, 34.789131, 40.675743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411907, 34.175018, 40.346733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142097, 34.462540, 40.414074>,  <32.980213, 34.635052, 40.454479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142097, 34.462540, 40.414074>,  <33.411907, 34.175018, 40.346733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142097, 34.462540, 40.414074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206367, 0.035369, -0.977835,
		-0.708825, -0.694313, 0.124480,
		-0.674521, 0.718803, 0.168354,
		32.939739, 34.678181, 40.464581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767410, 33.862587, 40.090805>,  <33.411907, 34.175018, 40.346733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767410, 33.862587, 40.090805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794662, 34.260883, 40.065964>,  <32.811012, 34.499863, 40.051060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794662, 34.260883, 40.065964>,  <32.767410, 33.862587, 40.090805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794662, 34.260883, 40.065964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255970, -0.042720, -0.965740,
		-0.964281, 0.081692, 0.251970,
		0.068129, 0.995742, -0.062105,
		32.815102, 34.559605, 40.047333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179371, 34.047256, 39.769096>,  <32.767410, 33.862587, 40.090805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179371, 34.047256, 39.769096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429611, 34.351875, 39.701370>,  <32.579754, 34.534649, 39.660736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429611, 34.351875, 39.701370>,  <32.179371, 34.047256, 39.769096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429611, 34.351875, 39.701370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239205, -0.019331, -0.970777,
		-0.742567, 0.647819, 0.170073,
		0.625600, 0.761549, -0.169316,
		32.617290, 34.580341, 39.650574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874233, 34.615093, 39.344147>,  <32.179371, 34.047256, 39.769096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874233, 34.615093, 39.344147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270554, 34.588707, 39.296879>,  <32.508347, 34.572876, 39.268520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270554, 34.588707, 39.296879>,  <31.874233, 34.615093, 39.344147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270554, 34.588707, 39.296879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114313, 0.059421, -0.991666,
		0.072438, 0.996051, 0.051334,
		0.990800, -0.065966, -0.118165,
		32.567795, 34.568916, 39.261429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120693, 35.256382, 38.878105>,  <31.874233, 34.615093, 39.344147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120693, 35.256382, 38.878105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333138, 34.917797, 38.863037>,  <32.460606, 34.714645, 38.853996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333138, 34.917797, 38.863037>,  <32.120693, 35.256382, 38.878105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333138, 34.917797, 38.863037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194306, -0.078399, -0.977803,
		0.824720, 0.526645, -0.206111,
		0.531114, -0.846463, -0.037673,
		32.492470, 34.663857, 38.851734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620388, 35.318893, 38.355831>,  <32.120693, 35.256382, 38.878105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620388, 35.318893, 38.355831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472477, 34.956013, 38.436089>,  <32.383732, 34.738285, 38.484245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472477, 34.956013, 38.436089>,  <32.620388, 35.318893, 38.355831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472477, 34.956013, 38.436089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340691, -0.068520, -0.937675,
		0.864405, -0.415088, -0.283736,
		-0.369776, -0.907197, 0.200646,
		32.361546, 34.683853, 38.496281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784218, 34.842247, 37.848217>,  <32.620388, 35.318893, 38.355831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784218, 34.842247, 37.848217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434990, 34.712402, 37.993748>,  <32.225452, 34.634495, 38.081066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434990, 34.712402, 37.993748>,  <32.784218, 34.842247, 37.848217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434990, 34.712402, 37.993748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428227, 0.153664, -0.890511,
		0.233162, -0.933282, -0.273168,
		-0.873073, -0.324611, 0.363828,
		32.173069, 34.615021, 38.102898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738747, 34.422367, 37.250664>,  <32.784218, 34.842247, 37.848217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738747, 34.422367, 37.250664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385929, 34.477905, 37.430763>,  <32.174240, 34.511227, 37.538822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385929, 34.477905, 37.430763>,  <32.738747, 34.422367, 37.250664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385929, 34.477905, 37.430763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454124, 0.004218, -0.890929,
		-0.125600, -0.990305, 0.059332,
		-0.882041, 0.138845, 0.450251,
		32.121315, 34.519558, 37.565838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250237, 33.933033, 36.968956>,  <32.738747, 34.422367, 37.250664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250237, 33.933033, 36.968956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034229, 34.243961, 37.098049>,  <31.904627, 34.430519, 37.175507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034229, 34.243961, 37.098049>,  <32.250237, 33.933033, 36.968956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034229, 34.243961, 37.098049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505482, 0.007064, -0.862808,
		-0.672959, -0.629064, 0.389107,
		-0.540013, 0.777321, 0.322734,
		31.872225, 34.477158, 37.194870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725967, 33.803211, 36.677841>,  <32.250237, 33.933033, 36.968956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725967, 33.803211, 36.677841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665451, 34.184242, 36.783455>,  <31.629141, 34.412861, 36.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665451, 34.184242, 36.783455>,  <31.725967, 33.803211, 36.677841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665451, 34.184242, 36.783455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378716, 0.190867, -0.905618,
		-0.913064, -0.237004, 0.331878,
		-0.151291, 0.952575, 0.264031,
		31.620064, 34.470016, 36.862663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058393, 33.928288, 36.393642>,  <31.725967, 33.803211, 36.677841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058393, 33.928288, 36.393642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231642, 34.283497, 36.455368>,  <31.335590, 34.496624, 36.492405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231642, 34.283497, 36.455368>,  <31.058393, 33.928288, 36.393642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231642, 34.283497, 36.455368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426206, 0.352639, -0.833063,
		-0.794201, 0.295047, 0.531218,
		0.433120, 0.888028, 0.154315,
		31.361578, 34.549904, 36.501663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589491, 34.350895, 36.131516>,  <31.058393, 33.928288, 36.393642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589491, 34.350895, 36.131516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912071, 34.586372, 36.153725>,  <31.105619, 34.727657, 36.167049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.912071, 34.586372, 36.153725>,  <30.589491, 34.350895, 36.131516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912071, 34.586372, 36.153725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287681, 0.472658, -0.832967,
		-0.516605, 0.655772, 0.550530,
		0.806449, 0.588691, 0.055524,
		31.154005, 34.762981, 36.170383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408289, 35.083241, 35.947350>,  <30.589491, 34.350895, 36.131516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408289, 35.083241, 35.947350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801371, 35.041679, 35.886036>,  <31.037220, 35.016743, 35.849247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801371, 35.041679, 35.886036>,  <30.408289, 35.083241, 35.947350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801371, 35.041679, 35.886036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066340, 0.575262, -0.815274,
		0.172886, 0.811343, 0.558420,
		0.982705, -0.103904, -0.153279,
		31.096182, 35.010509, 35.840054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577486, 35.702496, 35.645481>,  <30.408289, 35.083241, 35.947350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577486, 35.702496, 35.645481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893171, 35.477276, 35.547401>,  <31.082582, 35.342144, 35.488556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893171, 35.477276, 35.547401>,  <30.577486, 35.702496, 35.645481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893171, 35.477276, 35.547401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126012, 0.242294, -0.961985,
		0.601053, 0.790108, 0.120271,
		0.789213, -0.563048, -0.245194,
		31.129934, 35.308361, 35.473843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769537, 36.059731, 35.147251>,  <30.577486, 35.702496, 35.645481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769537, 36.059731, 35.147251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938889, 35.702541, 35.086140>,  <31.040501, 35.488228, 35.049473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938889, 35.702541, 35.086140>,  <30.769537, 36.059731, 35.147251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938889, 35.702541, 35.086140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080996, 0.130659, -0.988113,
		0.902324, 0.430722, -0.017009,
		0.423380, -0.892976, -0.152783,
		31.065903, 35.434647, 35.040306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440042, 36.213863, 34.743271>,  <30.769537, 36.059731, 35.147251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440042, 36.213863, 34.743271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342655, 35.829605, 34.689770>,  <31.284224, 35.599052, 34.657669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342655, 35.829605, 34.689770>,  <31.440042, 36.213863, 34.743271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342655, 35.829605, 34.689770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260715, 0.197646, -0.944968,
		0.934212, -0.195198, -0.298574,
		-0.243468, -0.960643, -0.133752,
		31.269615, 35.541412, 34.649643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730957, 36.027439, 34.067497>,  <31.440042, 36.213863, 34.743271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730957, 36.027439, 34.067497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478930, 35.722630, 34.127262>,  <31.327713, 35.539742, 34.163120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478930, 35.722630, 34.127262>,  <31.730957, 36.027439, 34.067497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478930, 35.722630, 34.127262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291628, 0.053881, -0.955013,
		0.719697, -0.645298, -0.256177,
		-0.630071, -0.762029, 0.149409,
		31.289907, 35.494022, 34.172085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991787, 35.567257, 33.686371>,  <31.730957, 36.027439, 34.067497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991787, 35.567257, 33.686371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606918, 35.483276, 33.755821>,  <31.375998, 35.432888, 33.797493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606918, 35.483276, 33.755821>,  <31.991787, 35.567257, 33.686371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606918, 35.483276, 33.755821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181625, 0.019273, -0.983179,
		0.203076, -0.977521, -0.056677,
		-0.962171, -0.209954, 0.173629,
		31.318268, 35.420288, 33.807911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854668, 35.035423, 33.258511>,  <31.991787, 35.567257, 33.686371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854668, 35.035423, 33.258511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483250, 35.151154, 33.351543>,  <31.260399, 35.220592, 33.407364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483250, 35.151154, 33.351543>,  <31.854668, 35.035423, 33.258511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483250, 35.151154, 33.351543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192268, 0.161118, -0.968026,
		-0.317550, -0.943573, -0.093977,
		-0.928545, 0.289328, 0.232582,
		31.204687, 35.237953, 33.421318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357344, 34.570923, 32.808178>,  <31.854668, 35.035423, 33.258511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357344, 34.570923, 32.808178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187538, 34.914227, 32.923542>,  <31.085655, 35.120209, 32.992760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187538, 34.914227, 32.923542>,  <31.357344, 34.570923, 32.808178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187538, 34.914227, 32.923542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289930, 0.172909, -0.941298,
		-0.857746, -0.483214, 0.175432,
		-0.424515, 0.858258, 0.288411,
		31.060184, 35.171703, 33.010067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642572, 34.590187, 32.514709>,  <31.357344, 34.570923, 32.808178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642572, 34.590187, 32.514709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752771, 34.966755, 32.592518>,  <30.818890, 35.192696, 32.639202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752771, 34.966755, 32.592518>,  <30.642572, 34.590187, 32.514709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752771, 34.966755, 32.592518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251730, 0.265936, -0.930543,
		-0.927757, 0.207395, 0.310248,
		0.275496, 0.941417, 0.194517,
		30.835421, 35.249180, 32.650871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119715, 35.038986, 32.191429>,  <30.642572, 34.590187, 32.514709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119715, 35.038986, 32.191429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396029, 35.321964, 32.251205>,  <30.561817, 35.491753, 32.287071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396029, 35.321964, 32.251205>,  <30.119715, 35.038986, 32.191429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396029, 35.321964, 32.251205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358926, 0.514917, -0.778481,
		-0.627683, 0.484127, 0.609619,
		0.690787, 0.707447, 0.149439,
		30.603264, 35.534199, 32.296036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751879, 35.601589, 32.154915>,  <30.119715, 35.038986, 32.191429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751879, 35.601589, 32.154915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133873, 35.705059, 32.096825>,  <30.363070, 35.767139, 32.061970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133873, 35.705059, 32.096825>,  <29.751879, 35.601589, 32.154915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133873, 35.705059, 32.096825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256519, 0.474167, -0.842237,
		-0.149001, 0.841578, 0.519177,
		0.954985, 0.258673, -0.145230,
		30.420368, 35.782661, 32.053257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721401, 36.374557, 32.213558>,  <29.751879, 35.601589, 32.154915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721401, 36.374557, 32.213558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044943, 36.259304, 32.008530>,  <30.239069, 36.190151, 31.885513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044943, 36.259304, 32.008530>,  <29.721401, 36.374557, 32.213558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044943, 36.259304, 32.008530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319453, 0.516510, -0.794460,
		0.493661, 0.806347, 0.325736,
		0.808856, -0.288137, -0.512571,
		30.287600, 36.172863, 31.854759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002024, 36.966026, 31.925735>,  <29.721401, 36.374557, 32.213558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002024, 36.966026, 31.925735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144596, 36.672478, 31.694429>,  <30.230139, 36.496349, 31.555645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.144596, 36.672478, 31.694429>,  <30.002024, 36.966026, 31.925735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144596, 36.672478, 31.694429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281549, 0.505781, -0.815424,
		0.890892, 0.453451, -0.026346,
		0.356429, -0.733872, -0.578264,
		30.251524, 36.452316, 31.520950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558592, 37.256485, 31.508591>,  <30.002024, 36.966026, 31.925735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558592, 37.256485, 31.508591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415836, 36.945152, 31.301966>,  <30.330183, 36.758354, 31.177990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415836, 36.945152, 31.301966>,  <30.558592, 37.256485, 31.508591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415836, 36.945152, 31.301966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188628, 0.601631, -0.776183,
		0.914904, -0.179573, -0.361530,
		-0.356889, -0.778327, -0.516562,
		30.308769, 36.711655, 31.146997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753248, 37.430233, 30.793283>,  <30.558592, 37.256485, 31.508591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753248, 37.430233, 30.793283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523958, 37.110023, 30.723347>,  <30.386385, 36.917896, 30.681385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523958, 37.110023, 30.723347>,  <30.753248, 37.430233, 30.793283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523958, 37.110023, 30.723347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318621, 0.414349, -0.852523,
		0.754913, -0.432979, -0.492580,
		-0.573224, -0.800528, -0.174841,
		30.351992, 36.869865, 30.670895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885601, 37.278316, 30.001030>,  <30.753248, 37.430233, 30.793283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885601, 37.278316, 30.001030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528759, 37.126423, 30.098974>,  <30.314653, 37.035286, 30.157740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528759, 37.126423, 30.098974>,  <30.885601, 37.278316, 30.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528759, 37.126423, 30.098974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401330, 0.416988, -0.815509,
		0.207571, -0.825788, -0.524394,
		-0.892104, -0.379731, 0.244858,
		30.261127, 37.012505, 30.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621395, 37.031567, 29.358059>,  <30.885601, 37.278316, 30.001030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621395, 37.031567, 29.358059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300583, 37.080582, 29.591890>,  <30.108095, 37.109993, 29.732189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300583, 37.080582, 29.591890>,  <30.621395, 37.031567, 29.358059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300583, 37.080582, 29.591890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482511, 0.443929, -0.755057,
		-0.352035, -0.887644, -0.296918,
		-0.802032, 0.122540, 0.584576,
		30.059973, 37.117344, 29.767263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067154, 36.858006, 28.980337>,  <30.621395, 37.031567, 29.358059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067154, 36.858006, 28.980337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915102, 37.099148, 29.260927>,  <29.823872, 37.243835, 29.429281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915102, 37.099148, 29.260927>,  <30.067154, 36.858006, 28.980337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915102, 37.099148, 29.260927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554951, 0.458074, -0.694405,
		-0.739954, -0.653246, 0.160430,
		-0.380128, 0.602858, 0.701473,
		29.801064, 37.280006, 29.471369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315765, 36.982784, 28.789858>,  <30.067154, 36.858006, 28.980337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315765, 36.982784, 28.789858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417173, 37.270332, 29.048763>,  <29.478018, 37.442860, 29.204107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417173, 37.270332, 29.048763>,  <29.315765, 36.982784, 28.789858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417173, 37.270332, 29.048763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630865, 0.630117, -0.452728,
		-0.733305, -0.293560, 0.613258,
		0.253522, 0.718871, 0.647265,
		29.493231, 37.485992, 29.242943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668728, 37.216972, 29.147799>,  <29.315765, 36.982784, 28.789858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668728, 37.216972, 29.147799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947538, 37.503025, 29.168770>,  <29.114824, 37.674656, 29.181353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947538, 37.503025, 29.168770>,  <28.668728, 37.216972, 29.147799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947538, 37.503025, 29.168770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603212, 0.624332, -0.496331,
		-0.387673, 0.314329, 0.866549,
		0.697025, 0.715127, 0.052430,
		29.156647, 37.717564, 29.184498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336147, 37.789829, 29.197882>,  <28.668728, 37.216972, 29.147799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336147, 37.789829, 29.197882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686310, 37.959293, 29.104782>,  <28.896408, 38.060970, 29.048923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686310, 37.959293, 29.104782>,  <28.336147, 37.789829, 29.197882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686310, 37.959293, 29.104782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483252, 0.778291, -0.400911,
		0.011295, 0.463437, 0.886058,
		0.875408, 0.423661, -0.232747,
		28.948933, 38.086391, 29.034958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329107, 38.585819, 29.415325>,  <28.336147, 37.789829, 29.197882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329107, 38.585819, 29.415325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604683, 38.516338, 29.133846>,  <28.770029, 38.474648, 28.964960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604683, 38.516338, 29.133846>,  <28.329107, 38.585819, 29.415325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604683, 38.516338, 29.133846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373651, 0.746798, -0.550161,
		0.621085, 0.641964, 0.449594,
		0.688940, -0.173705, -0.703696,
		28.811365, 38.464226, 28.922737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658220, 39.240173, 29.259315>,  <28.329107, 38.585819, 29.415325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658220, 39.240173, 29.259315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735620, 39.009892, 28.941544>,  <28.782061, 38.871723, 28.750881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.735620, 39.009892, 28.941544>,  <28.658220, 39.240173, 29.259315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735620, 39.009892, 28.941544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334140, 0.722652, -0.605082,
		0.922446, 0.382535, -0.052532,
		0.193503, -0.575709, -0.794428,
		28.793671, 38.837177, 28.703215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097792, 39.577026, 28.834291>,  <28.658220, 39.240173, 29.259315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097792, 39.577026, 28.834291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926849, 39.319225, 28.580683>,  <28.824284, 39.164543, 28.428518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926849, 39.319225, 28.580683>,  <29.097792, 39.577026, 28.834291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926849, 39.319225, 28.580683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167774, 0.745638, -0.644884,
		0.888381, -0.169221, -0.426782,
		-0.427353, -0.644506, -0.634020,
		28.798643, 39.125874, 28.390476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350618, 39.758507, 28.207657>,  <29.097792, 39.577026, 28.834291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350618, 39.758507, 28.207657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044668, 39.528774, 28.090965>,  <28.861097, 39.390934, 28.020950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044668, 39.528774, 28.090965>,  <29.350618, 39.758507, 28.207657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044668, 39.528774, 28.090965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142609, 0.592601, -0.792771,
		0.628194, -0.564768, -0.535171,
		-0.764876, -0.574334, -0.291728,
		28.815205, 39.356476, 28.003447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426624, 39.486332, 27.458899>,  <29.350618, 39.758507, 28.207657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426624, 39.486332, 27.458899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032660, 39.483696, 27.528069>,  <28.796280, 39.482113, 27.569571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032660, 39.483696, 27.528069>,  <29.426624, 39.486332, 27.458899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032660, 39.483696, 27.528069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155179, 0.475932, -0.865684,
		-0.076593, -0.879458, -0.469774,
		-0.984913, -0.006594, 0.172927,
		28.737186, 39.481716, 27.579947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090025, 39.321690, 26.827978>,  <29.426624, 39.486332, 27.458899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090025, 39.321690, 26.827978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800257, 39.503036, 27.035700>,  <28.626396, 39.611843, 27.160334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800257, 39.503036, 27.035700>,  <29.090025, 39.321690, 26.827978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800257, 39.503036, 27.035700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278723, 0.496369, -0.822150,
		-0.630500, -0.740324, -0.233217,
		-0.724419, 0.453363, 0.519306,
		28.582932, 39.639046, 27.191492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565683, 39.333233, 26.339552>,  <29.090025, 39.321690, 26.827978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565683, 39.333233, 26.339552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437065, 39.593163, 26.615042>,  <28.359894, 39.749119, 26.780336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437065, 39.593163, 26.615042>,  <28.565683, 39.333233, 26.339552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437065, 39.593163, 26.615042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235296, 0.649704, -0.722856,
		-0.917194, -0.394484, -0.056008,
		-0.321543, 0.649821, 0.688725,
		28.340603, 39.788109, 26.821659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985689, 39.607502, 26.063004>,  <28.565683, 39.333233, 26.339552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985689, 39.607502, 26.063004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144842, 39.861423, 26.327946>,  <28.240334, 40.013775, 26.486912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144842, 39.861423, 26.327946>,  <27.985689, 39.607502, 26.063004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144842, 39.861423, 26.327946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136951, 0.754972, -0.641298,
		-0.907157, 0.164451, 0.387326,
		0.397882, 0.634802, 0.662356,
		28.264206, 40.051865, 26.526653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560108, 40.094227, 26.144320>,  <27.985689, 39.607502, 26.063004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560108, 40.094227, 26.144320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893005, 40.277477, 26.269211>,  <28.092745, 40.387428, 26.344145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893005, 40.277477, 26.269211>,  <27.560108, 40.094227, 26.144320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893005, 40.277477, 26.269211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215231, 0.785986, -0.579571,
		-0.510925, 0.415143, 0.752736,
		0.832245, 0.458129, 0.312228,
		28.142679, 40.414917, 26.362879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342991, 40.752827, 26.312218>,  <27.560108, 40.094227, 26.144320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342991, 40.752827, 26.312218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739494, 40.775246, 26.264444>,  <27.977396, 40.788696, 26.235781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739494, 40.775246, 26.264444>,  <27.342991, 40.752827, 26.312218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739494, 40.775246, 26.264444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122148, 0.731980, -0.670287,
		0.049855, 0.679016, 0.732428,
		0.991259, 0.056047, -0.119433,
		28.036873, 40.792061, 26.228615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445786, 41.324059, 26.413319>,  <27.342991, 40.752827, 26.312218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445786, 41.324059, 26.413319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785116, 41.251225, 26.214447>,  <27.988714, 41.207523, 26.095123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785116, 41.251225, 26.214447>,  <27.445786, 41.324059, 26.413319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785116, 41.251225, 26.214447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160599, 0.806276, -0.569322,
		0.504530, 0.562817, 0.654742,
		0.848326, -0.182089, -0.497178,
		28.039614, 41.196598, 26.065294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713411, 42.000622, 26.202353>,  <27.445786, 41.324059, 26.413319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713411, 42.000622, 26.202353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926498, 41.742397, 25.983459>,  <28.054350, 41.587463, 25.852123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.926498, 41.742397, 25.983459>,  <27.713411, 42.000622, 26.202353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926498, 41.742397, 25.983459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120659, 0.582079, -0.804131,
		0.837649, 0.494402, 0.232189,
		0.532716, -0.645563, -0.547231,
		28.086313, 41.548729, 25.819290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108561, 42.454762, 25.917353>,  <27.713411, 42.000622, 26.202353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108561, 42.454762, 25.917353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091770, 42.116508, 25.704510>,  <28.081696, 41.913555, 25.576805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091770, 42.116508, 25.704510>,  <28.108561, 42.454762, 25.917353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091770, 42.116508, 25.704510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354077, 0.510600, -0.783528,
		0.934274, 0.155518, -0.320853,
		-0.041975, -0.845637, -0.532106,
		28.079178, 41.862816, 25.544878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358223, 42.668201, 25.295570>,  <28.108561, 42.454762, 25.917353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358223, 42.668201, 25.295570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146891, 42.343212, 25.196981>,  <28.020092, 42.148216, 25.137829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146891, 42.343212, 25.196981>,  <28.358223, 42.668201, 25.295570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146891, 42.343212, 25.196981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262819, 0.432539, -0.862459,
		0.807337, -0.390886, -0.442058,
		-0.528331, -0.812476, -0.246473,
		27.988392, 42.099468, 25.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420469, 42.641022, 24.536623>,  <28.358223, 42.668201, 25.295570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420469, 42.641022, 24.536623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103779, 42.423962, 24.648836>,  <27.913765, 42.293724, 24.716164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103779, 42.423962, 24.648836>,  <28.420469, 42.641022, 24.536623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103779, 42.423962, 24.648836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568553, 0.486615, -0.663289,
		0.223422, -0.684643, -0.693792,
		-0.791726, -0.542651, 0.280535,
		27.866261, 42.261166, 24.732996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080645, 42.460670, 23.931650>,  <28.420469, 42.641022, 24.536623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080645, 42.460670, 23.931650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790052, 42.387455, 24.196594>,  <27.615696, 42.343525, 24.355560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790052, 42.387455, 24.196594>,  <28.080645, 42.460670, 23.931650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790052, 42.387455, 24.196594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676735, 0.358024, -0.643311,
		-0.119391, -0.915596, -0.383965,
		-0.726482, -0.183037, 0.662360,
		27.572107, 42.332542, 24.395302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521271, 42.120010, 23.624147>,  <28.080645, 42.460670, 23.931650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521271, 42.120010, 23.624147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356348, 42.295742, 23.943396>,  <27.257395, 42.401180, 24.134945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356348, 42.295742, 23.943396>,  <27.521271, 42.120010, 23.624147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356348, 42.295742, 23.943396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703349, 0.403312, -0.585354,
		-0.579053, -0.802702, 0.142711,
		-0.412308, 0.439327, 0.798119,
		27.232656, 42.427540, 24.182831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894184, 41.949707, 23.506464>,  <27.521271, 42.120010, 23.624147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894184, 41.949707, 23.506464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882225, 42.257023, 23.762226>,  <26.875050, 42.441410, 23.915684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.882225, 42.257023, 23.762226>,  <26.894184, 41.949707, 23.506464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882225, 42.257023, 23.762226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848266, 0.318872, -0.422806,
		-0.528725, -0.555027, 0.642179,
		-0.029896, 0.768287, 0.639407,
		26.873257, 42.487511, 23.954048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207413, 42.014141, 23.734386>,  <26.894184, 41.949707, 23.506464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207413, 42.014141, 23.734386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366924, 42.379211, 23.770144>,  <26.462631, 42.598255, 23.791597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366924, 42.379211, 23.770144>,  <26.207413, 42.014141, 23.734386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366924, 42.379211, 23.770144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757849, 0.382869, -0.528277,
		-0.516373, 0.142920, 0.844353,
		0.398778, 0.912680, 0.089392,
		26.486557, 42.653015, 23.796961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.567461, 42.447174, 24.020742>,  <26.207413, 42.014141, 23.734386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.567461, 42.447174, 24.020742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831041, 42.634037, 23.784929>,  <25.989189, 42.746155, 23.643442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831041, 42.634037, 23.784929>,  <25.567461, 42.447174, 24.020742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831041, 42.634037, 23.784929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746909, 0.499057, -0.439396,
		0.088942, 0.729866, 0.677779,
		0.658950, 0.467159, -0.589531,
		26.028727, 42.774185, 23.608070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130013, 42.866325, 24.454084>,  <25.567461, 42.447174, 24.020742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130013, 42.866325, 24.454084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069927, 43.084167, 24.124031>,  <25.033876, 43.214870, 23.925999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069927, 43.084167, 24.124031>,  <25.130013, 42.866325, 24.454084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069927, 43.084167, 24.124031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306359, -0.819162, -0.484890,
		-0.939990, 0.179951, 0.289891,
		-0.150211, 0.544602, -0.825133,
		25.024864, 43.247547, 23.876492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455544, 42.811806, 24.271660>,  <25.130013, 42.866325, 24.454084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455544, 42.811806, 24.271660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733915, 42.867874, 23.989941>,  <24.900938, 42.901516, 23.820910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733915, 42.867874, 23.989941>,  <24.455544, 42.811806, 24.271660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733915, 42.867874, 23.989941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310749, -0.825397, -0.471333,
		-0.647392, 0.546875, -0.530860,
		0.695930, 0.140173, -0.704296,
		24.942694, 42.909927, 23.778652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710629, 43.538933, 24.275373>,  <24.455544, 42.811806, 24.271660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710629, 43.538933, 24.275373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841444, 43.863567, 24.081724>,  <24.919933, 44.058346, 23.965534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841444, 43.863567, 24.081724>,  <24.710629, 43.538933, 24.275373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841444, 43.863567, 24.081724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749953, 0.088814, 0.655502,
		0.574993, -0.577445, -0.579605,
		0.327039, 0.811585, -0.484124,
		24.939556, 44.107044, 23.936487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458036, 43.504120, 24.064627>,  <24.710629, 43.538933, 24.275373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458036, 43.504120, 24.064627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308678, 43.868652, 24.133963>,  <25.219063, 44.087372, 24.175564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308678, 43.868652, 24.133963>,  <25.458036, 43.504120, 24.064627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308678, 43.868652, 24.133963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672144, 0.136995, 0.727636,
		0.639371, 0.388209, -0.663700,
		-0.373399, 0.911332, 0.173342,
		25.196657, 44.142052, 24.185965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969290, 44.042496, 24.339989>,  <25.458036, 43.504120, 24.064627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969290, 44.042496, 24.339989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625029, 44.188473, 24.482025>,  <25.418472, 44.276058, 24.567247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.625029, 44.188473, 24.482025>,  <25.969290, 44.042496, 24.339989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.625029, 44.188473, 24.482025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458244, 0.251081, 0.852626,
		0.222007, 0.896534, -0.383328,
		-0.860654, 0.364947, 0.355089,
		25.366833, 44.297958, 24.588552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992432, 44.787479, 24.499924>,  <25.969290, 44.042496, 24.339989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992432, 44.787479, 24.499924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743702, 44.576412, 24.731405>,  <25.594463, 44.449772, 24.870295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743702, 44.576412, 24.731405>,  <25.992432, 44.787479, 24.499924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743702, 44.576412, 24.731405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488826, 0.315810, 0.813212,
		-0.611870, 0.788559, 0.061562,
		-0.621824, -0.527673, 0.578702,
		25.557156, 44.418110, 24.905016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.954473, 45.286850, 24.936880>,  <25.992432, 44.787479, 24.499924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.954473, 45.286850, 24.936880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846724, 44.928837, 25.079065>,  <25.782074, 44.714027, 25.164377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846724, 44.928837, 25.079065>,  <25.954473, 45.286850, 24.936880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846724, 44.928837, 25.079065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436634, 0.215480, 0.873453,
		-0.858364, 0.390493, 0.332757,
		-0.269375, -0.895033, 0.355462,
		25.765911, 44.660328, 25.185703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619009, 45.379147, 25.597288>,  <25.954473, 45.286850, 24.936880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619009, 45.379147, 25.597288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794548, 45.021362, 25.563000>,  <25.899872, 44.806690, 25.542427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.794548, 45.021362, 25.563000>,  <25.619009, 45.379147, 25.597288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794548, 45.021362, 25.563000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471523, 0.148029, 0.869341,
		-0.764905, -0.421926, 0.486722,
		0.438847, -0.894464, -0.085720,
		25.926203, 44.753021, 25.537283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931719, 44.977390, 26.169180>,  <25.619009, 45.379147, 25.597288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931719, 44.977390, 26.169180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187170, 44.790298, 25.924759>,  <26.340441, 44.678043, 25.778107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187170, 44.790298, 25.924759>,  <25.931719, 44.977390, 26.169180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187170, 44.790298, 25.924759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627057, -0.143964, 0.765554,
		-0.446044, -0.872067, 0.201356,
		0.638627, -0.467732, -0.611050,
		26.378757, 44.649979, 25.741444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153669, 44.241119, 26.468855>,  <25.931719, 44.977390, 26.169180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153669, 44.241119, 26.468855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430794, 44.377026, 26.214432>,  <26.597069, 44.458569, 26.061779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.430794, 44.377026, 26.214432>,  <26.153669, 44.241119, 26.468855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430794, 44.377026, 26.214432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720341, -0.285169, 0.632288,
		0.033448, -0.896235, -0.442317,
		0.692813, 0.339768, -0.636056,
		26.638638, 44.478954, 26.023615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732500, 43.887798, 26.748829>,  <26.153669, 44.241119, 26.468855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732500, 43.887798, 26.748829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904858, 44.141319, 26.491886>,  <27.008272, 44.293434, 26.337721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904858, 44.141319, 26.491886>,  <26.732500, 43.887798, 26.748829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904858, 44.141319, 26.491886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875020, -0.119434, 0.469122,
		0.220614, -0.764215, -0.606057,
		0.430894, 0.633807, -0.642354,
		27.034126, 44.331463, 26.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375961, 43.506577, 26.518629>,  <26.732500, 43.887798, 26.748829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375961, 43.506577, 26.518629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430223, 43.901886, 26.490610>,  <27.462780, 44.139072, 26.473799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430223, 43.901886, 26.490610>,  <27.375961, 43.506577, 26.518629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430223, 43.901886, 26.490610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871108, -0.085292, 0.483629,
		0.471984, -0.126628, -0.872466,
		0.135655, 0.988277, -0.070050,
		27.470921, 44.198368, 26.469595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123596, 43.604519, 26.313881>,  <27.375961, 43.506577, 26.518629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123596, 43.604519, 26.313881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036915, 43.961018, 26.473242>,  <27.984905, 44.174915, 26.568859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036915, 43.961018, 26.473242>,  <28.123596, 43.604519, 26.313881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036915, 43.961018, 26.473242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878595, 0.000146, 0.477568,
		0.425571, 0.453526, -0.783073,
		-0.216704, 0.891243, 0.398404,
		27.971903, 44.228390, 26.592762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737780, 44.036938, 26.257116>,  <28.123596, 43.604519, 26.313881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737780, 44.036938, 26.257116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528263, 44.210033, 26.550615>,  <28.402554, 44.313889, 26.726715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528263, 44.210033, 26.550615>,  <28.737780, 44.036938, 26.257116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528263, 44.210033, 26.550615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815600, 0.006173, 0.578583,
		0.245845, 0.901499, -0.356174,
		-0.523791, 0.432737, 0.733745,
		28.371126, 44.339855, 26.770739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243309, 44.520630, 26.628870>,  <28.737780, 44.036938, 26.257116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243309, 44.520630, 26.628870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948933, 44.487988, 26.897713>,  <28.772306, 44.468403, 27.059019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948933, 44.487988, 26.897713>,  <29.243309, 44.520630, 26.628870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948933, 44.487988, 26.897713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669899, 0.056076, 0.740332,
		-0.098105, 0.995086, 0.013399,
		-0.735942, -0.081606, 0.672108,
		28.728149, 44.463505, 27.099346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379913, 45.006386, 27.203442>,  <29.243309, 44.520630, 26.628870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379913, 45.006386, 27.203442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119648, 44.748768, 27.364357>,  <28.963488, 44.594196, 27.460907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119648, 44.748768, 27.364357>,  <29.379913, 45.006386, 27.203442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119648, 44.748768, 27.364357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613767, -0.134102, 0.778015,
		-0.447131, 0.753140, 0.482550,
		-0.650665, -0.644047, 0.402291,
		28.924448, 44.555553, 27.485044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206453, 45.225754, 27.941023>,  <29.379913, 45.006386, 27.203442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206453, 45.225754, 27.941023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141438, 44.832264, 27.910385>,  <29.102428, 44.596169, 27.892002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141438, 44.832264, 27.910385>,  <29.206453, 45.225754, 27.941023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141438, 44.832264, 27.910385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585341, -0.158626, 0.795118,
		-0.794327, 0.084404, 0.601598,
		-0.162540, -0.983724, -0.076596,
		29.092676, 44.537148, 27.887407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026625, 45.053261, 28.609909>,  <29.206453, 45.225754, 27.941023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026625, 45.053261, 28.609909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147423, 44.722057, 28.420929>,  <29.219902, 44.523335, 28.307541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147423, 44.722057, 28.420929>,  <29.026625, 45.053261, 28.609909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147423, 44.722057, 28.420929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586031, -0.229646, 0.777066,
		-0.751909, -0.511539, 0.415885,
		0.301993, -0.828004, -0.472451,
		29.238020, 44.473656, 28.279194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954054, 44.628391, 29.090553>,  <29.026625, 45.053261, 28.609909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954054, 44.628391, 29.090553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204840, 44.442047, 28.840790>,  <29.355310, 44.330238, 28.690931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204840, 44.442047, 28.840790>,  <28.954054, 44.628391, 29.090553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204840, 44.442047, 28.840790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503820, -0.368869, 0.781090,
		-0.594206, -0.804306, 0.003443,
		0.626965, -0.465863, -0.624409,
		29.392929, 44.302288, 28.653467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087519, 44.010262, 29.362762>,  <28.954054, 44.628391, 29.090553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087519, 44.010262, 29.362762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383644, 44.046307, 29.096285>,  <29.561319, 44.067932, 28.936398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383644, 44.046307, 29.096285>,  <29.087519, 44.010262, 29.362762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383644, 44.046307, 29.096285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611244, -0.502745, 0.611251,
		-0.279846, -0.859725, -0.427268,
		0.740315, 0.090109, -0.666193,
		29.605740, 44.073338, 28.896427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418989, 43.363304, 29.418535>,  <29.087519, 44.010262, 29.362762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418989, 43.363304, 29.418535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673487, 43.600742, 29.221420>,  <29.826185, 43.743206, 29.103151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673487, 43.600742, 29.221420>,  <29.418989, 43.363304, 29.418535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673487, 43.600742, 29.221420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770934, -0.464928, 0.435320,
		0.029294, -0.656875, -0.753430,
		0.636242, 0.593597, -0.492787,
		29.864359, 43.778820, 29.073584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848925, 42.966717, 29.136261>,  <29.418989, 43.363304, 29.418535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848925, 42.966717, 29.136261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048496, 43.311920, 29.167973>,  <30.168240, 43.519043, 29.187000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048496, 43.311920, 29.167973>,  <29.848925, 42.966717, 29.136261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048496, 43.311920, 29.167973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780946, -0.487371, 0.390630,
		0.375757, -0.132983, -0.917127,
		0.498928, 0.863009, 0.079280,
		30.198175, 43.570824, 29.191757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561193, 42.805439, 28.780125>,  <29.848925, 42.966717, 29.136261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561193, 42.805439, 28.780125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553133, 43.099998, 29.050625>,  <30.548296, 43.276733, 29.212925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.553133, 43.099998, 29.050625>,  <30.561193, 42.805439, 28.780125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553133, 43.099998, 29.050625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653667, -0.502096, 0.566233,
		0.756514, 0.453453, -0.471239,
		-0.020153, 0.736397, 0.676250,
		30.547087, 43.320919, 29.253500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297932, 42.823555, 29.019102>,  <30.561193, 42.805439, 28.780125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297932, 42.823555, 29.019102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066118, 42.997219, 29.294971>,  <30.927031, 43.101418, 29.460493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066118, 42.997219, 29.294971>,  <31.297932, 42.823555, 29.019102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066118, 42.997219, 29.294971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524174, -0.449410, 0.723376,
		0.624006, 0.780728, 0.032872,
		-0.579532, 0.434160, 0.689672,
		30.892258, 43.127468, 29.501873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734383, 43.141293, 29.544851>,  <31.297932, 42.823555, 29.019102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734383, 43.141293, 29.544851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387669, 43.089737, 29.737547>,  <31.179640, 43.058804, 29.853165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387669, 43.089737, 29.737547>,  <31.734383, 43.141293, 29.544851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387669, 43.089737, 29.737547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498612, -0.240291, 0.832855,
		0.008411, 0.962106, 0.272546,
		-0.866785, -0.128890, 0.481738,
		31.127634, 43.051071, 29.882069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849081, 43.376724, 30.221132>,  <31.734383, 43.141293, 29.544851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849081, 43.376724, 30.221132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522272, 43.148193, 30.252262>,  <31.326187, 43.011074, 30.270941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522272, 43.148193, 30.252262>,  <31.849081, 43.376724, 30.221132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522272, 43.148193, 30.252262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282518, -0.278992, 0.917795,
		-0.502651, 0.771846, 0.389354,
		-0.817023, -0.571329, 0.077825,
		31.277164, 42.976795, 30.275610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805696, 43.384655, 30.879890>,  <31.849081, 43.376724, 30.221132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805696, 43.384655, 30.879890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559168, 43.096924, 30.751692>,  <31.411251, 42.924286, 30.674772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559168, 43.096924, 30.751692>,  <31.805696, 43.384655, 30.879890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559168, 43.096924, 30.751692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297127, -0.589316, 0.751280,
		-0.729288, 0.367804, 0.576940,
		-0.616324, -0.719324, -0.320496,
		31.374271, 42.881126, 30.655542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494568, 43.163601, 31.413944>,  <31.805696, 43.384655, 30.879890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494568, 43.163601, 31.413944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467949, 42.857956, 31.157288>,  <31.451977, 42.674568, 31.003294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467949, 42.857956, 31.157288>,  <31.494568, 43.163601, 31.413944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467949, 42.857956, 31.157288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293785, -0.629564, 0.719263,
		-0.953552, -0.140639, 0.266381,
		-0.066547, -0.764113, -0.641640,
		31.447985, 42.628723, 30.964796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239014, 42.530476, 31.760078>,  <31.494568, 43.163601, 31.413944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239014, 42.530476, 31.760078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368065, 42.348934, 31.427832>,  <31.445496, 42.240009, 31.228483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368065, 42.348934, 31.427832>,  <31.239014, 42.530476, 31.760078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368065, 42.348934, 31.427832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274160, -0.795118, 0.540947,
		-0.905950, -0.402248, -0.132099,
		0.322629, -0.453855, -0.830618,
		31.464853, 42.212776, 31.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065264, 41.724976, 31.830223>,  <31.239014, 42.530476, 31.760078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065264, 41.724976, 31.830223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350349, 41.725006, 31.549643>,  <31.521400, 41.725025, 31.381294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350349, 41.725006, 31.549643>,  <31.065264, 41.724976, 31.830223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350349, 41.725006, 31.549643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370565, -0.849108, 0.376426,
		-0.595581, -0.528219, -0.605200,
		0.712716, 0.000074, -0.701453,
		31.564163, 41.725029, 31.339207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998533, 41.079960, 31.337194>,  <31.065264, 41.724976, 31.830223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998533, 41.079960, 31.337194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372892, 41.218632, 31.362204>,  <31.597507, 41.301834, 31.377209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372892, 41.218632, 31.362204>,  <30.998533, 41.079960, 31.337194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372892, 41.218632, 31.362204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312987, -0.899774, 0.304050,
		0.161665, -0.264991, -0.950602,
		0.935897, 0.346680, 0.062523,
		31.653662, 41.322636, 31.380960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347536, 40.479454, 31.190834>,  <30.998533, 41.079960, 31.337194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347536, 40.479454, 31.190834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643894, 40.705009, 31.336767>,  <31.821709, 40.840343, 31.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643894, 40.705009, 31.336767>,  <31.347536, 40.479454, 31.190834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643894, 40.705009, 31.336767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382032, -0.800606, 0.461607,
		0.552383, -0.202624, -0.808589,
		0.740894, 0.563891, 0.364833,
		31.866163, 40.874176, 31.446217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848503, 40.055546, 31.099766>,  <31.347536, 40.479454, 31.190834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848503, 40.055546, 31.099766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971622, 40.320396, 31.373072>,  <32.045494, 40.479305, 31.537056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971622, 40.320396, 31.373072>,  <31.848503, 40.055546, 31.099766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971622, 40.320396, 31.373072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430646, -0.737309, 0.520499,
		0.848413, 0.134038, -0.512083,
		0.307797, 0.662125, 0.683265,
		32.063961, 40.519035, 31.578051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577084, 39.897797, 31.191128>,  <31.848503, 40.055546, 31.099766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577084, 39.897797, 31.191128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431644, 40.095177, 31.507179>,  <32.344379, 40.213604, 31.696810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431644, 40.095177, 31.507179>,  <32.577084, 39.897797, 31.191128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431644, 40.095177, 31.507179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327251, -0.726465, 0.604281,
		0.872182, 0.478288, 0.102663,
		-0.363602, 0.493446, 0.790129,
		32.322563, 40.243210, 31.744219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981785, 39.797806, 31.828144>,  <32.577084, 39.897797, 31.191128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981785, 39.797806, 31.828144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642563, 39.917843, 32.002846>,  <32.439030, 39.989864, 32.107666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642563, 39.917843, 32.002846>,  <32.981785, 39.797806, 31.828144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642563, 39.917843, 32.002846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138173, -0.670461, 0.728965,
		0.511583, 0.678547, 0.527121,
		-0.848052, 0.300092, 0.436753,
		32.388149, 40.007870, 32.133873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152546, 39.708687, 32.535355>,  <32.981785, 39.797806, 31.828144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152546, 39.708687, 32.535355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755939, 39.757683, 32.552719>,  <32.517975, 39.787083, 32.563137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755939, 39.757683, 32.552719>,  <33.152546, 39.708687, 32.535355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755939, 39.757683, 32.552719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040008, -0.605547, 0.794803,
		0.123648, 0.786326, 0.605313,
		-0.991519, 0.122493, 0.043415,
		32.458485, 39.794430, 32.565742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920258, 40.077930, 33.257072>,  <33.152546, 39.708687, 32.535355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920258, 40.077930, 33.257072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619099, 39.869644, 33.096073>,  <32.438404, 39.744675, 32.999474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619099, 39.869644, 33.096073>,  <32.920258, 40.077930, 33.257072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619099, 39.869644, 33.096073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058340, -0.556359, 0.828891,
		-0.655548, 0.647551, 0.388503,
		-0.752897, -0.520713, -0.402498,
		32.393230, 39.713428, 32.975323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561962, 40.019066, 33.828724>,  <32.920258, 40.077930, 33.257072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561962, 40.019066, 33.828724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411358, 39.748268, 33.575768>,  <32.320995, 39.585789, 33.423996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411358, 39.748268, 33.575768>,  <32.561962, 40.019066, 33.828724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411358, 39.748268, 33.575768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033042, -0.672372, 0.739475,
		-0.925823, 0.299316, 0.230787,
		-0.376511, -0.676998, -0.632388,
		32.298405, 39.545170, 33.386051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864288, 39.757259, 34.046822>,  <32.561962, 40.019066, 33.828724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864288, 39.757259, 34.046822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987116, 39.463722, 33.804436>,  <32.060814, 39.287601, 33.659004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987116, 39.463722, 33.804436>,  <31.864288, 39.757259, 34.046822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987116, 39.463722, 33.804436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210313, -0.673306, 0.708821,
		-0.928157, -0.090216, -0.361088,
		0.307070, -0.733839, -0.605960,
		32.079239, 39.243572, 33.622646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305779, 39.239727, 34.159706>,  <31.864288, 39.757259, 34.046822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305779, 39.239727, 34.159706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615313, 39.047535, 33.994629>,  <31.801033, 38.932220, 33.895584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615313, 39.047535, 33.994629>,  <31.305779, 39.239727, 34.159706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615313, 39.047535, 33.994629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122954, -0.753124, 0.646287,
		-0.621339, -0.449378, -0.641871,
		0.773835, -0.480484, -0.412692,
		31.847464, 38.903389, 33.870823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117779, 38.542065, 34.094288>,  <31.305779, 39.239727, 34.159706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117779, 38.542065, 34.094288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517538, 38.528202, 34.095028>,  <31.757393, 38.519886, 34.095474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517538, 38.528202, 34.095028>,  <31.117779, 38.542065, 34.094288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517538, 38.528202, 34.095028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022717, -0.612920, 0.789818,
		-0.026233, -0.789385, -0.613338,
		0.999398, -0.034653, 0.001854,
		31.817358, 38.517807, 34.095585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342016, 37.821941, 34.220360>,  <31.117779, 38.542065, 34.094288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342016, 37.821941, 34.220360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672039, 38.027939, 34.313362>,  <31.870052, 38.151539, 34.369164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672039, 38.027939, 34.313362>,  <31.342016, 37.821941, 34.220360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672039, 38.027939, 34.313362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142976, -0.588358, 0.795860,
		0.546660, -0.623388, -0.559062,
		0.825058, 0.514997, 0.232502,
		31.919556, 38.182438, 34.383114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779202, 37.368069, 34.413513>,  <31.342016, 37.821941, 34.220360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779202, 37.368069, 34.413513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970457, 37.692860, 34.547421>,  <32.085209, 37.887733, 34.627766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970457, 37.692860, 34.547421>,  <31.779202, 37.368069, 34.413513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970457, 37.692860, 34.547421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260309, -0.495048, 0.828955,
		0.838822, -0.309213, -0.448068,
		0.478139, 0.811982, 0.334766,
		32.113899, 37.936455, 34.647850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506424, 37.210663, 34.546211>,  <31.779202, 37.368069, 34.413513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506424, 37.210663, 34.546211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417889, 37.518955, 34.785202>,  <32.364765, 37.703930, 34.928596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417889, 37.518955, 34.785202>,  <32.506424, 37.210663, 34.546211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417889, 37.518955, 34.785202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421026, -0.477106, 0.771431,
		0.879628, 0.422302, -0.218896,
		-0.221340, 0.770734, 0.597476,
		32.351486, 37.750175, 34.964443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919853, 37.150032, 35.093395>,  <32.506424, 37.210663, 34.546211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919853, 37.150032, 35.093395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695686, 37.423912, 35.279785>,  <32.561188, 37.588238, 35.391617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695686, 37.423912, 35.279785>,  <32.919853, 37.150032, 35.093395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695686, 37.423912, 35.279785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221056, -0.418553, 0.880879,
		0.798167, 0.596662, 0.083207,
		-0.560413, 0.684696, 0.465970,
		32.527561, 37.629322, 35.419575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123848, 37.654938, 35.722927>,  <32.919853, 37.150032, 35.093395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123848, 37.654938, 35.722927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746754, 37.534851, 35.781044>,  <32.520496, 37.462799, 35.815914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746754, 37.534851, 35.781044>,  <33.123848, 37.654938, 35.722927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746754, 37.534851, 35.781044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252996, -0.359811, 0.898070,
		-0.217341, 0.883405, 0.415162,
		-0.942739, -0.300221, 0.145296,
		32.463932, 37.444786, 35.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686935, 37.980602, 36.013493>,  <33.123848, 37.654938, 35.722927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686935, 37.980602, 36.013493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321400, 38.112659, 36.108067>,  <33.102077, 38.191895, 36.164810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321400, 38.112659, 36.108067>,  <33.686935, 37.980602, 36.013493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321400, 38.112659, 36.108067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268089, -0.053188, -0.961925,
		-0.304995, -0.942432, 0.137112,
		-0.913842, 0.330140, 0.236434,
		33.047249, 38.211700, 36.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544060, 38.527992, 35.533852>,  <33.686935, 37.980602, 36.013493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544060, 38.527992, 35.533852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901680, 38.697624, 35.591583>,  <34.116253, 38.799404, 35.626221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901680, 38.697624, 35.591583>,  <33.544060, 38.527992, 35.533852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901680, 38.697624, 35.591583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222409, 0.699884, -0.678747,
		-0.388858, 0.574733, 0.720050,
		0.894049, 0.424082, 0.144330,
		34.169895, 38.824848, 35.634884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491459, 39.225964, 35.354347>,  <33.544060, 38.527992, 35.533852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491459, 39.225964, 35.354347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889843, 39.215229, 35.388634>,  <34.128872, 39.208786, 35.409206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.889843, 39.215229, 35.388634>,  <33.491459, 39.225964, 35.354347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889843, 39.215229, 35.388634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076519, 0.753263, -0.653253,
		-0.047034, 0.657171, 0.752272,
		0.995958, -0.026838, 0.085715,
		34.188629, 39.207176, 35.414349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774868, 39.895168, 35.612732>,  <33.491459, 39.225964, 35.354347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774868, 39.895168, 35.612732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066715, 39.697716, 35.423424>,  <34.241825, 39.579243, 35.309837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066715, 39.697716, 35.423424>,  <33.774868, 39.895168, 35.612732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066715, 39.697716, 35.423424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125859, 0.777171, -0.616575,
		0.672172, 0.390300, 0.629167,
		0.729620, -0.493631, -0.473269,
		34.285603, 39.549625, 35.281445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310421, 40.350010, 35.555370>,  <33.774868, 39.895168, 35.612732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310421, 40.350010, 35.555370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373844, 40.074520, 35.272381>,  <34.411900, 39.909225, 35.102589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373844, 40.074520, 35.272381>,  <34.310421, 40.350010, 35.555370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373844, 40.074520, 35.272381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215501, 0.723403, -0.655933,
		0.963544, -0.048455, 0.263125,
		0.158562, -0.688724, -0.707473,
		34.421413, 39.867905, 35.060139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915257, 40.486629, 35.327610>,  <34.310421, 40.350010, 35.555370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915257, 40.486629, 35.327610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761059, 40.264660, 35.032734>,  <34.668541, 40.131477, 34.855808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761059, 40.264660, 35.032734>,  <34.915257, 40.486629, 35.327610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761059, 40.264660, 35.032734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180140, 0.738308, -0.649962,
		0.904954, -0.383356, -0.184653,
		-0.385498, -0.554922, -0.737193,
		34.645409, 40.098183, 34.811577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417713, 40.405121, 34.794895>,  <34.915257, 40.486629, 35.327610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417713, 40.405121, 34.794895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035393, 40.382435, 34.679497>,  <34.806000, 40.368824, 34.610260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035393, 40.382435, 34.679497>,  <35.417713, 40.405121, 34.794895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035393, 40.382435, 34.679497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162904, 0.714677, -0.680220,
		0.244758, -0.697151, -0.673850,
		-0.955801, -0.056716, -0.288492,
		34.748653, 40.365421, 34.592949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493816, 40.464500, 34.108521>,  <35.417713, 40.405121, 34.794895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493816, 40.464500, 34.108521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098225, 40.513126, 34.142338>,  <34.860870, 40.542301, 34.162628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098225, 40.513126, 34.142338>,  <35.493816, 40.464500, 34.108521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098225, 40.513126, 34.142338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034347, 0.743718, -0.667610,
		-0.144039, -0.657347, -0.739695,
		-0.988976, 0.121568, 0.084546,
		34.801533, 40.549599, 34.167702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274673, 40.593765, 33.469036>,  <35.493816, 40.464500, 34.108521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274673, 40.593765, 33.469036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945030, 40.718544, 33.658157>,  <34.747246, 40.793411, 33.771629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945030, 40.718544, 33.658157>,  <35.274673, 40.593765, 33.469036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945030, 40.718544, 33.658157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079396, 0.890064, -0.448867,
		-0.560845, -0.332375, -0.758274,
		-0.824105, 0.311949, 0.472799,
		34.697800, 40.812130, 33.799995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680393, 40.800587, 32.971367>,  <35.274673, 40.593765, 33.469036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680393, 40.800587, 32.971367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591682, 40.999100, 33.307110>,  <34.538456, 41.118206, 33.508556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591682, 40.999100, 33.307110>,  <34.680393, 40.800587, 32.971367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591682, 40.999100, 33.307110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161506, 0.830209, -0.533543,
		-0.961630, -0.253887, -0.103966,
		-0.221774, 0.496280, 0.839358,
		34.525150, 41.147984, 33.558918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013176, 41.263527, 32.825150>,  <34.680393, 40.800587, 32.971367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013176, 41.263527, 32.825150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183113, 41.431545, 33.145916>,  <34.285076, 41.532356, 33.338375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183113, 41.431545, 33.145916>,  <34.013176, 41.263527, 32.825150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183113, 41.431545, 33.145916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021944, 0.880795, -0.472989,
		-0.905000, 0.218544, 0.364985,
		0.424846, 0.420045, 0.801915,
		34.310566, 41.557560, 33.386490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502338, 41.668774, 33.038757>,  <34.013176, 41.263527, 32.825150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502338, 41.668774, 33.038757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867290, 41.784161, 33.154934>,  <34.086262, 41.853394, 33.224640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867290, 41.784161, 33.154934>,  <33.502338, 41.668774, 33.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867290, 41.784161, 33.154934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070433, 0.809553, -0.582806,
		-0.403247, 0.511282, 0.758935,
		0.912377, 0.288469, 0.290439,
		34.141003, 41.870701, 33.242065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619362, 42.371487, 32.809063>,  <33.502338, 41.668774, 33.038757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619362, 42.371487, 32.809063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003044, 42.334816, 32.916031>,  <34.233253, 42.312813, 32.980213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003044, 42.334816, 32.916031>,  <33.619362, 42.371487, 32.809063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003044, 42.334816, 32.916031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231811, 0.796516, -0.558413,
		-0.161811, 0.597626, 0.785277,
		0.959208, -0.091679, 0.267422,
		34.290806, 42.307312, 32.996258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904083, 43.043243, 33.129822>,  <33.619362, 42.371487, 32.809063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904083, 43.043243, 33.129822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191319, 42.825924, 32.955845>,  <34.363659, 42.695534, 32.851460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191319, 42.825924, 32.955845>,  <33.904083, 43.043243, 33.129822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191319, 42.825924, 32.955845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220724, 0.770487, -0.598022,
		0.660025, 0.333428, 0.673195,
		0.718086, -0.543300, -0.434946,
		34.406746, 42.662933, 32.825359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508202, 43.507774, 33.028950>,  <33.904083, 43.043243, 33.129822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508202, 43.507774, 33.028950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547039, 43.199390, 32.777176>,  <34.570343, 43.014359, 32.626110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547039, 43.199390, 32.777176>,  <34.508202, 43.507774, 33.028950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547039, 43.199390, 32.777176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163312, 0.636194, -0.754046,
		0.981785, -0.029581, 0.187679,
		0.097095, -0.770961, -0.629437,
		34.576168, 42.968102, 32.588345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909611, 43.801636, 32.598484>,  <34.508202, 43.507774, 33.028950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909611, 43.801636, 32.598484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777374, 43.499073, 32.372723>,  <34.698032, 43.317535, 32.237267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777374, 43.499073, 32.372723>,  <34.909611, 43.801636, 32.598484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777374, 43.499073, 32.372723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064343, 0.614704, -0.786129,
		0.941578, -0.223573, -0.251886,
		-0.330592, -0.756409, -0.564406,
		34.678196, 43.272152, 32.203400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200039, 43.864067, 31.847645>,  <34.909611, 43.801636, 32.598484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200039, 43.864067, 31.847645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901154, 43.599117, 31.825998>,  <34.721821, 43.440147, 31.813011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901154, 43.599117, 31.825998>,  <35.200039, 43.864067, 31.847645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901154, 43.599117, 31.825998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282044, 0.389787, -0.876651,
		0.601768, -0.639782, -0.478074,
		-0.747212, -0.662378, -0.054115,
		34.676991, 43.400402, 31.809763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082104, 43.689831, 31.115894>,  <35.200039, 43.864067, 31.847645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082104, 43.689831, 31.115894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725185, 43.603474, 31.274488>,  <34.511036, 43.551659, 31.369644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725185, 43.603474, 31.274488>,  <35.082104, 43.689831, 31.115894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725185, 43.603474, 31.274488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450793, 0.378675, -0.808326,
		0.024371, -0.899998, -0.435212,
		-0.892296, -0.215890, 0.396484,
		34.457497, 43.538708, 31.393435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644123, 43.353268, 30.508024>,  <35.082104, 43.689831, 31.115894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644123, 43.353268, 30.508024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402420, 43.463360, 30.807121>,  <34.257397, 43.529415, 30.986580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402420, 43.463360, 30.807121>,  <34.644123, 43.353268, 30.508024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402420, 43.463360, 30.807121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613748, 0.437680, -0.657077,
		-0.508118, -0.855971, -0.095551,
		-0.604260, 0.275229, 0.747743,
		34.221142, 43.545929, 31.031445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978970, 43.179855, 30.320097>,  <34.644123, 43.353268, 30.508024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978970, 43.179855, 30.320097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906807, 43.455368, 30.600964>,  <33.863510, 43.620674, 30.769484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906807, 43.455368, 30.600964>,  <33.978970, 43.179855, 30.320097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906807, 43.455368, 30.600964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828889, 0.277864, -0.485525,
		-0.529526, -0.669609, 0.520794,
		-0.180402, 0.688779, 0.702168,
		33.852688, 43.662003, 30.811613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219662, 43.097034, 30.494602>,  <33.978970, 43.179855, 30.320097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219662, 43.097034, 30.494602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330128, 43.457645, 30.627861>,  <33.396408, 43.674011, 30.707817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330128, 43.457645, 30.627861>,  <33.219662, 43.097034, 30.494602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330128, 43.457645, 30.627861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722349, 0.423343, -0.546803,
		-0.633991, -0.089641, 0.768127,
		0.276165, 0.901524, 0.333148,
		33.412979, 43.728104, 30.727806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577248, 43.371567, 30.813908>,  <33.219662, 43.097034, 30.494602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577248, 43.371567, 30.813908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851238, 43.645641, 30.714853>,  <33.015633, 43.810085, 30.655420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851238, 43.645641, 30.714853>,  <32.577248, 43.371567, 30.813908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851238, 43.645641, 30.714853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699787, 0.524164, -0.485335,
		-0.202746, 0.505734, 0.838527,
		0.684976, 0.685190, -0.247634,
		33.056732, 43.851200, 30.640564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323608, 44.148415, 30.872862>,  <32.577248, 43.371567, 30.813908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323608, 44.148415, 30.872862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616112, 44.135551, 30.600327>,  <32.791615, 44.127834, 30.436806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616112, 44.135551, 30.600327>,  <32.323608, 44.148415, 30.872862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616112, 44.135551, 30.600327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565861, 0.529151, -0.632298,
		0.380867, 0.847918, 0.368748,
		0.731261, -0.032161, -0.681339,
		32.835491, 44.125904, 30.395926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448425, 44.824478, 30.562481>,  <32.323608, 44.148415, 30.872862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448425, 44.824478, 30.562481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581978, 44.584118, 30.271980>,  <32.662109, 44.439903, 30.097679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581978, 44.584118, 30.271980>,  <32.448425, 44.824478, 30.562481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581978, 44.584118, 30.271980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379069, 0.619824, -0.687113,
		0.863033, 0.504717, -0.020831,
		0.333886, -0.600899, -0.726251,
		32.682144, 44.403847, 30.054106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795738, 45.292206, 30.100540>,  <32.448425, 44.824478, 30.562481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795738, 45.292206, 30.100540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708466, 44.957882, 29.899017>,  <32.656101, 44.757290, 29.778103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708466, 44.957882, 29.899017>,  <32.795738, 45.292206, 30.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708466, 44.957882, 29.899017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317241, 0.548951, -0.773312,
		0.922905, -0.008895, -0.384924,
		-0.218184, -0.835807, -0.503808,
		32.643009, 44.707138, 29.747875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940811, 45.495010, 29.452534>,  <32.795738, 45.292206, 30.100540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940811, 45.495010, 29.452534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778446, 45.138737, 29.370630>,  <32.681026, 44.924973, 29.321487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778446, 45.138737, 29.370630>,  <32.940811, 45.495010, 29.452534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778446, 45.138737, 29.370630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332995, 0.352783, -0.874447,
		0.851088, -0.286764, -0.439791,
		-0.405911, -0.890680, -0.204758,
		32.656673, 44.871532, 29.309202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145885, 45.293282, 28.784243>,  <32.940811, 45.495010, 29.452534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145885, 45.293282, 28.784243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806770, 45.101051, 28.873949>,  <32.603302, 44.985714, 28.927773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806770, 45.101051, 28.873949>,  <33.145885, 45.293282, 28.784243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806770, 45.101051, 28.873949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331156, 0.149421, -0.931670,
		0.414232, -0.864127, -0.285825,
		-0.847790, -0.480580, 0.224266,
		32.552433, 44.956879, 28.941229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920559, 44.914169, 28.175100>,  <33.145885, 45.293282, 28.784243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920559, 44.914169, 28.175100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577267, 44.926502, 28.380033>,  <32.371292, 44.933903, 28.502993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577267, 44.926502, 28.380033>,  <32.920559, 44.914169, 28.175100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577267, 44.926502, 28.380033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509714, 0.065932, -0.857814,
		-0.060235, -0.997347, -0.040864,
		-0.858232, 0.030841, 0.512334,
		32.319798, 44.935753, 28.533733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490498, 44.415756, 27.907833>,  <32.920559, 44.914169, 28.175100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490498, 44.415756, 27.907833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260532, 44.701603, 28.067230>,  <32.122555, 44.873112, 28.162868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260532, 44.701603, 28.067230>,  <32.490498, 44.415756, 27.907833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260532, 44.701603, 28.067230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361271, 0.215279, -0.907270,
		-0.734141, -0.665561, 0.134406,
		-0.574908, 0.714621, 0.398493,
		32.088058, 44.915989, 28.186779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884174, 44.394020, 27.511347>,  <32.490498, 44.415756, 27.907833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884174, 44.394020, 27.511347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914358, 44.756035, 27.678780>,  <31.932468, 44.973244, 27.779240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914358, 44.756035, 27.678780>,  <31.884174, 44.394020, 27.511347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914358, 44.756035, 27.678780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185443, 0.425194, -0.885901,
		-0.979753, -0.010773, 0.199918,
		0.075460, 0.905038, 0.418583,
		31.936996, 45.027546, 27.804354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222961, 44.706001, 27.342199>,  <31.884174, 44.394020, 27.511347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222961, 44.706001, 27.342199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464437, 45.006424, 27.449133>,  <31.609324, 45.186680, 27.513292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464437, 45.006424, 27.449133>,  <31.222961, 44.706001, 27.342199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464437, 45.006424, 27.449133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207183, 0.471615, -0.857120,
		-0.769827, 0.462047, 0.440316,
		0.603689, 0.751061, 0.267333,
		31.645544, 45.231743, 27.529333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882551, 45.311634, 27.235142>,  <31.222961, 44.706001, 27.342199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882551, 45.311634, 27.235142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272104, 45.402412, 27.232340>,  <31.505836, 45.456879, 27.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272104, 45.402412, 27.232340>,  <30.882551, 45.311634, 27.235142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272104, 45.402412, 27.232340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128018, 0.523357, -0.842442,
		-0.187522, 0.821337, 0.538741,
		0.973882, 0.226945, -0.007005,
		31.564268, 45.470497, 27.230238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873396, 46.064602, 27.069687>,  <30.882551, 45.311634, 27.235142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873396, 46.064602, 27.069687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231489, 45.904587, 26.991173>,  <31.446346, 45.808578, 26.944065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231489, 45.904587, 26.991173>,  <30.873396, 46.064602, 27.069687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231489, 45.904587, 26.991173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064251, 0.320013, -0.945232,
		0.440939, 0.858816, 0.260784,
		0.895234, -0.400034, -0.196286,
		31.500059, 45.784576, 26.932287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147800, 46.538784, 26.594183>,  <30.873396, 46.064602, 27.069687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147800, 46.538784, 26.594183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335375, 46.189327, 26.542274>,  <31.447920, 45.979652, 26.511129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.335375, 46.189327, 26.542274>,  <31.147800, 46.538784, 26.594183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335375, 46.189327, 26.542274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023649, 0.134454, -0.990638,
		0.882915, 0.467616, 0.042390,
		0.468937, -0.873646, -0.129770,
		31.476055, 45.927235, 26.503344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789722, 46.624954, 26.061726>,  <31.147800, 46.538784, 26.594183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789722, 46.624954, 26.061726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688345, 46.240284, 26.103582>,  <31.627520, 46.009483, 26.128696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688345, 46.240284, 26.103582>,  <31.789722, 46.624954, 26.061726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688345, 46.240284, 26.103582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213859, -0.161197, -0.963473,
		0.943415, -0.221806, 0.246517,
		-0.253442, -0.961674, 0.104641,
		31.612312, 45.951782, 26.134975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265694, 46.285721, 25.625261>,  <31.789722, 46.624954, 26.061726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265694, 46.285721, 25.625261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954453, 46.042503, 25.688311>,  <31.767708, 45.896572, 25.726141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954453, 46.042503, 25.688311>,  <32.265694, 46.285721, 25.625261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954453, 46.042503, 25.688311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041046, -0.201182, -0.978694,
		0.626797, -0.767992, 0.131582,
		-0.778101, -0.608041, 0.157623,
		31.721022, 45.860092, 25.735598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286736, 45.884556, 25.063248>,  <32.265694, 46.285721, 25.625261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286736, 45.884556, 25.063248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927267, 45.779335, 25.203648>,  <31.711588, 45.716202, 25.287888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927267, 45.779335, 25.203648>,  <32.286736, 45.884556, 25.063248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927267, 45.779335, 25.203648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345938, -0.066933, -0.935867,
		0.269673, -0.962458, -0.030848,
		-0.898667, -0.263050, 0.351001,
		31.657667, 45.700420, 25.308949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142990, 45.320389, 24.600010>,  <32.286736, 45.884556, 25.063248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142990, 45.320389, 24.600010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797277, 45.468925, 24.735731>,  <31.589849, 45.558048, 24.817163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.797277, 45.468925, 24.735731>,  <32.142990, 45.320389, 24.600010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797277, 45.468925, 24.735731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360777, 0.012411, -0.932569,
		-0.350512, -0.928414, 0.123245,
		-0.864281, 0.371340, 0.339301,
		31.537992, 45.580326, 24.837521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791338, 45.243958, 23.928816>,  <32.142990, 45.320389, 24.600010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791338, 45.243958, 23.928816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724684, 44.878735, 23.779926>,  <31.684690, 44.659599, 23.690592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724684, 44.878735, 23.779926>,  <31.791338, 45.243958, 23.928816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724684, 44.878735, 23.779926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446919, -0.406439, 0.796913,
		-0.878917, -0.033559, 0.475792,
		-0.166637, -0.913061, -0.372225,
		31.674692, 44.604816, 23.668259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684294, 44.790585, 24.560843>,  <31.791338, 45.243958, 23.928816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684294, 44.790585, 24.560843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799746, 44.529587, 24.280573>,  <31.869017, 44.372990, 24.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799746, 44.529587, 24.280573>,  <31.684294, 44.790585, 24.560843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799746, 44.529587, 24.280573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632681, -0.419292, 0.651083,
		-0.718615, -0.631226, 0.291800,
		0.288631, -0.652494, -0.700674,
		31.886335, 44.333839, 24.070372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620371, 44.205971, 24.914940>,  <31.684294, 44.790585, 24.560843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620371, 44.205971, 24.914940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843987, 44.076897, 24.609430>,  <31.978157, 43.999451, 24.426125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843987, 44.076897, 24.609430>,  <31.620371, 44.205971, 24.914940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843987, 44.076897, 24.609430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502241, -0.601147, 0.621591,
		-0.659718, -0.731093, -0.174000,
		0.559040, -0.322685, -0.763772,
		32.011700, 43.980091, 24.380299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612057, 43.439575, 24.990322>,  <31.620371, 44.205971, 24.914940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612057, 43.439575, 24.990322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919716, 43.512173, 24.745220>,  <32.104313, 43.555733, 24.598158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919716, 43.512173, 24.745220>,  <31.612057, 43.439575, 24.990322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919716, 43.512173, 24.745220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588654, -0.574482, 0.568733,
		-0.248793, -0.798141, -0.548701,
		0.769148, 0.181499, -0.612756,
		32.150459, 43.566624, 24.561394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931219, 42.798470, 24.918772>,  <31.612057, 43.439575, 24.990322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931219, 42.798470, 24.918772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197437, 43.071114, 24.797146>,  <32.357170, 43.234699, 24.724171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197437, 43.071114, 24.797146>,  <31.931219, 42.798470, 24.918772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197437, 43.071114, 24.797146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681601, -0.389089, 0.619702,
		0.304088, -0.619690, -0.723543,
		0.665546, 0.681611, -0.304064,
		32.397102, 43.275597, 24.705927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569115, 42.496399, 24.662373>,  <31.931219, 42.798470, 24.918772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569115, 42.496399, 24.662373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671242, 42.866684, 24.773993>,  <32.732517, 43.088856, 24.840965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671242, 42.866684, 24.773993>,  <32.569115, 42.496399, 24.662373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671242, 42.866684, 24.773993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733719, -0.373469, 0.567606,
		0.629656, 0.059822, -0.774567,
		0.255322, 0.925712, 0.279050,
		32.747837, 43.144398, 24.857708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403305, 42.606640, 24.581997>,  <32.569115, 42.496399, 24.662373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403305, 42.606640, 24.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272842, 42.867180, 24.856039>,  <33.194565, 43.023502, 25.020464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272842, 42.867180, 24.856039>,  <33.403305, 42.606640, 24.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272842, 42.867180, 24.856039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778022, -0.226695, 0.585911,
		0.536942, 0.724124, -0.432825,
		-0.326153, 0.651348, 0.685107,
		33.174995, 43.062584, 25.061571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029926, 42.842484, 24.825287>,  <33.403305, 42.606640, 24.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029926, 42.842484, 24.825287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735229, 42.931267, 25.080767>,  <33.558411, 42.984535, 25.234055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735229, 42.931267, 25.080767>,  <34.029926, 42.842484, 24.825287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735229, 42.931267, 25.080767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567675, -0.310146, 0.762597,
		0.367356, 0.924415, 0.102498,
		-0.736746, 0.221960, 0.638701,
		33.514206, 42.997856, 25.272377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305595, 43.225124, 25.467865>,  <34.029926, 42.842484, 24.825287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305595, 43.225124, 25.467865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948280, 43.101540, 25.598457>,  <33.733891, 43.027390, 25.676813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948280, 43.101540, 25.598457>,  <34.305595, 43.225124, 25.467865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948280, 43.101540, 25.598457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393550, -0.186653, 0.900155,
		-0.217171, 0.932580, 0.288324,
		-0.893283, -0.308958, 0.326481,
		33.680294, 43.008854, 25.696402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126186, 43.599148, 26.161325>,  <34.305595, 43.225124, 25.467865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126186, 43.599148, 26.161325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883533, 43.281155, 26.162132>,  <33.737942, 43.090359, 26.162617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883533, 43.281155, 26.162132>,  <34.126186, 43.599148, 26.161325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883533, 43.281155, 26.162132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435463, -0.330165, 0.837475,
		-0.665110, 0.508917, 0.546473,
		-0.606631, -0.794981, 0.002018,
		33.701546, 43.042660, 26.162737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047062, 43.519085, 26.851759>,  <34.126186, 43.599148, 26.161325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047062, 43.519085, 26.851759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953297, 43.171158, 26.678106>,  <33.897038, 42.962402, 26.573915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953297, 43.171158, 26.678106>,  <34.047062, 43.519085, 26.851759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953297, 43.171158, 26.678106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264661, -0.486806, 0.832451,
		-0.935418, 0.080236, 0.344318,
		-0.234409, -0.869817, -0.434132,
		33.882973, 42.910213, 26.547867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688606, 43.161179, 27.390158>,  <34.047062, 43.519085, 26.851759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688606, 43.161179, 27.390158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820103, 42.882465, 27.135153>,  <33.898998, 42.715237, 26.982149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820103, 42.882465, 27.135153>,  <33.688606, 43.161179, 27.390158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820103, 42.882465, 27.135153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466324, -0.467245, 0.751148,
		-0.821264, -0.544217, 0.171327,
		0.328736, -0.696785, -0.637513,
		33.918724, 42.673431, 26.943899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600010, 42.395653, 27.760391>,  <33.688606, 43.161179, 27.390158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600010, 42.395653, 27.760391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882248, 42.343838, 27.481720>,  <34.051590, 42.312748, 27.314518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882248, 42.343838, 27.481720>,  <33.600010, 42.395653, 27.760391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882248, 42.343838, 27.481720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666206, -0.213753, 0.714478,
		-0.241471, -0.968261, -0.064522,
		0.705593, -0.129541, -0.696677,
		34.093925, 42.304977, 27.272717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855236, 41.738831, 27.770254>,  <33.600010, 42.395653, 27.760391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855236, 41.738831, 27.770254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146965, 41.961609, 27.611311>,  <34.322002, 42.095276, 27.515945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146965, 41.961609, 27.611311>,  <33.855236, 41.738831, 27.770254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146965, 41.961609, 27.611311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653599, -0.395521, 0.645268,
		0.202215, -0.730325, -0.652483,
		0.729327, 0.556945, -0.397359,
		34.365765, 42.128693, 27.492104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374744, 41.254272, 27.758379>,  <33.855236, 41.738831, 27.770254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374744, 41.254272, 27.758379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524906, 41.624893, 27.748747>,  <34.615005, 41.847263, 27.742968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524906, 41.624893, 27.748747>,  <34.374744, 41.254272, 27.758379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524906, 41.624893, 27.748747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578877, -0.214095, 0.786807,
		0.723859, -0.309311, -0.616730,
		0.375407, 0.926547, -0.024078,
		34.637527, 41.902859, 27.741524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040104, 41.146252, 27.854494>,  <34.374744, 41.254272, 27.758379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040104, 41.146252, 27.854494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021778, 41.531219, 27.961567>,  <35.010784, 41.762199, 28.025810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021778, 41.531219, 27.961567>,  <35.040104, 41.146252, 27.854494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021778, 41.531219, 27.961567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463935, -0.216813, 0.858928,
		0.884684, 0.163535, -0.436567,
		-0.045811, 0.962418, 0.267680,
		35.008034, 41.819946, 28.041870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756966, 41.435455, 28.038038>,  <35.040104, 41.146252, 27.854494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756966, 41.435455, 28.038038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494354, 41.683239, 28.210197>,  <35.336788, 41.831909, 28.313492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494354, 41.683239, 28.210197>,  <35.756966, 41.435455, 28.038038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494354, 41.683239, 28.210197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502998, -0.065665, 0.861789,
		0.562103, 0.782280, -0.268474,
		-0.656531, 0.619456, 0.430396,
		35.297394, 41.869076, 28.339315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141258, 41.924408, 28.409786>,  <35.756966, 41.435455, 28.038038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141258, 41.924408, 28.409786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786732, 41.931664, 28.594879>,  <35.574017, 41.936016, 28.705935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786732, 41.931664, 28.594879>,  <36.141258, 41.924408, 28.409786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786732, 41.931664, 28.594879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462470, 0.086254, 0.882430,
		-0.023904, 0.996108, -0.084837,
		-0.886313, 0.018141, 0.462732,
		35.520840, 41.937107, 28.733698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221977, 42.512424, 28.861589>,  <36.141258, 41.924408, 28.409786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221977, 42.512424, 28.861589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925896, 42.285397, 29.005793>,  <35.748249, 42.149181, 29.092316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925896, 42.285397, 29.005793>,  <36.221977, 42.512424, 28.861589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925896, 42.285397, 29.005793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335451, 0.152957, 0.929557,
		-0.582731, 0.808993, 0.077173,
		-0.740201, -0.567569, 0.360510,
		35.703835, 42.115128, 29.113945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929813, 42.927414, 29.458786>,  <36.221977, 42.512424, 28.861589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929813, 42.927414, 29.458786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818764, 42.545586, 29.502094>,  <35.752136, 42.316490, 29.528080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818764, 42.545586, 29.502094>,  <35.929813, 42.927414, 29.458786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818764, 42.545586, 29.502094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126541, 0.075384, 0.989093,
		-0.952321, 0.288292, 0.099865,
		-0.277620, -0.954571, 0.108270,
		35.735477, 42.259216, 29.534575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701336, 42.850761, 30.181076>,  <35.929813, 42.927414, 29.458786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701336, 42.850761, 30.181076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746582, 42.459869, 30.109270>,  <35.773731, 42.225334, 30.066187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746582, 42.459869, 30.109270>,  <35.701336, 42.850761, 30.181076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746582, 42.459869, 30.109270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239888, -0.148468, 0.959381,
		-0.964188, -0.151585, 0.217632,
		0.113117, -0.977230, -0.179515,
		35.780518, 42.166698, 30.055416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318554, 42.488506, 30.704512>,  <35.701336, 42.850761, 30.181076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318554, 42.488506, 30.704512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571095, 42.228409, 30.535482>,  <35.722618, 42.072350, 30.434065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571095, 42.228409, 30.535482>,  <35.318554, 42.488506, 30.704512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571095, 42.228409, 30.535482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296290, -0.301310, 0.906325,
		-0.716661, -0.697417, 0.002428,
		0.631355, -0.650247, -0.422575,
		35.760502, 42.033337, 30.408710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235546, 41.914223, 31.092176>,  <35.318554, 42.488506, 30.704512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235546, 41.914223, 31.092176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585716, 41.859402, 30.906769>,  <35.795818, 41.826511, 30.795525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585716, 41.859402, 30.906769>,  <35.235546, 41.914223, 31.092176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585716, 41.859402, 30.906769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423690, -0.243963, 0.872335,
		-0.232621, -0.960054, -0.155512,
		0.875428, -0.137035, -0.463516,
		35.848343, 41.818287, 30.767714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478031, 41.341183, 31.482416>,  <35.235546, 41.914223, 31.092176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478031, 41.341183, 31.482416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763855, 41.555210, 31.302151>,  <35.935349, 41.683628, 31.193991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763855, 41.555210, 31.302151>,  <35.478031, 41.341183, 31.482416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763855, 41.555210, 31.302151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497270, 0.064622, 0.865186,
		0.492061, -0.842331, -0.219899,
		0.714562, 0.535073, -0.450664,
		35.978222, 41.715733, 31.166952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066719, 40.824139, 31.471495>,  <35.478031, 41.341183, 31.482416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066719, 40.824139, 31.471495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168198, 41.209927, 31.441996>,  <36.229084, 41.441399, 31.424295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168198, 41.209927, 31.441996>,  <36.066719, 40.824139, 31.471495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168198, 41.209927, 31.441996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612397, -0.101133, 0.784055,
		0.748738, -0.244075, -0.616295,
		0.253696, 0.964468, -0.073748,
		36.244305, 41.499268, 31.419870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772461, 40.823860, 31.546045>,  <36.066719, 40.824139, 31.471495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772461, 40.823860, 31.546045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667068, 41.200466, 31.630072>,  <36.603832, 41.426430, 31.680487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667068, 41.200466, 31.630072>,  <36.772461, 40.823860, 31.546045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667068, 41.200466, 31.630072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520505, -0.044586, 0.852694,
		0.812191, 0.334007, -0.478316,
		-0.263479, 0.941516, 0.210064,
		36.588024, 41.482922, 31.693090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391136, 41.104614, 31.653515>,  <36.772461, 40.823860, 31.546045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391136, 41.104614, 31.653515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132545, 41.360516, 31.819780>,  <36.977390, 41.514057, 31.919538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132545, 41.360516, 31.819780>,  <37.391136, 41.104614, 31.653515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132545, 41.360516, 31.819780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567029, 0.038399, 0.822802,
		0.510432, 0.767618, -0.387585,
		-0.646481, 0.639756, 0.415661,
		36.938602, 41.552441, 31.944479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779308, 41.536339, 32.122494>,  <37.391136, 41.104614, 31.653515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779308, 41.536339, 32.122494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413731, 41.581959, 32.278282>,  <37.194382, 41.609333, 32.371758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413731, 41.581959, 32.278282>,  <37.779308, 41.536339, 32.122494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413731, 41.581959, 32.278282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348427, -0.271540, 0.897142,
		0.208080, 0.955645, 0.208435,
		-0.913948, 0.114053, 0.389475,
		37.139545, 41.616177, 32.395126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824444, 41.939678, 32.712814>,  <37.779308, 41.536339, 32.122494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824444, 41.939678, 32.712814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491779, 41.718647, 32.734695>,  <37.292179, 41.586029, 32.747826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491779, 41.718647, 32.734695>,  <37.824444, 41.939678, 32.712814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491779, 41.718647, 32.734695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260688, -0.301549, 0.917120,
		-0.490287, 0.776995, 0.394838,
		-0.831661, -0.552581, 0.054707,
		37.242279, 41.552872, 32.751106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533680, 42.165344, 33.387402>,  <37.824444, 41.939678, 32.712814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533680, 42.165344, 33.387402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339016, 41.823303, 33.315891>,  <37.222218, 41.618076, 33.272987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339016, 41.823303, 33.315891>,  <37.533680, 42.165344, 33.387402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339016, 41.823303, 33.315891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194540, -0.305582, 0.932080,
		-0.851656, 0.418826, 0.315067,
		-0.486658, -0.855105, -0.178772,
		37.193020, 41.566772, 33.262260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196991, 42.107616, 33.998192>,  <37.533680, 42.165344, 33.387402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196991, 42.107616, 33.998192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204830, 41.745304, 33.828880>,  <37.209534, 41.527916, 33.727291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204830, 41.745304, 33.828880>,  <37.196991, 42.107616, 33.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204830, 41.745304, 33.828880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267730, -0.403149, 0.875095,
		-0.963295, -0.130475, 0.234605,
		0.019597, -0.905785, -0.423283,
		37.210709, 41.473568, 33.701897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826664, 41.573479, 34.479855>,  <37.196991, 42.107616, 33.998192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826664, 41.573479, 34.479855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067997, 41.364952, 34.238449>,  <37.212795, 41.239838, 34.093605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067997, 41.364952, 34.238449>,  <36.826664, 41.573479, 34.479855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067997, 41.364952, 34.238449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402751, -0.453990, 0.794786,
		-0.688320, -0.722583, -0.063947,
		0.603330, -0.521312, -0.603512,
		37.248997, 41.208557, 34.057396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765285, 40.819813, 34.697334>,  <36.826664, 41.573479, 34.479855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765285, 40.819813, 34.697334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106842, 40.882496, 34.498817>,  <37.311775, 40.920105, 34.379707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106842, 40.882496, 34.498817>,  <36.765285, 40.819813, 34.697334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106842, 40.882496, 34.498817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481281, -0.600673, 0.638405,
		-0.198066, -0.783987, -0.588333,
		0.853896, 0.156707, -0.496291,
		37.363010, 40.929508, 34.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082878, 40.150494, 34.545914>,  <36.765285, 40.819813, 34.697334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082878, 40.150494, 34.545914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365307, 40.433598, 34.536694>,  <37.534763, 40.603462, 34.531162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365307, 40.433598, 34.536694>,  <37.082878, 40.150494, 34.545914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365307, 40.433598, 34.536694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579143, -0.558415, 0.593941,
		0.407497, -0.432717, -0.804178,
		0.706074, 0.707763, -0.023052,
		37.577129, 40.645927, 34.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663612, 39.724831, 34.509773>,  <37.082878, 40.150494, 34.545914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663612, 39.724831, 34.509773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770863, 40.094852, 34.617390>,  <37.835213, 40.316864, 34.681957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770863, 40.094852, 34.617390>,  <37.663612, 39.724831, 34.509773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770863, 40.094852, 34.617390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537808, -0.375424, 0.754864,
		0.799294, -0.057708, -0.598163,
		0.268126, 0.925055, 0.269038,
		37.851299, 40.372368, 34.698101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378777, 39.654987, 34.700298>,  <37.663612, 39.724831, 34.509773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378777, 39.654987, 34.700298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277573, 40.002014, 34.871555>,  <38.216850, 40.210232, 34.974312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277573, 40.002014, 34.871555>,  <38.378777, 39.654987, 34.700298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277573, 40.002014, 34.871555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471688, -0.275765, 0.837535,
		0.844686, 0.413859, -0.339449,
		-0.253013, 0.867568, 0.428147,
		38.201668, 40.262283, 35.000000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992611, 39.785229, 35.085510>,  <38.378777, 39.654987, 34.700298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992611, 39.785229, 35.085510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724831, 40.033985, 35.248032>,  <38.564163, 40.183239, 35.345547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.724831, 40.033985, 35.248032>,  <38.992611, 39.785229, 35.085510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724831, 40.033985, 35.248032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378386, -0.185211, 0.906929,
		0.639264, 0.760886, -0.111325,
		-0.669451, 0.621891, 0.406308,
		38.523994, 40.220554, 35.369923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321968, 40.077263, 35.688278>,  <38.992611, 39.785229, 35.085510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321968, 40.077263, 35.688278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931416, 40.125519, 35.759979>,  <38.697086, 40.154472, 35.803001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.931416, 40.125519, 35.759979>,  <39.321968, 40.077263, 35.688278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931416, 40.125519, 35.759979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187751, 0.063108, 0.980187,
		0.106933, 0.990689, -0.084267,
		-0.976378, 0.120636, 0.179255,
		38.638500, 40.161709, 35.813755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313938, 40.537075, 36.224377>,  <39.321968, 40.077263, 35.688278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313938, 40.537075, 36.224377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975758, 40.323555, 36.217854>,  <38.772850, 40.195442, 36.213940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975758, 40.323555, 36.217854>,  <39.313938, 40.537075, 36.224377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975758, 40.323555, 36.217854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057295, -0.121024, 0.990995,
		-0.530971, 0.836903, 0.132904,
		-0.845451, -0.533804, -0.016310,
		38.722122, 40.163414, 36.212959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118679, 40.754013, 36.820808>,  <39.313938, 40.537075, 36.224377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118679, 40.754013, 36.820808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877735, 40.444221, 36.743500>,  <38.733170, 40.258347, 36.697113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877735, 40.444221, 36.743500>,  <39.118679, 40.754013, 36.820808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877735, 40.444221, 36.743500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057066, -0.199725, 0.978189,
		-0.796185, 0.600248, 0.076110,
		-0.602357, -0.774476, -0.193272,
		38.697029, 40.211880, 36.685516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568199, 40.759289, 37.439911>,  <39.118679, 40.754013, 36.820808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568199, 40.759289, 37.439911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568825, 40.392761, 37.279732>,  <38.569202, 40.172844, 37.183624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568825, 40.392761, 37.279732>,  <38.568199, 40.759289, 37.439911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568825, 40.392761, 37.279732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112425, -0.398072, 0.910439,
		-0.993659, 0.043593, -0.103641,
		0.001568, -0.916318, -0.400449,
		38.569294, 40.117867, 37.159595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947659, 40.445339, 37.613621>,  <38.568199, 40.759289, 37.439911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947659, 40.445339, 37.613621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183323, 40.127441, 37.555275>,  <38.324722, 39.936703, 37.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183323, 40.127441, 37.555275>,  <37.947659, 40.445339, 37.613621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183323, 40.127441, 37.555275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339618, -0.407363, 0.847771,
		-0.733177, -0.449936, -0.509911,
		0.589162, -0.794741, -0.145863,
		38.360073, 39.889019, 37.511517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544754, 39.779606, 37.596691>,  <37.947659, 40.445339, 37.613621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544754, 39.779606, 37.596691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923168, 39.689682, 37.690056>,  <38.150215, 39.635727, 37.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923168, 39.689682, 37.690056>,  <37.544754, 39.779606, 37.596691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923168, 39.689682, 37.690056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319223, -0.522401, 0.790692,
		-0.055822, -0.822531, -0.565974,
		0.946034, -0.224810, 0.233409,
		38.206978, 39.622238, 37.760078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572983, 39.010429, 37.798611>,  <37.544754, 39.779606, 37.596691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572983, 39.010429, 37.798611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881489, 39.192127, 37.976959>,  <38.066593, 39.301147, 38.083969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881489, 39.192127, 37.976959>,  <37.572983, 39.010429, 37.798611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881489, 39.192127, 37.976959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224802, -0.460956, 0.858478,
		0.595490, -0.762350, -0.253405,
		0.771269, 0.454249, 0.445872,
		38.112869, 39.328403, 38.110722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846996, 38.531284, 38.263878>,  <37.572983, 39.010429, 37.798611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846996, 38.531284, 38.263878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991875, 38.877762, 38.401585>,  <38.078804, 39.085648, 38.484211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991875, 38.877762, 38.401585>,  <37.846996, 38.531284, 38.263878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991875, 38.877762, 38.401585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110231, -0.326951, 0.938591,
		0.925560, -0.377905, -0.022940,
		0.362199, 0.866193, 0.344270,
		38.100533, 39.137619, 38.504864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511021, 38.398796, 38.478050>,  <37.846996, 38.531284, 38.263878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511021, 38.398796, 38.478050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380009, 38.728569, 38.662674>,  <38.301403, 38.926434, 38.773449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380009, 38.728569, 38.662674>,  <38.511021, 38.398796, 38.478050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380009, 38.728569, 38.662674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029988, -0.479191, 0.877198,
		0.944366, 0.301147, 0.132225,
		-0.327526, 0.824431, 0.461562,
		38.281750, 38.975899, 38.801144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939568, 38.792816, 38.931633>,  <38.511021, 38.398796, 38.478050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939568, 38.792816, 38.931633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572800, 38.855961, 39.078243>,  <38.352741, 38.893848, 39.166210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572800, 38.855961, 39.078243>,  <38.939568, 38.792816, 38.931633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572800, 38.855961, 39.078243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298461, -0.338430, 0.892405,
		0.264925, 0.927655, 0.263196,
		-0.916917, 0.157866, 0.366527,
		38.297726, 38.903320, 39.188202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148666, 38.952297, 39.693165>,  <38.939568, 38.792816, 38.931633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148666, 38.952297, 39.693165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749573, 38.930725, 39.709248>,  <38.510117, 38.917782, 39.718899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749573, 38.930725, 39.709248>,  <39.148666, 38.952297, 39.693165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749573, 38.930725, 39.709248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046947, -0.130188, 0.990377,
		-0.048179, 0.990021, 0.132425,
		-0.997735, -0.053932, 0.040206,
		38.450253, 38.914547, 39.721310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942883, 39.380592, 40.199795>,  <39.148666, 38.952297, 39.693165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942883, 39.380592, 40.199795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625793, 39.139431, 40.163811>,  <38.435539, 38.994732, 40.142220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625793, 39.139431, 40.163811>,  <38.942883, 39.380592, 40.199795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625793, 39.139431, 40.163811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125840, 0.017452, 0.991897,
		-0.596451, 0.797621, -0.089704,
		-0.792723, -0.602906, -0.089963,
		38.387978, 38.958557, 40.136822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420029, 39.724003, 40.635628>,  <38.942883, 39.380592, 40.199795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420029, 39.724003, 40.635628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327236, 39.335365, 40.616947>,  <38.271561, 39.102180, 40.605740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327236, 39.335365, 40.616947>,  <38.420029, 39.724003, 40.635628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327236, 39.335365, 40.616947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186282, -0.002750, 0.982492,
		-0.954715, 0.236625, -0.180353,
		-0.231986, -0.971597, -0.046704,
		38.257641, 39.043884, 40.602936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667892, 39.622204, 40.833099>,  <38.420029, 39.724003, 40.635628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667892, 39.622204, 40.833099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914867, 39.316586, 40.907948>,  <38.063053, 39.133217, 40.952854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914867, 39.316586, 40.907948>,  <37.667892, 39.622204, 40.833099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914867, 39.316586, 40.907948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227453, 0.054305, 0.972274,
		-0.753021, -0.642875, -0.140254,
		0.617434, -0.764044, 0.187117,
		38.100098, 39.087372, 40.964081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260220, 39.132099, 41.243084>,  <37.667892, 39.622204, 40.833099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260220, 39.132099, 41.243084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629547, 39.000950, 41.323055>,  <37.851143, 38.922260, 41.371040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629547, 39.000950, 41.323055>,  <37.260220, 39.132099, 41.243084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629547, 39.000950, 41.323055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236540, -0.075431, 0.968689,
		-0.302527, -0.941705, -0.147203,
		0.923323, -0.327874, 0.199931,
		37.906544, 38.902588, 41.383034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216717, 39.099316, 41.985584>,  <37.260220, 39.132099, 41.243084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216717, 39.099316, 41.985584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576885, 38.935722, 41.926289>,  <37.792984, 38.837566, 41.890713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576885, 38.935722, 41.926289>,  <37.216717, 39.099316, 41.985584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576885, 38.935722, 41.926289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098256, -0.140755, 0.985157,
		-0.423783, -0.901619, -0.086553,
		0.900419, -0.408988, -0.148239,
		37.847012, 38.813026, 41.881817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287067, 38.421074, 42.256783>,  <37.216717, 39.099316, 41.985584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287067, 38.421074, 42.256783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665215, 38.551105, 42.246979>,  <37.892105, 38.629124, 42.241096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665215, 38.551105, 42.246979>,  <37.287067, 38.421074, 42.256783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665215, 38.551105, 42.246979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135233, -0.322633, 0.936814,
		0.296627, -0.888951, -0.348969,
		0.945370, 0.325076, -0.024514,
		37.948826, 38.648628, 42.239624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757629, 37.840240, 42.346554>,  <37.287067, 38.421074, 42.256783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757629, 37.840240, 42.346554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896809, 38.193455, 42.472530>,  <37.980316, 38.405384, 42.548119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896809, 38.193455, 42.472530>,  <37.757629, 37.840240, 42.346554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896809, 38.193455, 42.472530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110351, -0.372175, 0.921579,
		0.930998, -0.285904, -0.226940,
		0.347944, 0.883032, 0.314944,
		38.001190, 38.458363, 42.567013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318657, 37.693020, 42.629852>,  <37.757629, 37.840240, 42.346554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318657, 37.693020, 42.629852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250858, 38.049847, 42.797413>,  <38.210178, 38.263943, 42.897949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.250858, 38.049847, 42.797413>,  <38.318657, 37.693020, 42.629852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250858, 38.049847, 42.797413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077663, -0.411642, 0.908031,
		0.982466, 0.186441, 0.000490,
		-0.169496, 0.892071, 0.418904,
		38.200008, 38.317467, 42.923084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866974, 37.913147, 43.107365>,  <38.318657, 37.693020, 42.629852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866974, 37.913147, 43.107365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558865, 38.142704, 43.218601>,  <38.374001, 38.280437, 43.285343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558865, 38.142704, 43.218601>,  <38.866974, 37.913147, 43.107365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558865, 38.142704, 43.218601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058673, -0.370445, 0.927000,
		0.635013, 0.730356, 0.251670,
		-0.770270, 0.573890, 0.278090,
		38.327782, 38.314873, 43.302029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992867, 38.286427, 43.792526>,  <38.866974, 37.913147, 43.107365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992867, 38.286427, 43.792526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597370, 38.241852, 43.752586>,  <38.360073, 38.215107, 43.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597370, 38.241852, 43.752586>,  <38.992867, 38.286427, 43.792526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597370, 38.241852, 43.752586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063664, -0.290623, 0.954718,
		-0.135408, 0.950327, 0.280256,
		-0.988742, -0.111434, -0.099854,
		38.300747, 38.208420, 43.722630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776134, 38.200909, 44.587837>,  <38.992867, 38.286427, 43.792526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776134, 38.200909, 44.587837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421494, 38.165554, 44.406235>,  <38.208710, 38.144341, 44.297276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421494, 38.165554, 44.406235>,  <38.776134, 38.200909, 44.587837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421494, 38.165554, 44.406235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406107, -0.321050, 0.855573,
		-0.221376, 0.942929, 0.248751,
		-0.886606, -0.088384, -0.454003,
		38.155510, 38.139038, 44.270035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226826, 38.520432, 44.976036>,  <38.776134, 38.200909, 44.587837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226826, 38.520432, 44.976036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058746, 38.237381, 44.748810>,  <37.957897, 38.067551, 44.612476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058746, 38.237381, 44.748810>,  <38.226826, 38.520432, 44.976036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058746, 38.237381, 44.748810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401676, -0.416293, 0.815694,
		-0.813687, 0.570934, -0.109309,
		-0.420203, -0.707626, -0.568063,
		37.932686, 38.025093, 44.578392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454449, 38.574806, 45.004925>,  <38.226826, 38.520432, 44.976036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454449, 38.574806, 45.004925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605503, 38.207306, 44.958809>,  <37.696136, 37.986805, 44.931141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605503, 38.207306, 44.958809>,  <37.454449, 38.574806, 45.004925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605503, 38.207306, 44.958809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569050, -0.328494, 0.753839,
		-0.730460, -0.219072, -0.646866,
		0.377637, -0.918749, -0.115289,
		37.718796, 37.931683, 44.924221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999222, 37.882629, 44.841118>,  <37.454449, 38.574806, 45.004925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999222, 37.882629, 44.841118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299786, 37.830357, 45.099823>,  <37.480125, 37.798992, 45.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299786, 37.830357, 45.099823>,  <36.999222, 37.882629, 44.841118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299786, 37.830357, 45.099823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657089, -0.237544, 0.715407,
		0.060148, -0.962547, -0.264359,
		0.751410, -0.130677, 0.646767,
		37.525208, 37.791153, 45.293854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868046, 37.260300, 45.050022>,  <36.999222, 37.882629, 44.841118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868046, 37.260300, 45.050022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097862, 37.446621, 45.319221>,  <37.235752, 37.558414, 45.480740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097862, 37.446621, 45.319221>,  <36.868046, 37.260300, 45.050022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097862, 37.446621, 45.319221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617155, -0.293539, 0.730038,
		0.537608, -0.834781, 0.118825,
		0.574542, 0.465808, 0.672997,
		37.270226, 37.586365, 45.521122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132988, 36.809151, 45.588005>,  <36.868046, 37.260300, 45.050022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132988, 36.809151, 45.588005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094589, 37.182819, 45.725471>,  <37.071548, 37.407021, 45.807953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094589, 37.182819, 45.725471>,  <37.132988, 36.809151, 45.588005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094589, 37.182819, 45.725471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507535, -0.342948, 0.790440,
		0.856267, -0.098546, 0.507046,
		-0.095996, 0.934171, 0.343670,
		37.065792, 37.463070, 45.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665417, 36.329475, 45.293991>,  <37.132988, 36.809151, 45.588005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665417, 36.329475, 45.293991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512691, 36.467342, 44.950966>,  <37.421055, 36.550064, 44.745152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512691, 36.467342, 44.950966>,  <37.665417, 36.329475, 45.293991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512691, 36.467342, 44.950966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657498, 0.753389, 0.010061,
		0.649548, -0.560007, -0.514276,
		-0.381816, 0.344671, -0.857566,
		37.398148, 36.570744, 44.693695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207150, 36.472889, 44.725395>,  <37.665417, 36.329475, 45.293991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207150, 36.472889, 44.725395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882889, 36.707092, 44.727489>,  <37.688332, 36.847614, 44.728748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882889, 36.707092, 44.727489>,  <38.207150, 36.472889, 44.725395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882889, 36.707092, 44.727489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584173, 0.808124, 0.075351,
		0.039885, 0.064143, -0.997143,
		-0.810649, 0.585509, 0.005239,
		37.639694, 36.882744, 44.729061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135742, 36.869873, 44.103851>,  <38.207150, 36.472889, 44.725395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135742, 36.869873, 44.103851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013260, 37.020256, 44.453682>,  <37.939770, 37.110485, 44.663582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013260, 37.020256, 44.453682>,  <38.135742, 36.869873, 44.103851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013260, 37.020256, 44.453682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643808, 0.758536, -0.100668,
		-0.701248, 0.532236, -0.474316,
		-0.306207, 0.375962, 0.874580,
		37.921398, 37.133045, 44.716057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448921, 37.089596, 43.837147>,  <38.135742, 36.869873, 44.103851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448921, 37.089596, 43.837147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566212, 37.395588, 44.066521>,  <37.636585, 37.579185, 44.204144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566212, 37.395588, 44.066521>,  <37.448921, 37.089596, 43.837147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566212, 37.395588, 44.066521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183272, 0.543694, -0.819029,
		-0.938313, 0.345252, 0.019223,
		0.293223, 0.764982, 0.573430,
		37.654179, 37.625084, 44.238548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127289, 37.746437, 43.630165>,  <37.448921, 37.089596, 43.837147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127289, 37.746437, 43.630165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468025, 37.843239, 43.815983>,  <37.672466, 37.901321, 43.927475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468025, 37.843239, 43.815983>,  <37.127289, 37.746437, 43.630165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468025, 37.843239, 43.815983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250702, 0.590325, -0.767245,
		-0.459913, 0.770032, 0.442190,
		0.851838, 0.242008, 0.464547,
		37.723576, 37.915840, 43.955345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004559, 38.355053, 43.710510>,  <37.127289, 37.746437, 43.630165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004559, 38.355053, 43.710510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402161, 38.311390, 43.712677>,  <37.640724, 38.285191, 43.713978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402161, 38.311390, 43.712677>,  <37.004559, 38.355053, 43.710510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402161, 38.311390, 43.712677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074924, 0.644503, -0.760922,
		0.079569, 0.756770, 0.648821,
		0.994010, -0.109158, 0.005418,
		37.700363, 38.278641, 43.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279892, 39.078506, 43.623409>,  <37.004559, 38.355053, 43.710510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279892, 39.078506, 43.623409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582211, 38.828480, 43.545372>,  <37.763603, 38.678463, 43.498550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582211, 38.828480, 43.545372>,  <37.279892, 39.078506, 43.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582211, 38.828480, 43.545372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321193, 0.613531, -0.721398,
		0.570621, 0.482565, 0.664471,
		0.755795, -0.625069, -0.195097,
		37.808949, 38.640961, 43.486843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898144, 39.504875, 43.396568>,  <37.279892, 39.078506, 43.623409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898144, 39.504875, 43.396568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968800, 39.135826, 43.259415>,  <38.011192, 38.914398, 43.177124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968800, 39.135826, 43.259415>,  <37.898144, 39.504875, 43.396568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968800, 39.135826, 43.259415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235633, 0.377869, -0.895373,
		0.955655, 0.077363, 0.284146,
		0.176639, -0.922621, -0.342883,
		38.021790, 38.859039, 43.156551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373444, 39.638580, 42.909073>,  <37.898144, 39.504875, 43.396568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373444, 39.638580, 42.909073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294033, 39.257332, 42.817726>,  <38.246387, 39.028584, 42.762917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294033, 39.257332, 42.817726>,  <38.373444, 39.638580, 42.909073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294033, 39.257332, 42.817726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125023, 0.206475, -0.970431,
		0.972089, -0.221206, 0.078172,
		-0.198525, -0.953119, -0.228368,
		38.234474, 38.971397, 42.749214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962910, 39.294674, 42.502148>,  <38.373444, 39.638580, 42.909073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962910, 39.294674, 42.502148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602882, 39.138821, 42.424114>,  <38.386864, 39.045307, 42.377293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602882, 39.138821, 42.424114>,  <38.962910, 39.294674, 42.502148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602882, 39.138821, 42.424114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191606, 0.048198, -0.980288,
		0.391358, -0.919707, 0.031275,
		-0.900070, -0.389636, -0.195084,
		38.332863, 39.021931, 42.365589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017418, 39.302006, 41.895603>,  <38.962910, 39.294674, 42.502148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017418, 39.302006, 41.895603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704357, 39.053024, 41.894775>,  <38.516521, 38.903637, 41.894279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704357, 39.053024, 41.894775>,  <39.017418, 39.302006, 41.895603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704357, 39.053024, 41.894775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080310, -0.097676, -0.991973,
		0.617255, -0.776538, 0.126435,
		-0.782654, -0.622454, -0.002073,
		38.469563, 38.866287, 41.894154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131485, 38.721714, 41.487080>,  <39.017418, 39.302006, 41.895603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131485, 38.721714, 41.487080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733921, 38.764797, 41.496410>,  <38.495384, 38.790646, 41.502010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733921, 38.764797, 41.496410>,  <39.131485, 38.721714, 41.487080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733921, 38.764797, 41.496410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048313, -0.235623, -0.970643,
		-0.099046, -0.965858, 0.239392,
		-0.993910, 0.107704, 0.023326,
		38.435749, 38.797108, 41.503407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864216, 38.105625, 41.253277>,  <39.131485, 38.721714, 41.487080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864216, 38.105625, 41.253277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603916, 38.399033, 41.174820>,  <38.447735, 38.575077, 41.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603916, 38.399033, 41.174820>,  <38.864216, 38.105625, 41.253277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603916, 38.399033, 41.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003366, -0.261111, -0.965303,
		-0.759283, -0.627513, 0.172388,
		-0.650752, 0.733518, -0.196145,
		38.408691, 38.619087, 41.115978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174923, 37.880199, 40.998852>,  <38.864216, 38.105625, 41.253277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174923, 37.880199, 40.998852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245731, 38.243896, 40.848152>,  <38.288216, 38.462116, 40.757732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245731, 38.243896, 40.848152>,  <38.174923, 37.880199, 40.998852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245731, 38.243896, 40.848152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186286, -0.344924, -0.919960,
		-0.966417, 0.233035, 0.108320,
		0.177021, 0.909243, -0.376751,
		38.298836, 38.516670, 40.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831150, 37.782665, 40.336559>,  <38.174923, 37.880199, 40.998852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831150, 37.782665, 40.336559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918617, 38.167763, 40.400192>,  <37.971100, 38.398823, 40.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918617, 38.167763, 40.400192>,  <37.831150, 37.782665, 40.336559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918617, 38.167763, 40.400192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134739, 0.191257, -0.972248,
		-0.966451, 0.191169, 0.171542,
		0.218672, 0.962744, 0.159082,
		37.984219, 38.456585, 40.447918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359112, 38.218239, 39.970303>,  <37.831150, 37.782665, 40.336559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359112, 38.218239, 39.970303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665546, 38.464497, 40.044163>,  <37.849407, 38.612251, 40.088478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665546, 38.464497, 40.044163>,  <37.359112, 38.218239, 39.970303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665546, 38.464497, 40.044163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122495, 0.421862, -0.898347,
		-0.630961, 0.665591, 0.398595,
		0.766083, 0.615648, 0.184647,
		37.895370, 38.649189, 40.099556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187557, 39.004303, 39.788582>,  <37.359112, 38.218239, 39.970303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187557, 39.004303, 39.788582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580349, 38.941895, 39.745918>,  <37.816025, 38.904449, 39.720322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580349, 38.941895, 39.745918>,  <37.187557, 39.004303, 39.788582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580349, 38.941895, 39.745918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043599, 0.362119, -0.931112,
		0.183893, 0.918982, 0.348791,
		0.981979, -0.156018, -0.106658,
		37.874943, 38.895088, 39.713921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391312, 39.593494, 39.415874>,  <37.187557, 39.004303, 39.788582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391312, 39.593494, 39.415874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734955, 39.388924, 39.408066>,  <37.941139, 39.266182, 39.403381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734955, 39.388924, 39.408066>,  <37.391312, 39.593494, 39.415874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734955, 39.388924, 39.408066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223854, 0.409789, -0.884286,
		0.460248, 0.755325, 0.466536,
		0.859105, -0.511427, -0.019522,
		37.992687, 39.235497, 39.402210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991627, 40.126358, 39.391098>,  <37.391312, 39.593494, 39.415874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991627, 40.126358, 39.391098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044651, 39.773869, 39.209602>,  <38.076466, 39.562374, 39.100704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044651, 39.773869, 39.209602>,  <37.991627, 40.126358, 39.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044651, 39.773869, 39.209602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121365, 0.468763, -0.874947,
		0.983716, 0.060920, 0.169091,
		0.132565, -0.881221, -0.453736,
		38.084419, 39.509502, 39.073483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522350, 40.275276, 38.953522>,  <37.991627, 40.126358, 39.391098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522350, 40.275276, 38.953522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414139, 39.917809, 38.810318>,  <38.349213, 39.703327, 38.724396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414139, 39.917809, 38.810318>,  <38.522350, 40.275276, 38.953522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414139, 39.917809, 38.810318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268545, 0.287061, -0.919500,
		0.924500, -0.344888, 0.162333,
		-0.270525, -0.893671, -0.358006,
		38.332981, 39.649708, 38.702915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168293, 39.835804, 38.686317>,  <38.522350, 40.275276, 38.953522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168293, 39.835804, 38.686317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847080, 39.689739, 38.497936>,  <38.654354, 39.602100, 38.384907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847080, 39.689739, 38.497936>,  <39.168293, 39.835804, 38.686317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847080, 39.689739, 38.497936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478320, 0.076419, -0.874854,
		0.355454, -0.927802, 0.113297,
		-0.803033, -0.365163, -0.470949,
		38.606171, 39.580189, 38.356651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394794, 39.342030, 38.117054>,  <39.168293, 39.835804, 38.686317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394794, 39.342030, 38.117054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026947, 39.453033, 38.005852>,  <38.806236, 39.519638, 37.939133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026947, 39.453033, 38.005852>,  <39.394794, 39.342030, 38.117054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026947, 39.453033, 38.005852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301520, 0.045099, -0.952393,
		-0.251763, -0.959663, -0.125149,
		-0.919620, 0.277512, -0.278003,
		38.751060, 39.536285, 37.922451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399788, 39.069138, 37.460255>,  <39.394794, 39.342030, 38.117054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399788, 39.069138, 37.460255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087292, 39.316502, 37.494278>,  <38.899796, 39.464920, 37.514690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087292, 39.316502, 37.494278>,  <39.399788, 39.069138, 37.460255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087292, 39.316502, 37.494278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290072, 0.480297, -0.827752,
		-0.552739, -0.622002, -0.554611,
		-0.781241, 0.618408, 0.085054,
		38.852921, 39.502026, 37.519794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999348, 38.601871, 37.440727>,  <39.399788, 39.069138, 37.460255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999348, 38.601871, 37.440727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289139, 38.395287, 37.623325>,  <40.463013, 38.271336, 37.732883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289139, 38.395287, 37.623325>,  <39.999348, 38.601871, 37.440727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289139, 38.395287, 37.623325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688797, -0.567638, 0.450939,
		0.026231, -0.641131, -0.766983,
		0.724479, -0.516467, 0.456499,
		40.506481, 38.240345, 37.760277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452274, 38.399422, 36.840195>,  <39.999348, 38.601871, 37.440727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452274, 38.399422, 36.840195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826466, 38.539726, 36.857418>,  <41.050980, 38.623909, 36.867752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826466, 38.539726, 36.857418>,  <40.452274, 38.399422, 36.840195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826466, 38.539726, 36.857418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145679, -0.493755, 0.857312,
		0.321973, -0.795720, -0.512994,
		0.935474, 0.350763, 0.043056,
		41.107109, 38.644955, 36.870335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887230, 37.851143, 36.821354>,  <40.452274, 38.399422, 36.840195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887230, 37.851143, 36.821354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036423, 38.169388, 37.012302>,  <41.125938, 38.360336, 37.126873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036423, 38.169388, 37.012302>,  <40.887230, 37.851143, 36.821354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036423, 38.169388, 37.012302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035927, -0.526495, 0.849419,
		0.927145, -0.299663, -0.224955,
		0.372977, 0.795616, 0.477371,
		41.148315, 38.408073, 37.155514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494728, 37.535915, 37.203320>,  <40.887230, 37.851143, 36.821354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494728, 37.535915, 37.203320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402393, 37.881657, 37.382030>,  <41.346992, 38.089104, 37.489258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402393, 37.881657, 37.382030>,  <41.494728, 37.535915, 37.203320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402393, 37.881657, 37.382030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294329, -0.375631, 0.878790,
		0.927409, 0.334351, -0.167697,
		-0.230832, 0.864356, 0.446773,
		41.333145, 38.140965, 37.516064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035206, 37.063148, 36.720806>,  <41.494728, 37.535915, 37.203320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035206, 37.063148, 36.720806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829784, 36.835178, 36.464230>,  <40.706532, 36.698399, 36.310284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829784, 36.835178, 36.464230>,  <41.035206, 37.063148, 36.720806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829784, 36.835178, 36.464230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671840, -0.732092, 0.112569,
		-0.533750, -0.373136, 0.758868,
		-0.513558, -0.569921, -0.641442,
		40.675716, 36.664204, 36.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794830, 36.455910, 37.097927>,  <41.035206, 37.063148, 36.720806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794830, 36.455910, 37.097927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852703, 36.430309, 36.702965>,  <40.887428, 36.414948, 36.465988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852703, 36.430309, 36.702965>,  <40.794830, 36.455910, 37.097927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852703, 36.430309, 36.702965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759276, -0.632705, 0.152265,
		-0.634482, -0.771744, -0.042946,
		0.144682, -0.064002, -0.987406,
		40.896107, 36.411110, 36.406742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782341, 35.688095, 36.839626>,  <40.794830, 36.455910, 37.097927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782341, 35.688095, 36.839626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984505, 35.950241, 36.615105>,  <41.105804, 36.107529, 36.480392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984505, 35.950241, 36.615105>,  <40.782341, 35.688095, 36.839626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984505, 35.950241, 36.615105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820564, -0.566245, 0.077721,
		-0.266900, -0.499867, -0.823952,
		0.505409, 0.655362, -0.561304,
		41.136127, 36.146851, 36.446712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436821, 35.363129, 36.736160>,  <40.782341, 35.688095, 36.839626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436821, 35.363129, 36.736160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500965, 35.727322, 36.583687>,  <41.539452, 35.945839, 36.492203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500965, 35.727322, 36.583687>,  <41.436821, 35.363129, 36.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500965, 35.727322, 36.583687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984569, -0.174958, -0.003700,
		-0.070059, -0.374704, -0.924494,
		0.160361, 0.910487, -0.381180,
		41.549072, 36.000469, 36.469334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746075, 35.338360, 36.010918>,  <41.436821, 35.363129, 36.736160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746075, 35.338360, 36.010918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838863, 35.677910, 36.200905>,  <41.894535, 35.881641, 36.314896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838863, 35.677910, 36.200905>,  <41.746075, 35.338360, 36.010918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838863, 35.677910, 36.200905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955226, -0.106603, -0.276005,
		-0.183661, 0.517728, -0.835599,
		0.231973, 0.848878, 0.474968,
		41.908455, 35.932571, 36.343395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085262, 35.844616, 35.583000>,  <41.746075, 35.338360, 36.010918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085262, 35.844616, 35.583000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197285, 35.894203, 35.963779>,  <42.264500, 35.923954, 36.192245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197285, 35.894203, 35.963779>,  <42.085262, 35.844616, 35.583000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197285, 35.894203, 35.963779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958832, -0.084675, -0.271056,
		0.047004, 0.988667, -0.142576,
		0.280057, 0.123966, 0.951946,
		42.281303, 35.931393, 36.249363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447922, 36.535000, 35.646629>,  <42.085262, 35.844616, 35.583000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447922, 36.535000, 35.646629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538586, 36.224331, 35.881718>,  <42.592983, 36.037930, 36.022770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538586, 36.224331, 35.881718>,  <42.447922, 36.535000, 35.646629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538586, 36.224331, 35.881718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963622, 0.091081, -0.251269,
		0.141623, 0.623290, 0.769060,
		0.226660, -0.776669, 0.587717,
		42.606583, 35.991329, 36.058033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089134, 36.245499, 35.274773>,  <42.447922, 36.535000, 35.646629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089134, 36.245499, 35.274773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401817, 36.292881, 35.029858>,  <43.589428, 36.321312, 34.882908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401817, 36.292881, 35.029858>,  <43.089134, 36.245499, 35.274773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401817, 36.292881, 35.029858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622554, -0.090191, 0.777363,
		0.036861, -0.988855, -0.144249,
		0.781708, 0.118457, -0.612291,
		43.636330, 36.328419, 34.846169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560349, 35.712605, 35.214886>,  <43.089134, 36.245499, 35.274773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560349, 35.712605, 35.214886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810863, 36.018204, 35.152813>,  <43.961170, 36.201561, 35.115570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810863, 36.018204, 35.152813>,  <43.560349, 35.712605, 35.214886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810863, 36.018204, 35.152813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589345, -0.333665, 0.735758,
		0.510335, -0.552250, -0.659225,
		0.626283, 0.763994, -0.155185,
		43.998749, 36.247402, 35.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170887, 35.337929, 35.487537>,  <43.560349, 35.712605, 35.214886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170887, 35.337929, 35.487537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246704, 35.724659, 35.556023>,  <44.292194, 35.956699, 35.597115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246704, 35.724659, 35.556023>,  <44.170887, 35.337929, 35.487537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246704, 35.724659, 35.556023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589695, -0.251515, 0.767463,
		0.785068, -0.044506, -0.617808,
		0.189545, 0.966830, 0.171211,
		44.303566, 36.014709, 35.607388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822891, 35.414608, 35.801872>,  <44.170887, 35.337929, 35.487537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822891, 35.414608, 35.801872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660793, 35.754112, 35.937737>,  <44.563534, 35.957817, 36.019257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660793, 35.754112, 35.937737>,  <44.822891, 35.414608, 35.801872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660793, 35.754112, 35.937737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375952, -0.183948, 0.908198,
		0.833327, 0.495743, -0.244550,
		-0.405248, 0.848765, 0.339664,
		44.539219, 36.008743, 36.039635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758560, 35.010059, 35.173706>,  <44.822891, 35.414608, 35.801872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758560, 35.010059, 35.173706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909641, 35.319607, 34.970348>,  <45.000290, 35.505337, 34.848335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909641, 35.319607, 34.970348>,  <44.758560, 35.010059, 35.173706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909641, 35.319607, 34.970348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885125, -0.462960, -0.047130,
		-0.271838, -0.432190, -0.859835,
		0.377700, 0.773873, -0.508393,
		45.022953, 35.551769, 34.817829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977352, 34.697205, 34.534779>,  <44.758560, 35.010059, 35.173706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977352, 34.697205, 34.534779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169220, 35.006428, 34.700813>,  <45.284340, 35.191959, 34.800434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169220, 35.006428, 34.700813>,  <44.977352, 34.697205, 34.534779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169220, 35.006428, 34.700813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876507, -0.444055, -0.185881,
		0.040626, 0.452990, -0.890590,
		0.479673, 0.773056, 0.415088,
		45.313122, 35.238346, 34.825340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545555, 34.813725, 34.186348>,  <44.977352, 34.697205, 34.534779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545555, 34.813725, 34.186348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611629, 34.940498, 34.559929>,  <45.651276, 35.016563, 34.784077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611629, 34.940498, 34.559929>,  <45.545555, 34.813725, 34.186348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611629, 34.940498, 34.559929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854404, -0.519007, 0.025005,
		0.492653, 0.793843, -0.356519,
		0.165185, 0.316930, 0.933953,
		45.661186, 35.035576, 34.840115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170422, 35.231506, 34.357330>,  <45.545555, 34.813725, 34.186348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170422, 35.231506, 34.357330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090561, 35.022461, 34.688877>,  <46.042645, 34.897034, 34.887806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.090561, 35.022461, 34.688877>,  <46.170422, 35.231506, 34.357330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090561, 35.022461, 34.688877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842779, -0.523105, -0.126824,
		0.499864, 0.673232, 0.544881,
		-0.199648, -0.522609, 0.828867,
		46.030666, 34.865677, 34.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.688148, 35.223633, 34.918152>,  <46.170422, 35.231506, 34.357330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.688148, 35.223633, 34.918152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481636, 34.890335, 34.997303>,  <46.357727, 34.690357, 35.044792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481636, 34.890335, 34.997303>,  <46.688148, 35.223633, 34.918152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481636, 34.890335, 34.997303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846575, -0.531470, -0.029173,
		0.129473, 0.152456, 0.979793,
		-0.516283, -0.833245, 0.197876,
		46.326752, 34.640362, 35.056667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474991, 35.336819, 34.978035>,  <46.688148, 35.223633, 34.918152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474991, 35.336819, 34.978035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.796104, 35.288940, 34.744381>,  <47.988773, 35.260216, 34.604187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.796104, 35.288940, 34.744381>,  <47.474991, 35.336819, 34.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.796104, 35.288940, 34.744381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587685, 0.324474, 0.741177,
		0.100821, -0.938291, 0.330825,
		0.802783, -0.119695, -0.584134,
		48.036938, 35.253033, 34.569141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.868446, 37.841518, 28.408533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481468, 37.790997, 28.496248>,  <33.249279, 37.760681, 28.548878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481468, 37.790997, 28.496248>,  <33.868446, 37.841518, 28.408533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481468, 37.790997, 28.496248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249875, -0.339670, 0.906745,
		-0.040042, 0.932025, 0.360174,
		-0.967450, -0.126306, 0.219289,
		33.191235, 37.753105, 28.562035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839771, 37.980381, 29.133913>,  <33.868446, 37.841518, 28.408533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839771, 37.980381, 29.133913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489460, 37.804527, 29.054184>,  <33.279274, 37.699013, 29.006348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489460, 37.804527, 29.054184>,  <33.839771, 37.980381, 29.133913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489460, 37.804527, 29.054184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086995, -0.549907, 0.830683,
		-0.474807, 0.710155, 0.519844,
		-0.875780, -0.439638, -0.199320,
		33.226727, 37.672634, 28.994389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321030, 38.049255, 29.663649>,  <33.839771, 37.980381, 29.133913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321030, 38.049255, 29.663649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.216637, 37.702564, 29.493624>,  <33.153999, 37.494549, 29.391609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.216637, 37.702564, 29.493624>,  <33.321030, 38.049255, 29.663649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216637, 37.702564, 29.493624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006901, -0.441987, 0.896995,
		-0.965319, 0.231167, 0.121332,
		-0.260983, -0.866723, -0.425063,
		33.138340, 37.442547, 29.366104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707127, 37.858524, 30.008505>,  <33.321030, 38.049255, 29.663649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707127, 37.858524, 30.008505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830540, 37.508888, 29.858427>,  <32.904587, 37.299107, 29.768379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.830540, 37.508888, 29.858427>,  <32.707127, 37.858524, 30.008505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830540, 37.508888, 29.858427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039132, -0.405770, 0.913137,
		-0.950408, -0.267051, -0.159399,
		0.308533, -0.874091, -0.375197,
		32.923100, 37.246662, 29.745869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129459, 37.393795, 30.277246>,  <32.707127, 37.858524, 30.008505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129459, 37.393795, 30.277246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.398003, 37.125546, 30.151049>,  <32.559128, 36.964596, 30.075329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.398003, 37.125546, 30.151049>,  <32.129459, 37.393795, 30.277246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398003, 37.125546, 30.151049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012122, -0.415702, 0.909420,
		-0.741035, -0.614370, -0.270955,
		0.671357, -0.670628, -0.315497,
		32.599411, 36.924358, 30.056400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857733, 36.707851, 30.535799>,  <32.129459, 37.393795, 30.277246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857733, 36.707851, 30.535799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.243061, 36.650871, 30.444826>,  <32.474258, 36.616684, 30.390242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.243061, 36.650871, 30.444826>,  <31.857733, 36.707851, 30.535799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243061, 36.650871, 30.444826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121418, -0.524437, 0.842747,
		-0.239322, -0.839449, -0.487905,
		0.963319, -0.142447, -0.227434,
		32.532055, 36.608135, 30.376596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123360, 35.951466, 30.791681>,  <31.857733, 36.707851, 30.535799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123360, 35.951466, 30.791681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453812, 36.171978, 30.745033>,  <32.652084, 36.304287, 30.717045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.453812, 36.171978, 30.745033>,  <32.123360, 35.951466, 30.791681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453812, 36.171978, 30.745033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393272, -0.415877, 0.819990,
		0.403545, -0.723281, -0.560372,
		0.826128, 0.551281, -0.116621,
		32.701649, 36.337364, 30.710047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622375, 35.455879, 30.895672>,  <32.123360, 35.951466, 30.791681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622375, 35.455879, 30.895672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.773174, 35.824001, 30.937439>,  <32.863655, 36.044876, 30.962500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.773174, 35.824001, 30.937439>,  <32.622375, 35.455879, 30.895672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773174, 35.824001, 30.937439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219945, -0.198468, 0.955110,
		0.899720, -0.337108, -0.277240,
		0.376998, 0.920309, 0.104420,
		32.886272, 36.100094, 30.968765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374859, 35.424400, 31.136654>,  <32.622375, 35.455879, 30.895672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374859, 35.424400, 31.136654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233757, 35.777470, 31.260878>,  <33.149097, 35.989311, 31.335411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.233757, 35.777470, 31.260878>,  <33.374859, 35.424400, 31.136654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233757, 35.777470, 31.260878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389091, -0.163470, 0.906579,
		0.850983, 0.440636, -0.285776,
		-0.352755, 0.882676, 0.310558,
		33.127930, 36.042274, 31.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946060, 35.722610, 31.592253>,  <33.374859, 35.424400, 31.136654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946060, 35.722610, 31.592253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606220, 35.915237, 31.678307>,  <33.402317, 36.030811, 31.729939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606220, 35.915237, 31.678307>,  <33.946060, 35.722610, 31.592253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606220, 35.915237, 31.678307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171831, -0.132922, 0.976118,
		0.498661, 0.866272, 0.030182,
		-0.849595, 0.481565, 0.215135,
		33.351341, 36.059708, 31.742847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147308, 36.271255, 31.892328>,  <33.946060, 35.722610, 31.592253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147308, 36.271255, 31.892328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765388, 36.222710, 32.000870>,  <33.536236, 36.193581, 32.065994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765388, 36.222710, 32.000870>,  <34.147308, 36.271255, 31.892328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765388, 36.222710, 32.000870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271775, 0.013386, 0.962268,
		-0.120417, 0.992518, 0.020203,
		-0.954797, -0.121364, 0.271353,
		33.478951, 36.186302, 32.082275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103336, 36.757519, 32.393112>,  <34.147308, 36.271255, 31.892328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103336, 36.757519, 32.393112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.794735, 36.508163, 32.443970>,  <33.609573, 36.358551, 32.474483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.794735, 36.508163, 32.443970>,  <34.103336, 36.757519, 32.393112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794735, 36.508163, 32.443970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146451, 0.020466, 0.989006,
		-0.619139, 0.781643, 0.075507,
		-0.771504, -0.623391, 0.127144,
		33.563282, 36.321148, 32.482113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705685, 37.090260, 32.808765>,  <34.103336, 36.757519, 32.393112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705685, 37.090260, 32.808765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606609, 36.704468, 32.845490>,  <33.547165, 36.472992, 32.867523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.606609, 36.704468, 32.845490>,  <33.705685, 37.090260, 32.808765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606609, 36.704468, 32.845490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044693, 0.083284, 0.995523,
		-0.967808, 0.250684, 0.022477,
		-0.247689, -0.964480, 0.091807,
		33.532303, 36.415123, 32.873032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294205, 37.038452, 33.401272>,  <33.705685, 37.090260, 32.808765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294205, 37.038452, 33.401272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.400906, 36.657543, 33.341915>,  <33.464928, 36.428997, 33.306301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.400906, 36.657543, 33.341915>,  <33.294205, 37.038452, 33.401272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400906, 36.657543, 33.341915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256959, -0.078127, 0.963259,
		-0.928878, -0.295085, 0.223854,
		0.266754, -0.952271, -0.148395,
		33.480930, 36.371861, 33.297398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918289, 36.687614, 33.851124>,  <33.294205, 37.038452, 33.401272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918289, 36.687614, 33.851124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219368, 36.444099, 33.750874>,  <33.400017, 36.297989, 33.690723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.219368, 36.444099, 33.750874>,  <32.918289, 36.687614, 33.851124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219368, 36.444099, 33.750874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277706, -0.051569, 0.959281,
		-0.596928, -0.791652, 0.130249,
		0.752699, -0.608792, -0.250629,
		33.445179, 36.261463, 33.675686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860664, 36.032230, 34.236347>,  <32.918289, 36.687614, 33.851124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860664, 36.032230, 34.236347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.243801, 36.078461, 34.131142>,  <33.473682, 36.106201, 34.068016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.243801, 36.078461, 34.131142>,  <32.860664, 36.032230, 34.236347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243801, 36.078461, 34.131142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269890, -0.048234, 0.961682,
		0.098466, -0.992126, -0.077395,
		0.957843, 0.115581, -0.263016,
		33.531155, 36.113136, 34.052238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161522, 35.587170, 34.646336>,  <32.860664, 36.032230, 34.236347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161522, 35.587170, 34.646336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461197, 35.823860, 34.527283>,  <33.641003, 35.965874, 34.455849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.461197, 35.823860, 34.527283>,  <33.161522, 35.587170, 34.646336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461197, 35.823860, 34.527283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393097, -0.035545, 0.918810,
		0.533103, -0.805356, -0.259235,
		0.749183, 0.591725, -0.297634,
		33.685951, 36.001377, 34.437992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706387, 35.250046, 34.903603>,  <33.161522, 35.587170, 34.646336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706387, 35.250046, 34.903603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.829643, 35.623470, 34.830383>,  <33.903599, 35.847527, 34.786449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.829643, 35.623470, 34.830383>,  <33.706387, 35.250046, 34.903603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829643, 35.623470, 34.830383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589033, -0.036127, 0.807301,
		0.747054, -0.356587, -0.561032,
		0.308141, 0.933564, -0.183052,
		33.922085, 35.903538, 34.775467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515846, 35.234547, 34.786072>,  <33.706387, 35.250046, 34.903603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515846, 35.234547, 34.786072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447929, 35.624088, 34.846447>,  <34.407181, 35.857815, 34.882671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447929, 35.624088, 34.846447>,  <34.515846, 35.234547, 34.786072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447929, 35.624088, 34.846447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695938, 0.010044, 0.718032,
		0.697742, 0.226959, -0.679446,
		-0.169788, 0.973853, 0.150941,
		34.396992, 35.916245, 34.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146225, 35.450771, 34.730217>,  <34.515846, 35.234547, 34.786072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146225, 35.450771, 34.730217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911037, 35.688007, 34.950230>,  <34.769924, 35.830349, 35.082237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.911037, 35.688007, 34.950230>,  <35.146225, 35.450771, 34.730217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911037, 35.688007, 34.950230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710568, 0.053794, 0.701569,
		0.386506, 0.803336, -0.453061,
		-0.587967, 0.593091, 0.550034,
		34.734646, 35.865936, 35.115238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582413, 35.992764, 34.858303>,  <35.146225, 35.450771, 34.730217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582413, 35.992764, 34.858303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309074, 35.995548, 35.150326>,  <35.145069, 35.997219, 35.325539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.309074, 35.995548, 35.150326>,  <35.582413, 35.992764, 34.858303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309074, 35.995548, 35.150326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729994, 0.022893, 0.683070,
		-0.011956, 0.999714, -0.020729,
		-0.683349, 0.006965, 0.730059,
		35.104069, 35.997639, 35.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723434, 36.622635, 35.369965>,  <35.582413, 35.992764, 34.858303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723434, 36.622635, 35.369965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520493, 36.339157, 35.566067>,  <35.398727, 36.169071, 35.683727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520493, 36.339157, 35.566067>,  <35.723434, 36.622635, 35.369965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520493, 36.339157, 35.566067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762899, -0.104828, 0.637962,
		-0.400725, 0.697688, 0.593844,
		-0.507350, -0.708690, 0.490259,
		35.368286, 36.126549, 35.713146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294579, 37.116989, 35.515224>,  <35.723434, 36.622635, 35.369965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294579, 37.116989, 35.515224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690018, 37.173229, 35.536777>,  <36.927280, 37.206974, 35.549709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690018, 37.173229, 35.536777>,  <36.294579, 37.116989, 35.515224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690018, 37.173229, 35.536777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009082, 0.412900, -0.910731,
		-0.150293, 0.899859, 0.409470,
		0.988600, 0.140596, 0.053884,
		36.986599, 37.215408, 35.552944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446629, 37.776062, 35.167034>,  <36.294579, 37.116989, 35.515224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446629, 37.776062, 35.167034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825073, 37.649639, 35.195271>,  <37.052139, 37.573784, 35.212212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825073, 37.649639, 35.195271>,  <36.446629, 37.776062, 35.167034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825073, 37.649639, 35.195271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220350, 0.468534, -0.855524,
		0.237319, 0.824976, 0.512928,
		0.946111, -0.316056, 0.070591,
		37.108906, 37.554821, 35.216450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993626, 38.367725, 35.102886>,  <36.446629, 37.776062, 35.167034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993626, 38.367725, 35.102886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127941, 38.018898, 34.960484>,  <37.208530, 37.809601, 34.875042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127941, 38.018898, 34.960484>,  <36.993626, 38.367725, 35.102886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127941, 38.018898, 34.960484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201694, 0.435754, -0.877176,
		0.920090, 0.222742, 0.322213,
		0.335789, -0.872069, -0.356007,
		37.228680, 37.757278, 34.853680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449749, 38.514145, 34.507759>,  <36.993626, 38.367725, 35.102886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449749, 38.514145, 34.507759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413586, 38.117783, 34.467896>,  <37.391888, 37.879967, 34.443977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413586, 38.117783, 34.467896>,  <37.449749, 38.514145, 34.507759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413586, 38.117783, 34.467896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328262, 0.064824, -0.942360,
		0.940251, -0.117908, 0.319416,
		-0.090406, -0.990906, -0.099655,
		37.386463, 37.820511, 34.438000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013073, 38.224201, 34.192387>,  <37.449749, 38.514145, 34.507759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013073, 38.224201, 34.192387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707279, 37.974785, 34.126949>,  <37.523804, 37.825134, 34.087688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707279, 37.974785, 34.126949>,  <38.013073, 38.224201, 34.192387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707279, 37.974785, 34.126949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148687, 0.076375, -0.985931,
		0.627263, -0.778051, 0.034325,
		-0.764482, -0.623542, -0.163593,
		37.477936, 37.787724, 34.077869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217575, 37.959530, 33.608025>,  <38.013073, 38.224201, 34.192387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217575, 37.959530, 33.608025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833595, 37.847500, 33.604862>,  <37.603207, 37.780281, 33.602966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.833595, 37.847500, 33.604862>,  <38.217575, 37.959530, 33.608025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833595, 37.847500, 33.604862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045707, 0.184373, -0.981793,
		0.276437, -0.942106, -0.189790,
		-0.959945, -0.280079, -0.007907,
		37.545612, 37.763477, 33.602489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138130, 37.661308, 32.941208>,  <38.217575, 37.959530, 33.608025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138130, 37.661308, 32.941208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762497, 37.679657, 33.077450>,  <37.537117, 37.690666, 33.159195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762497, 37.679657, 33.077450>,  <38.138130, 37.661308, 32.941208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762497, 37.679657, 33.077450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332732, 0.126808, -0.934457,
		-0.086055, -0.990866, -0.103821,
		-0.939087, 0.045870, 0.340605,
		37.480770, 37.693417, 33.179630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820095, 37.183491, 32.585251>,  <38.138130, 37.661308, 32.941208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820095, 37.183491, 32.585251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558796, 37.453945, 32.721542>,  <37.402016, 37.616219, 32.803318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.558796, 37.453945, 32.721542>,  <37.820095, 37.183491, 32.585251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558796, 37.453945, 32.721542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430274, 0.038773, -0.901865,
		-0.622998, -0.735752, 0.265597,
		-0.653252, 0.676140, 0.340731,
		37.362820, 37.656788, 32.823761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160175, 36.940010, 32.358635>,  <37.820095, 37.183491, 32.585251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160175, 36.940010, 32.358635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126629, 37.331829, 32.431786>,  <37.106503, 37.566921, 32.475677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126629, 37.331829, 32.431786>,  <37.160175, 36.940010, 32.358635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126629, 37.331829, 32.431786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448003, 0.126869, -0.884985,
		-0.890090, -0.156147, 0.428202,
		-0.083862, 0.979552, 0.182879,
		37.101471, 37.625694, 32.486649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558056, 37.180637, 32.222420>,  <37.160175, 36.940010, 32.358635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558056, 37.180637, 32.222420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723312, 37.544853, 32.216438>,  <36.822468, 37.763382, 32.212849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723312, 37.544853, 32.216438>,  <36.558056, 37.180637, 32.222420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723312, 37.544853, 32.216438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324286, 0.131757, -0.936738,
		-0.850970, 0.391857, 0.349711,
		0.413145, 0.910543, -0.014953,
		36.847256, 37.818016, 32.211952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077473, 37.589912, 31.931345>,  <36.558056, 37.180637, 32.222420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077473, 37.589912, 31.931345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.407524, 37.815346, 31.915676>,  <36.605556, 37.950607, 31.906275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.407524, 37.815346, 31.915676>,  <36.077473, 37.589912, 31.931345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407524, 37.815346, 31.915676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246054, 0.296093, -0.922923,
		-0.508547, 0.771169, 0.382987,
		0.825129, 0.563585, -0.039172,
		36.655064, 37.984421, 31.903925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885937, 38.276440, 31.849743>,  <36.077473, 37.589912, 31.931345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885937, 38.276440, 31.849743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247135, 38.236485, 31.682594>,  <36.463856, 38.212513, 31.582306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247135, 38.236485, 31.682594>,  <35.885937, 38.276440, 31.849743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247135, 38.236485, 31.682594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388962, 0.223037, -0.893847,
		0.182484, 0.969679, 0.162550,
		0.902999, -0.099887, -0.417869,
		36.518036, 38.206520, 31.557234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887684, 38.869503, 31.435656>,  <35.885937, 38.276440, 31.849743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887684, 38.869503, 31.435656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183514, 38.632835, 31.307308>,  <36.361012, 38.490833, 31.230299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183514, 38.632835, 31.307308>,  <35.887684, 38.869503, 31.435656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183514, 38.632835, 31.307308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186378, 0.278055, -0.942310,
		0.646758, 0.756710, 0.095367,
		0.739573, -0.591672, -0.320868,
		36.405384, 38.455334, 31.211048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426552, 39.219818, 31.056210>,  <35.887684, 38.869503, 31.435656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426552, 39.219818, 31.056210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424919, 38.843628, 30.920277>,  <36.423939, 38.617912, 30.838717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424919, 38.843628, 30.920277>,  <36.426552, 39.219818, 31.056210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424919, 38.843628, 30.920277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284510, 0.326884, -0.901222,
		0.958664, 0.093009, -0.268909,
		-0.004081, -0.940476, -0.339834,
		36.423695, 38.561485, 30.818327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718243, 39.216747, 30.429907>,  <36.426552, 39.219818, 31.056210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718243, 39.216747, 30.429907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564503, 38.852478, 30.369308>,  <36.472260, 38.633915, 30.332949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.564503, 38.852478, 30.369308>,  <36.718243, 39.216747, 30.429907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564503, 38.852478, 30.369308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288807, 0.274474, -0.917199,
		0.876849, -0.308774, -0.368502,
		-0.384351, -0.910672, -0.151496,
		36.449196, 38.579277, 30.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040527, 38.910549, 29.837826>,  <36.718243, 39.216747, 30.429907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040527, 38.910549, 29.837826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683475, 38.737293, 29.887777>,  <36.469242, 38.633339, 29.917749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.683475, 38.737293, 29.887777>,  <37.040527, 38.910549, 29.837826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683475, 38.737293, 29.887777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198162, 0.128211, -0.971748,
		0.404890, -0.892162, -0.200277,
		-0.892634, -0.433138, 0.124881,
		36.415684, 38.607353, 29.925241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887348, 38.449978, 29.265831>,  <37.040527, 38.910549, 29.837826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887348, 38.449978, 29.265831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534477, 38.564224, 29.415602>,  <36.322754, 38.632771, 29.505465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534477, 38.564224, 29.415602>,  <36.887348, 38.449978, 29.265831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534477, 38.564224, 29.415602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358327, 0.108800, -0.927235,
		-0.305569, -0.952148, 0.006363,
		-0.882173, 0.285615, 0.374426,
		36.269825, 38.649910, 29.527929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408703, 38.351887, 28.702175>,  <36.887348, 38.449978, 29.265831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408703, 38.351887, 28.702175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.144844, 38.520618, 28.950987>,  <35.986526, 38.621857, 29.100275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.144844, 38.520618, 28.950987>,  <36.408703, 38.351887, 28.702175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144844, 38.520618, 28.950987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633108, 0.134128, -0.762355,
		-0.405016, -0.896699, 0.178587,
		-0.659649, 0.421831, 0.622031,
		35.946949, 38.647167, 29.137596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.738850, 38.130840, 28.509377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652794, 38.456116, 28.725689>,  <35.601162, 38.651279, 28.855476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652794, 38.456116, 28.725689>,  <35.738850, 38.130840, 28.509377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652794, 38.456116, 28.725689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677011, 0.274899, -0.682705,
		-0.703826, -0.512993, 0.491394,
		-0.215139, 0.813185, 0.540783,
		35.588253, 38.700069, 28.887924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963223, 38.168854, 28.674629>,  <35.738850, 38.130840, 28.509377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963223, 38.168854, 28.674629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119553, 38.536736, 28.689562>,  <35.213352, 38.757465, 28.698523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119553, 38.536736, 28.689562>,  <34.963223, 38.168854, 28.674629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119553, 38.536736, 28.689562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713346, 0.328268, -0.619175,
		-0.581714, 0.215359, 0.784365,
		0.390827, 0.919707, 0.037333,
		35.236801, 38.812649, 28.700762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381889, 38.686138, 28.691099>,  <34.963223, 38.168854, 28.674629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381889, 38.686138, 28.691099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697639, 38.901814, 28.573683>,  <34.887089, 39.031219, 28.503233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.697639, 38.901814, 28.573683>,  <34.381889, 38.686138, 28.691099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697639, 38.901814, 28.573683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529888, 0.356946, -0.769291,
		-0.310013, 0.762802, 0.567472,
		0.789374, 0.539186, -0.293542,
		34.934452, 39.063568, 28.485620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028465, 39.179344, 28.297831>,  <34.381889, 38.686138, 28.691099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028465, 39.179344, 28.297831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407135, 39.279301, 28.216482>,  <34.634338, 39.339275, 28.167673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407135, 39.279301, 28.216482>,  <34.028465, 39.179344, 28.297831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407135, 39.279301, 28.216482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306460, 0.503602, -0.807754,
		-0.099434, 0.827006, 0.553330,
		0.946676, 0.249892, -0.203369,
		34.691139, 39.354267, 28.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074543, 39.940411, 28.363720>,  <34.028465, 39.179344, 28.297831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074543, 39.940411, 28.363720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342545, 39.775303, 28.116911>,  <34.503345, 39.676239, 27.968824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.342545, 39.775303, 28.116911>,  <34.074543, 39.940411, 28.363720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342545, 39.775303, 28.116911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359820, 0.546440, -0.756263,
		0.649326, 0.728716, 0.217595,
		0.670004, -0.412766, -0.617025,
		34.543545, 39.651474, 27.931803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260941, 40.496113, 27.796829>,  <34.074543, 39.940411, 28.363720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260941, 40.496113, 27.796829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360622, 40.154770, 27.613668>,  <34.420429, 39.949963, 27.503773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360622, 40.154770, 27.613668>,  <34.260941, 40.496113, 27.796829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360622, 40.154770, 27.613668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393075, 0.342995, -0.853139,
		0.885094, 0.392593, -0.249960,
		0.249201, -0.853361, -0.457901,
		34.435383, 39.898762, 27.476297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518768, 40.678360, 27.151031>,  <34.260941, 40.496113, 27.796829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518768, 40.678360, 27.151031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414295, 40.295643, 27.099932>,  <34.351612, 40.066010, 27.069271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.414295, 40.295643, 27.099932>,  <34.518768, 40.678360, 27.151031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414295, 40.295643, 27.099932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353278, 0.217911, -0.909786,
		0.898319, -0.192492, -0.394930,
		-0.261186, -0.956798, -0.127750,
		34.335938, 40.008602, 27.061607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865810, 40.343983, 26.528490>,  <34.518768, 40.678360, 27.151031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865810, 40.343983, 26.528490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553577, 40.095596, 26.557024>,  <34.366238, 39.946564, 26.574144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553577, 40.095596, 26.557024>,  <34.865810, 40.343983, 26.528490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553577, 40.095596, 26.557024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171495, 0.103021, -0.979784,
		0.601067, -0.777035, -0.186909,
		-0.780582, -0.620970, 0.071335,
		34.319405, 39.909306, 26.578424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804459, 40.028923, 25.962423>,  <34.865810, 40.343983, 26.528490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804459, 40.028923, 25.962423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430069, 39.989803, 26.097706>,  <34.205437, 39.966331, 26.178875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430069, 39.989803, 26.097706>,  <34.804459, 40.028923, 25.962423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430069, 39.989803, 26.097706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348741, 0.125869, -0.928729,
		0.048259, -0.987214, -0.151917,
		-0.935976, -0.097800, 0.338208,
		34.149277, 39.960461, 26.199167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504845, 39.547112, 25.469309>,  <34.804459, 40.028923, 25.962423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504845, 39.547112, 25.469309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201672, 39.729031, 25.656366>,  <34.019768, 39.838184, 25.768600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.201672, 39.729031, 25.656366>,  <34.504845, 39.547112, 25.469309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201672, 39.729031, 25.656366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544747, -0.046896, -0.837288,
		-0.358869, -0.889357, 0.283296,
		-0.757934, 0.454801, 0.467646,
		33.974293, 39.865471, 25.796659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913734, 39.223217, 25.127504>,  <34.504845, 39.547112, 25.469309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913734, 39.223217, 25.127504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751816, 39.545898, 25.299723>,  <33.654663, 39.739506, 25.403053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.751816, 39.545898, 25.299723>,  <33.913734, 39.223217, 25.127504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751816, 39.545898, 25.299723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583151, 0.134922, -0.801081,
		-0.704325, -0.575348, 0.415814,
		-0.404798, 0.806703, 0.430544,
		33.630375, 39.787910, 25.428886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108662, 39.178722, 25.049929>,  <33.913734, 39.223217, 25.127504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108662, 39.178722, 25.049929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207260, 39.563366, 25.098171>,  <33.266418, 39.794151, 25.127117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.207260, 39.563366, 25.098171>,  <33.108662, 39.178722, 25.049929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207260, 39.563366, 25.098171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548491, 0.241016, -0.800668,
		-0.798999, 0.131208, 0.586843,
		0.246492, 0.961611, 0.120605,
		33.281208, 39.851849, 25.134354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501167, 39.433559, 25.015251>,  <33.108662, 39.178722, 25.049929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501167, 39.433559, 25.015251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751728, 39.737530, 24.945810>,  <32.902065, 39.919910, 24.904146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751728, 39.737530, 24.945810>,  <32.501167, 39.433559, 25.015251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751728, 39.737530, 24.945810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589992, 0.316659, -0.742722,
		-0.509439, 0.567667, 0.646704,
		0.626404, 0.759922, -0.173600,
		32.939648, 39.965508, 24.893730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991299, 39.948780, 24.705908>,  <32.501167, 39.433559, 25.015251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991299, 39.948780, 24.705908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364182, 40.087025, 24.662935>,  <32.587910, 40.169971, 24.637152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.364182, 40.087025, 24.662935>,  <31.991299, 39.948780, 24.705908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364182, 40.087025, 24.662935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295889, 0.556838, -0.776132,
		-0.208418, 0.755304, 0.621351,
		0.932208, 0.345611, -0.107431,
		32.643845, 40.190708, 24.630705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959127, 40.686157, 24.792290>,  <31.991299, 39.948780, 24.705908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959127, 40.686157, 24.792290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268246, 40.577080, 24.563055>,  <32.453716, 40.511635, 24.425514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.268246, 40.577080, 24.563055>,  <31.959127, 40.686157, 24.792290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268246, 40.577080, 24.563055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305791, 0.631274, -0.712731,
		0.556128, 0.726040, 0.404460,
		0.772796, -0.272689, -0.573086,
		32.500084, 40.495274, 24.391129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084721, 41.256042, 24.396927>,  <31.959127, 40.686157, 24.792290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084721, 41.256042, 24.396927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254738, 40.947716, 24.207115>,  <32.356750, 40.762718, 24.093227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.254738, 40.947716, 24.207115>,  <32.084721, 41.256042, 24.396927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254738, 40.947716, 24.207115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126838, 0.468353, -0.874390,
		0.896242, 0.431843, 0.101303,
		0.425045, -0.770816, -0.474531,
		32.382252, 40.716473, 24.064756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472912, 41.588310, 23.993603>,  <32.084721, 41.256042, 24.396927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472912, 41.588310, 23.993603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.437084, 41.220486, 23.840559>,  <32.415588, 40.999790, 23.748734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.437084, 41.220486, 23.840559>,  <32.472912, 41.588310, 23.993603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437084, 41.220486, 23.840559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016693, 0.385485, -0.922563,
		0.995841, -0.076246, -0.049877,
		-0.089568, -0.919559, -0.382609,
		32.410213, 40.944618, 23.725777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637089, 41.768230, 23.368637>,  <32.472912, 41.588310, 23.993603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637089, 41.768230, 23.368637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479912, 41.401375, 23.341967>,  <32.385605, 41.181259, 23.325964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479912, 41.401375, 23.341967>,  <32.637089, 41.768230, 23.368637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479912, 41.401375, 23.341967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417259, 0.242447, -0.875851,
		0.819446, -0.316337, -0.477953,
		-0.392942, -0.917143, -0.066678,
		32.362030, 41.126232, 23.321964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756104, 41.571930, 22.722443>,  <32.637089, 41.768230, 23.368637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756104, 41.571930, 22.722443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.474316, 41.310841, 22.833923>,  <32.305244, 41.154186, 22.900812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.474316, 41.310841, 22.833923>,  <32.756104, 41.571930, 22.722443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474316, 41.310841, 22.833923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475159, 0.142051, -0.868358,
		0.527210, -0.744157, -0.410219,
		-0.704467, -0.652726, 0.278702,
		32.262974, 41.115025, 22.917534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676800, 41.167065, 22.098446>,  <32.756104, 41.571930, 22.722443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676800, 41.167065, 22.098446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353806, 41.149364, 22.333735>,  <32.160007, 41.138744, 22.474907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.353806, 41.149364, 22.333735>,  <32.676800, 41.167065, 22.098446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353806, 41.149364, 22.333735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576522, 0.270238, -0.771099,
		-0.124838, -0.961776, -0.243726,
		-0.807489, -0.044251, 0.588221,
		32.111557, 41.136089, 22.510201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174221, 40.763134, 21.781345>,  <32.676800, 41.167065, 22.098446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174221, 40.763134, 21.781345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939573, 40.990589, 22.012007>,  <31.798784, 41.127064, 22.150404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.939573, 40.990589, 22.012007>,  <32.174221, 40.763134, 21.781345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939573, 40.990589, 22.012007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621483, 0.140463, -0.770732,
		-0.519267, -0.810506, 0.271002,
		-0.586617, 0.568639, 0.576654,
		31.763588, 41.161182, 22.185003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373920, 40.599800, 21.776594>,  <32.174221, 40.763134, 21.781345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373920, 40.599800, 21.776594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439276, 40.987774, 21.848738>,  <31.478489, 41.220558, 21.892025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439276, 40.987774, 21.848738>,  <31.373920, 40.599800, 21.776594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439276, 40.987774, 21.848738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688672, 0.243037, -0.683128,
		-0.706424, -0.012594, 0.707677,
		0.163389, 0.969935, 0.180360,
		31.488293, 41.278755, 21.902845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759090, 40.863617, 21.371155>,  <31.373920, 40.599800, 21.776594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759090, 40.863617, 21.371155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997953, 41.170559, 21.464602>,  <31.141272, 41.354725, 21.520670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.997953, 41.170559, 21.464602>,  <30.759090, 40.863617, 21.371155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997953, 41.170559, 21.464602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397888, 0.536262, -0.744384,
		-0.696482, 0.351562, 0.625553,
		0.597158, 0.767350, 0.233615,
		31.177101, 41.400764, 21.534685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102955, 40.532681, 21.602001>,  <30.759090, 40.863617, 21.371155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102955, 40.532681, 21.602001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.926004, 40.885647, 21.666065>,  <29.819834, 41.097427, 21.704504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.926004, 40.885647, 21.666065>,  <30.102955, 40.532681, 21.602001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926004, 40.885647, 21.666065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740658, -0.258772, -0.620051,
		-0.505697, -0.392917, 0.768041,
		-0.442376, 0.882413, 0.160157,
		29.793291, 41.150372, 21.714113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431610, 40.669373, 21.992290>,  <30.102955, 40.532681, 21.602001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431610, 40.669373, 21.992290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.185307, 40.368248, 22.085342>,  <29.037525, 40.187572, 22.141172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.185307, 40.368248, 22.085342>,  <29.431610, 40.669373, 21.992290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185307, 40.368248, 22.085342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094911, 0.363952, 0.926570,
		-0.782199, 0.548463, -0.295556,
		-0.615757, -0.752813, 0.232628,
		29.000580, 40.142403, 22.155130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175625, 40.878784, 22.632961>,  <29.431610, 40.669373, 21.992290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175625, 40.878784, 22.632961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019903, 40.510578, 22.619774>,  <28.926470, 40.289654, 22.611862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019903, 40.510578, 22.619774>,  <29.175625, 40.878784, 22.632961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019903, 40.510578, 22.619774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043399, -0.017421, 0.998906,
		-0.920087, 0.390308, -0.033167,
		-0.389303, -0.920520, -0.032968,
		28.903112, 40.234421, 22.609884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870556, 40.885059, 23.295042>,  <29.175625, 40.878784, 22.632961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870556, 40.885059, 23.295042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.849403, 40.492867, 23.219292>,  <28.836712, 40.257553, 23.173841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.849403, 40.492867, 23.219292>,  <28.870556, 40.885059, 23.295042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849403, 40.492867, 23.219292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167742, -0.195667, 0.966218,
		-0.984412, 0.019330, 0.174815,
		-0.052883, -0.980480, -0.189374,
		28.833538, 40.198723, 23.162479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449709, 40.572369, 23.828514>,  <28.870556, 40.885059, 23.295042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449709, 40.572369, 23.828514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.708126, 40.316490, 23.661943>,  <28.863176, 40.162964, 23.562000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.708126, 40.316490, 23.661943>,  <28.449709, 40.572369, 23.828514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708126, 40.316490, 23.661943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436677, -0.137716, 0.889015,
		-0.626052, -0.756186, 0.190371,
		0.646044, -0.639700, -0.416427,
		28.901939, 40.124580, 23.537016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428448, 39.979877, 24.313002>,  <28.449709, 40.572369, 23.828514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428448, 39.979877, 24.313002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.775217, 39.941158, 24.117420>,  <28.983278, 39.917927, 24.000072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.775217, 39.941158, 24.117420>,  <28.428448, 39.979877, 24.313002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775217, 39.941158, 24.117420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481392, -0.091780, 0.871687,
		-0.129259, -0.991063, -0.032966,
		0.866922, -0.096804, -0.488953,
		29.035294, 39.912121, 23.970734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712317, 39.382580, 24.492098>,  <28.428448, 39.979877, 24.313002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712317, 39.382580, 24.492098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.044546, 39.553539, 24.349285>,  <29.243885, 39.656116, 24.263597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.044546, 39.553539, 24.349285>,  <28.712317, 39.382580, 24.492098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044546, 39.553539, 24.349285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437165, -0.103208, 0.893440,
		0.345008, -0.898152, -0.272566,
		0.830576, 0.427401, -0.357033,
		29.293718, 39.681759, 24.242176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178484, 38.903843, 24.680414>,  <28.712317, 39.382580, 24.492098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178484, 38.903843, 24.680414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365025, 39.248959, 24.602320>,  <29.476948, 39.456028, 24.555462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365025, 39.248959, 24.602320>,  <29.178484, 38.903843, 24.680414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365025, 39.248959, 24.602320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562738, -0.119062, 0.818016,
		0.682527, -0.491350, -0.541047,
		0.466350, 0.862786, -0.195238,
		29.504930, 39.507793, 24.543749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896997, 38.719883, 24.752502>,  <29.178484, 38.903843, 24.680414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896997, 38.719883, 24.752502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.908470, 39.118050, 24.788986>,  <29.915354, 39.356949, 24.810877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.908470, 39.118050, 24.788986>,  <29.896997, 38.719883, 24.752502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908470, 39.118050, 24.788986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701804, -0.085029, 0.707277,
		0.711792, 0.043728, -0.701027,
		0.028680, 0.995418, 0.091211,
		29.917074, 39.416676, 24.816349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618456, 38.836964, 24.910618>,  <29.896997, 38.719883, 24.752502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618456, 38.836964, 24.910618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.419594, 39.162926, 25.029791>,  <30.300276, 39.358501, 25.101295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.419594, 39.162926, 25.029791>,  <30.618456, 38.836964, 24.910618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419594, 39.162926, 25.029791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675512, 0.148026, 0.722337,
		0.544534, 0.560373, -0.624071,
		-0.497157, 0.814905, 0.297933,
		30.270447, 39.407398, 25.119171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131281, 39.240543, 25.049675>,  <30.618456, 38.836964, 24.910618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131281, 39.240543, 25.049675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816374, 39.398464, 25.239136>,  <30.627430, 39.493217, 25.352812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816374, 39.398464, 25.239136>,  <31.131281, 39.240543, 25.049675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816374, 39.398464, 25.239136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569441, 0.170833, 0.804085,
		0.236537, 0.902746, -0.359305,
		-0.787266, 0.394799, 0.473653,
		30.580194, 39.516903, 25.381231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432058, 39.827518, 25.310818>,  <31.131281, 39.240543, 25.049675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432058, 39.827518, 25.310818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.106695, 39.752560, 25.531090>,  <30.911476, 39.707584, 25.663252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.106695, 39.752560, 25.531090>,  <31.432058, 39.827518, 25.310818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106695, 39.752560, 25.531090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578601, -0.163185, 0.799120,
		-0.059892, 0.968634, 0.241165,
		-0.813409, -0.187399, 0.550679,
		30.862673, 39.696339, 25.696293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532513, 40.212429, 26.018419>,  <31.432058, 39.827518, 25.310818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532513, 40.212429, 26.018419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260641, 39.925495, 26.079687>,  <31.097517, 39.753334, 26.116447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.260641, 39.925495, 26.079687>,  <31.532513, 40.212429, 26.018419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260641, 39.925495, 26.079687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500066, -0.300382, 0.812222,
		-0.536628, 0.628647, 0.562880,
		-0.679680, -0.717338, 0.153172,
		31.056738, 39.710293, 26.125639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450577, 40.253597, 26.681620>,  <31.532513, 40.212429, 26.018419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450577, 40.253597, 26.681620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.314613, 39.890030, 26.585012>,  <31.233034, 39.671890, 26.527048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.314613, 39.890030, 26.585012>,  <31.450577, 40.253597, 26.681620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314613, 39.890030, 26.585012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669878, -0.414246, 0.616168,
		-0.660095, 0.047653, 0.749670,
		-0.339910, -0.908917, -0.241520,
		31.212641, 39.617355, 26.512556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359253, 39.926971, 27.287582>,  <31.450577, 40.253597, 26.681620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359253, 39.926971, 27.287582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402470, 39.625458, 27.028309>,  <31.428400, 39.444550, 26.872746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.402470, 39.625458, 27.028309>,  <31.359253, 39.926971, 27.287582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402470, 39.625458, 27.028309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592590, -0.474676, 0.650784,
		-0.798225, -0.454419, 0.395398,
		0.108043, -0.753781, -0.648183,
		31.434883, 39.399323, 26.833855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258377, 39.279644, 27.713152>,  <31.359253, 39.926971, 27.287582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258377, 39.279644, 27.713152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454079, 39.174408, 27.380547>,  <31.571501, 39.111267, 27.180983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454079, 39.174408, 27.380547>,  <31.258377, 39.279644, 27.713152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454079, 39.174408, 27.380547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532002, -0.665464, 0.523576,
		-0.691090, -0.698528, -0.185616,
		0.489253, -0.263090, -0.831514,
		31.600855, 39.095482, 27.131092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251638, 38.499882, 27.673468>,  <31.258377, 39.279644, 27.713152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251638, 38.499882, 27.673468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555792, 38.620979, 27.443628>,  <31.738285, 38.693638, 27.305725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555792, 38.620979, 27.443628>,  <31.251638, 38.499882, 27.673468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555792, 38.620979, 27.443628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603900, -0.655132, 0.453990,
		-0.238995, -0.692207, -0.680978,
		0.760385, 0.302742, -0.574598,
		31.783907, 38.711803, 27.271250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479649, 37.921173, 27.287758>,  <31.251638, 38.499882, 27.673468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479649, 37.921173, 27.287758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794573, 38.164490, 27.247505>,  <31.983528, 38.310478, 27.223354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794573, 38.164490, 27.247505>,  <31.479649, 37.921173, 27.287758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794573, 38.164490, 27.247505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585221, -0.685910, 0.432486,
		0.194053, -0.399392, -0.896008,
		0.787312, 0.608287, -0.100629,
		32.030766, 38.346977, 27.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014870, 37.416328, 27.364332>,  <31.479649, 37.921173, 27.287758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014870, 37.416328, 27.364332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153847, 37.781528, 27.449858>,  <32.237232, 38.000648, 27.501173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153847, 37.781528, 27.449858>,  <32.014870, 37.416328, 27.364332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153847, 37.781528, 27.449858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740238, -0.407023, 0.535145,
		0.575613, -0.027661, -0.817254,
		0.347444, 0.912999, 0.213812,
		32.258080, 38.055428, 27.514002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777752, 37.391411, 27.355515>,  <32.014870, 37.416328, 27.364332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777752, 37.391411, 27.355515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684364, 37.700249, 27.591944>,  <32.628334, 37.885551, 27.733801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684364, 37.700249, 27.591944>,  <32.777752, 37.391411, 27.355515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684364, 37.700249, 27.591944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724274, -0.267503, 0.635507,
		0.648784, 0.576468, -0.496754,
		-0.233467, 0.772092, 0.591073,
		32.614323, 37.931877, 27.769266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443657, 37.662338, 27.644136>,  <32.777752, 37.391411, 27.355515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443657, 37.662338, 27.644136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168434, 37.770599, 27.913452>,  <33.003300, 37.835556, 28.075041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.168434, 37.770599, 27.913452>,  <33.443657, 37.662338, 27.644136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168434, 37.770599, 27.913452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568330, -0.375906, 0.731912,
		0.451190, 0.886250, 0.104824,
		-0.688061, 0.270657, 0.673288,
		32.962017, 37.851795, 28.115438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.648502, 37.969315, 31.050884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.292465, 38.016888, 31.226875>,  <37.078842, 38.045433, 31.332470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.292465, 38.016888, 31.226875>,  <37.648502, 37.969315, 31.050884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292465, 38.016888, 31.226875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455563, 0.203092, 0.866727,
		0.013728, 0.971909, -0.234955,
		-0.890097, 0.118935, 0.439978,
		37.025436, 38.052567, 31.358870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797062, 38.473766, 31.541281>,  <37.648502, 37.969315, 31.050884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797062, 38.473766, 31.541281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438049, 38.343643, 31.660349>,  <37.222641, 38.265568, 31.731789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438049, 38.343643, 31.660349>,  <37.797062, 38.473766, 31.541281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438049, 38.343643, 31.660349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269893, 0.128550, 0.954271,
		-0.348697, 0.936830, -0.027580,
		-0.897534, -0.325308, 0.297669,
		37.168789, 38.246052, 31.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401405, 38.986031, 32.043709>,  <37.797062, 38.473766, 31.541281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401405, 38.986031, 32.043709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256947, 38.617847, 32.103477>,  <37.170269, 38.396938, 32.139339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.256947, 38.617847, 32.103477>,  <37.401405, 38.986031, 32.043709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256947, 38.617847, 32.103477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137921, 0.105751, 0.984781,
		-0.922252, 0.376263, 0.088759,
		-0.361151, -0.920458, 0.149424,
		37.148602, 38.341709, 32.148304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993542, 38.992878, 32.631271>,  <37.401405, 38.986031, 32.043709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993542, 38.992878, 32.631271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.039814, 38.596596, 32.602650>,  <37.067577, 38.358826, 32.585476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.039814, 38.596596, 32.602650>,  <36.993542, 38.992878, 32.631271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039814, 38.596596, 32.602650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166124, -0.051728, 0.984747,
		-0.979296, -0.125799, 0.158596,
		0.115676, -0.990706, -0.071556,
		37.074516, 38.299385, 32.581184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592442, 38.667141, 33.102215>,  <36.993542, 38.992878, 32.631271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592442, 38.667141, 33.102215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.833679, 38.359631, 33.017120>,  <36.978424, 38.175125, 32.966064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.833679, 38.359631, 33.017120>,  <36.592442, 38.667141, 33.102215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833679, 38.359631, 33.017120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041675, -0.296703, 0.954060,
		-0.796579, -0.566524, -0.210979,
		0.603096, -0.768777, -0.212737,
		37.014606, 38.128998, 32.953300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326115, 38.190289, 33.532619>,  <36.592442, 38.667141, 33.102215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326115, 38.190289, 33.532619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664635, 38.012314, 33.415451>,  <36.867748, 37.905529, 33.345150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664635, 38.012314, 33.415451>,  <36.326115, 38.190289, 33.532619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664635, 38.012314, 33.415451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106625, -0.397265, 0.911489,
		-0.521928, -0.802625, -0.288763,
		0.846299, -0.444942, -0.292924,
		36.918526, 37.878830, 33.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261997, 37.573284, 33.835247>,  <36.326115, 38.190289, 33.532619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261997, 37.573284, 33.835247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.654152, 37.570156, 33.756477>,  <36.889446, 37.568279, 33.709213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.654152, 37.570156, 33.756477>,  <36.261997, 37.573284, 33.835247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654152, 37.570156, 33.756477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173150, -0.443072, 0.879606,
		-0.094130, -0.896452, -0.433028,
		0.980387, -0.007818, -0.196927,
		36.948269, 37.567810, 33.697399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447060, 36.973377, 34.131191>,  <36.261997, 37.573284, 33.835247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447060, 36.973377, 34.131191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.764484, 37.210312, 34.075485>,  <36.954941, 37.352474, 34.042061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.764484, 37.210312, 34.075485>,  <36.447060, 36.973377, 34.131191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764484, 37.210312, 34.075485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320227, -0.211927, 0.923332,
		0.517413, -0.777315, -0.357861,
		0.793560, 0.592341, -0.139263,
		37.002552, 37.388016, 34.033707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031677, 36.625591, 34.304512>,  <36.447060, 36.973377, 34.131191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031677, 36.625591, 34.304512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.156895, 37.003220, 34.345943>,  <37.232025, 37.229797, 34.370800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.156895, 37.003220, 34.345943>,  <37.031677, 36.625591, 34.304512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156895, 37.003220, 34.345943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412177, -0.233301, 0.880728,
		0.855635, -0.233018, -0.462159,
		0.313047, 0.944073, 0.103576,
		37.250809, 37.286442, 34.377018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716927, 36.602482, 34.563354>,  <37.031677, 36.625591, 34.304512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716927, 36.602482, 34.563354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580891, 36.967236, 34.655273>,  <37.499268, 37.186089, 34.710426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580891, 36.967236, 34.655273>,  <37.716927, 36.602482, 34.563354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580891, 36.967236, 34.655273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335996, -0.110406, 0.935370,
		0.878319, 0.395324, -0.268841,
		-0.340092, 0.911883, 0.229799,
		37.478863, 37.240799, 34.724213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136150, 36.801712, 35.059029>,  <37.716927, 36.602482, 34.563354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136150, 36.801712, 35.059029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.806786, 37.020813, 35.118301>,  <37.609165, 37.152271, 35.153866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.806786, 37.020813, 35.118301>,  <38.136150, 36.801712, 35.059029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806786, 37.020813, 35.118301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023192, -0.228431, 0.973284,
		0.566965, 0.804853, 0.175390,
		-0.823415, 0.547750, 0.148178,
		37.559761, 37.185139, 35.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292377, 37.058743, 35.648346>,  <38.136150, 36.801712, 35.059029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292377, 37.058743, 35.648346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899990, 37.129967, 35.617386>,  <37.664558, 37.172699, 35.598812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899990, 37.129967, 35.617386>,  <38.292377, 37.058743, 35.648346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899990, 37.129967, 35.617386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087749, -0.051012, 0.994835,
		0.173190, 0.982697, 0.065666,
		-0.980972, 0.178057, -0.077396,
		37.605698, 37.183384, 35.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053493, 37.735199, 35.967514>,  <38.292377, 37.058743, 35.648346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053493, 37.735199, 35.967514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.758579, 37.465408, 35.983006>,  <37.581631, 37.303535, 35.992302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.758579, 37.465408, 35.983006>,  <38.053493, 37.735199, 35.967514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758579, 37.465408, 35.983006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042760, 0.103798, 0.993679,
		-0.674231, 0.730965, -0.105369,
		-0.737282, -0.674474, 0.038728,
		37.537395, 37.263065, 35.994625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519382, 38.298450, 36.158730>,  <38.053493, 37.735199, 35.967514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519382, 38.298450, 36.158730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.586205, 37.906021, 36.119553>,  <38.626297, 37.670563, 36.096046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.586205, 37.906021, 36.119553>,  <38.519382, 38.298450, 36.158730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586205, 37.906021, 36.119553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932295, 0.189505, -0.308080,
		0.320809, -0.039843, 0.946306,
		0.167055, -0.981071, -0.097940,
		38.636322, 37.611698, 36.090172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594795, 38.971642, 36.604328>,  <38.519382, 38.298450, 36.158730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594795, 38.971642, 36.604328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564629, 39.332077, 36.775135>,  <38.546528, 39.548340, 36.877621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.564629, 39.332077, 36.775135>,  <38.594795, 38.971642, 36.604328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564629, 39.332077, 36.775135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196748, 0.406374, -0.892273,
		-0.977549, -0.151308, 0.146641,
		-0.075416, 0.901092, 0.427020,
		38.542004, 39.602406, 36.903240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888485, 39.175163, 36.473648>,  <38.594795, 38.971642, 36.604328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888485, 39.175163, 36.473648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129761, 39.487621, 36.538113>,  <38.274529, 39.675095, 36.576790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129761, 39.487621, 36.538113>,  <37.888485, 39.175163, 36.473648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129761, 39.487621, 36.538113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185535, 0.333933, -0.924156,
		-0.775717, 0.527543, 0.346355,
		0.603192, 0.781145, 0.161160,
		38.310719, 39.721966, 36.586460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495499, 39.675640, 36.263729>,  <37.888485, 39.175163, 36.473648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495499, 39.675640, 36.263729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868443, 39.817455, 36.235401>,  <38.092209, 39.902542, 36.218403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868443, 39.817455, 36.235401>,  <37.495499, 39.675640, 36.263729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868443, 39.817455, 36.235401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232488, 0.437924, -0.868431,
		-0.276876, 0.826152, 0.490727,
		0.932357, 0.354536, -0.070820,
		38.148148, 39.923817, 36.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406754, 40.360233, 36.153503>,  <37.495499, 39.675640, 36.263729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406754, 40.360233, 36.153503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784004, 40.285130, 36.043766>,  <38.010353, 40.240067, 35.977924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784004, 40.285130, 36.043766>,  <37.406754, 40.360233, 36.153503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784004, 40.285130, 36.043766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165892, 0.449332, -0.877827,
		0.288091, 0.873411, 0.392628,
		0.943124, -0.187760, -0.274340,
		38.066940, 40.228802, 35.961464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617924, 40.980976, 35.933128>,  <37.406754, 40.360233, 36.153503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617924, 40.980976, 35.933128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909077, 40.757153, 35.774593>,  <38.083771, 40.622860, 35.679474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.909077, 40.757153, 35.774593>,  <37.617924, 40.980976, 35.933128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909077, 40.757153, 35.774593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168355, 0.414475, -0.894353,
		0.664712, 0.717710, 0.207486,
		0.727884, -0.559556, -0.396336,
		38.127441, 40.589287, 35.655693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881275, 41.383736, 35.485966>,  <37.617924, 40.980976, 35.933128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881275, 41.383736, 35.485966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997219, 41.033714, 35.330910>,  <38.066784, 40.823700, 35.237877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997219, 41.033714, 35.330910>,  <37.881275, 41.383736, 35.485966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997219, 41.033714, 35.330910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156278, 0.356313, -0.921204,
		0.944225, 0.327596, -0.033472,
		0.289856, -0.875055, -0.387636,
		38.084175, 40.771198, 35.214619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296368, 41.563770, 34.943249>,  <37.881275, 41.383736, 35.485966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296368, 41.563770, 34.943249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154568, 41.195648, 34.877075>,  <38.069489, 40.974773, 34.837372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154568, 41.195648, 34.877075>,  <38.296368, 41.563770, 34.943249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154568, 41.195648, 34.877075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276866, 0.272304, -0.921518,
		0.893126, -0.280876, -0.351333,
		-0.354501, -0.920304, -0.165436,
		38.048218, 40.919556, 34.827446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641617, 41.341068, 34.273125>,  <38.296368, 41.563770, 34.943249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641617, 41.341068, 34.273125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300587, 41.146614, 34.349854>,  <38.095970, 41.029942, 34.395889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300587, 41.146614, 34.349854>,  <38.641617, 41.341068, 34.273125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300587, 41.146614, 34.349854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312558, 0.180143, -0.932661,
		0.418843, -0.855116, -0.305530,
		-0.852572, -0.486134, 0.191822,
		38.044815, 41.000774, 34.407402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469196, 40.950432, 33.626534>,  <38.641617, 41.341068, 34.273125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469196, 40.950432, 33.626534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123871, 40.918877, 33.825920>,  <37.916676, 40.899944, 33.945553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.123871, 40.918877, 33.825920>,  <38.469196, 40.950432, 33.626534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123871, 40.918877, 33.825920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501342, 0.247315, -0.829151,
		-0.057869, -0.965718, -0.253060,
		-0.863312, -0.078888, 0.498467,
		37.864876, 40.895210, 33.975460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980854, 40.475105, 33.246368>,  <38.469196, 40.950432, 33.626534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980854, 40.475105, 33.246368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768162, 40.719162, 33.481312>,  <37.640545, 40.865597, 33.622276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.768162, 40.719162, 33.481312>,  <37.980854, 40.475105, 33.246368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768162, 40.719162, 33.481312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655889, 0.142079, -0.741366,
		-0.535792, -0.779446, 0.324641,
		-0.531730, 0.610146, 0.587355,
		37.608643, 40.902206, 33.657516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311157, 40.322697, 33.196896>,  <37.980854, 40.475105, 33.246368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311157, 40.322697, 33.196896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.268131, 40.689812, 33.349789>,  <37.242317, 40.910080, 33.441525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.268131, 40.689812, 33.349789>,  <37.311157, 40.322697, 33.196896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268131, 40.689812, 33.349789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628460, 0.235138, -0.741450,
		-0.770369, -0.319970, 0.551499,
		-0.107563, 0.917785, 0.382232,
		37.235863, 40.965149, 33.464458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607105, 40.477936, 33.094532>,  <37.311157, 40.322697, 33.196896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607105, 40.477936, 33.094532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.788544, 40.832119, 33.134960>,  <36.897408, 41.044628, 33.159218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.788544, 40.832119, 33.134960>,  <36.607105, 40.477936, 33.094532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788544, 40.832119, 33.134960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347671, 0.280240, -0.894757,
		-0.820593, 0.370721, 0.434964,
		0.453600, 0.885455, 0.101074,
		36.924625, 41.097755, 33.165283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152981, 40.883682, 32.834541>,  <36.607105, 40.477936, 33.094532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152981, 40.883682, 32.834541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474358, 41.121811, 32.837906>,  <36.667183, 41.264687, 32.839924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474358, 41.121811, 32.837906>,  <36.152981, 40.883682, 32.834541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474358, 41.121811, 32.837906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306099, 0.425141, -0.851797,
		-0.510666, 0.681799, 0.523805,
		0.803445, 0.595320, 0.008407,
		36.715389, 41.300407, 32.840427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914467, 41.514076, 32.774799>,  <36.152981, 40.883682, 32.834541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914467, 41.514076, 32.774799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289692, 41.535065, 32.637814>,  <36.514828, 41.547657, 32.555622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289692, 41.535065, 32.637814>,  <35.914467, 41.514076, 32.774799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289692, 41.535065, 32.637814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338284, 0.352177, -0.872660,
		0.074815, 0.934461, 0.348116,
		0.938065, 0.052474, -0.342461,
		36.571110, 41.550808, 32.535076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571350, 42.071075, 33.178120>,  <35.914467, 41.514076, 32.774799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571350, 42.071075, 33.178120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.180004, 42.121765, 33.112705>,  <34.945198, 42.152180, 33.073456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.180004, 42.121765, 33.112705>,  <35.571350, 42.071075, 33.178120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180004, 42.121765, 33.112705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204645, -0.476576, 0.854983,
		0.030411, 0.869951, 0.492199,
		-0.978364, 0.126726, -0.163538,
		34.886494, 42.159782, 33.063644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360828, 42.151402, 33.788624>,  <35.571350, 42.071075, 33.178120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360828, 42.151402, 33.788624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017296, 42.065907, 33.602406>,  <34.811176, 42.014610, 33.490673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.017296, 42.065907, 33.602406>,  <35.360828, 42.151402, 33.788624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017296, 42.065907, 33.602406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220746, -0.665673, 0.712846,
		-0.462262, 0.714979, 0.524517,
		-0.858827, -0.213737, -0.465544,
		34.759647, 42.001785, 33.462742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968349, 41.990528, 34.412079>,  <35.360828, 42.151402, 33.788624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968349, 41.990528, 34.412079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753765, 41.860733, 34.100460>,  <34.625015, 41.782856, 33.913486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753765, 41.860733, 34.100460>,  <34.968349, 41.990528, 34.412079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753765, 41.860733, 34.100460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228149, -0.832989, 0.504062,
		-0.812503, 0.448148, 0.372831,
		-0.536458, -0.324490, -0.779050,
		34.592827, 41.763386, 33.866745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299881, 41.781990, 34.650646>,  <34.968349, 41.990528, 34.412079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299881, 41.781990, 34.650646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.375160, 41.572067, 34.318584>,  <34.420326, 41.446114, 34.119347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.375160, 41.572067, 34.318584>,  <34.299881, 41.781990, 34.650646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375160, 41.572067, 34.318584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317743, -0.832338, 0.454151,
		-0.929313, 0.178308, -0.323395,
		0.188195, -0.524805, -0.830158,
		34.431618, 41.414627, 34.069538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683033, 41.347488, 34.477940>,  <34.299881, 41.781990, 34.650646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683033, 41.347488, 34.477940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.011284, 41.190708, 34.311592>,  <34.208233, 41.096638, 34.211784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.011284, 41.190708, 34.311592>,  <33.683033, 41.347488, 34.477940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011284, 41.190708, 34.311592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224007, -0.890111, 0.396892,
		-0.525734, -0.232541, -0.818247,
		0.820625, -0.391953, -0.415870,
		34.257473, 41.073124, 34.186832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518600, 40.738708, 34.245949>,  <33.683033, 41.347488, 34.477940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518600, 40.738708, 34.245949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.914742, 40.684669, 34.233612>,  <34.152428, 40.652245, 34.226212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.914742, 40.684669, 34.233612>,  <33.518600, 40.738708, 34.245949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914742, 40.684669, 34.233612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121552, -0.953794, 0.274778,
		-0.066538, -0.268378, -0.961013,
		0.990352, -0.135097, -0.030842,
		34.211845, 40.644142, 34.224358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576500, 40.096687, 34.015144>,  <33.518600, 40.738708, 34.245949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576500, 40.096687, 34.015144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.927059, 40.195274, 34.180645>,  <34.137394, 40.254425, 34.279945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.927059, 40.195274, 34.180645>,  <33.576500, 40.096687, 34.015144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927059, 40.195274, 34.180645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103643, -0.935514, 0.337745,
		0.470310, -0.253115, -0.845424,
		0.876394, 0.246467, 0.413748,
		34.189976, 40.269215, 34.304768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029926, 39.443996, 33.920753>,  <33.576500, 40.096687, 34.015144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029926, 39.443996, 33.920753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205509, 39.661282, 34.207035>,  <34.310860, 39.791653, 34.378803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205509, 39.661282, 34.207035>,  <34.029926, 39.443996, 33.920753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205509, 39.661282, 34.207035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189304, -0.834582, 0.517336,
		0.878340, -0.091602, -0.469178,
		0.438956, 0.543214, 0.715707,
		34.337196, 39.824245, 34.421745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583900, 39.072472, 34.112549>,  <34.029926, 39.443996, 33.920753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583900, 39.072472, 34.112549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.557831, 39.318691, 34.426708>,  <34.542187, 39.466423, 34.615204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.557831, 39.318691, 34.426708>,  <34.583900, 39.072472, 34.112549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557831, 39.318691, 34.426708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204249, -0.762178, 0.614302,
		0.976747, 0.200456, -0.076048,
		-0.065178, 0.615551, 0.785398,
		34.538277, 39.503357, 34.662327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156906, 38.872398, 34.649765>,  <34.583900, 39.072472, 34.112549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156906, 38.872398, 34.649765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.889126, 39.092640, 34.849236>,  <34.728458, 39.224785, 34.968918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.889126, 39.092640, 34.849236>,  <35.156906, 38.872398, 34.649765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889126, 39.092640, 34.849236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050157, -0.636258, 0.769844,
		0.741164, 0.540383, 0.398324,
		-0.669447, 0.550602, 0.498675,
		34.688293, 39.257820, 34.998837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459381, 38.974041, 35.290985>,  <35.156906, 38.872398, 34.649765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459381, 38.974041, 35.290985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.070747, 39.059296, 35.332172>,  <34.837566, 39.110447, 35.356884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.070747, 39.059296, 35.332172>,  <35.459381, 38.974041, 35.290985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070747, 39.059296, 35.332172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031081, -0.546110, 0.837137,
		0.234657, 0.810146, 0.537215,
		-0.971581, 0.213137, 0.102968,
		34.779274, 39.123238, 35.363064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326935, 39.261871, 35.934963>,  <35.459381, 38.974041, 35.290985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326935, 39.261871, 35.934963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.989895, 39.082371, 35.815872>,  <34.787670, 38.974670, 35.744419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.989895, 39.082371, 35.815872>,  <35.326935, 39.261871, 35.934963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989895, 39.082371, 35.815872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072432, -0.453385, 0.888367,
		-0.533641, 0.770106, 0.349519,
		-0.842604, -0.448753, -0.297725,
		34.737114, 38.947746, 35.726555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.921646, 44.813316, 30.341024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645924, 44.534531, 30.420109>,  <33.480488, 44.367260, 30.467560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645924, 44.534531, 30.420109>,  <33.921646, 44.813316, 30.341024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645924, 44.534531, 30.420109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444821, -0.191760, 0.874850,
		-0.571827, 0.690989, 0.442207,
		-0.689310, -0.696966, 0.197713,
		33.439129, 44.325439, 30.479424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612499, 44.936920, 31.092031>,  <33.921646, 44.813316, 30.341024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612499, 44.936920, 31.092031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597206, 44.561131, 30.955839>,  <33.588032, 44.335655, 30.874125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597206, 44.561131, 30.955839>,  <33.612499, 44.936920, 31.092031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597206, 44.561131, 30.955839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661876, -0.279077, 0.695727,
		-0.748638, -0.198758, 0.632484,
		-0.038230, -0.939474, -0.340481,
		33.585735, 44.279289, 30.853695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703583, 44.604538, 31.665991>,  <33.612499, 44.936920, 31.092031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703583, 44.604538, 31.665991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750095, 44.306156, 31.403685>,  <33.778004, 44.127129, 31.246302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750095, 44.306156, 31.403685>,  <33.703583, 44.604538, 31.665991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750095, 44.306156, 31.403685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503702, -0.524749, 0.686238,
		-0.856015, -0.410109, 0.314720,
		0.116284, -0.745955, -0.655766,
		33.784981, 44.082371, 31.206955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350426, 43.927807, 31.902258>,  <33.703583, 44.604538, 31.665991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350426, 43.927807, 31.902258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630913, 43.837292, 31.631824>,  <33.799206, 43.782982, 31.469564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630913, 43.837292, 31.631824>,  <33.350426, 43.927807, 31.902258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630913, 43.837292, 31.631824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382568, -0.680778, 0.624647,
		-0.601613, -0.696661, -0.390802,
		0.701216, -0.226287, -0.676084,
		33.841278, 43.769405, 31.428999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286758, 43.192455, 31.789341>,  <33.350426, 43.927807, 31.902258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286758, 43.192455, 31.789341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661221, 43.283085, 31.681807>,  <33.885899, 43.337463, 31.617287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661221, 43.283085, 31.681807>,  <33.286758, 43.192455, 31.789341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661221, 43.283085, 31.681807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341227, -0.769709, 0.539548,
		-0.084679, -0.596837, -0.797882,
		0.936159, 0.226570, -0.268835,
		33.942070, 43.351055, 31.601156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649799, 42.612942, 31.753845>,  <33.286758, 43.192455, 31.789341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649799, 42.612942, 31.753845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970360, 42.852184, 31.755779>,  <34.162697, 42.995731, 31.756939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970360, 42.852184, 31.755779>,  <33.649799, 42.612942, 31.753845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970360, 42.852184, 31.755779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508485, -0.685531, 0.521047,
		0.314956, -0.415110, -0.853514,
		0.801402, 0.598106, 0.004835,
		34.210781, 43.031616, 31.757229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135502, 42.196419, 31.590509>,  <33.649799, 42.612942, 31.753845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135502, 42.196419, 31.590509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307533, 42.514759, 31.760992>,  <34.410751, 42.705765, 31.863281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307533, 42.514759, 31.760992>,  <34.135502, 42.196419, 31.590509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307533, 42.514759, 31.760992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373783, -0.586707, 0.718374,
		0.821779, -0.149646, -0.549804,
		0.430076, 0.795853, 0.426208,
		34.436558, 42.753513, 31.888855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728962, 41.952957, 31.808025>,  <34.135502, 42.196419, 31.590509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728962, 41.952957, 31.808025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664124, 42.270061, 32.043060>,  <34.625221, 42.460323, 32.184082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664124, 42.270061, 32.043060>,  <34.728962, 41.952957, 31.808025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664124, 42.270061, 32.043060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214471, -0.552925, 0.805156,
		0.963186, 0.256532, -0.080397,
		-0.162095, 0.792758, 0.587588,
		34.615494, 42.507889, 32.219337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328571, 41.869781, 32.345509>,  <34.728962, 41.952957, 31.808025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328571, 41.869781, 32.345509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053089, 42.112869, 32.503681>,  <34.887802, 42.258720, 32.598583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053089, 42.112869, 32.503681>,  <35.328571, 41.869781, 32.345509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053089, 42.112869, 32.503681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028526, -0.567678, 0.822756,
		0.724482, 0.555355, 0.408297,
		-0.688703, 0.607719, 0.395431,
		34.846478, 42.295185, 32.622311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044300, 42.283604, 32.545971>,  <35.328571, 41.869781, 32.345509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044300, 42.283604, 32.545971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286324, 42.019814, 32.367538>,  <36.431538, 41.861538, 32.260479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286324, 42.019814, 32.367538>,  <36.044300, 42.283604, 32.545971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286324, 42.019814, 32.367538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237501, 0.385267, -0.891719,
		0.759929, 0.645491, 0.076484,
		0.605063, -0.659478, -0.446080,
		36.467842, 41.821972, 32.233715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104504, 42.664528, 31.891876>,  <36.044300, 42.283604, 32.545971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104504, 42.664528, 31.891876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268810, 42.304752, 31.832159>,  <36.367393, 42.088886, 31.796329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268810, 42.304752, 31.832159>,  <36.104504, 42.664528, 31.891876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268810, 42.304752, 31.832159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113548, 0.112004, -0.987199,
		0.904642, 0.422460, -0.056122,
		0.410766, -0.899435, -0.149293,
		36.392040, 42.034924, 31.787371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563999, 42.789856, 31.231613>,  <36.104504, 42.664528, 31.891876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563999, 42.789856, 31.231613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493465, 42.404396, 31.311890>,  <36.451145, 42.173119, 31.360056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493465, 42.404396, 31.311890>,  <36.563999, 42.789856, 31.231613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493465, 42.404396, 31.311890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360890, -0.126397, -0.924003,
		0.915786, -0.235362, -0.325485,
		-0.176336, -0.963654, 0.200692,
		36.440563, 42.115299, 31.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977158, 42.436970, 30.756384>,  <36.563999, 42.789856, 31.231613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977158, 42.436970, 30.756384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665325, 42.215569, 30.873611>,  <36.478226, 42.082729, 30.943949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665325, 42.215569, 30.873611>,  <36.977158, 42.436970, 30.756384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665325, 42.215569, 30.873611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313331, -0.060487, -0.947716,
		0.542290, -0.830648, -0.126275,
		-0.779580, -0.553503, 0.293069,
		36.431450, 42.049519, 30.961533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039944, 41.699600, 30.428066>,  <36.977158, 42.436970, 30.756384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039944, 41.699600, 30.428066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652588, 41.764858, 30.503550>,  <36.420174, 41.804012, 30.548840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652588, 41.764858, 30.503550>,  <37.039944, 41.699600, 30.428066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652588, 41.764858, 30.503550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222687, -0.224448, -0.948701,
		-0.112421, -0.960732, 0.253683,
		-0.968386, 0.163146, 0.188710,
		36.362072, 41.813805, 30.560162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739960, 41.268478, 29.930109>,  <37.039944, 41.699600, 30.428066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739960, 41.268478, 29.930109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429787, 41.478500, 30.070414>,  <36.243683, 41.604511, 30.154596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429787, 41.478500, 30.070414>,  <36.739960, 41.268478, 29.930109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429787, 41.478500, 30.070414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467819, -0.104615, -0.877611,
		-0.424096, -0.844616, 0.326750,
		-0.775428, 0.525051, 0.350760,
		36.197159, 41.636017, 30.175642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152931, 40.972309, 29.703419>,  <36.739960, 41.268478, 29.930109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152931, 40.972309, 29.703419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038124, 41.345337, 29.790989>,  <35.969242, 41.569153, 29.843533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038124, 41.345337, 29.790989>,  <36.152931, 40.972309, 29.703419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038124, 41.345337, 29.790989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555466, 0.024174, -0.831188,
		-0.780437, -0.360169, 0.511075,
		-0.287013, 0.932574, 0.218928,
		35.952019, 41.625111, 29.856667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331203, 41.047184, 29.706842>,  <36.152931, 40.972309, 29.703419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331203, 41.047184, 29.706842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461555, 41.422916, 29.664040>,  <35.539768, 41.648357, 29.638357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461555, 41.422916, 29.664040>,  <35.331203, 41.047184, 29.706842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461555, 41.422916, 29.664040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508201, 0.078609, -0.857644,
		-0.797203, 0.333873, 0.502988,
		0.325883, 0.939335, -0.107007,
		35.559319, 41.704716, 29.631937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699322, 41.440578, 29.590122>,  <35.331203, 41.047184, 29.706842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699322, 41.440578, 29.590122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013870, 41.635124, 29.437767>,  <35.202599, 41.751850, 29.346354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013870, 41.635124, 29.437767>,  <34.699322, 41.440578, 29.590122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013870, 41.635124, 29.437767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522026, 0.193482, -0.830695,
		-0.330323, 0.852066, 0.406042,
		0.786369, 0.486362, -0.380889,
		35.249783, 41.781033, 29.323500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314819, 41.968250, 29.292673>,  <34.699322, 41.440578, 29.590122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314819, 41.968250, 29.292673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683617, 41.961601, 29.137930>,  <34.904896, 41.957611, 29.045084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683617, 41.961601, 29.137930>,  <34.314819, 41.968250, 29.292673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683617, 41.961601, 29.137930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360984, 0.324563, -0.874271,
		0.140096, 0.945718, 0.293242,
		0.921989, -0.016626, -0.386859,
		34.960213, 41.956612, 29.021872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345612, 42.657185, 28.822811>,  <34.314819, 41.968250, 29.292673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345612, 42.657185, 28.822811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622204, 42.414082, 28.666611>,  <34.788158, 42.268219, 28.572889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622204, 42.414082, 28.666611>,  <34.345612, 42.657185, 28.822811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622204, 42.414082, 28.666611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350497, 0.190422, -0.917001,
		0.631673, 0.770955, -0.081344,
		0.691478, -0.607756, -0.390502,
		34.829647, 42.231754, 28.549459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821167, 43.079762, 28.296295>,  <34.345612, 42.657185, 28.822811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821167, 43.079762, 28.296295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870155, 42.692307, 28.209808>,  <34.899548, 42.459835, 28.157917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870155, 42.692307, 28.209808>,  <34.821167, 43.079762, 28.296295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870155, 42.692307, 28.209808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232469, 0.183798, -0.955079,
		0.964862, 0.167232, -0.202668,
		0.122470, -0.968634, -0.216216,
		34.906895, 42.401718, 28.144943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138676, 43.102676, 27.691782>,  <34.821167, 43.079762, 28.296295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138676, 43.102676, 27.691782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982918, 42.734875, 27.713270>,  <34.889465, 42.514194, 27.726162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982918, 42.734875, 27.713270>,  <35.138676, 43.102676, 27.691782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982918, 42.734875, 27.713270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354395, 0.095735, -0.930182,
		0.850164, -0.381242, -0.363146,
		-0.389391, -0.919505, 0.053720,
		34.866100, 42.459023, 27.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215485, 42.899521, 27.013649>,  <35.138676, 43.102676, 27.691782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215485, 42.899521, 27.013649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934139, 42.682472, 27.197315>,  <34.765331, 42.552242, 27.307514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934139, 42.682472, 27.197315>,  <35.215485, 42.899521, 27.013649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934139, 42.682472, 27.197315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592635, 0.090967, -0.800318,
		0.392504, -0.835035, -0.385562,
		-0.703367, -0.542626, 0.459166,
		34.723129, 42.519684, 27.335066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.309402, 38.199978, 27.656336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.467491, 38.479370, 27.894972>,  <28.562344, 38.647007, 28.038155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.467491, 38.479370, 27.894972>,  <28.309402, 38.199978, 27.656336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467491, 38.479370, 27.894972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293047, -0.711404, 0.638771,
		0.870589, -0.077626, -0.485849,
		0.395220, 0.698484, 0.596592,
		28.586058, 38.688915, 28.073950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020117, 37.977280, 27.758715>,  <28.309402, 38.199978, 27.656336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020117, 37.977280, 27.758715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.927137, 38.233109, 28.051811>,  <28.871349, 38.386608, 28.227669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.927137, 38.233109, 28.051811>,  <29.020117, 37.977280, 27.758715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927137, 38.233109, 28.051811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631707, -0.473561, 0.613747,
		0.739536, 0.605543, -0.293946,
		-0.232449, 0.639576, 0.732741,
		28.857403, 38.424980, 28.271633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673309, 38.176159, 27.961346>,  <29.020117, 37.977280, 27.758715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673309, 38.176159, 27.961346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400421, 38.247837, 28.244884>,  <29.236689, 38.290844, 28.415009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400421, 38.247837, 28.244884>,  <29.673309, 38.176159, 27.961346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400421, 38.247837, 28.244884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562850, -0.490084, 0.665595,
		0.466664, 0.853058, 0.233487,
		-0.682220, 0.179191, 0.708849,
		29.195755, 38.301594, 28.457539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084988, 38.417931, 28.660418>,  <29.673309, 38.176159, 27.961346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084988, 38.417931, 28.660418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.712456, 38.361900, 28.794882>,  <29.488937, 38.328281, 28.875561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.712456, 38.361900, 28.794882>,  <30.084988, 38.417931, 28.660418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712456, 38.361900, 28.794882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353095, -0.573345, 0.739323,
		0.089173, 0.807250, 0.583434,
		-0.931328, -0.140080, 0.336163,
		29.433058, 38.319878, 28.895731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012484, 38.614300, 29.421227>,  <30.084988, 38.417931, 28.660418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012484, 38.614300, 29.421227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.735544, 38.340069, 29.331219>,  <29.569380, 38.175529, 29.277214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.735544, 38.340069, 29.331219>,  <30.012484, 38.614300, 29.421227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735544, 38.340069, 29.331219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234702, -0.508860, 0.828237,
		-0.682324, 0.520618, 0.513216,
		-0.692350, -0.685579, -0.225017,
		29.527840, 38.134396, 29.263714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935259, 38.401249, 30.110844>,  <30.012484, 38.614300, 29.421227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935259, 38.401249, 30.110844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.761459, 38.126316, 29.878025>,  <29.657179, 37.961357, 29.738333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.761459, 38.126316, 29.878025>,  <29.935259, 38.401249, 30.110844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761459, 38.126316, 29.878025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097978, -0.678472, 0.728063,
		-0.895327, 0.259314, 0.362140,
		-0.434499, -0.687337, -0.582047,
		29.631109, 37.920116, 29.703411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319803, 38.078690, 30.344900>,  <29.935259, 38.401249, 30.110844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319803, 38.078690, 30.344900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.454733, 37.815216, 30.075872>,  <29.535690, 37.657131, 29.914455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.454733, 37.815216, 30.075872>,  <29.319803, 38.078690, 30.344900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454733, 37.815216, 30.075872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032468, -0.705879, 0.707588,
		-0.940829, -0.260523, -0.216723,
		0.337323, -0.658682, -0.672570,
		29.555929, 37.617611, 29.874102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028912, 37.432652, 30.545263>,  <29.319803, 38.078690, 30.344900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028912, 37.432652, 30.545263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.329693, 37.320499, 30.306616>,  <29.510160, 37.253208, 30.163427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.329693, 37.320499, 30.306616>,  <29.028912, 37.432652, 30.545263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329693, 37.320499, 30.306616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252483, -0.713534, 0.653546,
		-0.608949, -0.642071, -0.465752,
		0.751953, -0.280382, -0.596618,
		29.555279, 37.236385, 30.127630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.053909, 36.672314, 30.489212>,  <29.028912, 37.432652, 30.545263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.053909, 36.672314, 30.489212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.429951, 36.783230, 30.409899>,  <29.655575, 36.849781, 30.362310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.429951, 36.783230, 30.409899>,  <29.053909, 36.672314, 30.489212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429951, 36.783230, 30.409899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340021, -0.721231, 0.603499,
		0.024335, -0.634773, -0.772316,
		0.940103, 0.277290, -0.198285,
		29.711981, 36.866417, 30.350412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384386, 36.034683, 30.468752>,  <29.053909, 36.672314, 30.489212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384386, 36.034683, 30.468752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.700289, 36.276833, 30.508371>,  <29.889830, 36.422123, 30.532143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.700289, 36.276833, 30.508371>,  <29.384386, 36.034683, 30.468752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700289, 36.276833, 30.508371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414721, -0.645908, 0.640944,
		0.451986, -0.465112, -0.761170,
		0.789756, 0.605371, 0.099050,
		29.937216, 36.458443, 30.538086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058018, 35.605820, 30.526133>,  <29.384386, 36.034683, 30.468752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058018, 35.605820, 30.526133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.104633, 35.962673, 30.700727>,  <30.132603, 36.176785, 30.805485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.104633, 35.962673, 30.700727>,  <30.058018, 35.605820, 30.526133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104633, 35.962673, 30.700727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397846, -0.444613, 0.802520,
		0.910021, 0.080132, -0.406744,
		0.116537, 0.892131, 0.436488,
		30.139595, 36.230312, 30.831675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788868, 35.549030, 30.784756>,  <30.058018, 35.605820, 30.526133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788868, 35.549030, 30.784756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.618792, 35.830772, 31.012121>,  <30.516747, 35.999817, 31.148540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.618792, 35.830772, 31.012121>,  <30.788868, 35.549030, 30.784756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618792, 35.830772, 31.012121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465759, -0.368206, 0.804670,
		0.776069, 0.606880, -0.171504,
		-0.425189, 0.704359, 0.568413,
		30.491236, 36.042080, 31.182646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345657, 35.804432, 31.189325>,  <30.788868, 35.549030, 30.784756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345657, 35.804432, 31.189325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.010603, 35.907257, 31.382109>,  <30.809570, 35.968952, 31.497778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.010603, 35.907257, 31.382109>,  <31.345657, 35.804432, 31.189325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010603, 35.907257, 31.382109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341336, -0.442509, 0.829261,
		0.426445, 0.859129, 0.282916,
		-0.837636, 0.257065, 0.481958,
		30.759312, 35.984375, 31.526695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687017, 36.176849, 31.776365>,  <31.345657, 35.804432, 31.189325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687017, 36.176849, 31.776365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316805, 36.039673, 31.840591>,  <31.094677, 35.957367, 31.879128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.316805, 36.039673, 31.840591>,  <31.687017, 36.176849, 31.776365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316805, 36.039673, 31.840591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252794, -0.243877, 0.936279,
		-0.281933, 0.907146, 0.312411,
		-0.925532, -0.342944, 0.160564,
		31.039145, 35.936790, 31.888762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207676, 36.682129, 31.996881>,  <31.687017, 36.176849, 31.776365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207676, 36.682129, 31.996881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.554924, 36.493835, 31.933928>,  <32.763275, 36.380859, 31.896156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.554924, 36.493835, 31.933928>,  <32.207676, 36.682129, 31.996881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554924, 36.493835, 31.933928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057582, 0.219425, -0.973929,
		0.492999, 0.854552, 0.163382,
		0.868122, -0.470738, -0.157383,
		32.815361, 36.352615, 31.886713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734962, 37.223526, 31.570665>,  <32.207676, 36.682129, 31.996881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734962, 37.223526, 31.570665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.850513, 36.842804, 31.529467>,  <32.919846, 36.614368, 31.504747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.850513, 36.842804, 31.529467>,  <32.734962, 37.223526, 31.570665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850513, 36.842804, 31.529467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162710, 0.154829, -0.974451,
		0.943437, 0.264742, 0.199595,
		0.288881, -0.951809, -0.102995,
		32.937180, 36.557262, 31.498568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292042, 37.298565, 31.212784>,  <32.734962, 37.223526, 31.570665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292042, 37.298565, 31.212784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.163425, 36.923847, 31.157604>,  <33.086254, 36.699017, 31.124496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.163425, 36.923847, 31.157604>,  <33.292042, 37.298565, 31.212784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163425, 36.923847, 31.157604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003754, 0.146945, -0.989138,
		0.946887, -0.317533, -0.050765,
		-0.321544, -0.936792, -0.137948,
		33.066963, 36.642811, 31.116220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816902, 36.979122, 30.684404>,  <33.292042, 37.298565, 31.212784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816902, 36.979122, 30.684404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454071, 36.810741, 30.685556>,  <33.236370, 36.709713, 30.686247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.454071, 36.810741, 30.685556>,  <33.816902, 36.979122, 30.684404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454071, 36.810741, 30.685556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047872, 0.096354, -0.994195,
		0.418228, -0.901953, -0.107552,
		-0.907080, -0.420949, 0.002880,
		33.181946, 36.684456, 30.686420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781170, 36.697514, 30.082001>,  <33.816902, 36.979122, 30.684404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781170, 36.697514, 30.082001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.391304, 36.695972, 30.171459>,  <33.157387, 36.695049, 30.225134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.391304, 36.695972, 30.171459>,  <33.781170, 36.697514, 30.082001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391304, 36.695972, 30.171459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223200, 0.082166, -0.971304,
		-0.014640, -0.996611, -0.080943,
		-0.974663, -0.003846, 0.223646,
		33.098904, 36.694817, 30.238554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546616, 36.107368, 29.823631>,  <33.781170, 36.697514, 30.082001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546616, 36.107368, 29.823631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.233704, 36.351475, 29.873613>,  <33.045956, 36.497940, 29.903603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.233704, 36.351475, 29.873613>,  <33.546616, 36.107368, 29.823631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233704, 36.351475, 29.873613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095339, 0.080934, -0.992149,
		-0.615589, -0.788051, -0.005131,
		-0.782279, 0.610267, 0.124955,
		32.999020, 36.534554, 29.911100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105423, 36.106182, 29.240410>,  <33.546616, 36.107368, 29.823631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105423, 36.106182, 29.240410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.030376, 36.469864, 29.389082>,  <32.985348, 36.688072, 29.478285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.030376, 36.469864, 29.389082>,  <33.105423, 36.106182, 29.240410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030376, 36.469864, 29.389082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075787, 0.363871, -0.928361,
		-0.979315, -0.202342, 0.000639,
		-0.187614, 0.909206, 0.371679,
		32.974091, 36.742626, 29.500586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571442, 36.382668, 28.909397>,  <33.105423, 36.106182, 29.240410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571442, 36.382668, 28.909397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.735802, 36.722065, 29.042797>,  <32.834419, 36.925701, 29.122837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.735802, 36.722065, 29.042797>,  <32.571442, 36.382668, 28.909397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735802, 36.722065, 29.042797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179314, 0.433880, -0.882947,
		-0.893873, 0.303001, 0.330428,
		0.410900, 0.848492, 0.333501,
		32.859070, 36.976612, 29.142847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143650, 36.960682, 28.816967>,  <32.571442, 36.382668, 28.909397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143650, 36.960682, 28.816967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.459007, 37.200150, 28.873573>,  <32.648220, 37.343830, 28.907537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.459007, 37.200150, 28.873573>,  <32.143650, 36.960682, 28.816967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459007, 37.200150, 28.873573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298663, 0.573609, -0.762741,
		-0.537807, 0.559074, 0.631031,
		0.788393, 0.598672, 0.141517,
		32.695526, 37.379753, 28.916029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899879, 37.673866, 28.835413>,  <32.143650, 36.960682, 28.816967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899879, 37.673866, 28.835413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.286758, 37.681805, 28.734112>,  <32.518887, 37.686569, 28.673330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.286758, 37.681805, 28.734112>,  <31.899879, 37.673866, 28.835413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286758, 37.681805, 28.734112> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188965, 0.722503, -0.665043,
		0.169777, 0.691083, 0.702552,
		0.967196, 0.019848, -0.253255,
		32.576916, 37.687759, 28.658134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178909, 38.355343, 29.001411>,  <31.899879, 37.673866, 28.835413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178909, 38.355343, 29.001411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384621, 38.172775, 28.710978>,  <32.508049, 38.063236, 28.536716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384621, 38.172775, 28.710978>,  <32.178909, 38.355343, 29.001411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384621, 38.172775, 28.710978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263836, 0.721370, -0.640325,
		0.816031, 0.520874, 0.250567,
		0.514280, -0.456417, -0.726085,
		32.538906, 38.035851, 28.493153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258221, 38.961895, 28.471607>,  <32.178909, 38.355343, 29.001411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258221, 38.961895, 28.471607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.370758, 38.644917, 28.255136>,  <32.438282, 38.454731, 28.125254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.370758, 38.644917, 28.255136>,  <32.258221, 38.961895, 28.471607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370758, 38.644917, 28.255136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229231, 0.492130, -0.839798,
		0.931824, 0.360330, -0.043194,
		0.281348, -0.792446, -0.541178,
		32.455162, 38.407185, 28.092783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821663, 39.142109, 28.051441>,  <32.258221, 38.961895, 28.471607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821663, 39.142109, 28.051441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.626343, 38.840000, 27.876570>,  <32.509151, 38.658733, 27.771646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.626343, 38.840000, 27.876570>,  <32.821663, 39.142109, 28.051441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626343, 38.840000, 27.876570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295674, 0.614521, -0.731397,
		0.821058, -0.227882, -0.523386,
		-0.488304, -0.755271, -0.437179,
		32.479851, 38.613419, 27.745417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902287, 39.252625, 27.306868>,  <32.821663, 39.142109, 28.051441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902287, 39.252625, 27.306868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.627281, 38.962162, 27.305037>,  <32.462276, 38.787884, 27.303938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.627281, 38.962162, 27.305037>,  <32.902287, 39.252625, 27.306868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627281, 38.962162, 27.305037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536093, 0.511801, -0.671315,
		0.489817, -0.459091, -0.741158,
		-0.687520, -0.726151, -0.004574,
		32.421028, 38.744316, 27.303663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350521, 39.096424, 26.712862>,  <32.902287, 39.252625, 27.306868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350521, 39.096424, 26.712862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.653370, 39.356548, 26.688017>,  <33.835079, 39.512623, 26.673109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.653370, 39.356548, 26.688017>,  <33.350521, 39.096424, 26.712862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653370, 39.356548, 26.688017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406187, -0.394163, 0.824407,
		0.511636, -0.649410, -0.562578,
		0.757126, 0.650309, -0.062114,
		33.880508, 39.551640, 26.669382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076694, 38.761097, 26.810442>,  <33.350521, 39.096424, 26.712862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076694, 38.761097, 26.810442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146973, 39.144852, 26.898722>,  <34.189140, 39.375103, 26.951689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.146973, 39.144852, 26.898722>,  <34.076694, 38.761097, 26.810442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146973, 39.144852, 26.898722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450896, -0.277713, 0.848274,
		0.875113, -0.049528, -0.481377,
		0.175698, 0.959387, 0.220698,
		34.199680, 39.432667, 26.964931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764160, 38.742241, 26.887375>,  <34.076694, 38.761097, 26.810442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764160, 38.742241, 26.887375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635109, 39.078102, 27.062140>,  <34.557678, 39.279617, 27.167000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.635109, 39.078102, 27.062140>,  <34.764160, 38.742241, 26.887375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635109, 39.078102, 27.062140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646696, -0.141517, 0.749505,
		0.691154, 0.524363, -0.497342,
		-0.322630, 0.839652, 0.436914,
		34.538319, 39.329998, 27.193214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388058, 38.953892, 27.221027>,  <34.764160, 38.742241, 26.887375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388058, 38.953892, 27.221027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.153542, 39.220215, 27.405619>,  <35.012833, 39.380009, 27.516373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.153542, 39.220215, 27.405619>,  <35.388058, 38.953892, 27.221027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153542, 39.220215, 27.405619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605369, -0.018455, 0.795731,
		0.538318, 0.745897, -0.392237,
		-0.586295, 0.665805, 0.461478,
		34.977654, 39.419956, 27.544062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821362, 39.377327, 27.645546>,  <35.388058, 38.953892, 27.221027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821362, 39.377327, 27.645546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467823, 39.416145, 27.828587>,  <35.255699, 39.439434, 27.938410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467823, 39.416145, 27.828587>,  <35.821362, 39.377327, 27.645546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467823, 39.416145, 27.828587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439134, -0.164919, 0.883155,
		0.161172, 0.981521, 0.103148,
		-0.883847, 0.097044, 0.457600,
		35.202667, 39.445259, 27.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874783, 39.890053, 28.122824>,  <35.821362, 39.377327, 27.645546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874783, 39.890053, 28.122824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590950, 39.630951, 28.233757>,  <35.420650, 39.475491, 28.300316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590950, 39.630951, 28.233757>,  <35.874783, 39.890053, 28.122824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590950, 39.630951, 28.233757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520946, -0.217243, 0.825482,
		-0.474462, 0.730219, 0.491596,
		-0.709578, -0.647755, 0.277331,
		35.378075, 39.436623, 28.316956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716377, 40.021660, 28.850845>,  <35.874783, 39.890053, 28.122824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716377, 40.021660, 28.850845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583771, 39.645050, 28.826736>,  <35.504208, 39.419086, 28.812271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.583771, 39.645050, 28.826736>,  <35.716377, 40.021660, 28.850845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583771, 39.645050, 28.826736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344679, -0.180338, 0.921235,
		-0.878232, 0.284633, 0.384309,
		-0.331520, -0.941521, -0.060272,
		35.484314, 39.362595, 28.808655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439350, 39.876720, 29.472866>,  <35.716377, 40.021660, 28.850845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439350, 39.876720, 29.472866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484619, 39.518066, 29.301640>,  <35.511780, 39.302876, 29.198904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.484619, 39.518066, 29.301640>,  <35.439350, 39.876720, 29.472866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484619, 39.518066, 29.301640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542939, -0.305008, 0.782424,
		-0.832111, -0.320963, 0.452299,
		0.113174, -0.896634, -0.428064,
		35.518570, 39.249077, 29.173220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174110, 39.339951, 29.952721>,  <35.439350, 39.876720, 29.472866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174110, 39.339951, 29.952721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416710, 39.142216, 29.703629>,  <35.562267, 39.023575, 29.554173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.416710, 39.142216, 29.703629>,  <35.174110, 39.339951, 29.952721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416710, 39.142216, 29.703629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401829, -0.485263, 0.776565,
		-0.686073, -0.721215, -0.095671,
		0.606496, -0.494337, -0.622731,
		35.598660, 38.993916, 29.516809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082035, 38.667763, 30.165010>,  <35.174110, 39.339951, 29.952721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082035, 38.667763, 30.165010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423317, 38.641689, 29.958017>,  <35.628086, 38.626045, 29.833822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.423317, 38.641689, 29.958017>,  <35.082035, 38.667763, 30.165010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423317, 38.641689, 29.958017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380356, -0.601119, 0.702841,
		-0.356881, -0.796497, -0.488086,
		0.853209, -0.065184, -0.517480,
		35.679279, 38.622135, 29.802773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314091, 37.938892, 30.156425>,  <35.082035, 38.667763, 30.165010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314091, 37.938892, 30.156425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634830, 38.163078, 30.073563>,  <35.827274, 38.297588, 30.023844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634830, 38.163078, 30.073563>,  <35.314091, 37.938892, 30.156425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634830, 38.163078, 30.073563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511229, -0.464028, 0.723411,
		0.309317, -0.685974, -0.658607,
		0.801852, 0.560463, -0.207158,
		35.875385, 38.331219, 30.011415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834015, 37.468204, 30.185606>,  <35.314091, 37.938892, 30.156425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834015, 37.468204, 30.185606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005871, 37.823856, 30.248665>,  <36.108986, 38.037247, 30.286499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005871, 37.823856, 30.248665>,  <35.834015, 37.468204, 30.185606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005871, 37.823856, 30.248665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404308, -0.345517, 0.846849,
		0.807429, -0.300106, -0.507932,
		0.429644, 0.889131, 0.157645,
		36.134766, 38.090595, 30.295958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509533, 37.336628, 30.417078>,  <35.834015, 37.468204, 30.185606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509533, 37.336628, 30.417078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449356, 37.714199, 30.534632>,  <36.413250, 37.940742, 30.605164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449356, 37.714199, 30.534632>,  <36.509533, 37.336628, 30.417078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449356, 37.714199, 30.534632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557807, -0.164383, 0.813529,
		0.816221, 0.286325, -0.501797,
		-0.150447, 0.943926, 0.293886,
		36.404221, 37.997375, 30.622797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131996, 37.465794, 30.785021>,  <36.509533, 37.336628, 30.417078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131996, 37.465794, 30.785021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912525, 37.777332, 30.906578>,  <36.780842, 37.964256, 30.979511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.912525, 37.777332, 30.906578>,  <37.131996, 37.465794, 30.785021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912525, 37.777332, 30.906578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420320, -0.057233, 0.905569,
		0.722695, 0.624594, -0.295964,
		-0.548673, 0.778850, 0.303892,
		36.747925, 38.010986, 30.997746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.945705, 42.299110, 26.288355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680740, 42.271725, 26.586758>,  <34.521763, 42.255295, 26.765799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.680740, 42.271725, 26.586758>,  <34.945705, 42.299110, 26.288355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680740, 42.271725, 26.586758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733125, 0.264064, -0.626736,
		-0.154085, -0.962072, -0.225111,
		-0.662409, -0.068464, 0.746008,
		34.482018, 42.251186, 26.810560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355934, 41.756416, 26.127491>,  <34.945705, 42.299110, 26.288355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355934, 41.756416, 26.127491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232105, 42.044422, 26.375925>,  <34.157810, 42.217224, 26.524984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232105, 42.044422, 26.375925>,  <34.355934, 41.756416, 26.127491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232105, 42.044422, 26.375925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711611, 0.257808, -0.653564,
		-0.630696, -0.644292, 0.432562,
		-0.309568, 0.720015, 0.621083,
		34.139236, 42.260426, 26.562250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630634, 41.741867, 26.026314>,  <34.355934, 41.756416, 26.127491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630634, 41.741867, 26.026314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.718525, 42.097637, 26.186632>,  <33.771259, 42.311100, 26.282824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.718525, 42.097637, 26.186632>,  <33.630634, 41.741867, 26.026314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718525, 42.097637, 26.186632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545485, 0.452622, -0.705393,
		-0.808806, -0.063637, 0.584622,
		0.219723, 0.889429, 0.400797,
		33.784443, 42.364468, 26.306871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948528, 41.978134, 26.153294>,  <33.630634, 41.741867, 26.026314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948528, 41.978134, 26.153294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197643, 42.290974, 26.144787>,  <33.347115, 42.478676, 26.139683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.197643, 42.290974, 26.144787>,  <32.948528, 41.978134, 26.153294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197643, 42.290974, 26.144787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609581, 0.468014, -0.639824,
		-0.490452, 0.411441, 0.768227,
		0.622791, 0.782099, -0.021268,
		33.384480, 42.525604, 26.138407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494652, 42.719902, 26.049398>,  <32.948528, 41.978134, 26.153294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494652, 42.719902, 26.049398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867844, 42.827175, 25.953371>,  <33.091759, 42.891537, 25.895756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867844, 42.827175, 25.953371>,  <32.494652, 42.719902, 26.049398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867844, 42.827175, 25.953371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341322, 0.447495, -0.826588,
		-0.114246, 0.853128, 0.509039,
		0.932977, 0.268180, -0.240067,
		33.147736, 42.907631, 25.881351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589237, 43.486591, 26.103371>,  <32.494652, 42.719902, 26.049398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589237, 43.486591, 26.103371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.849701, 43.325722, 25.845922>,  <33.005978, 43.229198, 25.691454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.849701, 43.325722, 25.845922>,  <32.589237, 43.486591, 26.103371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849701, 43.325722, 25.845922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344252, 0.599274, -0.722746,
		0.676374, 0.692191, 0.251774,
		0.651159, -0.402173, -0.643622,
		33.045048, 43.205070, 25.652836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921379, 44.108971, 25.694321>,  <32.589237, 43.486591, 26.103371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921379, 44.108971, 25.694321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994656, 43.777687, 25.482464>,  <33.038620, 43.578918, 25.355350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994656, 43.777687, 25.482464>,  <32.921379, 44.108971, 25.694321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994656, 43.777687, 25.482464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360472, 0.444645, -0.819970,
		0.914605, 0.341129, -0.217091,
		0.183187, -0.828204, -0.529642,
		33.049610, 43.529224, 25.323572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205318, 44.331322, 25.112995>,  <32.921379, 44.108971, 25.694321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205318, 44.331322, 25.112995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051125, 43.973831, 25.021214>,  <32.958611, 43.759335, 24.966145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051125, 43.973831, 25.021214>,  <33.205318, 44.331322, 25.112995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051125, 43.973831, 25.021214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438322, 0.396190, -0.806788,
		0.811959, -0.210426, -0.544466,
		-0.385481, -0.893731, -0.229455,
		32.935478, 43.705711, 24.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216427, 44.282658, 24.460537>,  <33.205318, 44.331322, 25.112995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216427, 44.282658, 24.460537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952618, 43.993389, 24.542561>,  <32.794331, 43.819828, 24.591776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.952618, 43.993389, 24.542561>,  <33.216427, 44.282658, 24.460537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952618, 43.993389, 24.542561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470267, 0.184141, -0.863100,
		0.586408, -0.665671, -0.461528,
		-0.659527, -0.723170, 0.205061,
		32.754761, 43.776440, 24.604078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218643, 43.879353, 23.863014>,  <33.216427, 44.282658, 24.460537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218643, 43.879353, 23.863014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883774, 43.781052, 24.058458>,  <32.682850, 43.722069, 24.175726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.883774, 43.781052, 24.058458>,  <33.218643, 43.879353, 23.863014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883774, 43.781052, 24.058458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531614, 0.155677, -0.832557,
		0.128528, -0.956753, -0.260969,
		-0.837178, -0.245741, 0.488614,
		32.632622, 43.707325, 24.205042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735790, 43.791138, 23.318283>,  <33.218643, 43.879353, 23.863014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735790, 43.791138, 23.318283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509632, 43.803486, 23.647982>,  <32.373940, 43.810894, 23.845800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509632, 43.803486, 23.647982>,  <32.735790, 43.791138, 23.318283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509632, 43.803486, 23.647982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719359, 0.470462, -0.511067,
		-0.403555, -0.881880, -0.243784,
		-0.565390, 0.030876, 0.824245,
		32.340015, 43.812748, 23.895256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130539, 43.351494, 23.206249>,  <32.735790, 43.791138, 23.318283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130539, 43.351494, 23.206249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068176, 43.650604, 23.464403>,  <32.030758, 43.830070, 23.619295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068176, 43.650604, 23.464403>,  <32.130539, 43.351494, 23.206249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068176, 43.650604, 23.464403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671758, 0.398749, -0.624292,
		-0.724178, -0.530874, 0.440158,
		-0.155907, 0.747779, 0.645384,
		32.021404, 43.874939, 23.658018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656628, 42.752151, 23.227587>,  <32.130539, 43.351494, 23.206249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656628, 42.752151, 23.227587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484566, 42.524193, 23.507639>,  <32.381329, 42.387417, 23.675671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.484566, 42.524193, 23.507639>,  <32.656628, 42.752151, 23.227587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484566, 42.524193, 23.507639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861063, 0.491978, -0.128563,
		-0.271182, -0.658159, -0.702344,
		-0.430153, -0.569898, 0.700132,
		32.355518, 42.353222, 23.717678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059292, 42.402721, 22.950531>,  <32.656628, 42.752151, 23.227587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059292, 42.402721, 22.950531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.030388, 42.462765, 23.344942>,  <32.013046, 42.498791, 23.581589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.030388, 42.462765, 23.344942>,  <32.059292, 42.402721, 22.950531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030388, 42.462765, 23.344942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823774, 0.548365, -0.143848,
		-0.562295, -0.822657, 0.084029,
		-0.072259, 0.150106, 0.986026,
		32.008709, 42.507797, 23.640749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548323, 42.283905, 22.547953>,  <32.059292, 42.402721, 22.950531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548323, 42.283905, 22.547953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437887, 41.952206, 22.353582>,  <31.371626, 41.753185, 22.236959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437887, 41.952206, 22.353582>,  <31.548323, 42.283905, 22.547953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437887, 41.952206, 22.353582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261111, -0.551275, 0.792412,
		-0.924984, 0.091896, 0.368727,
		-0.276090, -0.829248, -0.485925,
		31.355061, 41.703430, 22.207806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090891, 41.887970, 22.999971>,  <31.548323, 42.283905, 22.547953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090891, 41.887970, 22.999971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277649, 41.646999, 22.741022>,  <31.389704, 41.502419, 22.585651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277649, 41.646999, 22.741022>,  <31.090891, 41.887970, 22.999971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277649, 41.646999, 22.741022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388040, -0.518254, 0.762127,
		-0.794629, -0.607040, -0.008204,
		0.466894, -0.602425, -0.647375,
		31.417717, 41.466270, 22.546810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984510, 41.208473, 23.228975>,  <31.090891, 41.887970, 22.999971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984510, 41.208473, 23.228975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.324997, 41.164627, 23.023680>,  <31.529289, 41.138321, 22.900503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.324997, 41.164627, 23.023680>,  <30.984510, 41.208473, 23.228975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324997, 41.164627, 23.023680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418938, -0.447107, 0.790308,
		-0.316101, -0.887739, -0.334664,
		0.851217, -0.109614, -0.513238,
		31.580362, 41.131744, 22.869709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199669, 40.532421, 23.306458>,  <30.984510, 41.208473, 23.228975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199669, 40.532421, 23.306458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536526, 40.702934, 23.174349>,  <31.738640, 40.805241, 23.095083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.536526, 40.702934, 23.174349>,  <31.199669, 40.532421, 23.306458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536526, 40.702934, 23.174349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508015, -0.421721, 0.751048,
		0.180873, -0.800273, -0.571706,
		0.842144, 0.426279, -0.330273,
		31.789169, 40.830818, 23.075268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680065, 40.027157, 23.137442>,  <31.199669, 40.532421, 23.306458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680065, 40.027157, 23.137442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.868532, 40.371670, 23.213535>,  <31.981613, 40.578377, 23.259192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.868532, 40.371670, 23.213535>,  <31.680065, 40.027157, 23.137442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868532, 40.371670, 23.213535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556445, -0.457588, 0.693528,
		0.684374, -0.220914, -0.694859,
		0.471169, 0.861284, 0.190235,
		32.009884, 40.630054, 23.270605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242855, 39.739372, 23.269930>,  <31.680065, 40.027157, 23.137442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242855, 39.739372, 23.269930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.283390, 40.113258, 23.406193>,  <32.307713, 40.337589, 23.487949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.283390, 40.113258, 23.406193>,  <32.242855, 39.739372, 23.269930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283390, 40.113258, 23.406193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590806, -0.332041, 0.735321,
		0.800424, 0.126745, -0.585881,
		0.101339, 0.934711, 0.340656,
		32.313793, 40.393673, 23.508390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912670, 39.733025, 23.437210>,  <32.242855, 39.739372, 23.269930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912670, 39.733025, 23.437210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791771, 40.065117, 23.624554>,  <32.719231, 40.264374, 23.736959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791771, 40.065117, 23.624554>,  <32.912670, 39.733025, 23.437210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791771, 40.065117, 23.624554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603843, -0.213423, 0.768000,
		0.737578, 0.514941, -0.436824,
		-0.302246, 0.830233, 0.468359,
		32.701096, 40.314186, 23.765062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512672, 40.053181, 23.668558>,  <32.912670, 39.733025, 23.437210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512672, 40.053181, 23.668558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223568, 40.209843, 23.896322>,  <33.050106, 40.303841, 24.032980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223568, 40.209843, 23.896322>,  <33.512672, 40.053181, 23.668558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223568, 40.209843, 23.896322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531722, -0.211170, 0.820170,
		0.441465, 0.895553, -0.055626,
		-0.722759, 0.391654, 0.569409,
		33.006741, 40.327339, 24.067144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859619, 40.561993, 24.244179>,  <33.512672, 40.053181, 23.668558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859619, 40.561993, 24.244179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492676, 40.452633, 24.359913>,  <33.272511, 40.387016, 24.429354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492676, 40.452633, 24.359913>,  <33.859619, 40.561993, 24.244179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492676, 40.452633, 24.359913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356820, -0.242534, 0.902140,
		-0.176467, 0.930824, 0.320042,
		-0.917355, -0.273395, 0.289337,
		33.217468, 40.370613, 24.446714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591194, 41.093452, 24.744074>,  <33.859619, 40.561993, 24.244179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591194, 41.093452, 24.744074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417110, 40.735386, 24.782562>,  <33.312660, 40.520546, 24.805656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417110, 40.735386, 24.782562>,  <33.591194, 41.093452, 24.744074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417110, 40.735386, 24.782562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385609, -0.088756, 0.918383,
		-0.813570, 0.436796, 0.383814,
		-0.435212, -0.895171, 0.096223,
		33.286549, 40.466835, 24.811430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419159, 41.110504, 25.457111>,  <33.591194, 41.093452, 24.744074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419159, 41.110504, 25.457111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367878, 40.723682, 25.369135>,  <33.337109, 40.491589, 25.316349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367878, 40.723682, 25.369135>,  <33.419159, 41.110504, 25.457111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367878, 40.723682, 25.369135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353499, -0.251765, 0.900918,
		-0.926608, 0.037753, 0.374129,
		-0.128205, -0.967052, -0.219942,
		33.329418, 40.433567, 25.303152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039856, 40.757835, 25.992044>,  <33.419159, 41.110504, 25.457111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039856, 40.757835, 25.992044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.231178, 40.458683, 25.807915>,  <33.345970, 40.279190, 25.697437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.231178, 40.458683, 25.807915>,  <33.039856, 40.757835, 25.992044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231178, 40.458683, 25.807915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349700, -0.318618, 0.881018,
		-0.805564, -0.582370, 0.109137,
		0.478305, -0.747882, -0.460322,
		33.374668, 40.234318, 25.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100777, 40.459576, 26.568449>,  <33.039856, 40.757835, 25.992044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100777, 40.459576, 26.568449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334805, 40.270420, 26.304913>,  <33.475220, 40.156925, 26.146791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.334805, 40.270420, 26.304913>,  <33.100777, 40.459576, 26.568449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334805, 40.270420, 26.304913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493896, -0.436596, 0.751965,
		-0.643246, -0.765347, -0.021877,
		0.585065, -0.472893, -0.658840,
		33.510323, 40.128551, 26.107260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950836, 39.804050, 26.725536>,  <33.100777, 40.459576, 26.568449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950836, 39.804050, 26.725536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309509, 39.831009, 26.550533>,  <33.524715, 39.847183, 26.445532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309509, 39.831009, 26.550533>,  <32.950836, 39.804050, 26.725536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309509, 39.831009, 26.550533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428019, -0.384158, 0.818060,
		-0.112935, -0.920804, -0.373317,
		0.896686, 0.067399, -0.437507,
		33.578514, 39.851231, 26.419281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684387, 39.187450, 26.470940>,  <32.950836, 39.804050, 26.725536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684387, 39.187450, 26.470940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407291, 39.031952, 26.713919>,  <32.241035, 38.938652, 26.859705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407291, 39.031952, 26.713919>,  <32.684387, 39.187450, 26.470940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407291, 39.031952, 26.713919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719616, 0.428201, -0.546623,
		-0.047613, -0.815795, -0.576378,
		-0.692738, -0.388744, 0.607447,
		32.199471, 38.915329, 26.896152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233082, 38.720329, 26.042994>,  <32.684387, 39.187450, 26.470940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233082, 38.720329, 26.042994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.032879, 38.842304, 26.367096>,  <31.912758, 38.915489, 26.561558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.032879, 38.842304, 26.367096>,  <32.233082, 38.720329, 26.042994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032879, 38.842304, 26.367096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793281, 0.213269, -0.570282,
		-0.346701, -0.928187, 0.135158,
		-0.500503, 0.304935, 0.810254,
		31.882729, 38.933784, 26.610172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523897, 38.422218, 26.017309>,  <32.233082, 38.720329, 26.042994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523897, 38.422218, 26.017309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514688, 38.733234, 26.268671>,  <31.509163, 38.919846, 26.419489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514688, 38.733234, 26.268671>,  <31.523897, 38.422218, 26.017309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514688, 38.733234, 26.268671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848158, 0.317567, -0.424003,
		-0.529243, -0.542749, 0.652170,
		-0.023019, 0.777544, 0.628407,
		31.507782, 38.966499, 26.457193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775982, 38.411106, 26.305590>,  <31.523897, 38.422218, 26.017309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775982, 38.411106, 26.305590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906586, 38.786011, 26.354464>,  <30.984947, 39.010956, 26.383789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.906586, 38.786011, 26.354464>,  <30.775982, 38.411106, 26.305590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906586, 38.786011, 26.354464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827790, 0.345951, -0.441680,
		-0.456241, 0.043068, 0.888814,
		0.326508, 0.937264, 0.122186,
		31.004538, 39.067188, 26.391119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168068, 38.854141, 26.377722>,  <30.775982, 38.411106, 26.305590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168068, 38.854141, 26.377722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.446337, 39.128658, 26.292826>,  <30.613298, 39.293369, 26.241888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.446337, 39.128658, 26.292826>,  <30.168068, 38.854141, 26.377722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446337, 39.128658, 26.292826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662525, 0.498754, -0.558843,
		-0.277673, 0.529386, 0.801653,
		0.695671, 0.686291, -0.212241,
		30.655039, 39.334545, 26.229153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828886, 39.465981, 26.453226>,  <30.168068, 38.854141, 26.377722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828886, 39.465981, 26.453226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.130865, 39.529888, 26.198816>,  <30.312052, 39.568233, 26.046169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.130865, 39.529888, 26.198816>,  <29.828886, 39.465981, 26.453226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130865, 39.529888, 26.198816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644280, 0.361568, -0.673923,
		0.122298, 0.918555, 0.375898,
		0.754948, 0.159764, -0.636026,
		30.357349, 39.577816, 26.008009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696346, 40.102116, 26.110273>,  <29.828886, 39.465981, 26.453226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696346, 40.102116, 26.110273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945208, 39.895588, 25.874870>,  <30.094524, 39.771671, 25.733629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945208, 39.895588, 25.874870>,  <29.696346, 40.102116, 26.110273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945208, 39.895588, 25.874870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545867, 0.252768, -0.798836,
		0.561211, 0.818243, -0.124582,
		0.622151, -0.516320, -0.588507,
		30.131853, 39.740692, 25.698318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306837, 40.904774, 26.092411>,  <29.696346, 40.102116, 26.110273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306837, 40.904774, 26.092411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.908691, 40.886902, 26.126471>,  <28.669804, 40.876179, 26.146906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.908691, 40.886902, 26.126471>,  <29.306837, 40.904774, 26.092411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908691, 40.886902, 26.126471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093979, -0.639513, 0.763014,
		0.020359, 0.767480, 0.640749,
		-0.995366, -0.044683, 0.085147,
		28.610081, 40.873497, 26.152014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227554, 40.926441, 26.783335>,  <29.306837, 40.904774, 26.092411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227554, 40.926441, 26.783335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.883141, 40.769573, 26.653828>,  <28.676493, 40.675453, 26.576124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.883141, 40.769573, 26.653828>,  <29.227554, 40.926441, 26.783335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883141, 40.769573, 26.653828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001481, -0.634713, 0.772747,
		-0.508548, 0.665840, 0.545928,
		-0.861033, -0.392170, -0.323768,
		28.624830, 40.651924, 26.556698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683331, 40.956711, 27.345579>,  <29.227554, 40.926441, 26.783335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683331, 40.956711, 27.345579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.558073, 40.673927, 27.091917>,  <28.482918, 40.504257, 26.939720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.558073, 40.673927, 27.091917>,  <28.683331, 40.956711, 27.345579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558073, 40.673927, 27.091917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077838, -0.646387, 0.759029,
		-0.946510, 0.287047, 0.147384,
		-0.313144, -0.706957, -0.634155,
		28.464130, 40.461842, 26.901670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994652, 40.721340, 27.636122>,  <28.683331, 40.956711, 27.345579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994652, 40.721340, 27.636122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.110630, 40.433426, 27.383823>,  <28.180218, 40.260677, 27.232445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.110630, 40.433426, 27.383823>,  <27.994652, 40.721340, 27.636122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110630, 40.433426, 27.383823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005791, -0.660362, 0.750925,
		-0.957025, -0.214076, -0.195639,
		0.289947, -0.719787, -0.630744,
		28.197615, 40.217491, 27.194601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622656, 40.138317, 27.852800>,  <27.994652, 40.721340, 27.636122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622656, 40.138317, 27.852800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.923851, 39.978531, 27.643637>,  <28.104568, 39.882660, 27.518139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.923851, 39.978531, 27.643637>,  <27.622656, 40.138317, 27.852800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923851, 39.978531, 27.643637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060468, -0.749288, 0.659478,
		-0.655249, -0.528199, -0.540050,
		0.752988, -0.399467, -0.522910,
		28.149748, 39.858692, 27.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491590, 39.412521, 27.916012>,  <27.622656, 40.138317, 27.852800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491590, 39.412521, 27.916012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.873093, 39.427757, 27.796747>,  <28.101994, 39.436897, 27.725187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.873093, 39.427757, 27.796747>,  <27.491590, 39.412521, 27.916012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873093, 39.427757, 27.796747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237055, -0.705199, 0.668206,
		-0.184814, -0.707986, -0.681616,
		0.953755, 0.038087, -0.298163,
		28.159220, 39.439182, 27.707298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675430, 38.705914, 27.806789>,  <27.491590, 39.412521, 27.916012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675430, 38.705914, 27.806789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.019415, 38.901997, 27.863588>,  <28.225805, 39.019646, 27.897667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.019415, 38.901997, 27.863588>,  <27.675430, 38.705914, 27.806789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019415, 38.901997, 27.863588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352806, -0.772049, 0.528648,
		0.368775, -0.404519, -0.836880,
		0.859961, 0.490209, 0.141996,
		28.277403, 39.049061, 27.906187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.112463, 46.603443, 25.002995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041058, 46.244076, 24.842506>,  <30.998215, 46.028454, 24.746214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041058, 46.244076, 24.842506>,  <31.112463, 46.603443, 25.002995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041058, 46.244076, 24.842506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294432, -0.437860, 0.849463,
		-0.938852, 0.033509, 0.342688,
		-0.178514, -0.898418, -0.401220,
		30.987503, 45.974552, 24.722141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499115, 46.129246, 25.292210>,  <31.112463, 46.603443, 25.002995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499115, 46.129246, 25.292210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826733, 45.947685, 25.151844>,  <31.023304, 45.838749, 25.067625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.826733, 45.947685, 25.151844>,  <30.499115, 46.129246, 25.292210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826733, 45.947685, 25.151844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266004, -0.241498, 0.933231,
		-0.508339, -0.857702, -0.077058,
		0.819044, -0.453900, -0.350915,
		31.072447, 45.811516, 25.046570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412901, 45.429329, 25.633417>,  <30.499115, 46.129246, 25.292210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412901, 45.429329, 25.633417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789139, 45.524075, 25.536114>,  <31.014881, 45.580921, 25.477732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.789139, 45.524075, 25.536114>,  <30.412901, 45.429329, 25.633417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789139, 45.524075, 25.536114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297323, -0.228655, 0.926993,
		0.163950, -0.944252, -0.285497,
		0.940595, 0.236866, -0.243260,
		31.071318, 45.595135, 25.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894430, 44.852791, 25.864090>,  <30.412901, 45.429329, 25.633417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894430, 44.852791, 25.864090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134912, 45.169731, 25.822651>,  <31.279202, 45.359894, 25.797787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134912, 45.169731, 25.822651>,  <30.894430, 44.852791, 25.864090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134912, 45.169731, 25.822651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366784, -0.158442, 0.916714,
		0.709945, -0.589132, -0.385878,
		0.601205, 0.792351, -0.103599,
		31.315273, 45.407436, 25.791571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639395, 44.646130, 26.085705>,  <30.894430, 44.852791, 25.864090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639395, 44.646130, 26.085705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.607771, 45.042858, 26.125803>,  <31.588797, 45.280895, 26.149862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.607771, 45.042858, 26.125803>,  <31.639395, 44.646130, 26.085705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607771, 45.042858, 26.125803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503847, -0.047015, 0.862512,
		0.860167, 0.118699, -0.496007,
		-0.079059, 0.991816, 0.100247,
		31.584053, 45.340405, 26.155878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301208, 44.943153, 26.361807>,  <31.639395, 44.646130, 26.085705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301208, 44.943153, 26.361807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.035698, 45.235485, 26.425419>,  <31.876392, 45.410885, 26.463587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.035698, 45.235485, 26.425419>,  <32.301208, 44.943153, 26.361807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035698, 45.235485, 26.425419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288243, 0.053756, 0.956047,
		0.690159, 0.680439, -0.246339,
		-0.663774, 0.730830, 0.159032,
		31.836565, 45.454735, 26.473127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734528, 45.460579, 26.664806>,  <32.301208, 44.943153, 26.361807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734528, 45.460579, 26.664806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353340, 45.556320, 26.739161>,  <32.124626, 45.613766, 26.783773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353340, 45.556320, 26.739161>,  <32.734528, 45.460579, 26.664806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353340, 45.556320, 26.739161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160661, -0.121069, 0.979556,
		0.256966, 0.963354, 0.076921,
		-0.952972, 0.239354, 0.185884,
		32.067448, 45.628128, 26.794926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788410, 45.972618, 27.264790>,  <32.734528, 45.460579, 26.664806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788410, 45.972618, 27.264790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.427822, 45.799686, 27.256456>,  <32.211468, 45.695927, 27.251457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.427822, 45.799686, 27.256456>,  <32.788410, 45.972618, 27.264790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427822, 45.799686, 27.256456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006197, -0.035233, 0.999360,
		-0.432788, 0.901026, 0.029082,
		-0.901474, -0.432331, -0.020832,
		32.157379, 45.669987, 27.250206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438683, 46.287571, 27.772388>,  <32.788410, 45.972618, 27.264790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438683, 46.287571, 27.772388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207012, 45.967411, 27.710537>,  <32.068008, 45.775314, 27.673426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.207012, 45.967411, 27.710537>,  <32.438683, 46.287571, 27.772388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207012, 45.967411, 27.710537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028448, -0.169724, 0.985081,
		-0.814707, 0.574933, 0.075530,
		-0.579175, -0.800403, -0.154631,
		32.033260, 45.727291, 27.664148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908543, 46.234241, 28.348812>,  <32.438683, 46.287571, 27.772388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908543, 46.234241, 28.348812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.932352, 45.863937, 28.199457>,  <31.946638, 45.641754, 28.109844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.932352, 45.863937, 28.199457>,  <31.908543, 46.234241, 28.348812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932352, 45.863937, 28.199457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046531, -0.371072, 0.927438,
		-0.997142, -0.072578, 0.020989,
		0.059524, -0.925764, -0.373388,
		31.950209, 45.586208, 28.087440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512461, 45.876694, 28.789248>,  <31.908543, 46.234241, 28.348812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512461, 45.876694, 28.789248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.689400, 45.567566, 28.607225>,  <31.795563, 45.382088, 28.498013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.689400, 45.567566, 28.607225>,  <31.512461, 45.876694, 28.789248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689400, 45.567566, 28.607225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060078, -0.480722, 0.874813,
		-0.894830, -0.414309, -0.166216,
		0.442346, -0.772823, -0.455055,
		31.822104, 45.335720, 28.470709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180777, 45.206154, 29.097603>,  <31.512461, 45.876694, 28.789248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180777, 45.206154, 29.097603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537683, 45.139378, 28.929798>,  <31.751827, 45.099312, 28.829115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537683, 45.139378, 28.929798>,  <31.180777, 45.206154, 29.097603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537683, 45.139378, 28.929798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245685, -0.600019, 0.761325,
		-0.378808, -0.782374, -0.494364,
		0.892269, -0.166938, -0.419510,
		31.805365, 45.089294, 28.803946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816591, 44.581535, 28.651764>,  <31.180777, 45.206154, 29.097603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816591, 44.581535, 28.651764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520172, 44.341419, 28.772099>,  <30.342321, 44.197350, 28.844299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.520172, 44.341419, 28.772099>,  <30.816591, 44.581535, 28.651764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520172, 44.341419, 28.772099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513137, 0.217335, -0.830335,
		0.433057, -0.769689, -0.469085,
		-0.741048, -0.600288, 0.300837,
		30.297857, 44.161335, 28.862350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535477, 44.399632, 28.081665>,  <30.816591, 44.581535, 28.651764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535477, 44.399632, 28.081665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.261236, 44.278118, 28.346291>,  <30.096693, 44.205208, 28.505066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.261236, 44.278118, 28.346291>,  <30.535477, 44.399632, 28.081665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.261236, 44.278118, 28.346291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708156, 0.067678, -0.702805,
		0.168731, -0.950333, -0.261529,
		-0.685599, -0.303788, 0.661564,
		30.055557, 44.186981, 28.544760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278275, 43.695980, 27.917282>,  <30.535477, 44.399632, 28.081665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278275, 43.695980, 27.917282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983038, 43.866165, 28.126740>,  <29.805897, 43.968277, 28.252415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983038, 43.866165, 28.126740>,  <30.278275, 43.695980, 27.917282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983038, 43.866165, 28.126740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624435, -0.136809, -0.769002,
		-0.255543, -0.894575, 0.366651,
		-0.738092, 0.425463, 0.523643,
		29.761610, 43.993805, 28.283833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688747, 43.405045, 27.692190>,  <30.278275, 43.695980, 27.917282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688747, 43.405045, 27.692190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542782, 43.723515, 27.885246>,  <29.455202, 43.914597, 28.001080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542782, 43.723515, 27.885246>,  <29.688747, 43.405045, 27.692190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542782, 43.723515, 27.885246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720741, 0.086588, -0.687776,
		-0.589380, -0.598840, 0.542238,
		-0.364916, 0.796174, 0.482641,
		29.433308, 43.962368, 28.030039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839882, 43.280407, 27.718031>,  <29.688747, 43.405045, 27.692190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839882, 43.280407, 27.718031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928921, 43.667484, 27.765394>,  <28.982344, 43.899731, 27.793812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928921, 43.667484, 27.765394>,  <28.839882, 43.280407, 27.718031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928921, 43.667484, 27.765394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773973, 0.249263, -0.582095,
		-0.592804, 0.037928, 0.804453,
		0.222598, 0.967693, 0.118408,
		28.995701, 43.957790, 27.800917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126909, 43.613735, 27.874870>,  <28.839882, 43.280407, 27.718031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126909, 43.613735, 27.874870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366184, 43.907955, 27.747665>,  <28.509748, 44.084488, 27.671343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366184, 43.907955, 27.747665>,  <28.126909, 43.613735, 27.874870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366184, 43.907955, 27.747665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741743, 0.358022, -0.567131,
		-0.303299, 0.575134, 0.759757,
		0.598186, 0.735555, -0.318014,
		28.545641, 44.128620, 27.652262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747051, 44.258423, 27.910942>,  <28.126909, 43.613735, 27.874870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747051, 44.258423, 27.910942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052118, 44.320282, 27.659731>,  <28.235159, 44.357399, 27.509005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052118, 44.320282, 27.659731>,  <27.747051, 44.258423, 27.910942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052118, 44.320282, 27.659731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612197, 0.485894, -0.623797,
		0.208685, 0.860227, 0.465252,
		0.762670, 0.154648, -0.628027,
		28.280920, 44.366676, 27.471323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635349, 44.932068, 27.659122>,  <27.747051, 44.258423, 27.910942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635349, 44.932068, 27.659122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867830, 44.747200, 27.391211>,  <28.007318, 44.636280, 27.230463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.867830, 44.747200, 27.391211>,  <27.635349, 44.932068, 27.659122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867830, 44.747200, 27.391211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608124, 0.300237, -0.734876,
		0.540730, 0.834420, -0.106558,
		0.581202, -0.462170, -0.669778,
		28.042191, 44.608547, 27.190277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569937, 45.306801, 27.129065>,  <27.635349, 44.932068, 27.659122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569937, 45.306801, 27.129065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700333, 44.965851, 26.965508>,  <27.778570, 44.761280, 26.867374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.700333, 44.965851, 26.965508>,  <27.569937, 45.306801, 27.129065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700333, 44.965851, 26.965508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660535, 0.104066, -0.743548,
		0.676332, 0.512474, -0.529098,
		0.325988, -0.852373, -0.408890,
		27.798128, 44.710140, 26.842840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709146, 45.443199, 26.337656>,  <27.569937, 45.306801, 27.129065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709146, 45.443199, 26.337656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666412, 45.045738, 26.351778>,  <27.640772, 44.807262, 26.360252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666412, 45.045738, 26.351778>,  <27.709146, 45.443199, 26.337656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666412, 45.045738, 26.351778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688751, 0.048351, -0.723384,
		0.717083, -0.101602, -0.689543,
		-0.106837, -0.993650, 0.035307,
		27.634361, 44.747643, 26.362370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778622, 45.224644, 25.667936>,  <27.709146, 45.443199, 26.337656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778622, 45.224644, 25.667936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539280, 44.954990, 25.841150>,  <27.395674, 44.793198, 25.945078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.539280, 44.954990, 25.841150>,  <27.778622, 45.224644, 25.667936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.539280, 44.954990, 25.841150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698277, 0.173716, -0.694430,
		0.392912, -0.717892, -0.574674,
		-0.598356, -0.674131, 0.433032,
		27.359774, 44.752750, 25.971060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584438, 44.735706, 25.176668>,  <27.778622, 45.224644, 25.667936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584438, 44.735706, 25.176668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298090, 44.668407, 25.447733>,  <27.126282, 44.628029, 25.610371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298090, 44.668407, 25.447733>,  <27.584438, 44.735706, 25.176668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298090, 44.668407, 25.447733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697475, 0.127029, -0.705261,
		0.032575, -0.977526, -0.208283,
		-0.715869, -0.168246, 0.677661,
		27.083330, 44.617931, 25.651031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166302, 44.207462, 24.858372>,  <27.584438, 44.735706, 25.176668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166302, 44.207462, 24.858372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919462, 44.362156, 25.132488>,  <26.771358, 44.454971, 25.296959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919462, 44.362156, 25.132488>,  <27.166302, 44.207462, 24.858372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919462, 44.362156, 25.132488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731930, 0.037648, -0.680339,
		-0.288912, -0.921421, 0.259833,
		-0.617097, 0.386737, 0.685293,
		26.734333, 44.478176, 25.338076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874800, 43.409618, 24.958584>,  <27.166302, 44.207462, 24.858372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874800, 43.409618, 24.958584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861979, 43.168827, 24.639437>,  <26.854286, 43.024353, 24.447948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.861979, 43.168827, 24.639437>,  <26.874800, 43.409618, 24.958584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861979, 43.168827, 24.639437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342129, -0.756661, 0.557147,
		-0.939106, -0.255114, 0.230210,
		-0.032055, -0.601982, -0.797866,
		26.852362, 42.988232, 24.400076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553001, 42.875095, 25.151079>,  <26.874800, 43.409618, 24.958584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553001, 42.875095, 25.151079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.749689, 42.737755, 24.830999>,  <26.867702, 42.655350, 24.638952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.749689, 42.737755, 24.830999>,  <26.553001, 42.875095, 25.151079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749689, 42.737755, 24.830999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405852, -0.722677, 0.559484,
		-0.770388, -0.599871, -0.216002,
		0.491718, -0.343355, -0.800200,
		26.897205, 42.634750, 24.590939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709446, 42.178070, 25.347231>,  <26.553001, 42.875095, 25.151079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709446, 42.178070, 25.347231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965025, 42.233780, 25.044615>,  <27.118372, 42.267204, 24.863045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965025, 42.233780, 25.044615>,  <26.709446, 42.178070, 25.347231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965025, 42.233780, 25.044615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562289, -0.755704, 0.335772,
		-0.524957, -0.639933, -0.561165,
		0.638946, 0.139271, -0.756539,
		27.156708, 42.275562, 24.817654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808012, 41.542381, 25.077711>,  <26.709446, 42.178070, 25.347231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808012, 41.542381, 25.077711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133295, 41.750774, 24.973961>,  <27.328465, 41.875809, 24.911711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133295, 41.750774, 24.973961>,  <26.808012, 41.542381, 25.077711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133295, 41.750774, 24.973961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577267, -0.665511, 0.473136,
		0.073878, -0.534485, -0.841943,
		0.813207, 0.520980, -0.259374,
		27.377256, 41.907070, 24.896149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275129, 41.055805, 24.868786>,  <26.808012, 41.542381, 25.077711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275129, 41.055805, 24.868786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501776, 41.372974, 24.958427>,  <27.637764, 41.563274, 25.012213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501776, 41.372974, 24.958427>,  <27.275129, 41.055805, 24.868786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501776, 41.372974, 24.958427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475980, -0.536980, 0.696488,
		0.672598, -0.287974, -0.681676,
		0.566617, 0.792921, 0.224102,
		27.671761, 41.610851, 25.025658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887959, 40.714188, 24.887295>,  <27.275129, 41.055805, 24.868786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887959, 40.714188, 24.887295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899374, 41.058365, 25.090792>,  <27.906223, 41.264874, 25.212889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.899374, 41.058365, 25.090792>,  <27.887959, 40.714188, 24.887295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899374, 41.058365, 25.090792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685425, -0.387297, 0.616598,
		0.727584, 0.331108, -0.600824,
		0.028536, 0.860447, 0.508741,
		27.907934, 41.316498, 25.243414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593441, 40.694637, 24.970087>,  <27.887959, 40.714188, 24.887295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593441, 40.694637, 24.970087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412649, 40.943184, 25.226093>,  <28.304174, 41.092312, 25.379696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.412649, 40.943184, 25.226093>,  <28.593441, 40.694637, 24.970087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412649, 40.943184, 25.226093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515253, -0.403828, 0.755935,
		0.728169, 0.671434, -0.137641,
		-0.451977, 0.621368, 0.640014,
		28.277056, 41.129593, 25.418097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086271, 40.821674, 25.420593>,  <28.593441, 40.694637, 24.970087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086271, 40.821674, 25.420593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745245, 40.918713, 25.605755>,  <28.540630, 40.976936, 25.716852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.745245, 40.918713, 25.605755>,  <29.086271, 40.821674, 25.420593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745245, 40.918713, 25.605755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341609, -0.411642, 0.844899,
		0.395523, 0.878463, 0.268076,
		-0.852564, 0.242599, 0.462905,
		28.489475, 40.991493, 25.744627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747545, 40.492065, 25.510689>,  <29.086271, 40.821674, 25.420593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747545, 40.492065, 25.510689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927778, 40.163288, 25.371325>,  <30.035917, 39.966022, 25.287706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.927778, 40.163288, 25.371325>,  <29.747545, 40.492065, 25.510689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927778, 40.163288, 25.371325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381353, 0.175661, -0.907586,
		0.807184, 0.541809, -0.234300,
		0.450581, -0.821940, -0.348411,
		30.062952, 39.916706, 25.266802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959291, 40.656158, 24.884449>,  <29.747545, 40.492065, 25.510689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959291, 40.656158, 24.884449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.972517, 40.258045, 24.847984>,  <29.980452, 40.019176, 24.826105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.972517, 40.258045, 24.847984>,  <29.959291, 40.656158, 24.884449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972517, 40.258045, 24.847984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368616, 0.072639, -0.926739,
		0.928993, 0.064244, -0.364477,
		0.033062, -0.995287, -0.091162,
		29.982435, 39.959457, 24.820635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395584, 40.462414, 24.253946>,  <29.959291, 40.656158, 24.884449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395584, 40.462414, 24.253946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.137209, 40.172222, 24.348972>,  <29.982183, 39.998108, 24.405989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.137209, 40.172222, 24.348972>,  <30.395584, 40.462414, 24.253946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137209, 40.172222, 24.348972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371289, 0.026654, -0.928135,
		0.667013, -0.687724, -0.286580,
		-0.645940, -0.725482, 0.237566,
		29.943426, 39.954578, 24.420242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471720, 39.980896, 23.804668>,  <30.395584, 40.462414, 24.253946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471720, 39.980896, 23.804668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098610, 39.927788, 23.938717>,  <29.874744, 39.895924, 24.019146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.098610, 39.927788, 23.938717>,  <30.471720, 39.980896, 23.804668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098610, 39.927788, 23.938717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321534, -0.113792, -0.940036,
		0.162946, -0.984593, 0.063451,
		-0.932772, -0.132774, 0.335122,
		29.818779, 39.887955, 24.039253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099840, 39.888973, 23.240839>,  <30.471720, 39.980896, 23.804668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099840, 39.888973, 23.240839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778505, 39.882591, 23.478964>,  <29.585705, 39.878761, 23.621840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778505, 39.882591, 23.478964>,  <30.099840, 39.888973, 23.240839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778505, 39.882591, 23.478964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592910, -0.072173, -0.802028,
		0.055760, -0.997265, 0.048520,
		-0.803336, -0.015953, 0.595312,
		29.537504, 39.877808, 23.657557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670807, 39.252518, 23.081526>,  <30.099840, 39.888973, 23.240839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670807, 39.252518, 23.081526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420759, 39.521755, 23.239597>,  <29.270731, 39.683300, 23.334440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420759, 39.521755, 23.239597>,  <29.670807, 39.252518, 23.081526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420759, 39.521755, 23.239597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568362, -0.045531, -0.821518,
		-0.534968, -0.738151, 0.411025,
		-0.625119, 0.673097, 0.395180,
		29.233223, 39.723682, 23.358150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044178, 38.964653, 22.968369>,  <29.670807, 39.252518, 23.081526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044178, 38.964653, 22.968369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988527, 39.359982, 22.993219>,  <28.955137, 39.597179, 23.008129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988527, 39.359982, 22.993219>,  <29.044178, 38.964653, 22.968369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988527, 39.359982, 22.993219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445146, -0.006376, -0.895435,
		-0.884584, -0.152233, 0.440836,
		-0.139125, 0.988324, 0.062126,
		28.946789, 39.656479, 23.011858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496702, 39.045807, 22.596748>,  <29.044178, 38.964653, 22.968369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496702, 39.045807, 22.596748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.670908, 39.405697, 22.608217>,  <28.775431, 39.621632, 22.615099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.670908, 39.405697, 22.608217>,  <28.496702, 39.045807, 22.596748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670908, 39.405697, 22.608217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491700, 0.264445, -0.829638,
		-0.754029, 0.347221, 0.557565,
		0.435513, 0.899726, 0.028671,
		28.801561, 39.675613, 22.616819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980541, 39.481705, 22.383064>,  <28.496702, 39.045807, 22.596748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980541, 39.481705, 22.383064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326042, 39.671482, 22.315142>,  <28.533342, 39.785351, 22.274389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326042, 39.671482, 22.315142>,  <27.980541, 39.481705, 22.383064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326042, 39.671482, 22.315142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282296, 0.176444, -0.942962,
		-0.417425, 0.862419, 0.286338,
		0.863751, 0.474448, -0.169806,
		28.585167, 39.813816, 22.264200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.556000, 35.416527, 36.435688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802547, 35.650311, 36.224598>,  <34.950478, 35.790581, 36.097942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.802547, 35.650311, 36.224598>,  <34.556000, 35.416527, 36.435688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802547, 35.650311, 36.224598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782531, 0.379775, -0.493373,
		-0.087936, 0.717065, 0.691436,
		0.616371, 0.584456, -0.527730,
		34.987457, 35.825645, 36.066280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149426, 35.941570, 36.224815>,  <34.556000, 35.416527, 36.435688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149426, 35.941570, 36.224815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458431, 35.971027, 35.972530>,  <34.643833, 35.988701, 35.821159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458431, 35.971027, 35.972530>,  <34.149426, 35.941570, 36.224815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458431, 35.971027, 35.972530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611121, 0.356028, -0.706948,
		0.172494, 0.931569, 0.320039,
		0.772514, 0.073638, -0.630714,
		34.690186, 35.993118, 35.783318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053596, 36.633629, 35.922382>,  <34.149426, 35.941570, 36.224815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053596, 36.633629, 35.922382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260624, 36.413185, 35.660576>,  <34.384842, 36.280918, 35.503490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260624, 36.413185, 35.660576>,  <34.053596, 36.633629, 35.922382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260624, 36.413185, 35.660576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579115, 0.337487, -0.742111,
		0.629878, 0.763137, -0.144484,
		0.517571, -0.551112, -0.654519,
		34.415894, 36.247852, 35.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129227, 37.116955, 35.390999>,  <34.053596, 36.633629, 35.922382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129227, 37.116955, 35.390999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185368, 36.765179, 35.209061>,  <34.219051, 36.554111, 35.099899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.185368, 36.765179, 35.209061>,  <34.129227, 37.116955, 35.390999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185368, 36.765179, 35.209061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382842, 0.375456, -0.844077,
		0.913089, 0.292605, -0.283989,
		0.140356, -0.879440, -0.454846,
		34.227474, 36.501347, 35.072605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508732, 37.055817, 34.697437>,  <34.129227, 37.116955, 35.390999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508732, 37.055817, 34.697437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306503, 36.710705, 34.698132>,  <34.185165, 36.503635, 34.698547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306503, 36.710705, 34.698132>,  <34.508732, 37.055817, 34.697437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306503, 36.710705, 34.698132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337017, 0.195632, -0.920949,
		0.794239, -0.466192, -0.389679,
		-0.505572, -0.862782, 0.001737,
		34.154831, 36.451870, 34.698654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676468, 36.701729, 34.071804>,  <34.508732, 37.055817, 34.697437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676468, 36.701729, 34.071804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358227, 36.487724, 34.185493>,  <34.167282, 36.359322, 34.253708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.358227, 36.487724, 34.185493>,  <34.676468, 36.701729, 34.071804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358227, 36.487724, 34.185493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290404, -0.074941, -0.953965,
		0.531682, -0.841515, -0.095746,
		-0.795600, -0.535011, 0.284224,
		34.119545, 36.327221, 34.270760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789566, 36.100456, 33.678112>,  <34.676468, 36.701729, 34.071804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789566, 36.100456, 33.678112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406185, 36.113205, 33.791496>,  <34.176155, 36.120853, 33.859528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406185, 36.113205, 33.791496>,  <34.789566, 36.100456, 33.678112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406185, 36.113205, 33.791496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274855, -0.368924, -0.887891,
		0.076280, -0.928913, 0.362355,
		-0.958455, 0.031866, 0.283458,
		34.118649, 36.122765, 33.876534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489948, 35.523544, 33.326206>,  <34.789566, 36.100456, 33.678112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489948, 35.523544, 33.326206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169735, 35.734447, 33.440155>,  <33.977608, 35.860989, 33.508522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169735, 35.734447, 33.440155>,  <34.489948, 35.523544, 33.326206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169735, 35.734447, 33.440155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423045, -0.160492, -0.891782,
		-0.424481, -0.834410, 0.351533,
		-0.800530, 0.527259, 0.284867,
		33.929577, 35.892624, 33.525616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836555, 35.095901, 33.159920>,  <34.489948, 35.523544, 33.326206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836555, 35.095901, 33.159920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736614, 35.482151, 33.188618>,  <33.676651, 35.713902, 33.205837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.736614, 35.482151, 33.188618>,  <33.836555, 35.095901, 33.159920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736614, 35.482151, 33.188618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479005, -0.058863, -0.875836,
		-0.841504, -0.253195, 0.477245,
		-0.249849, 0.965623, 0.071748,
		33.661659, 35.771839, 33.210144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204876, 35.133636, 32.918949>,  <33.836555, 35.095901, 33.159920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204876, 35.133636, 32.918949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288357, 35.524826, 32.918030>,  <33.338448, 35.759541, 32.917480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.288357, 35.524826, 32.918030>,  <33.204876, 35.133636, 32.918949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288357, 35.524826, 32.918030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461373, 0.096388, -0.881955,
		-0.862310, 0.185127, 0.471328,
		0.208704, 0.977976, -0.002297,
		33.350967, 35.818218, 32.917339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575516, 35.358730, 32.685558>,  <33.204876, 35.133636, 32.918949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575516, 35.358730, 32.685558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842987, 35.650124, 32.625977>,  <33.003468, 35.824959, 32.590229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842987, 35.650124, 32.625977>,  <32.575516, 35.358730, 32.685558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842987, 35.650124, 32.625977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374540, 0.156935, -0.913833,
		-0.642335, 0.666847, 0.377785,
		0.668674, 0.728482, -0.148956,
		33.043591, 35.868668, 32.581291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152328, 36.043980, 32.350754>,  <32.575516, 35.358730, 32.685558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152328, 36.043980, 32.350754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547043, 36.057274, 32.287331>,  <32.783871, 36.065250, 32.249275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547043, 36.057274, 32.287331>,  <32.152328, 36.043980, 32.350754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547043, 36.057274, 32.287331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161898, 0.238176, -0.957633,
		0.005939, 0.970653, 0.240410,
		0.986790, 0.033235, -0.158562,
		32.843079, 36.067245, 32.239761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474279, 36.443306, 32.402832>,  <32.152328, 36.043980, 32.350754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474279, 36.443306, 32.402832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203295, 36.150379, 32.375244>,  <31.040705, 35.974625, 32.358692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203295, 36.150379, 32.375244>,  <31.474279, 36.443306, 32.402832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203295, 36.150379, 32.375244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065634, -0.153578, 0.985955,
		-0.732625, 0.663418, 0.152108,
		-0.677460, -0.732318, -0.068972,
		31.000057, 35.930683, 32.354553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999935, 36.442234, 33.010345>,  <31.474279, 36.443306, 32.402832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999935, 36.442234, 33.010345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963005, 36.065121, 32.882195>,  <30.940847, 35.838852, 32.805305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963005, 36.065121, 32.882195>,  <30.999935, 36.442234, 33.010345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963005, 36.065121, 32.882195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024308, -0.323790, 0.945817,
		-0.995432, 0.079534, 0.052810,
		-0.092324, -0.942780, -0.320378,
		30.935308, 35.782288, 32.786079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411282, 36.217464, 33.409885>,  <30.999935, 36.442234, 33.010345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411282, 36.217464, 33.409885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.624357, 35.908634, 33.271236>,  <30.752203, 35.723335, 33.188049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.624357, 35.908634, 33.271236>,  <30.411282, 36.217464, 33.409885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624357, 35.908634, 33.271236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010966, -0.415829, 0.909377,
		-0.846239, -0.480616, -0.229975,
		0.532691, -0.772072, -0.346621,
		30.784164, 35.677013, 33.167252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053461, 35.691292, 33.699192>,  <30.411282, 36.217464, 33.409885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053461, 35.691292, 33.699192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406235, 35.525398, 33.609581>,  <30.617899, 35.425861, 33.555813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.406235, 35.525398, 33.609581>,  <30.053461, 35.691292, 33.699192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406235, 35.525398, 33.609581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064863, -0.363974, 0.929148,
		-0.466891, -0.833977, -0.294100,
		0.881932, -0.414735, -0.224031,
		30.670815, 35.400978, 33.542374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095163, 35.009880, 33.827099>,  <30.053461, 35.691292, 33.699192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095163, 35.009880, 33.827099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471996, 35.143883, 33.833485>,  <30.698095, 35.224285, 33.837315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471996, 35.143883, 33.833485>,  <30.095163, 35.009880, 33.827099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471996, 35.143883, 33.833485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066033, -0.231941, 0.970486,
		0.328821, -0.913222, -0.240628,
		0.942081, 0.335006, 0.015965,
		30.754622, 35.244385, 33.838272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377491, 34.609348, 34.346378>,  <30.095163, 35.009880, 33.827099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377491, 34.609348, 34.346378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.671501, 34.874744, 34.290497>,  <30.847908, 35.033981, 34.256966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.671501, 34.874744, 34.290497>,  <30.377491, 34.609348, 34.346378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671501, 34.874744, 34.290497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275839, -0.104380, 0.955520,
		0.619396, -0.740867, -0.259739,
		0.735025, 0.663491, -0.139708,
		30.892008, 35.073792, 34.248585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918224, 34.294308, 34.688007>,  <30.377491, 34.609348, 34.346378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918224, 34.294308, 34.688007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.048185, 34.671158, 34.654911>,  <31.126162, 34.897266, 34.635052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.048185, 34.671158, 34.654911>,  <30.918224, 34.294308, 34.688007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048185, 34.671158, 34.654911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503665, -0.098315, 0.858286,
		0.800474, -0.320535, -0.506456,
		0.324903, 0.942121, -0.082744,
		31.145657, 34.953793, 34.630089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602785, 34.241348, 34.807640>,  <30.918224, 34.294308, 34.688007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602785, 34.241348, 34.807640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443756, 34.601646, 34.877602>,  <31.348339, 34.817825, 34.919579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.443756, 34.601646, 34.877602>,  <31.602785, 34.241348, 34.807640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443756, 34.601646, 34.877602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215009, -0.093859, 0.972091,
		0.892024, 0.424084, -0.156352,
		-0.397574, 0.900746, 0.174907,
		31.324484, 34.871872, 34.930073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156723, 34.602528, 35.143456>,  <31.602785, 34.241348, 34.807640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156723, 34.602528, 35.143456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830750, 34.801075, 35.263123>,  <31.635166, 34.920204, 35.334923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830750, 34.801075, 35.263123>,  <32.156723, 34.602528, 35.143456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830750, 34.801075, 35.263123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248300, -0.167406, 0.954108,
		0.523673, 0.851817, 0.013176,
		-0.814932, 0.496369, 0.299172,
		31.586269, 34.949986, 35.352875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391720, 35.026226, 35.611599>,  <32.156723, 34.602528, 35.143456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391720, 35.026226, 35.611599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998041, 34.996918, 35.676086>,  <31.761835, 34.979332, 35.714779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.998041, 34.996918, 35.676086>,  <32.391720, 35.026226, 35.611599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998041, 34.996918, 35.676086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174356, -0.241555, 0.954595,
		-0.031001, 0.967617, 0.250513,
		-0.984195, -0.073271, 0.161222,
		31.702784, 34.974937, 35.724453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264423, 35.475964, 36.162331>,  <32.391720, 35.026226, 35.611599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264423, 35.475964, 36.162331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931486, 35.254269, 36.160172>,  <31.731724, 35.121250, 36.158878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.931486, 35.254269, 36.160172>,  <32.264423, 35.475964, 36.162331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931486, 35.254269, 36.160172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113654, -0.180192, 0.977043,
		-0.542489, 0.812618, 0.212972,
		-0.832339, -0.554240, -0.005395,
		31.681784, 35.087997, 36.158554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850519, 35.696541, 36.680553>,  <32.264423, 35.475964, 36.162331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850519, 35.696541, 36.680553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689249, 35.332375, 36.643471>,  <31.592487, 35.113876, 36.621220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689249, 35.332375, 36.643471>,  <31.850519, 35.696541, 36.680553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689249, 35.332375, 36.643471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047231, -0.121872, 0.991421,
		-0.913902, 0.395340, 0.092136,
		-0.403177, -0.910414, -0.092707,
		31.568296, 35.059250, 36.615658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.376541, 35.672791, 37.186291>,  <31.850519, 35.696541, 36.680553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.376541, 35.672791, 37.186291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449162, 35.291214, 37.090759>,  <31.492733, 35.062267, 37.033440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449162, 35.291214, 37.090759>,  <31.376541, 35.672791, 37.186291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449162, 35.291214, 37.090759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216601, -0.198110, 0.955948,
		-0.959231, -0.225284, 0.170657,
		0.181551, -0.953939, -0.238830,
		31.503626, 35.005032, 37.019112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656738, 36.340935, 37.000431>,  <31.376541, 35.672791, 37.186291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656738, 36.340935, 37.000431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816048, 36.253044, 36.644207>,  <31.911634, 36.200310, 36.430473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816048, 36.253044, 36.644207>,  <31.656738, 36.340935, 37.000431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816048, 36.253044, 36.644207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242639, -0.911063, 0.333302,
		-0.884592, -0.348830, -0.309539,
		0.398275, -0.219730, -0.890559,
		31.935530, 36.187126, 36.377041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161564, 36.808365, 36.914711>,  <31.656738, 36.340935, 37.000431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161564, 36.808365, 36.914711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802275, 36.963337, 36.831680>,  <31.586700, 37.056320, 36.781860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.802275, 36.963337, 36.831680>,  <32.161564, 36.808365, 36.914711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802275, 36.963337, 36.831680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389251, 0.481824, -0.785066,
		-0.204139, -0.785968, -0.583593,
		-0.898227, 0.387427, -0.207580,
		31.532806, 37.079563, 36.769405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939766, 36.679569, 36.142155>,  <32.161564, 36.808365, 36.914711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939766, 36.679569, 36.142155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771658, 37.000992, 36.310760>,  <31.670794, 37.193844, 36.411922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.771658, 37.000992, 36.310760>,  <31.939766, 36.679569, 36.142155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771658, 37.000992, 36.310760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358216, 0.573725, -0.736560,
		-0.833699, -0.158561, -0.528965,
		-0.420270, 0.803554, 0.421515,
		31.645576, 37.242058, 36.437214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529856, 37.059250, 35.718330>,  <31.939766, 36.679569, 36.142155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529856, 37.059250, 35.718330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729803, 37.292740, 35.974266>,  <31.849771, 37.432835, 36.127827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729803, 37.292740, 35.974266>,  <31.529856, 37.059250, 35.718330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729803, 37.292740, 35.974266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256341, 0.605949, -0.753070,
		-0.827296, 0.540454, 0.153264,
		0.499870, 0.583724, 0.639840,
		31.879765, 37.467857, 36.166218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348936, 37.784466, 35.807808>,  <31.529856, 37.059250, 35.718330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348936, 37.784466, 35.807808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739344, 37.757641, 35.890648>,  <31.973589, 37.741547, 35.940353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739344, 37.757641, 35.890648>,  <31.348936, 37.784466, 35.807808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739344, 37.757641, 35.890648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208294, 0.564175, -0.798949,
		-0.063259, 0.822927, 0.564614,
		0.976018, -0.067066, 0.207100,
		32.032150, 37.737522, 35.952778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625805, 38.440720, 35.890778>,  <31.348936, 37.784466, 35.807808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625805, 38.440720, 35.890778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924931, 38.207359, 35.764027>,  <32.104404, 38.067341, 35.687977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.924931, 38.207359, 35.764027>,  <31.625805, 38.440720, 35.890778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924931, 38.207359, 35.764027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089209, 0.561264, -0.822815,
		0.657888, 0.587044, 0.471766,
		0.747814, -0.583405, -0.316879,
		32.149273, 38.032337, 35.668964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268265, 38.808304, 35.720692>,  <31.625805, 38.440720, 35.890778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268265, 38.808304, 35.720692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.285622, 38.480907, 35.491543>,  <32.296036, 38.284470, 35.354053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.285622, 38.480907, 35.491543>,  <32.268265, 38.808304, 35.720692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285622, 38.480907, 35.491543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112812, 0.573762, -0.811216,
		0.992668, -0.029424, 0.117234,
		0.043395, -0.818494, -0.572874,
		32.298641, 38.235359, 35.319679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627945, 39.022827, 35.170483>,  <32.268265, 38.808304, 35.720692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627945, 39.022827, 35.170483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.461891, 38.694332, 35.013908>,  <32.362259, 38.497234, 34.919964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.461891, 38.694332, 35.013908>,  <32.627945, 39.022827, 35.170483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461891, 38.694332, 35.013908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073100, 0.458986, -0.885431,
		0.906817, -0.338962, -0.250576,
		-0.415138, -0.821241, -0.391438,
		32.337349, 38.447960, 34.896477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005814, 38.976463, 34.585201>,  <32.627945, 39.022827, 35.170483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005814, 38.976463, 34.585201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675388, 38.753948, 34.549057>,  <32.477135, 38.620441, 34.527370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.675388, 38.753948, 34.549057>,  <33.005814, 38.976463, 34.585201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675388, 38.753948, 34.549057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117943, 0.327430, -0.937485,
		0.551097, -0.763765, -0.336088,
		-0.826064, -0.556285, -0.090365,
		32.427570, 38.587063, 34.521946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065693, 38.603664, 33.931049>,  <33.005814, 38.976463, 34.585201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065693, 38.603664, 33.931049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671036, 38.598083, 33.995975>,  <32.434242, 38.594734, 34.034931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671036, 38.598083, 33.995975>,  <33.065693, 38.603664, 33.931049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671036, 38.598083, 33.995975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155165, 0.384085, -0.910166,
		-0.049644, -0.923192, -0.381119,
		-0.986640, -0.013952, 0.162315,
		32.375042, 38.593899, 34.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849056, 38.248322, 33.330296>,  <33.065693, 38.603664, 33.931049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849056, 38.248322, 33.330296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573444, 38.486568, 33.495453>,  <32.408077, 38.629517, 33.594547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573444, 38.486568, 33.495453>,  <32.849056, 38.248322, 33.330296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573444, 38.486568, 33.495453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128951, 0.459871, -0.878573,
		-0.713170, -0.658605, -0.240059,
		-0.689029, 0.595616, 0.412894,
		32.366737, 38.665253, 33.619320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344112, 38.294064, 32.748241>,  <32.849056, 38.248322, 33.330296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344112, 38.294064, 32.748241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266270, 38.582855, 33.013836>,  <32.219566, 38.756130, 33.173195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266270, 38.582855, 33.013836>,  <32.344112, 38.294064, 32.748241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266270, 38.582855, 33.013836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396387, 0.561310, -0.726505,
		-0.897222, -0.404577, 0.176948,
		-0.194605, 0.721976, 0.663988,
		32.207890, 38.799446, 33.213032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818413, 38.729904, 32.473785>,  <32.344112, 38.294064, 32.748241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818413, 38.729904, 32.473785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.953781, 38.977253, 32.757500>,  <32.035004, 39.125664, 32.927727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.953781, 38.977253, 32.757500>,  <31.818413, 38.729904, 32.473785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953781, 38.977253, 32.757500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170216, 0.781552, -0.600169,
		-0.925471, 0.082379, 0.369752,
		0.338422, 0.618377, 0.709282,
		32.055309, 39.162766, 32.970284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294205, 39.307335, 32.511761>,  <31.818413, 38.729904, 32.473785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294205, 39.307335, 32.511761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649584, 39.420105, 32.656635>,  <31.862812, 39.487766, 32.743561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.649584, 39.420105, 32.656635>,  <31.294205, 39.307335, 32.511761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649584, 39.420105, 32.656635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064464, 0.857938, -0.509694,
		-0.454425, 0.429489, 0.780408,
		0.888449, 0.281926, 0.362182,
		31.916119, 39.504684, 32.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188816, 39.958176, 32.571434>,  <31.294205, 39.307335, 32.511761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188816, 39.958176, 32.571434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586403, 39.914352, 32.573380>,  <31.824955, 39.888058, 32.574547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586403, 39.914352, 32.573380>,  <31.188816, 39.958176, 32.571434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586403, 39.914352, 32.573380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102537, 0.912680, -0.395604,
		0.038905, 0.393716, 0.918409,
		0.993968, -0.109561, 0.004863,
		31.884594, 39.881485, 32.574837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312160, 40.602932, 32.647873>,  <31.188816, 39.958176, 32.571434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312160, 40.602932, 32.647873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641005, 40.422306, 32.509178>,  <31.838310, 40.313931, 32.425961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641005, 40.422306, 32.509178>,  <31.312160, 40.602932, 32.647873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641005, 40.422306, 32.509178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224791, 0.817003, -0.531013,
		0.523072, 0.358607, 0.773173,
		0.822110, -0.451561, -0.346740,
		31.887638, 40.286839, 32.405155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952168, 40.994858, 32.776718>,  <31.312160, 40.602932, 32.647873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952168, 40.994858, 32.776718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.032524, 40.764671, 32.459610>,  <32.080738, 40.626560, 32.269344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.032524, 40.764671, 32.459610>,  <31.952168, 40.994858, 32.776718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032524, 40.764671, 32.459610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255552, 0.812032, -0.524688,
		0.945693, -0.097187, 0.310192,
		0.200893, -0.575464, -0.792769,
		32.092793, 40.592033, 32.221779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617855, 41.176746, 32.550934>,  <31.952168, 40.994858, 32.776718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617855, 41.176746, 32.550934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433460, 41.006012, 32.239727>,  <32.322823, 40.903572, 32.053005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433460, 41.006012, 32.239727>,  <32.617855, 41.176746, 32.550934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433460, 41.006012, 32.239727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096211, 0.847520, -0.521971,
		0.882177, -0.315474, -0.349627,
		-0.460984, -0.426832, -0.778015,
		32.295166, 40.877964, 32.006321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770489, 41.617645, 31.982578>,  <32.617855, 41.176746, 32.550934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770489, 41.617645, 31.982578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485462, 41.393635, 31.813526>,  <32.314445, 41.259228, 31.712095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485462, 41.393635, 31.813526>,  <32.770489, 41.617645, 31.982578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485462, 41.393635, 31.813526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177609, 0.726743, -0.663552,
		0.678747, -0.397766, -0.617321,
		-0.712572, -0.560025, -0.422628,
		32.271690, 41.225628, 31.686737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874756, 41.697334, 31.262302>,  <32.770489, 41.617645, 31.982578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874756, 41.697334, 31.262302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492752, 41.585499, 31.301851>,  <32.263550, 41.518398, 31.325581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.492752, 41.585499, 31.301851>,  <32.874756, 41.697334, 31.262302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492752, 41.585499, 31.301851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275393, 0.712408, -0.645472,
		0.110030, -0.643664, -0.757357,
		-0.955014, -0.279592, 0.098874,
		32.206249, 41.501621, 31.331512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607872, 41.795399, 30.576166>,  <32.874756, 41.697334, 31.262302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607872, 41.795399, 30.576166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278931, 41.771519, 30.802498>,  <32.081566, 41.757191, 30.938297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278931, 41.771519, 30.802498>,  <32.607872, 41.795399, 30.576166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278931, 41.771519, 30.802498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481396, 0.603122, -0.636005,
		-0.303294, -0.795412, -0.524721,
		-0.822357, -0.059702, 0.565832,
		32.032223, 41.753609, 30.972248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989546, 41.691826, 30.095493>,  <32.607872, 41.795399, 30.576166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989546, 41.691826, 30.095493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811743, 41.834785, 30.424049>,  <31.705061, 41.920559, 30.621183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811743, 41.834785, 30.424049>,  <31.989546, 41.691826, 30.095493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811743, 41.834785, 30.424049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402772, 0.739297, -0.539644,
		-0.800118, -0.570708, -0.184673,
		-0.444507, 0.357397, 0.821390,
		31.678391, 41.942005, 30.670465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263977, 41.643600, 30.130417>,  <31.989546, 41.691826, 30.095493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263977, 41.643600, 30.130417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347410, 41.959522, 30.361137>,  <31.397470, 42.149075, 30.499569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347410, 41.959522, 30.361137>,  <31.263977, 41.643600, 30.130417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347410, 41.959522, 30.361137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605858, 0.567326, -0.557743,
		-0.767743, -0.233123, 0.596846,
		0.208583, 0.789807, 0.576800,
		31.409985, 42.196465, 30.534178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679651, 41.942421, 30.199024>,  <31.263977, 41.643600, 30.130417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679651, 41.942421, 30.199024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918049, 42.240562, 30.318518>,  <31.061087, 42.419449, 30.390213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918049, 42.240562, 30.318518>,  <30.679651, 41.942421, 30.199024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918049, 42.240562, 30.318518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465502, 0.623837, -0.627801,
		-0.654294, 0.235104, 0.718766,
		0.595992, 0.745354, 0.298731,
		31.096846, 42.464169, 30.408136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191088, 42.363968, 30.512896>,  <30.679651, 41.942421, 30.199024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191088, 42.363968, 30.512896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528811, 42.554394, 30.414499>,  <30.731443, 42.668648, 30.355461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528811, 42.554394, 30.414499>,  <30.191088, 42.363968, 30.512896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528811, 42.554394, 30.414499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531770, 0.687734, -0.494209,
		-0.066098, 0.548075, 0.833813,
		0.844305, 0.476063, -0.245992,
		30.782103, 42.697212, 30.340702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081568, 43.134357, 30.611860>,  <30.191088, 42.363968, 30.512896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081568, 43.134357, 30.611860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386301, 43.084923, 30.357512>,  <30.569141, 43.055260, 30.204903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386301, 43.084923, 30.357512>,  <30.081568, 43.134357, 30.611860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386301, 43.084923, 30.357512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357449, 0.738441, -0.571782,
		0.540221, 0.662896, 0.518392,
		0.761834, -0.123590, -0.635873,
		30.614851, 43.047844, 30.166750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274063, 43.805870, 30.448370>,  <30.081568, 43.134357, 30.611860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274063, 43.805870, 30.448370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.449858, 43.597786, 30.155457>,  <30.555334, 43.472935, 29.979710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.449858, 43.597786, 30.155457>,  <30.274063, 43.805870, 30.448370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449858, 43.597786, 30.155457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329222, 0.665216, -0.670150,
		0.835741, 0.535606, 0.121091,
		0.439488, -0.520206, -0.732281,
		30.581703, 43.441723, 29.935772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500004, 44.288609, 30.098269>,  <30.274063, 43.805870, 30.448370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500004, 44.288609, 30.098269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523245, 43.994606, 29.828045>,  <30.537189, 43.818203, 29.665911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.523245, 43.994606, 29.828045>,  <30.500004, 44.288609, 30.098269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523245, 43.994606, 29.828045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312039, 0.629427, -0.711655,
		0.948291, 0.252151, -0.192780,
		0.058103, -0.735011, -0.675561,
		30.540676, 43.774101, 29.625376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662928, 44.706680, 29.465782>,  <30.500004, 44.288609, 30.098269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662928, 44.706680, 29.465782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530405, 44.345646, 29.355816>,  <30.450891, 44.129025, 29.289837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530405, 44.345646, 29.355816>,  <30.662928, 44.706680, 29.465782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530405, 44.345646, 29.355816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364331, 0.391151, -0.845141,
		0.870344, -0.179842, -0.458431,
		-0.331308, -0.902584, -0.274914,
		30.431013, 44.074871, 29.273342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428759, 44.456871, 29.294741>,  <30.662928, 44.706680, 29.465782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428759, 44.456871, 29.294741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.781105, 44.577919, 29.149139>,  <31.992514, 44.650547, 29.061779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.781105, 44.577919, 29.149139>,  <31.428759, 44.456871, 29.294741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781105, 44.577919, 29.149139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471084, -0.484973, 0.736805,
		0.046437, -0.820502, -0.569754,
		0.880865, 0.302617, -0.364005,
		32.045364, 44.668705, 29.039938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871227, 43.885529, 29.201563>,  <31.428759, 44.456871, 29.294741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871227, 43.885529, 29.201563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132343, 44.187366, 29.228237>,  <32.289013, 44.368469, 29.244242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.132343, 44.187366, 29.228237>,  <31.871227, 43.885529, 29.201563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132343, 44.187366, 29.228237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492414, -0.489573, 0.719616,
		0.575669, -0.436920, -0.691163,
		0.652789, 0.754599, 0.066687,
		32.328178, 44.413746, 29.248243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430420, 43.559353, 29.074556>,  <31.871227, 43.885529, 29.201563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430420, 43.559353, 29.074556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501060, 43.889683, 29.288780>,  <32.543446, 44.087879, 29.417315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501060, 43.889683, 29.288780>,  <32.430420, 43.559353, 29.074556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501060, 43.889683, 29.288780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643821, -0.508493, 0.571778,
		0.744516, 0.243827, -0.621485,
		0.176606, 0.825823, 0.535562,
		32.554043, 44.137428, 29.449450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127335, 43.608017, 29.197796>,  <32.430420, 43.559353, 29.074556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127335, 43.608017, 29.197796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993778, 43.842579, 29.492998>,  <32.913647, 43.983315, 29.670120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993778, 43.842579, 29.492998>,  <33.127335, 43.608017, 29.197796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993778, 43.842579, 29.492998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753069, -0.304945, 0.583005,
		0.566926, 0.750427, -0.339784,
		-0.333888, 0.586402, 0.738005,
		32.893612, 44.018501, 29.714399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747108, 43.874878, 29.488632>,  <33.127335, 43.608017, 29.197796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747108, 43.874878, 29.488632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470188, 43.951263, 29.766985>,  <33.304035, 43.997093, 29.933996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470188, 43.951263, 29.766985>,  <33.747108, 43.874878, 29.488632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470188, 43.951263, 29.766985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615023, -0.348273, 0.707427,
		0.377448, 0.917737, 0.123664,
		-0.692300, 0.190961, 0.695884,
		33.262497, 44.008553, 29.975750>
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
