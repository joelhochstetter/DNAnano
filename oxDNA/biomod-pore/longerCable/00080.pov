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
	<24.796255, 35.355415, 34.842800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452236, 35.193165, 34.966599>,  <24.245825, 35.095814, 35.040878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452236, 35.193165, 34.966599>,  <24.796255, 35.355415, 34.842800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452236, 35.193165, 34.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510173, -0.676307, 0.531349,
		-0.006217, 0.614880, 0.788596,
		-0.860049, -0.405624, 0.309491,
		24.194221, 35.071476, 35.059444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.762674, 35.314835, 35.567112>,  <24.796255, 35.355415, 34.842800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.762674, 35.314835, 35.567112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573233, 35.005173, 35.399120>,  <24.459568, 34.819374, 35.298325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.573233, 35.005173, 35.399120>,  <24.762674, 35.314835, 35.567112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.573233, 35.005173, 35.399120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586403, -0.632961, 0.505462,
		-0.657137, -0.006889, 0.753740,
		-0.473606, -0.774153, -0.419982,
		24.431150, 34.772926, 35.273125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839813, 34.701015, 36.050053>,  <24.762674, 35.314835, 35.567112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839813, 34.701015, 36.050053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787676, 34.586685, 35.670303>,  <24.756393, 34.518085, 35.442455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.787676, 34.586685, 35.670303>,  <24.839813, 34.701015, 36.050053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787676, 34.586685, 35.670303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519152, -0.835457, 0.180256,
		-0.844684, -0.469374, 0.257287,
		-0.130345, -0.285830, -0.949374,
		24.748571, 34.500935, 35.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457396, 34.972179, 35.627850>,  <24.839813, 34.701015, 36.050053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457396, 34.972179, 35.627850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554300, 35.145973, 35.974842>,  <25.612444, 35.250248, 36.183037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.554300, 35.145973, 35.974842>,  <25.457396, 34.972179, 35.627850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554300, 35.145973, 35.974842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876961, 0.284413, -0.387360,
		-0.415027, 0.854594, -0.312124,
		0.242263, 0.434485, 0.867486,
		25.626980, 35.276318, 36.235088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815096, 35.474079, 35.479073>,  <25.457396, 34.972179, 35.627850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815096, 35.474079, 35.479073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918486, 35.430965, 35.863068>,  <25.980520, 35.405098, 36.093464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918486, 35.430965, 35.863068>,  <25.815096, 35.474079, 35.479073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918486, 35.430965, 35.863068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940638, 0.254377, -0.224707,
		-0.219979, 0.961080, 0.167135,
		0.258477, -0.107782, 0.959986,
		25.996029, 35.398632, 36.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875648, 36.070068, 35.910515>,  <25.815096, 35.474079, 35.479073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875648, 36.070068, 35.910515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116888, 35.770290, 36.019768>,  <26.261631, 35.590424, 36.085320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116888, 35.770290, 36.019768>,  <25.875648, 36.070068, 35.910515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116888, 35.770290, 36.019768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780366, 0.483418, -0.396656,
		0.165237, 0.452365, 0.876392,
		0.603097, -0.749449, 0.273132,
		26.297817, 35.545456, 36.101707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550056, 36.342945, 35.969780>,  <25.875648, 36.070068, 35.910515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550056, 36.342945, 35.969780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633940, 35.952003, 35.958481>,  <26.684271, 35.717438, 35.951702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633940, 35.952003, 35.958481>,  <26.550056, 36.342945, 35.969780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633940, 35.952003, 35.958481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778843, 0.184441, -0.599487,
		0.591122, 0.103718, 0.799886,
		0.209709, -0.977356, -0.028247,
		26.696852, 35.658798, 35.950008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204794, 36.292191, 36.301716>,  <26.550056, 36.342945, 35.969780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204794, 36.292191, 36.301716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201323, 36.000919, 36.027584>,  <27.199240, 35.826157, 35.863106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201323, 36.000919, 36.027584>,  <27.204794, 36.292191, 36.301716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201323, 36.000919, 36.027584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761265, 0.439579, -0.476703,
		0.648383, -0.525856, 0.550522,
		-0.008679, -0.728179, -0.685332,
		27.198719, 35.782467, 35.821983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824230, 36.160732, 36.332493>,  <27.204794, 36.292191, 36.301716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824230, 36.160732, 36.332493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661707, 36.052868, 35.983276>,  <27.564194, 35.988152, 35.773746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661707, 36.052868, 35.983276>,  <27.824230, 36.160732, 36.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661707, 36.052868, 35.983276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747978, 0.450637, -0.487293,
		0.524827, -0.851005, 0.018602,
		-0.406307, -0.269659, -0.873040,
		27.539814, 35.971970, 35.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430498, 35.939297, 35.938736>,  <27.824230, 36.160732, 36.332493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430498, 35.939297, 35.938736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146276, 36.044933, 35.677856>,  <27.975742, 36.108315, 35.521328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146276, 36.044933, 35.677856>,  <28.430498, 35.939297, 35.938736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146276, 36.044933, 35.677856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685706, 0.467834, -0.557619,
		0.157856, -0.843436, -0.513514,
		-0.710555, 0.264096, -0.652200,
		27.933109, 36.124161, 35.482197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720337, 35.885387, 35.290226>,  <28.430498, 35.939297, 35.938736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720337, 35.885387, 35.290226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416435, 36.137890, 35.227875>,  <28.234095, 36.289391, 35.190464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.416435, 36.137890, 35.227875>,  <28.720337, 35.885387, 35.290226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416435, 36.137890, 35.227875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581350, 0.552109, -0.597669,
		-0.291220, -0.544697, -0.786445,
		-0.759752, 0.631253, -0.155874,
		28.188509, 36.327267, 35.181114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698671, 36.222038, 34.717484>,  <28.720337, 35.885387, 35.290226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698671, 36.222038, 34.717484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619770, 36.589233, 34.855118>,  <28.572430, 36.809551, 34.937698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619770, 36.589233, 34.855118>,  <28.698671, 36.222038, 34.717484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619770, 36.589233, 34.855118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932220, 0.067013, 0.355634,
		0.303409, 0.390910, -0.868984,
		-0.197254, 0.917986, 0.344082,
		28.560595, 36.864628, 34.958344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290325, 36.640980, 34.352844>,  <28.698671, 36.222038, 34.717484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290325, 36.640980, 34.352844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128584, 36.704960, 34.713047>,  <29.031540, 36.743347, 34.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128584, 36.704960, 34.713047>,  <29.290325, 36.640980, 34.352844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128584, 36.704960, 34.713047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909923, -0.029131, 0.413753,
		0.092411, 0.986696, -0.133760,
		-0.404352, 0.159947, 0.900509,
		29.007278, 36.752945, 34.983200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079176, 37.233360, 34.802940>,  <29.290325, 36.640980, 34.352844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079176, 37.233360, 34.802940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762440, 37.477638, 34.800499>,  <28.572397, 37.624207, 34.799034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762440, 37.477638, 34.800499>,  <29.079176, 37.233360, 34.802940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762440, 37.477638, 34.800499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607807, -0.787040, 0.105541,
		0.059646, 0.087284, 0.994396,
		-0.791842, 0.610696, -0.006108,
		28.524887, 37.660847, 34.798668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666098, 37.280632, 35.408024>,  <29.079176, 37.233360, 34.802940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666098, 37.280632, 35.408024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423920, 37.326546, 35.092999>,  <28.278612, 37.354095, 34.903984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423920, 37.326546, 35.092999>,  <28.666098, 37.280632, 35.408024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423920, 37.326546, 35.092999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522259, -0.803999, 0.284309,
		-0.600568, 0.583447, 0.546725,
		-0.605445, 0.114785, -0.787566,
		28.242287, 37.360981, 34.856728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891258, 37.225132, 35.571411>,  <28.666098, 37.280632, 35.408024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891258, 37.225132, 35.571411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969542, 37.113441, 35.195381>,  <28.016512, 37.046429, 34.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969542, 37.113441, 35.195381>,  <27.891258, 37.225132, 35.571411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969542, 37.113441, 35.195381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592595, -0.797465, 0.113498,
		-0.781364, 0.534868, -0.321536,
		0.195708, -0.279224, -0.940070,
		28.028254, 37.029675, 34.913361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240442, 37.143406, 35.091835>,  <27.891258, 37.225132, 35.571411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240442, 37.143406, 35.091835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532356, 36.871555, 35.062119>,  <27.707504, 36.708447, 35.044289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532356, 36.871555, 35.062119>,  <27.240442, 37.143406, 35.091835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532356, 36.871555, 35.062119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632892, -0.712677, 0.302553,
		-0.258570, -0.173780, -0.950233,
		0.729787, -0.679626, -0.074293,
		27.751293, 36.667667, 35.039829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987160, 36.515430, 34.683655>,  <27.240442, 37.143406, 35.091835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987160, 36.515430, 34.683655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285315, 36.387794, 34.917774>,  <27.464207, 36.311211, 35.058247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285315, 36.387794, 34.917774>,  <26.987160, 36.515430, 34.683655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285315, 36.387794, 34.917774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582296, -0.739101, 0.338616,
		0.324548, -0.593219, -0.736722,
		0.745386, -0.319093, 0.585303,
		27.508930, 36.292065, 35.093365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043444, 35.837246, 34.496521>,  <26.987160, 36.515430, 34.683655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043444, 35.837246, 34.496521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192984, 35.888355, 34.863979>,  <27.282707, 35.919022, 35.084454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192984, 35.888355, 34.863979>,  <27.043444, 35.837246, 34.496521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192984, 35.888355, 34.863979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639457, -0.681920, 0.355078,
		0.671812, -0.720180, -0.173230,
		0.373849, 0.127772, 0.918647,
		27.305138, 35.926685, 35.139572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800306, 35.267544, 34.706615>,  <27.043444, 35.837246, 34.496521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800306, 35.267544, 34.706615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942938, 35.416508, 35.049347>,  <27.028517, 35.505886, 35.254986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942938, 35.416508, 35.049347>,  <26.800306, 35.267544, 34.706615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942938, 35.416508, 35.049347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650975, -0.558798, 0.513786,
		0.670136, -0.740982, 0.043174,
		0.356581, 0.372411, 0.856831,
		27.049911, 35.528233, 35.306396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024818, 34.669346, 35.067238>,  <26.800306, 35.267544, 34.706615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024818, 34.669346, 35.067238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937305, 34.994614, 35.282974>,  <26.884798, 35.189774, 35.412415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937305, 34.994614, 35.282974>,  <27.024818, 34.669346, 35.067238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937305, 34.994614, 35.282974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562588, -0.556732, 0.611182,
		0.797263, -0.169709, 0.579285,
		-0.218783, 0.813172, 0.539338,
		26.871670, 35.238564, 35.444775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898909, 34.422348, 35.727982>,  <27.024818, 34.669346, 35.067238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898909, 34.422348, 35.727982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843527, 34.808701, 35.815521>,  <26.810297, 35.040512, 35.868046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843527, 34.808701, 35.815521>,  <26.898909, 34.422348, 35.727982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843527, 34.808701, 35.815521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609648, -0.257272, 0.749760,
		0.780487, -0.029616, 0.624470,
		-0.138454, 0.965885, 0.218852,
		26.801991, 35.098465, 35.881176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980827, 34.491993, 36.468025>,  <26.898909, 34.422348, 35.727982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980827, 34.491993, 36.468025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759674, 34.805622, 36.355206>,  <26.626982, 34.993801, 36.287514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759674, 34.805622, 36.355206>,  <26.980827, 34.491993, 36.468025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759674, 34.805622, 36.355206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653424, -0.197921, 0.730661,
		0.517067, 0.588267, 0.621758,
		-0.552883, 0.784072, -0.282049,
		26.593809, 35.040844, 36.270592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044928, 34.376625, 37.080891>,  <26.980827, 34.491993, 36.468025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044928, 34.376625, 37.080891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308571, 34.659611, 36.978851>,  <27.466757, 34.829403, 36.917629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308571, 34.659611, 36.978851>,  <27.044928, 34.376625, 37.080891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308571, 34.659611, 36.978851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742229, -0.557298, 0.372177,
		0.121136, -0.434644, -0.892418,
		0.659107, 0.707463, -0.255096,
		27.506304, 34.871849, 36.902321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533331, 34.046322, 36.771442>,  <27.044928, 34.376625, 37.080891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533331, 34.046322, 36.771442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659653, 34.385178, 36.942383>,  <27.735445, 34.588490, 37.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659653, 34.385178, 36.942383>,  <27.533331, 34.046322, 36.771442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659653, 34.385178, 36.942383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638927, -0.522844, 0.564276,
		0.701457, 0.094847, -0.706373,
		0.315803, 0.847135, 0.427353,
		27.754395, 34.639317, 37.070587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091589, 33.640785, 36.489552>,  <27.533331, 34.046322, 36.771442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091589, 33.640785, 36.489552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992100, 33.262741, 36.574318>,  <27.932405, 33.035915, 36.625179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992100, 33.262741, 36.574318>,  <28.091589, 33.640785, 36.489552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992100, 33.262741, 36.574318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857742, -0.113295, 0.501440,
		-0.449905, 0.306490, 0.838838,
		-0.248722, -0.945107, 0.211918,
		27.917482, 32.979210, 36.637894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697689, 33.878815, 36.757587>,  <28.091589, 33.640785, 36.489552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697689, 33.878815, 36.757587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072676, 34.017849, 36.750233>,  <29.297668, 34.101269, 36.745819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072676, 34.017849, 36.750233>,  <28.697689, 33.878815, 36.757587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072676, 34.017849, 36.750233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326718, -0.860512, 0.390863,
		0.120032, -0.372431, -0.920265,
		0.937469, 0.347583, -0.018391,
		29.353916, 34.122124, 36.744717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211369, 33.424995, 36.442661>,  <28.697689, 33.878815, 36.757587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211369, 33.424995, 36.442661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453314, 33.648781, 36.669338>,  <29.598480, 33.783054, 36.805344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453314, 33.648781, 36.669338>,  <29.211369, 33.424995, 36.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453314, 33.648781, 36.669338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336271, -0.824513, 0.455083,
		0.721848, -0.084700, -0.686849,
		0.604861, 0.559468, 0.566691,
		29.634771, 33.816620, 36.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761431, 33.029060, 36.511616>,  <29.211369, 33.424995, 36.442661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761431, 33.029060, 36.511616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800945, 33.285629, 36.815937>,  <29.824654, 33.439571, 36.998528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800945, 33.285629, 36.815937>,  <29.761431, 33.029060, 36.511616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800945, 33.285629, 36.815937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318158, -0.744768, 0.586597,
		0.942877, 0.184107, -0.277646,
		0.098785, 0.641424, 0.760800,
		29.830582, 33.478058, 37.044178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303776, 32.759953, 36.844250>,  <29.761431, 33.029060, 36.511616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303776, 32.759953, 36.844250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173321, 33.020763, 37.118038>,  <30.095049, 33.177250, 37.282310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173321, 33.020763, 37.118038>,  <30.303776, 32.759953, 36.844250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173321, 33.020763, 37.118038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169273, -0.672075, 0.720876,
		0.930044, 0.350966, 0.108818,
		-0.326136, 0.652027, 0.684468,
		30.075480, 33.216370, 37.323380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771723, 32.657139, 37.472939>,  <30.303776, 32.759953, 36.844250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771723, 32.657139, 37.472939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425104, 32.827866, 37.576416>,  <30.217133, 32.930302, 37.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425104, 32.827866, 37.576416>,  <30.771723, 32.657139, 37.472939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425104, 32.827866, 37.576416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106239, -0.664183, 0.739982,
		0.487657, 0.613747, 0.620891,
		-0.866547, 0.426820, 0.258689,
		30.165140, 32.955914, 37.654022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800163, 32.546799, 38.199802>,  <30.771723, 32.657139, 37.472939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800163, 32.546799, 38.199802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425035, 32.636883, 38.094143>,  <30.199959, 32.690933, 38.030746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425035, 32.636883, 38.094143>,  <30.800163, 32.546799, 38.199802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425035, 32.636883, 38.094143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337688, -0.768120, 0.544021,
		-0.080379, 0.599393, 0.796409,
		-0.937820, 0.225210, -0.264148,
		30.143690, 32.704445, 38.014900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462992, 32.238110, 38.767910>,  <30.800163, 32.546799, 38.199802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462992, 32.238110, 38.767910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201221, 32.294685, 38.470798>,  <30.044159, 32.328632, 38.292530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201221, 32.294685, 38.470798>,  <30.462992, 32.238110, 38.767910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201221, 32.294685, 38.470798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435711, -0.873395, 0.217572,
		-0.617966, 0.466021, 0.633200,
		-0.654427, 0.141440, -0.742779,
		30.004894, 32.337116, 38.247963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866074, 32.075935, 39.065876>,  <30.462992, 32.238110, 38.767910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866074, 32.075935, 39.065876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807981, 32.030170, 38.672771>,  <29.773127, 32.002712, 38.436909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807981, 32.030170, 38.672771>,  <29.866074, 32.075935, 39.065876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807981, 32.030170, 38.672771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325807, -0.932361, 0.156692,
		-0.934215, 0.342947, 0.098130,
		-0.145230, -0.114412, -0.982760,
		29.764412, 31.995848, 38.377945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237698, 31.698261, 38.985367>,  <29.866074, 32.075935, 39.065876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237698, 31.698261, 38.985367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485603, 31.655222, 38.674416>,  <29.634346, 31.629398, 38.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485603, 31.655222, 38.674416>,  <29.237698, 31.698261, 38.985367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485603, 31.655222, 38.674416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120483, -0.991859, 0.041231,
		-0.775485, 0.068108, -0.627681,
		0.619763, -0.107599, -0.777378,
		29.671532, 31.622942, 38.441204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095043, 31.312403, 38.345860>,  <29.237698, 31.698261, 38.985367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095043, 31.312403, 38.345860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491570, 31.259802, 38.345455>,  <29.729485, 31.228241, 38.345211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491570, 31.259802, 38.345455>,  <29.095043, 31.312403, 38.345860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491570, 31.259802, 38.345455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131248, -0.988843, -0.070459,
		0.008263, 0.069980, -0.997514,
		0.991315, -0.131504, -0.001013,
		29.788963, 31.220350, 38.345150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234632, 31.030380, 37.727333>,  <29.095043, 31.312403, 38.345860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234632, 31.030380, 37.727333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508547, 30.908007, 37.991898>,  <29.672895, 30.834581, 38.150639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508547, 30.908007, 37.991898>,  <29.234632, 31.030380, 37.727333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508547, 30.908007, 37.991898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042636, -0.922875, -0.382731,
		0.727496, 0.233889, -0.645016,
		0.684786, -0.305936, 0.661416,
		29.713984, 30.816225, 38.190323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748653, 30.696053, 37.297848>,  <29.234632, 31.030380, 37.727333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748653, 30.696053, 37.297848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634546, 30.542320, 37.649055>,  <29.566082, 30.450081, 37.859779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634546, 30.542320, 37.649055>,  <29.748653, 30.696053, 37.297848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634546, 30.542320, 37.649055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278756, -0.843211, -0.459663,
		0.917016, -0.375879, 0.133406,
		-0.285267, -0.384330, 0.878016,
		29.548965, 30.427021, 37.912460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936470, 31.348186, 37.397129>,  <29.748653, 30.696053, 37.297848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936470, 31.348186, 37.397129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722183, 31.480524, 37.707882>,  <29.593611, 31.559927, 37.894333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722183, 31.480524, 37.707882>,  <29.936470, 31.348186, 37.397129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722183, 31.480524, 37.707882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037943, 0.928549, -0.369267,
		-0.843544, -0.168346, -0.509994,
		-0.535719, 0.330844, 0.776884,
		29.561468, 31.579777, 37.940948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576233, 31.791517, 37.129227>,  <29.936470, 31.348186, 37.397129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576233, 31.791517, 37.129227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612139, 31.873383, 37.519108>,  <29.633682, 31.922503, 37.753036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612139, 31.873383, 37.519108>,  <29.576233, 31.791517, 37.129227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612139, 31.873383, 37.519108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227468, 0.948579, -0.220126,
		-0.969639, 0.241474, 0.038593,
		0.089764, 0.204665, 0.974707,
		29.639069, 31.934782, 37.811520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112465, 32.376247, 37.311539>,  <29.576233, 31.791517, 37.129227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112465, 32.376247, 37.311539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370689, 32.394737, 37.616463>,  <29.525623, 32.405830, 37.799416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370689, 32.394737, 37.616463>,  <29.112465, 32.376247, 37.311539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370689, 32.394737, 37.616463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011722, 0.997449, -0.070414,
		-0.763620, 0.054392, 0.643371,
		0.645560, 0.046228, 0.762309,
		29.564358, 32.408607, 37.845154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922302, 32.912891, 37.623886>,  <29.112465, 32.376247, 37.311539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922302, 32.912891, 37.623886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291754, 32.844543, 37.761120>,  <29.513426, 32.803535, 37.843460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291754, 32.844543, 37.761120>,  <28.922302, 32.912891, 37.623886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291754, 32.844543, 37.761120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262399, 0.934367, -0.241049,
		-0.279382, 0.312666, 0.907846,
		0.923630, -0.170873, 0.343089,
		29.568842, 32.793282, 37.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133982, 33.433628, 38.175728>,  <28.922302, 32.912891, 37.623886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133982, 33.433628, 38.175728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419073, 33.283058, 37.938976>,  <29.590128, 33.192715, 37.796925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419073, 33.283058, 37.938976>,  <29.133982, 33.433628, 38.175728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419073, 33.283058, 37.938976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270850, 0.926052, -0.262807,
		0.647036, 0.027001, 0.761981,
		0.712731, -0.376428, -0.591875,
		29.632893, 33.170128, 37.761414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838823, 33.856907, 38.343224>,  <29.133982, 33.433628, 38.175728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838823, 33.856907, 38.343224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831299, 33.686024, 37.981640>,  <29.826784, 33.583496, 37.764690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831299, 33.686024, 37.981640>,  <29.838823, 33.856907, 38.343224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831299, 33.686024, 37.981640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001739, 0.904104, -0.427309,
		0.999822, -0.009609, -0.016262,
		-0.018809, -0.427205, -0.903959,
		29.825657, 33.557861, 37.710453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187693, 34.265434, 37.978325>,  <29.838823, 33.856907, 38.343224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187693, 34.265434, 37.978325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042866, 34.044899, 37.677677>,  <29.955971, 33.912579, 37.497288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042866, 34.044899, 37.677677>,  <30.187693, 34.265434, 37.978325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042866, 34.044899, 37.677677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008381, 0.808219, -0.588822,
		0.932115, -0.206893, -0.297249,
		-0.362065, -0.551341, -0.751619,
		29.934246, 33.879498, 37.452190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465902, 34.543262, 37.349045>,  <30.187693, 34.265434, 37.978325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465902, 34.543262, 37.349045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153740, 34.320946, 37.234459>,  <29.966442, 34.187557, 37.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153740, 34.320946, 37.234459>,  <30.465902, 34.543262, 37.349045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153740, 34.320946, 37.234459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244359, 0.692807, -0.678460,
		0.575548, -0.459473, -0.676483,
		-0.780406, -0.555791, -0.286467,
		29.919619, 34.154209, 37.148518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539480, 34.613972, 36.684937>,  <30.465902, 34.543262, 37.349045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539480, 34.613972, 36.684937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165022, 34.483932, 36.738518>,  <29.940348, 34.405910, 36.770668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165022, 34.483932, 36.738518>,  <30.539480, 34.613972, 36.684937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165022, 34.483932, 36.738518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335186, 0.710011, -0.619302,
		0.106226, -0.624656, -0.773641,
		-0.936144, -0.325099, 0.133954,
		29.884178, 34.386402, 36.778706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266506, 34.625614, 36.032341>,  <30.539480, 34.613972, 36.684937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266506, 34.625614, 36.032341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963823, 34.609341, 36.293335>,  <29.782213, 34.599579, 36.449932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963823, 34.609341, 36.293335>,  <30.266506, 34.625614, 36.032341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963823, 34.609341, 36.293335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477928, 0.715426, -0.509657,
		-0.446074, -0.697503, -0.560809,
		-0.756705, -0.040682, 0.652489,
		29.736813, 34.597137, 36.489082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093693, 34.555077, 36.034874>,  <30.266506, 34.625614, 36.032341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093693, 34.555077, 36.034874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492170, 34.520893, 36.028038>,  <31.731256, 34.500381, 36.023937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492170, 34.520893, 36.028038>,  <31.093693, 34.555077, 36.034874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492170, 34.520893, 36.028038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018764, 0.018774, 0.999648,
		-0.085111, -0.996164, 0.020307,
		0.996195, -0.085462, -0.017094,
		31.791029, 34.495255, 36.022911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164591, 35.203953, 35.722881>,  <31.093693, 34.555077, 36.034874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164591, 35.203953, 35.722881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366949, 35.510368, 35.564262>,  <31.488365, 35.694218, 35.469090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366949, 35.510368, 35.564262>,  <31.164591, 35.203953, 35.722881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366949, 35.510368, 35.564262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179659, 0.543211, 0.820149,
		0.843677, -0.343667, 0.412434,
		0.505897, 0.766038, -0.396552,
		31.518719, 35.740181, 35.445297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607046, 35.368732, 36.240116>,  <31.164591, 35.203953, 35.722881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607046, 35.368732, 36.240116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595100, 35.693356, 36.006714>,  <31.587933, 35.888130, 35.866673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595100, 35.693356, 36.006714>,  <31.607046, 35.368732, 36.240116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595100, 35.693356, 36.006714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095398, 0.578790, 0.809877,
		0.994991, 0.079853, 0.060135,
		-0.029865, 0.811557, -0.583509,
		31.586142, 35.936821, 35.831661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075123, 35.880333, 36.505871>,  <31.607046, 35.368732, 36.240116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075123, 35.880333, 36.505871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815643, 36.094509, 36.289543>,  <31.659954, 36.223015, 36.159748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815643, 36.094509, 36.289543>,  <32.075123, 35.880333, 36.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815643, 36.094509, 36.289543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026217, 0.725932, 0.687267,
		0.760591, 0.431653, -0.484951,
		-0.648703, 0.535443, -0.540820,
		31.621033, 36.255142, 36.127296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353790, 36.594852, 36.524395>,  <32.075123, 35.880333, 36.505871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353790, 36.594852, 36.524395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967014, 36.614079, 36.424217>,  <31.734949, 36.625614, 36.364109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967014, 36.614079, 36.424217>,  <32.353790, 36.594852, 36.524395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967014, 36.614079, 36.424217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165896, 0.627309, 0.760896,
		0.193676, 0.777286, -0.598595,
		-0.966937, 0.048062, -0.250443,
		31.676933, 36.628498, 36.349083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094971, 37.214413, 36.793102>,  <32.353790, 36.594852, 36.524395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094971, 37.214413, 36.793102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753235, 37.026707, 36.703754>,  <31.548193, 36.914082, 36.650146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753235, 37.026707, 36.703754>,  <32.094971, 37.214413, 36.793102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753235, 37.026707, 36.703754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439662, 0.423406, 0.792101,
		-0.277133, 0.774929, -0.568052,
		-0.854339, -0.469268, -0.223367,
		31.496933, 36.885925, 36.636745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656492, 37.545822, 37.237682>,  <32.094971, 37.214413, 36.793102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656492, 37.545822, 37.237682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389513, 37.300117, 37.069305>,  <31.229326, 37.152695, 36.968277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389513, 37.300117, 37.069305>,  <31.656492, 37.545822, 37.237682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389513, 37.300117, 37.069305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614884, 0.135761, 0.776844,
		-0.420039, 0.777335, -0.468314,
		-0.667446, -0.614264, -0.420946,
		31.189280, 37.115837, 36.943020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054028, 37.898487, 37.210510>,  <31.656492, 37.545822, 37.237682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054028, 37.898487, 37.210510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001631, 37.502178, 37.224457>,  <30.970192, 37.264393, 37.232826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001631, 37.502178, 37.224457>,  <31.054028, 37.898487, 37.210510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001631, 37.502178, 37.224457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586898, 0.105846, 0.802712,
		-0.798994, 0.084686, -0.595346,
		-0.130993, -0.990770, 0.034868,
		30.962334, 37.204948, 37.234917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372957, 37.827038, 37.415646>,  <31.054028, 37.898487, 37.210510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372957, 37.827038, 37.415646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518511, 37.470158, 37.522648>,  <30.605843, 37.256027, 37.586849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518511, 37.470158, 37.522648>,  <30.372957, 37.827038, 37.415646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518511, 37.470158, 37.522648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504904, 0.052402, 0.861583,
		-0.782726, -0.448582, -0.431410,
		0.363884, -0.892205, 0.267507,
		30.627676, 37.202496, 37.602901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124308, 37.234215, 37.621746>,  <30.372957, 37.827038, 37.415646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124308, 37.234215, 37.621746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944519, 37.011189, 37.342575>,  <29.836645, 36.877373, 37.175072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944519, 37.011189, 37.342575>,  <30.124308, 37.234215, 37.621746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944519, 37.011189, 37.342575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790889, 0.114841, -0.601087,
		0.415295, -0.822151, 0.389355,
		-0.449471, -0.557565, -0.697923,
		29.809677, 36.843918, 37.133198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614471, 36.576496, 37.509514>,  <30.124308, 37.234215, 37.621746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614471, 36.576496, 37.509514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392056, 36.748146, 37.224789>,  <30.258606, 36.851135, 37.053955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392056, 36.748146, 37.224789>,  <30.614471, 36.576496, 37.509514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392056, 36.748146, 37.224789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801260, 0.049135, -0.596296,
		-0.220909, -0.901909, -0.371160,
		-0.556041, 0.429123, -0.711809,
		30.225243, 36.876884, 37.011246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792267, 36.176407, 36.968815>,  <30.614471, 36.576496, 37.509514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792267, 36.176407, 36.968815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649681, 36.526592, 36.838284>,  <30.564129, 36.736706, 36.759964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649681, 36.526592, 36.838284>,  <30.792267, 36.176407, 36.968815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649681, 36.526592, 36.838284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673018, -0.001661, -0.739624,
		-0.648057, -0.483278, -0.588612,
		-0.356466, 0.875466, -0.326331,
		30.542742, 36.789230, 36.740383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468704, 36.242661, 36.256664>,  <30.792267, 36.176407, 36.968815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468704, 36.242661, 36.256664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686872, 36.557381, 36.372219>,  <30.817774, 36.746212, 36.441551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686872, 36.557381, 36.372219>,  <30.468704, 36.242661, 36.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686872, 36.557381, 36.372219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552442, -0.078260, -0.829869,
		-0.630337, 0.612220, -0.477349,
		0.545420, 0.786805, 0.288886,
		30.850498, 36.793423, 36.458885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516865, 36.937405, 35.855045>,  <30.468704, 36.242661, 36.256664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516865, 36.937405, 35.855045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860743, 36.806316, 36.011772>,  <31.067070, 36.727665, 36.105808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860743, 36.806316, 36.011772>,  <30.516865, 36.937405, 35.855045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860743, 36.806316, 36.011772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361799, -0.150816, -0.919976,
		0.360588, 0.932660, -0.011087,
		0.859696, -0.327721, 0.391818,
		31.118652, 36.708000, 36.129318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887897, 36.910946, 35.293224>,  <30.516865, 36.937405, 35.855045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887897, 36.910946, 35.293224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171101, 36.756508, 35.529751>,  <31.341022, 36.663845, 35.671665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171101, 36.756508, 35.529751>,  <30.887897, 36.910946, 35.293224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171101, 36.756508, 35.529751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360861, -0.521957, -0.772878,
		0.607043, 0.760589, -0.230226,
		0.708010, -0.386091, 0.591317,
		31.383503, 36.640682, 35.707146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571377, 36.981483, 35.028973>,  <30.887897, 36.910946, 35.293224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571377, 36.981483, 35.028973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604544, 36.674686, 35.283485>,  <31.624443, 36.490608, 35.436192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604544, 36.674686, 35.283485>,  <31.571377, 36.981483, 35.028973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604544, 36.674686, 35.283485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347378, -0.576189, -0.739821,
		0.934052, 0.282372, 0.218661,
		0.082915, -0.766989, 0.636281,
		31.629417, 36.444592, 35.474369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238899, 36.635788, 34.922295>,  <31.571377, 36.981483, 35.028973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238899, 36.635788, 34.922295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999426, 36.362961, 35.090275>,  <31.855742, 36.199265, 35.191063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999426, 36.362961, 35.090275>,  <32.238899, 36.635788, 34.922295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999426, 36.362961, 35.090275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060330, -0.561205, -0.825476,
		0.798713, -0.468861, 0.377131,
		-0.598681, -0.682070, 0.419955,
		31.819822, 36.158340, 35.216263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640835, 35.868614, 34.932728>,  <32.238899, 36.635788, 34.922295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640835, 35.868614, 34.932728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241161, 35.854675, 34.924599>,  <32.001358, 35.846313, 34.919720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241161, 35.854675, 34.924599>,  <32.640835, 35.868614, 34.932728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241161, 35.854675, 34.924599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035360, -0.514007, -0.857056,
		0.019418, -0.857078, 0.514821,
		-0.999186, -0.034846, -0.020326,
		31.941406, 35.844223, 34.918503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433937, 35.224968, 34.947758>,  <32.640835, 35.868614, 34.932728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433937, 35.224968, 34.947758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131554, 35.415661, 34.768314>,  <31.950123, 35.530079, 34.660648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131554, 35.415661, 34.768314>,  <32.433937, 35.224968, 34.947758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131554, 35.415661, 34.768314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061010, -0.631007, -0.773375,
		-0.651778, -0.612004, 0.447925,
		-0.755952, 0.476741, -0.448614,
		31.904766, 35.558681, 34.633732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189606, 34.696140, 34.600624>,  <32.433937, 35.224968, 34.947758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189606, 34.696140, 34.600624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005119, 35.007103, 34.429550>,  <31.894426, 35.193680, 34.326904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005119, 35.007103, 34.429550>,  <32.189606, 34.696140, 34.600624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005119, 35.007103, 34.429550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168581, -0.550016, -0.817963,
		-0.871126, -0.305158, 0.384733,
		-0.461217, 0.777407, -0.427689,
		31.866755, 35.240326, 34.301243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479591, 34.499928, 34.323368>,  <32.189606, 34.696140, 34.600624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479591, 34.499928, 34.323368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637674, 34.805519, 34.119350>,  <31.732523, 34.988876, 33.996941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637674, 34.805519, 34.119350>,  <31.479591, 34.499928, 34.323368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637674, 34.805519, 34.119350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082902, -0.582642, -0.808490,
		-0.914844, 0.277236, -0.293599,
		0.395205, 0.763982, -0.510043,
		31.756235, 35.034714, 33.966339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067337, 34.567841, 33.712914>,  <31.479591, 34.499928, 34.323368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067337, 34.567841, 33.712914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421705, 34.737278, 33.637321>,  <31.634325, 34.838940, 33.591965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421705, 34.737278, 33.637321>,  <31.067337, 34.567841, 33.712914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421705, 34.737278, 33.637321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047061, -0.323235, -0.945148,
		-0.461448, 0.846217, -0.266425,
		0.885918, 0.423598, -0.188980,
		31.687481, 34.864357, 33.580627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955662, 34.793304, 33.029472>,  <31.067337, 34.567841, 33.712914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955662, 34.793304, 33.029472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348013, 34.849861, 33.082973>,  <31.583424, 34.883793, 33.115074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348013, 34.849861, 33.082973>,  <30.955662, 34.793304, 33.029472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348013, 34.849861, 33.082973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173457, -0.323355, -0.930244,
		-0.088275, 0.935655, -0.341696,
		0.980877, 0.141387, 0.133751,
		31.642277, 34.892277, 33.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235798, 35.113274, 32.404858>,  <30.955662, 34.793304, 33.029472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235798, 35.113274, 32.404858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539577, 34.909508, 32.566711>,  <31.721846, 34.787247, 32.663826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539577, 34.909508, 32.566711>,  <31.235798, 35.113274, 32.404858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539577, 34.909508, 32.566711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122077, -0.499337, -0.857764,
		0.639010, 0.700826, -0.317033,
		0.759449, -0.509417, 0.404636,
		31.767412, 34.756683, 32.688103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789555, 35.333294, 31.981270>,  <31.235798, 35.113274, 32.404858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789555, 35.333294, 31.981270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942322, 35.004021, 32.149323>,  <32.033981, 34.806458, 32.250153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942322, 35.004021, 32.149323>,  <31.789555, 35.333294, 31.981270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942322, 35.004021, 32.149323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262964, -0.339012, -0.903283,
		0.885996, 0.455460, 0.086992,
		0.381918, -0.823181, 0.420133,
		32.056896, 34.757065, 32.275364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537586, 35.162472, 31.722630>,  <31.789555, 35.333294, 31.981270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537586, 35.162472, 31.722630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392029, 34.814941, 31.856930>,  <32.304695, 34.606422, 31.937510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392029, 34.814941, 31.856930>,  <32.537586, 35.162472, 31.722630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392029, 34.814941, 31.856930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379177, -0.467421, -0.798588,
		0.850769, -0.163290, 0.499528,
		-0.363891, -0.868823, 0.335752,
		32.282860, 34.554295, 31.957655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152233, 34.711380, 31.826906>,  <32.537586, 35.162472, 31.722630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152233, 34.711380, 31.826906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830956, 34.477341, 31.782104>,  <32.638191, 34.336918, 31.755222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830956, 34.477341, 31.782104>,  <33.152233, 34.711380, 31.826906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830956, 34.477341, 31.782104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492067, -0.545625, -0.678354,
		0.335790, -0.599962, 0.726148,
		-0.803191, -0.585098, -0.112006,
		32.589996, 34.301811, 31.748503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409130, 34.067066, 31.735029>,  <33.152233, 34.711380, 31.826906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409130, 34.067066, 31.735029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029964, 34.005329, 31.623579>,  <32.802464, 33.968288, 31.556709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029964, 34.005329, 31.623579>,  <33.409130, 34.067066, 31.735029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029964, 34.005329, 31.623579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317235, -0.535935, -0.782391,
		-0.028570, -0.830032, 0.556984,
		-0.947916, -0.154342, -0.278627,
		32.745590, 33.959026, 31.539991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408138, 33.400600, 31.437843>,  <33.409130, 34.067066, 31.735029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408138, 33.400600, 31.437843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061455, 33.565315, 31.325245>,  <32.853443, 33.664143, 31.257685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061455, 33.565315, 31.325245>,  <33.408138, 33.400600, 31.437843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061455, 33.565315, 31.325245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174379, -0.278598, -0.944444,
		-0.467335, -0.867649, 0.169657,
		-0.866712, 0.411788, -0.281498,
		32.801441, 33.688850, 31.240795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064152, 32.838707, 31.132769>,  <33.408138, 33.400600, 31.437843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064152, 32.838707, 31.132769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890404, 33.173145, 30.998749>,  <32.786156, 33.373810, 30.918337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890404, 33.173145, 30.998749>,  <33.064152, 32.838707, 31.132769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890404, 33.173145, 30.998749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040152, -0.353630, -0.934523,
		-0.899839, -0.419383, 0.120035,
		-0.434371, 0.836100, -0.335049,
		32.760094, 33.423977, 30.898233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596439, 32.584297, 30.737617>,  <33.064152, 32.838707, 31.132769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596439, 32.584297, 30.737617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597946, 32.960796, 30.602543>,  <32.598850, 33.186695, 30.521498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597946, 32.960796, 30.602543>,  <32.596439, 32.584297, 30.737617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597946, 32.960796, 30.602543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049278, -0.337106, -0.940176,
		-0.998778, 0.020186, 0.045112,
		0.003771, 0.941250, -0.337689,
		32.599079, 33.243172, 30.501236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984205, 32.686207, 30.357206>,  <32.596439, 32.584297, 30.737617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984205, 32.686207, 30.357206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234646, 32.967030, 30.221495>,  <32.384911, 33.135525, 30.140068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234646, 32.967030, 30.221495>,  <31.984205, 32.686207, 30.357206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234646, 32.967030, 30.221495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053431, -0.395465, -0.916926,
		-0.777910, 0.592216, -0.210089,
		0.626101, 0.702060, -0.339278,
		32.422478, 33.177647, 30.119711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706869, 32.846027, 29.742802>,  <31.984205, 32.686207, 30.357206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706869, 32.846027, 29.742802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090488, 32.955799, 29.714766>,  <32.320660, 33.021664, 29.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090488, 32.955799, 29.714766>,  <31.706869, 32.846027, 29.742802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090488, 32.955799, 29.714766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048108, -0.401685, -0.914513,
		-0.279128, 0.873690, -0.398438,
		0.959048, 0.274434, -0.070090,
		32.378204, 33.038128, 29.693739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817947, 33.107738, 29.086971>,  <31.706869, 32.846027, 29.742802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817947, 33.107738, 29.086971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173523, 32.977055, 29.215378>,  <32.386868, 32.898643, 29.292421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173523, 32.977055, 29.215378>,  <31.817947, 33.107738, 29.086971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173523, 32.977055, 29.215378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215447, -0.320229, -0.922516,
		0.404193, 0.889221, -0.214275,
		0.888938, -0.326709, 0.321015,
		32.440205, 32.879044, 29.311682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073219, 32.939960, 28.424585>,  <31.817947, 33.107738, 29.086971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073219, 32.939960, 28.424585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424458, 32.776363, 28.523922>,  <32.635201, 32.678207, 28.583523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424458, 32.776363, 28.523922>,  <32.073219, 32.939960, 28.424585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424458, 32.776363, 28.523922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075051, -0.394864, -0.915669,
		0.472560, 0.822684, -0.316034,
		0.878097, -0.408990, 0.248341,
		32.687885, 32.653667, 28.598425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454185, 33.162491, 27.939650>,  <32.073219, 32.939960, 28.424585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454185, 33.162491, 27.939650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626568, 32.831001, 28.082478>,  <32.729996, 32.632107, 28.168175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626568, 32.831001, 28.082478>,  <32.454185, 33.162491, 27.939650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626568, 32.831001, 28.082478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013099, -0.401406, -0.915807,
		0.902279, 0.389992, -0.183842,
		0.430953, -0.828722, 0.357072,
		32.755856, 32.582386, 28.189600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899872, 32.982395, 27.484056>,  <32.454185, 33.162491, 27.939650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899872, 32.982395, 27.484056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872272, 32.626751, 27.665041>,  <32.855713, 32.413364, 27.773632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872272, 32.626751, 27.665041>,  <32.899872, 32.982395, 27.484056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872272, 32.626751, 27.665041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130915, -0.441549, -0.887635,
		0.988990, -0.120482, -0.085931,
		-0.069001, -0.889111, 0.452460,
		32.851574, 32.360016, 27.800779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339516, 32.548073, 27.111826>,  <32.899872, 32.982395, 27.484056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339516, 32.548073, 27.111826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074928, 32.322586, 27.309687>,  <32.916176, 32.187294, 27.428404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074928, 32.322586, 27.309687>,  <33.339516, 32.548073, 27.111826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074928, 32.322586, 27.309687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181781, -0.519382, -0.834984,
		0.727611, -0.642232, 0.241080,
		-0.661466, -0.563720, 0.494654,
		32.876488, 32.153469, 27.458082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525585, 31.819838, 26.942041>,  <33.339516, 32.548073, 27.111826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525585, 31.819838, 26.942041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154774, 31.837904, 27.090940>,  <32.932285, 31.848743, 27.180281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154774, 31.837904, 27.090940>,  <33.525585, 31.819838, 26.942041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154774, 31.837904, 27.090940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347362, -0.477362, -0.807134,
		0.141243, -0.877545, 0.458219,
		-0.927033, 0.045166, 0.372249,
		32.876663, 31.851454, 27.202616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265686, 31.090908, 27.072617>,  <33.525585, 31.819838, 26.942041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265686, 31.090908, 27.072617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969864, 31.351715, 27.005764>,  <32.792370, 31.508200, 26.965652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969864, 31.351715, 27.005764>,  <33.265686, 31.090908, 27.072617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969864, 31.351715, 27.005764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297645, -0.539496, -0.787624,
		-0.603713, -0.532744, 0.593055,
		-0.739553, 0.652019, -0.167132,
		32.747997, 31.547321, 26.955624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938942, 30.807514, 26.457962>,  <33.265686, 31.090908, 27.072617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938942, 30.807514, 26.457962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702660, 31.121828, 26.531296>,  <32.560890, 31.310417, 26.575296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702660, 31.121828, 26.531296>,  <32.938942, 30.807514, 26.457962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702660, 31.121828, 26.531296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531386, -0.207856, -0.821234,
		-0.607206, -0.582527, 0.540337,
		-0.590703, 0.785785, 0.183335,
		32.525448, 31.357563, 26.586296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135048, 30.643822, 26.530926>,  <32.938942, 30.807514, 26.457962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135048, 30.643822, 26.530926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207142, 31.015009, 26.400455>,  <32.250397, 31.237722, 26.322174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207142, 31.015009, 26.400455>,  <32.135048, 30.643822, 26.530926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207142, 31.015009, 26.400455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476006, -0.207904, -0.854514,
		-0.860775, 0.309272, 0.404248,
		0.180233, 0.927969, -0.326174,
		32.261211, 31.293400, 26.302603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514023, 30.913166, 26.171064>,  <32.135048, 30.643822, 26.530926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514023, 30.913166, 26.171064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809990, 31.147741, 26.039238>,  <31.987570, 31.288486, 25.960142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809990, 31.147741, 26.039238>,  <31.514023, 30.913166, 26.171064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809990, 31.147741, 26.039238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336757, -0.101203, -0.936137,
		-0.582340, 0.803647, 0.122606,
		0.739915, 0.586438, -0.329568,
		32.031963, 31.323673, 25.940367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220001, 31.513199, 25.879686>,  <31.514023, 30.913166, 26.171064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220001, 31.513199, 25.879686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581720, 31.482813, 25.711651>,  <31.798752, 31.464581, 25.610830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581720, 31.482813, 25.711651>,  <31.220001, 31.513199, 25.879686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581720, 31.482813, 25.711651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407222, 0.141832, -0.902249,
		0.128122, 0.986971, 0.097323,
		0.904298, -0.075966, -0.420088,
		31.853010, 31.460024, 25.585625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227892, 32.043697, 25.441696>,  <31.220001, 31.513199, 25.879686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227892, 32.043697, 25.441696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508995, 31.796093, 25.301439>,  <31.677656, 31.647530, 25.217285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.508995, 31.796093, 25.301439>,  <31.227892, 32.043697, 25.441696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508995, 31.796093, 25.301439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298385, 0.190965, -0.935147,
		0.645831, 0.761809, -0.050502,
		0.702759, -0.619015, -0.350643,
		31.719822, 31.610388, 25.196247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354832, 32.365864, 24.876640>,  <31.227892, 32.043697, 25.441696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354832, 32.365864, 24.876640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514194, 32.002644, 24.824934>,  <31.609812, 31.784710, 24.793909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514194, 32.002644, 24.824934>,  <31.354832, 32.365864, 24.876640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514194, 32.002644, 24.824934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295611, 0.006293, -0.955288,
		0.868267, 0.418804, -0.265924,
		0.398405, -0.908055, -0.129267,
		31.633717, 31.730227, 24.786154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710754, 32.526390, 24.237082>,  <31.354832, 32.365864, 24.876640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710754, 32.526390, 24.237082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678562, 32.128765, 24.266397>,  <31.659246, 31.890192, 24.283987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678562, 32.128765, 24.266397>,  <31.710754, 32.526390, 24.237082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678562, 32.128765, 24.266397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145673, -0.061010, -0.987450,
		0.986054, -0.090148, -0.139897,
		-0.080482, -0.994058, 0.073292,
		31.654417, 31.830547, 24.288385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069069, 32.311539, 23.679834>,  <31.710754, 32.526390, 24.237082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069069, 32.311539, 23.679834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813507, 32.025532, 23.793364>,  <31.660170, 31.853928, 23.861481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813507, 32.025532, 23.793364>,  <32.069069, 32.311539, 23.679834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813507, 32.025532, 23.793364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339407, -0.069096, -0.938098,
		0.690365, -0.695686, -0.198535,
		-0.638904, -0.715015, 0.283823,
		31.621836, 31.811028, 23.878510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207996, 31.772413, 23.336422>,  <32.069069, 32.311539, 23.679834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207996, 31.772413, 23.336422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821447, 31.720301, 23.425100>,  <31.589518, 31.689034, 23.478308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821447, 31.720301, 23.425100>,  <32.207996, 31.772413, 23.336422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821447, 31.720301, 23.425100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213190, -0.076152, -0.974039,
		0.143786, -0.988548, 0.045816,
		-0.966373, -0.130285, 0.221698,
		31.531536, 31.681215, 23.491610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977070, 31.288937, 22.924734>,  <32.207996, 31.772413, 23.336422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977070, 31.288937, 22.924734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639296, 31.470566, 23.038399>,  <31.436630, 31.579542, 23.106598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.639296, 31.470566, 23.038399>,  <31.977070, 31.288937, 22.924734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639296, 31.470566, 23.038399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300939, 0.036696, -0.952937,
		-0.443129, -0.890209, 0.105660,
		-0.844436, 0.454072, 0.284159,
		31.385965, 31.606787, 23.123646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407793, 30.948584, 22.574600>,  <31.977070, 31.288937, 22.924734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407793, 30.948584, 22.574600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272020, 31.309563, 22.680716>,  <31.190557, 31.526150, 22.744385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272020, 31.309563, 22.680716>,  <31.407793, 30.948584, 22.574600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272020, 31.309563, 22.680716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227125, 0.195053, -0.954132,
		-0.912798, -0.384116, 0.138761,
		-0.339432, 0.902446, 0.265287,
		31.170191, 31.580296, 22.760302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749046, 30.966330, 22.328728>,  <31.407793, 30.948584, 22.574600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749046, 30.966330, 22.328728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850788, 31.349491, 22.381977>,  <30.911833, 31.579388, 22.413927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850788, 31.349491, 22.381977>,  <30.749046, 30.966330, 22.328728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850788, 31.349491, 22.381977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197081, 0.186101, -0.962562,
		-0.946817, 0.218595, 0.236121,
		0.254354, 0.957905, 0.133123,
		30.927094, 31.636862, 22.421913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268946, 31.348680, 21.984104>,  <30.749046, 30.966330, 22.328728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268946, 31.348680, 21.984104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560600, 31.620298, 22.018185>,  <30.735592, 31.783270, 22.038633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560600, 31.620298, 22.018185>,  <30.268946, 31.348680, 21.984104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560600, 31.620298, 22.018185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139961, 0.269819, -0.952685,
		-0.669905, 0.682712, 0.291774,
		0.729135, 0.679045, 0.085200,
		30.779341, 31.824013, 22.043745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947308, 31.893902, 21.620832>,  <30.268946, 31.348680, 21.984104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947308, 31.893902, 21.620832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333971, 31.996126, 21.627308>,  <30.565969, 32.057461, 21.631193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333971, 31.996126, 21.627308>,  <29.947308, 31.893902, 21.620832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333971, 31.996126, 21.627308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107579, 0.462670, -0.879979,
		-0.232378, 0.848897, 0.474737,
		0.966658, 0.255559, 0.016191,
		30.623968, 32.072792, 21.632166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942154, 32.560108, 21.445299>,  <29.947308, 31.893902, 21.620832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942154, 32.560108, 21.445299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322525, 32.458099, 21.375216>,  <30.550747, 32.396893, 21.333166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322525, 32.458099, 21.375216>,  <29.942154, 32.560108, 21.445299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322525, 32.458099, 21.375216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004292, 0.555334, -0.831616,
		0.309383, 0.791559, 0.526988,
		0.950928, -0.255026, -0.175209,
		30.607803, 32.381592, 21.322653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353722, 33.219612, 21.387871>,  <29.942154, 32.560108, 21.445299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353722, 33.219612, 21.387871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543249, 32.933346, 21.182615>,  <30.656965, 32.761585, 21.059462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543249, 32.933346, 21.182615>,  <30.353722, 33.219612, 21.387871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543249, 32.933346, 21.182615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055788, 0.605926, -0.793563,
		0.878854, 0.347377, 0.327024,
		0.473818, -0.715670, -0.513141,
		30.685394, 32.718643, 21.028673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727463, 33.566147, 20.984514>,  <30.353722, 33.219612, 21.387871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727463, 33.566147, 20.984514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762238, 33.221451, 20.784576>,  <30.783102, 33.014633, 20.664614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762238, 33.221451, 20.784576>,  <30.727463, 33.566147, 20.984514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762238, 33.221451, 20.784576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113357, 0.489926, -0.864362,
		0.989743, 0.131807, -0.055091,
		0.086938, -0.861742, -0.499843,
		30.788319, 32.962929, 20.634624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256342, 33.657204, 20.469715>,  <30.727463, 33.566147, 20.984514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256342, 33.657204, 20.469715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029924, 33.352074, 20.344688>,  <30.894073, 33.168995, 20.269672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029924, 33.352074, 20.344688>,  <31.256342, 33.657204, 20.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029924, 33.352074, 20.344688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164998, 0.476319, -0.863653,
		0.807694, -0.437293, -0.395481,
		-0.566044, -0.762821, -0.312568,
		30.860111, 33.123226, 20.250917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447372, 33.496113, 19.737991>,  <31.256342, 33.657204, 20.469715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447372, 33.496113, 19.737991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086233, 33.331299, 19.787130>,  <30.869551, 33.232410, 19.816614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086233, 33.331299, 19.787130>,  <31.447372, 33.496113, 19.737991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086233, 33.331299, 19.787130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215923, 0.187428, -0.958252,
		0.371813, -0.891680, -0.258188,
		-0.902846, -0.412040, 0.122846,
		30.815378, 33.207687, 19.823984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370039, 33.133778, 19.135450>,  <31.447372, 33.496113, 19.737991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370039, 33.133778, 19.135450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995872, 33.181305, 19.268642>,  <30.771372, 33.209824, 19.348558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995872, 33.181305, 19.268642>,  <31.370039, 33.133778, 19.135450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995872, 33.181305, 19.268642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290486, 0.278548, -0.915439,
		-0.201525, -0.953044, -0.226043,
		-0.935417, 0.118821, 0.332980,
		30.715248, 33.216953, 19.368536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890598, 32.612419, 18.846901>,  <31.370039, 33.133778, 19.135450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890598, 32.612419, 18.846901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659540, 32.918995, 18.959257>,  <30.520905, 33.102940, 19.026670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659540, 32.918995, 18.959257>,  <30.890598, 32.612419, 18.846901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659540, 32.918995, 18.959257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323252, 0.101195, -0.940887,
		-0.749555, -0.634298, 0.189297,
		-0.577647, 0.766437, 0.280890,
		30.486246, 33.148926, 19.043524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320883, 32.540222, 18.403391>,  <30.890598, 32.612419, 18.846901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320883, 32.540222, 18.403391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282946, 32.919090, 18.525946>,  <30.260183, 33.146412, 18.599478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282946, 32.919090, 18.525946>,  <30.320883, 32.540222, 18.403391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282946, 32.919090, 18.525946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211434, 0.281586, -0.935951,
		-0.972780, -0.153547, 0.173558,
		-0.094841, 0.947171, 0.306386,
		30.254494, 33.203243, 18.617861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734709, 32.770199, 17.990252>,  <30.320883, 32.540222, 18.403391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734709, 32.770199, 17.990252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940847, 33.096039, 18.096724>,  <30.064529, 33.291542, 18.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940847, 33.096039, 18.096724>,  <29.734709, 32.770199, 17.990252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940847, 33.096039, 18.096724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064952, 0.346835, -0.935675,
		-0.854518, 0.464907, 0.231649,
		0.515346, 0.814596, 0.266180,
		30.095451, 33.340416, 18.176577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264177, 33.325680, 17.888563>,  <29.734709, 32.770199, 17.990252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264177, 33.325680, 17.888563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651075, 33.425610, 17.870565>,  <29.883213, 33.485569, 17.859768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651075, 33.425610, 17.870565>,  <29.264177, 33.325680, 17.888563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651075, 33.425610, 17.870565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141187, 0.382152, -0.913250,
		-0.210961, 0.889689, 0.404907,
		0.967244, 0.249828, -0.044993,
		29.941248, 33.500557, 17.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291048, 33.551414, 18.527126>,  <29.264177, 33.325680, 17.888563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291048, 33.551414, 18.527126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147060, 33.850899, 18.304470>,  <29.060667, 34.030590, 18.170876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147060, 33.850899, 18.304470>,  <29.291048, 33.551414, 18.527126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147060, 33.850899, 18.304470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707734, -0.607893, -0.359970,
		-0.607893, 0.264377, 0.748713,
		0.359970, -0.748713, 0.556643,
		29.039070, 34.075512, 18.137478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631535, 33.535339, 18.677063>,  <29.291048, 33.551414, 18.527126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631535, 33.535339, 18.677063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718245, 33.680809, 18.314682>,  <28.770271, 33.768093, 18.097254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718245, 33.680809, 18.314682>,  <28.631535, 33.535339, 18.677063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718245, 33.680809, 18.314682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556267, -0.716602, -0.420771,
		-0.802231, 0.595164, 0.046958,
		0.216777, 0.363677, -0.905951,
		28.783278, 33.789913, 18.042896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047720, 33.715759, 18.283152>,  <28.631535, 33.535339, 18.677063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047720, 33.715759, 18.283152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359118, 33.581135, 18.071238>,  <28.545956, 33.500359, 17.944088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359118, 33.581135, 18.071238>,  <28.047720, 33.715759, 18.283152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359118, 33.581135, 18.071238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587838, -0.686807, -0.427483,
		-0.219987, 0.644222, -0.732519,
		0.778494, -0.336562, -0.529787,
		28.592665, 33.480167, 17.912302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055569, 33.621014, 17.539349>,  <28.047720, 33.715759, 18.283152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055569, 33.621014, 17.539349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332521, 33.348049, 17.633089>,  <28.498693, 33.184269, 17.689333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332521, 33.348049, 17.633089>,  <28.055569, 33.621014, 17.539349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332521, 33.348049, 17.633089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542736, -0.706590, -0.454057,
		0.475445, 0.187190, -0.859600,
		0.692380, -0.682415, 0.234350,
		28.540236, 33.143326, 17.703394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373022, 33.428646, 16.864017>,  <28.055569, 33.621014, 17.539349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373022, 33.428646, 16.864017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288937, 33.221855, 17.195932>,  <28.238485, 33.097782, 17.395081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288937, 33.221855, 17.195932>,  <28.373022, 33.428646, 16.864017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288937, 33.221855, 17.195932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503270, -0.670436, -0.545193,
		0.838171, -0.532213, -0.119244,
		-0.210213, -0.516976, 0.829787,
		28.225872, 33.066761, 17.444868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038141, 33.725746, 16.903767>,  <28.373022, 33.428646, 16.864017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038141, 33.725746, 16.903767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182575, 33.835995, 17.260115>,  <29.269236, 33.902145, 17.473923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182575, 33.835995, 17.260115>,  <29.038141, 33.725746, 16.903767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182575, 33.835995, 17.260115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792576, -0.412667, 0.448920,
		0.491365, -0.868181, 0.069444,
		0.361086, 0.275623, 0.890869,
		29.290901, 33.918682, 17.527376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091347, 34.435429, 16.964808>,  <29.038141, 33.725746, 16.903767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091347, 34.435429, 16.964808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965788, 34.232906, 17.286085>,  <28.890451, 34.111393, 17.478851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965788, 34.232906, 17.286085>,  <29.091347, 34.435429, 16.964808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965788, 34.232906, 17.286085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315267, 0.742375, 0.591174,
		-0.895586, 0.438791, -0.073410,
		-0.313899, -0.506303, 0.803196,
		28.871618, 34.081017, 17.527044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681286, 34.958206, 17.277969>,  <29.091347, 34.435429, 16.964808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681286, 34.958206, 17.277969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815765, 34.678932, 17.530796>,  <28.896452, 34.511368, 17.682491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815765, 34.678932, 17.530796>,  <28.681286, 34.958206, 17.277969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815765, 34.678932, 17.530796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263486, 0.714059, 0.648609,
		-0.904183, -0.051520, 0.424028,
		0.336197, -0.698187, 0.632065,
		28.916624, 34.469475, 17.720415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251400, 35.097477, 17.839230>,  <28.681286, 34.958206, 17.277969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251400, 35.097477, 17.839230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593260, 34.919628, 17.946476>,  <28.798376, 34.812920, 18.010824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593260, 34.919628, 17.946476>,  <28.251400, 35.097477, 17.839230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593260, 34.919628, 17.946476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170898, 0.728527, 0.663357,
		-0.490272, -0.521117, 0.698620,
		0.854650, -0.444619, 0.268118,
		28.849655, 34.786243, 18.026911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282892, 35.245621, 18.481075>,  <28.251400, 35.097477, 17.839230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282892, 35.245621, 18.481075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654446, 35.118801, 18.404493>,  <28.877378, 35.042709, 18.358543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654446, 35.118801, 18.404493>,  <28.282892, 35.245621, 18.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654446, 35.118801, 18.404493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340121, 0.525586, 0.779793,
		-0.146609, -0.789454, 0.596044,
		0.928883, -0.317052, -0.191454,
		28.933111, 35.023685, 18.347057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518478, 35.183205, 19.155025>,  <28.282892, 35.245621, 18.481075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518478, 35.183205, 19.155025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852156, 35.198582, 18.934973>,  <29.052362, 35.207809, 18.802940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.852156, 35.198582, 18.934973>,  <28.518478, 35.183205, 19.155025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852156, 35.198582, 18.934973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427355, 0.585437, 0.688935,
		0.348555, -0.809806, 0.471937,
		0.834192, 0.038447, -0.550132,
		29.102413, 35.210117, 18.769934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124872, 35.000080, 19.590828>,  <28.518478, 35.183205, 19.155025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124872, 35.000080, 19.590828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265762, 35.209846, 19.280752>,  <29.350296, 35.335709, 19.094706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265762, 35.209846, 19.280752>,  <29.124872, 35.000080, 19.590828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265762, 35.209846, 19.280752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505012, 0.590849, 0.629174,
		0.787973, -0.613091, -0.056728,
		0.352223, 0.524420, -0.775192,
		29.371429, 35.367172, 19.048195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773138, 34.993107, 19.723473>,  <29.124872, 35.000080, 19.590828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773138, 34.993107, 19.723473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693020, 35.300175, 19.479975>,  <29.644949, 35.484413, 19.333876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693020, 35.300175, 19.479975>,  <29.773138, 34.993107, 19.723473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693020, 35.300175, 19.479975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555216, 0.600873, 0.575053,
		0.807227, -0.222804, -0.546574,
		-0.200297, 0.767665, -0.608745,
		29.632931, 35.530476, 19.297352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338415, 35.323650, 19.773100>,  <29.773138, 34.993107, 19.723473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338415, 35.323650, 19.773100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101799, 35.601749, 19.609781>,  <29.959829, 35.768608, 19.511791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101799, 35.601749, 19.609781>,  <30.338415, 35.323650, 19.773100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101799, 35.601749, 19.609781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347488, 0.676789, 0.649006,
		0.727553, 0.242035, -0.641939,
		-0.591540, 0.695252, -0.408296,
		29.924337, 35.810326, 19.487293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743656, 35.871349, 19.372654>,  <30.338415, 35.323650, 19.773100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743656, 35.871349, 19.372654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391766, 36.016201, 19.495907>,  <30.180632, 36.103111, 19.569859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391766, 36.016201, 19.495907>,  <30.743656, 35.871349, 19.372654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391766, 36.016201, 19.495907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471626, 0.582209, 0.662270,
		0.060433, 0.727938, -0.682975,
		-0.879726, 0.362131, 0.308130,
		30.127848, 36.124840, 19.588346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856869, 36.527241, 19.557148>,  <30.743656, 35.871349, 19.372654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856869, 36.527241, 19.557148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515114, 36.442120, 19.746775>,  <30.310061, 36.391048, 19.860550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515114, 36.442120, 19.746775>,  <30.856869, 36.527241, 19.557148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515114, 36.442120, 19.746775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376441, 0.375424, 0.846965,
		-0.358212, 0.902093, -0.240650,
		-0.854387, -0.212802, 0.474066,
		30.258799, 36.378281, 19.888994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802317, 37.118656, 20.004368>,  <30.856869, 36.527241, 19.557148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802317, 37.118656, 20.004368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540283, 36.850342, 20.143461>,  <30.383062, 36.689354, 20.226917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540283, 36.850342, 20.143461>,  <30.802317, 37.118656, 20.004368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540283, 36.850342, 20.143461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237703, 0.253894, 0.937569,
		-0.717191, 0.696843, -0.006875,
		-0.655084, -0.670781, 0.347732,
		30.343758, 36.649109, 20.247780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356327, 37.532894, 20.471300>,  <30.802317, 37.118656, 20.004368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356327, 37.532894, 20.471300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342442, 37.146080, 20.572212>,  <30.334110, 36.913994, 20.632759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342442, 37.146080, 20.572212>,  <30.356327, 37.532894, 20.471300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342442, 37.146080, 20.572212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238917, 0.237085, 0.941653,
		-0.970419, 0.092965, 0.222809,
		-0.034716, -0.967031, 0.252282,
		30.332027, 36.855972, 20.647898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998381, 37.553055, 20.953552>,  <30.356327, 37.532894, 20.471300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998381, 37.553055, 20.953552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159767, 37.190937, 21.006699>,  <30.256599, 36.973667, 21.038586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159767, 37.190937, 21.006699>,  <29.998381, 37.553055, 20.953552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159767, 37.190937, 21.006699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170462, 0.217034, 0.961166,
		-0.898977, -0.365148, 0.241884,
		0.403465, -0.905297, 0.132864,
		30.280807, 36.919350, 21.046558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618025, 37.183899, 21.515966>,  <29.998381, 37.553055, 20.953552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618025, 37.183899, 21.515966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973606, 37.001884, 21.495180>,  <30.186954, 36.892677, 21.482708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973606, 37.001884, 21.495180>,  <29.618025, 37.183899, 21.515966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973606, 37.001884, 21.495180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115240, 0.112417, 0.986956,
		-0.443259, -0.883348, 0.152372,
		0.888955, -0.455036, -0.051967,
		30.240294, 36.865376, 21.479589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898865, 37.177624, 22.192186>,  <29.618025, 37.183899, 21.515966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898865, 37.177624, 22.192186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238905, 37.033833, 22.038250>,  <30.442928, 36.947556, 21.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238905, 37.033833, 22.038250>,  <29.898865, 37.177624, 22.192186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238905, 37.033833, 22.038250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412276, -0.000380, 0.911059,
		-0.327655, -0.933152, 0.147883,
		0.850100, -0.359482, -0.384840,
		30.493935, 36.925987, 21.922798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019554, 36.420464, 22.377369>,  <29.898865, 37.177624, 22.192186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019554, 36.420464, 22.377369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370768, 36.598969, 22.308199>,  <30.581495, 36.706070, 22.266697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370768, 36.598969, 22.308199>,  <30.019554, 36.420464, 22.377369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370768, 36.598969, 22.308199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336840, -0.319541, 0.885682,
		0.339990, -0.835908, -0.430888,
		0.878035, 0.446264, -0.172926,
		30.634178, 36.732849, 22.256321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526068, 35.930973, 22.572563>,  <30.019554, 36.420464, 22.377369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526068, 35.930973, 22.572563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731947, 36.273869, 22.578579>,  <30.855474, 36.479607, 22.582188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731947, 36.273869, 22.578579>,  <30.526068, 35.930973, 22.572563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731947, 36.273869, 22.578579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432294, -0.274624, 0.858897,
		0.740410, -0.435573, -0.511928,
		0.514700, 0.857239, 0.015039,
		30.886356, 36.531040, 22.583090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314346, 35.813564, 22.636774>,  <30.526068, 35.930973, 22.572563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314346, 35.813564, 22.636774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233917, 36.181519, 22.771465>,  <31.185659, 36.402290, 22.852280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233917, 36.181519, 22.771465>,  <31.314346, 35.813564, 22.636774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233917, 36.181519, 22.771465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553611, -0.176876, 0.813775,
		0.808137, 0.350043, -0.473693,
		-0.201071, 0.919883, 0.336728,
		31.173595, 36.457485, 22.872484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017376, 35.997746, 23.012489>,  <31.314346, 35.813564, 22.636774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017376, 35.997746, 23.012489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730423, 36.258266, 23.111418>,  <31.558250, 36.414577, 23.170774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730423, 36.258266, 23.111418>,  <32.017376, 35.997746, 23.012489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730423, 36.258266, 23.111418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341824, 0.019725, 0.939557,
		0.607056, 0.758563, -0.236781,
		-0.717384, 0.651301, 0.247321,
		31.515207, 36.453655, 23.185614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351742, 36.458805, 23.478205>,  <32.017376, 35.997746, 23.012489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351742, 36.458805, 23.478205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955797, 36.463032, 23.534863>,  <31.718231, 36.465569, 23.568857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955797, 36.463032, 23.534863>,  <32.351742, 36.458805, 23.478205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955797, 36.463032, 23.534863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139876, -0.100799, 0.985025,
		0.024687, 0.994851, 0.098299,
		-0.989861, 0.010568, 0.141644,
		31.658838, 36.466202, 23.577356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279541, 36.896145, 24.025856>,  <32.351742, 36.458805, 23.478205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279541, 36.896145, 24.025856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917969, 36.725681, 24.011446>,  <31.701025, 36.623405, 24.002800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917969, 36.725681, 24.011446>,  <32.279541, 36.896145, 24.025856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917969, 36.725681, 24.011446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000857, -0.082425, 0.996597,
		-0.427676, 0.900886, 0.074141,
		-0.903932, -0.426157, -0.036023,
		31.646790, 36.597836, 24.000639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015667, 37.159805, 24.625675>,  <32.279541, 36.896145, 24.025856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015667, 37.159805, 24.625675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766218, 36.866009, 24.518635>,  <31.616549, 36.689732, 24.454411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766218, 36.866009, 24.518635>,  <32.015667, 37.159805, 24.625675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766218, 36.866009, 24.518635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247192, -0.139471, 0.958876,
		-0.741611, 0.664130, -0.094583,
		-0.623627, -0.734493, -0.267601,
		31.579130, 36.645660, 24.438354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386211, 37.233536, 24.908230>,  <32.015667, 37.159805, 24.625675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386211, 37.233536, 24.908230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368784, 36.840694, 24.834946>,  <31.358328, 36.604988, 24.790976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368784, 36.840694, 24.834946>,  <31.386211, 37.233536, 24.908230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368784, 36.840694, 24.834946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055220, -0.180737, 0.981980,
		-0.997523, 0.052903, -0.046357,
		-0.043571, -0.982108, -0.183211,
		31.355713, 36.546062, 24.779982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826885, 37.010052, 25.246569>,  <31.386211, 37.233536, 24.908230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826885, 37.010052, 25.246569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101471, 36.721577, 25.209373>,  <31.266222, 36.548492, 25.187056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101471, 36.721577, 25.209373>,  <30.826885, 37.010052, 25.246569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101471, 36.721577, 25.209373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156151, -0.271098, 0.949801,
		-0.710198, -0.637486, -0.298714,
		0.686466, -0.721192, -0.092989,
		31.307411, 36.505219, 25.181477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536995, 36.456448, 25.745630>,  <30.826885, 37.010052, 25.246569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536995, 36.456448, 25.745630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919899, 36.363033, 25.677380>,  <31.149641, 36.306984, 25.636429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919899, 36.363033, 25.677380>,  <30.536995, 36.456448, 25.745630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919899, 36.363033, 25.677380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127542, -0.188643, 0.973728,
		-0.259586, -0.953874, -0.150795,
		0.957261, -0.233533, -0.170628,
		31.207077, 36.292973, 25.626192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481779, 35.729259, 26.052494>,  <30.536995, 36.456448, 25.745630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481779, 35.729259, 26.052494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833244, 35.916866, 26.016777>,  <31.044125, 36.029430, 25.995346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833244, 35.916866, 26.016777>,  <30.481779, 35.729259, 26.052494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833244, 35.916866, 26.016777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224193, -0.240196, 0.944480,
		0.421527, -0.849900, -0.316201,
		0.878665, 0.469015, -0.089293,
		31.096844, 36.057571, 25.989988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045441, 35.277092, 26.300356>,  <30.481779, 35.729259, 26.052494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045441, 35.277092, 26.300356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228630, 35.628735, 26.353167>,  <31.338545, 35.839722, 26.384853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228630, 35.628735, 26.353167>,  <31.045441, 35.277092, 26.300356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228630, 35.628735, 26.353167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229529, -0.260417, 0.937816,
		0.858822, -0.399193, -0.321045,
		0.457975, 0.879106, 0.132026,
		31.366022, 35.892467, 26.392775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197712, 35.171024, 27.048935>,  <31.045441, 35.277092, 26.300356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197712, 35.171024, 27.048935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372498, 35.515938, 26.946539>,  <31.477369, 35.722885, 26.885101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372498, 35.515938, 26.946539>,  <31.197712, 35.171024, 27.048935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372498, 35.515938, 26.946539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086978, 0.242760, 0.966179,
		0.895263, -0.444454, 0.031078,
		0.436966, 0.862281, -0.255992,
		31.503588, 35.774624, 26.869741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824448, 35.156300, 27.359667>,  <31.197712, 35.171024, 27.048935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824448, 35.156300, 27.359667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683676, 35.526234, 27.301952>,  <31.599213, 35.748196, 27.267324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683676, 35.526234, 27.301952>,  <31.824448, 35.156300, 27.359667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683676, 35.526234, 27.301952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045106, 0.170723, 0.984286,
		0.934940, 0.339889, -0.101798,
		-0.351928, 0.924840, -0.144285,
		31.578098, 35.803684, 27.258667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262337, 35.571381, 27.757820>,  <31.824448, 35.156300, 27.359667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262337, 35.571381, 27.757820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909895, 35.756134, 27.717180>,  <31.698431, 35.866985, 27.692797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909895, 35.756134, 27.717180>,  <32.262337, 35.571381, 27.757820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909895, 35.756134, 27.717180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023047, 0.172640, 0.984715,
		0.472367, 0.869975, -0.141468,
		-0.881100, 0.461887, -0.101600,
		31.645565, 35.894699, 27.686701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405106, 36.155800, 28.113216>,  <32.262337, 35.571381, 27.757820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405106, 36.155800, 28.113216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006340, 36.150234, 28.082298>,  <31.767082, 36.146896, 28.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006340, 36.150234, 28.082298>,  <32.405106, 36.155800, 28.113216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006340, 36.150234, 28.082298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077044, 0.364228, 0.928118,
		0.015240, 0.931206, -0.364174,
		-0.996911, -0.013913, -0.077295,
		31.707266, 36.146061, 28.059111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118095, 36.932682, 28.209436>,  <32.405106, 36.155800, 28.113216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118095, 36.932682, 28.209436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834787, 36.662518, 28.291578>,  <31.664803, 36.500420, 28.340862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834787, 36.662518, 28.291578>,  <32.118095, 36.932682, 28.209436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834787, 36.662518, 28.291578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120002, 0.401850, 0.907809,
		-0.695669, 0.618330, -0.365668,
		-0.708269, -0.675415, 0.205353,
		31.622307, 36.459892, 28.353184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578291, 37.333603, 28.486691>,  <32.118095, 36.932682, 28.209436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578291, 37.333603, 28.486691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480534, 36.969273, 28.619753>,  <31.421879, 36.750675, 28.699591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480534, 36.969273, 28.619753>,  <31.578291, 37.333603, 28.486691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480534, 36.969273, 28.619753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012016, 0.345878, 0.938203,
		-0.969602, 0.225293, -0.095475,
		-0.244393, -0.910830, 0.332657,
		31.407215, 36.696022, 28.719549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866880, 37.399796, 28.873650>,  <31.578291, 37.333603, 28.486691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866880, 37.399796, 28.873650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011625, 37.040009, 28.971643>,  <31.098473, 36.824135, 29.030439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011625, 37.040009, 28.971643>,  <30.866880, 37.399796, 28.873650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011625, 37.040009, 28.971643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149339, 0.203469, 0.967625,
		-0.920193, -0.386730, -0.060698,
		0.361860, -0.899467, 0.244984,
		31.120184, 36.770168, 29.045139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333666, 37.101784, 29.461401>,  <30.866880, 37.399796, 28.873650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333666, 37.101784, 29.461401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690163, 36.924400, 29.499414>,  <30.904060, 36.817970, 29.522223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690163, 36.924400, 29.499414>,  <30.333666, 37.101784, 29.461401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690163, 36.924400, 29.499414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035649, 0.277395, 0.960094,
		-0.452124, -0.852289, 0.263035,
		0.891242, -0.443458, 0.095034,
		30.957535, 36.791363, 29.527925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271130, 36.726170, 30.027548>,  <30.333666, 37.101784, 29.461401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271130, 36.726170, 30.027548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670155, 36.720280, 30.000254>,  <30.909569, 36.716747, 29.983877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670155, 36.720280, 30.000254>,  <30.271130, 36.726170, 30.027548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670155, 36.720280, 30.000254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068679, 0.032177, 0.997120,
		-0.012494, -0.999374, 0.033110,
		0.997561, -0.014732, -0.068234,
		30.969423, 36.715862, 29.979784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406538, 36.305607, 30.591808>,  <30.271130, 36.726170, 30.027548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406538, 36.305607, 30.591808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715824, 36.539768, 30.494287>,  <30.901396, 36.680264, 30.435776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.715824, 36.539768, 30.494287>,  <30.406538, 36.305607, 30.591808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715824, 36.539768, 30.494287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123022, 0.238679, 0.963274,
		0.622094, -0.774813, 0.112534,
		0.773217, 0.585403, -0.243800,
		30.947790, 36.715389, 30.421148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957476, 36.162277, 31.079172>,  <30.406538, 36.305607, 30.591808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957476, 36.162277, 31.079172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066132, 36.513866, 30.922400>,  <31.131325, 36.724819, 30.828335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.066132, 36.513866, 30.922400>,  <30.957476, 36.162277, 31.079172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066132, 36.513866, 30.922400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330642, 0.297222, 0.895731,
		0.903819, -0.372905, -0.209889,
		0.271639, 0.878977, -0.391933,
		31.147623, 36.777561, 30.804819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657061, 36.320538, 31.372713>,  <30.957476, 36.162277, 31.079172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657061, 36.320538, 31.372713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552023, 36.679649, 31.231270>,  <31.489000, 36.895115, 31.146404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552023, 36.679649, 31.231270>,  <31.657061, 36.320538, 31.372713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552023, 36.679649, 31.231270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271005, 0.420340, 0.865951,
		0.926067, 0.131564, -0.353681,
		-0.262594, 0.897778, -0.353608,
		31.473246, 36.948982, 31.125187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186878, 36.749165, 31.547680>,  <31.657061, 36.320538, 31.372713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186878, 36.749165, 31.547680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851940, 36.963707, 31.505383>,  <31.650978, 37.092434, 31.480003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851940, 36.963707, 31.505383>,  <32.186878, 36.749165, 31.547680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851940, 36.963707, 31.505383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255739, 0.555272, 0.791372,
		0.483173, 0.635606, -0.602120,
		-0.837342, 0.536355, -0.105743,
		31.600739, 37.124615, 31.473660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427509, 37.448425, 31.547749>,  <32.186878, 36.749165, 31.547680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427509, 37.448425, 31.547749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049049, 37.421749, 31.674463>,  <31.821974, 37.405743, 31.750492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049049, 37.421749, 31.674463>,  <32.427509, 37.448425, 31.547749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049049, 37.421749, 31.674463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242227, 0.503374, 0.829421,
		-0.214775, 0.861491, -0.460114,
		-0.946149, -0.066687, 0.316789,
		31.765205, 37.401745, 31.769501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668156, 38.006390, 31.183943>,  <32.427509, 37.448425, 31.547749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668156, 38.006390, 31.183943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021923, 38.192493, 31.169327>,  <33.234184, 38.304157, 31.160557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.021923, 38.192493, 31.169327>,  <32.668156, 38.006390, 31.183943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021923, 38.192493, 31.169327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225706, 0.357892, -0.906074,
		-0.408482, 0.809598, 0.421539,
		0.884420, 0.465258, -0.036539,
		33.287251, 38.332069, 31.158365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567497, 38.647129, 30.926317>,  <32.668156, 38.006390, 31.183943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567497, 38.647129, 30.926317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959843, 38.596043, 30.867525>,  <33.195248, 38.565392, 30.832251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959843, 38.596043, 30.867525>,  <32.567497, 38.647129, 30.926317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959843, 38.596043, 30.867525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086518, 0.390380, -0.916579,
		0.174440, 0.911752, 0.371859,
		0.980859, -0.127716, -0.146981,
		33.254101, 38.557728, 30.823431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770275, 39.121323, 30.420063>,  <32.567497, 38.647129, 30.926317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770275, 39.121323, 30.420063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087582, 38.878456, 30.401802>,  <33.277966, 38.732738, 30.390846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087582, 38.878456, 30.401802>,  <32.770275, 39.121323, 30.420063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087582, 38.878456, 30.401802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121357, 0.231136, -0.965323,
		0.596660, 0.760217, 0.257036,
		0.793265, -0.607162, -0.045652,
		33.325562, 38.696308, 30.388107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265373, 39.496937, 30.136972>,  <32.770275, 39.121323, 30.420063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265373, 39.496937, 30.136972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362137, 39.117859, 30.053680>,  <33.420197, 38.890411, 30.003706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362137, 39.117859, 30.053680>,  <33.265373, 39.496937, 30.136972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362137, 39.117859, 30.053680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171240, 0.252935, -0.952209,
		0.955068, 0.194694, 0.223471,
		0.241913, -0.947691, -0.208230,
		33.434711, 38.833553, 29.991211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956654, 39.538822, 29.670456>,  <33.265373, 39.496937, 30.136972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956654, 39.538822, 29.670456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803722, 39.174065, 29.610756>,  <33.711964, 38.955212, 29.574936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803722, 39.174065, 29.610756>,  <33.956654, 39.538822, 29.670456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803722, 39.174065, 29.610756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263702, 0.047125, -0.963452,
		0.885598, -0.407717, 0.222450,
		-0.382333, -0.911892, -0.149250,
		33.689022, 38.900497, 29.565981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355274, 39.274014, 29.253464>,  <33.956654, 39.538822, 29.670456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355274, 39.274014, 29.253464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034771, 39.041698, 29.195957>,  <33.842468, 38.902309, 29.161453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034771, 39.041698, 29.195957>,  <34.355274, 39.274014, 29.253464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034771, 39.041698, 29.195957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127043, 0.069654, -0.989448,
		0.584671, -0.811071, 0.017973,
		-0.801261, -0.580786, -0.143765,
		33.794392, 38.867462, 29.152828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557281, 38.829571, 28.821829>,  <34.355274, 39.274014, 29.253464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557281, 38.829571, 28.821829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161057, 38.797993, 28.777000>,  <33.923321, 38.779045, 28.750103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161057, 38.797993, 28.777000>,  <34.557281, 38.829571, 28.821829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161057, 38.797993, 28.777000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112236, 0.002331, -0.993679,
		0.078705, -0.996876, 0.006552,
		-0.990560, -0.078943, -0.112069,
		33.863888, 38.774311, 28.743380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451817, 38.394253, 28.348976>,  <34.557281, 38.829571, 28.821829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451817, 38.394253, 28.348976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099827, 38.583397, 28.330856>,  <33.888634, 38.696884, 28.319984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099827, 38.583397, 28.330856>,  <34.451817, 38.394253, 28.348976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099827, 38.583397, 28.330856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000266, -0.095853, -0.995395,
		-0.475023, -0.875910, 0.084474,
		-0.879974, 0.472858, -0.045300,
		33.835835, 38.725254, 28.317266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009644, 37.942055, 28.071110>,  <34.451817, 38.394253, 28.348976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009644, 37.942055, 28.071110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870029, 38.312145, 28.011604>,  <33.786259, 38.534199, 27.975901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870029, 38.312145, 28.011604>,  <34.009644, 37.942055, 28.071110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870029, 38.312145, 28.011604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028601, -0.169189, -0.985168,
		-0.936672, -0.339606, 0.085516,
		-0.349037, 0.925226, -0.148761,
		33.765320, 38.589714, 27.966976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486607, 37.853176, 27.649776>,  <34.009644, 37.942055, 28.071110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486607, 37.853176, 27.649776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588654, 38.237640, 27.607664>,  <33.649883, 38.468319, 27.582397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588654, 38.237640, 27.607664>,  <33.486607, 37.853176, 27.649776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588654, 38.237640, 27.607664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009077, -0.106496, -0.994272,
		-0.966866, 0.254615, -0.018445,
		0.255121, 0.961160, -0.105279,
		33.665192, 38.525990, 27.576080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198090, 38.060833, 27.061443>,  <33.486607, 37.853176, 27.649776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198090, 38.060833, 27.061443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460434, 38.361340, 27.090956>,  <33.617840, 38.541645, 27.108664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460434, 38.361340, 27.090956>,  <33.198090, 38.060833, 27.061443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460434, 38.361340, 27.090956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020601, 0.115513, -0.993092,
		-0.754601, 0.649810, 0.091237,
		0.655860, 0.751268, 0.073780,
		33.657192, 38.586720, 27.113091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987091, 38.631935, 26.582645>,  <33.198090, 38.060833, 27.061443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987091, 38.631935, 26.582645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365910, 38.737732, 26.655479>,  <33.593201, 38.801208, 26.699181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365910, 38.737732, 26.655479>,  <32.987091, 38.631935, 26.582645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365910, 38.737732, 26.655479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169017, 0.071561, -0.983012,
		-0.273028, 0.961729, 0.023068,
		0.947042, 0.264491, 0.182087,
		33.650021, 38.817078, 26.710106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008476, 39.271626, 26.210833>,  <32.987091, 38.631935, 26.582645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008476, 39.271626, 26.210833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366642, 39.108009, 26.281172>,  <33.581543, 39.009838, 26.323376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366642, 39.108009, 26.281172>,  <33.008476, 39.271626, 26.210833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366642, 39.108009, 26.281172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266034, 0.174831, -0.947977,
		0.357016, 0.895612, 0.265365,
		0.895413, -0.409039, 0.175846,
		33.635265, 38.985298, 26.333925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444298, 39.703617, 25.834948>,  <33.008476, 39.271626, 26.210833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444298, 39.703617, 25.834948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639057, 39.357883, 25.885311>,  <33.755913, 39.150444, 25.915529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639057, 39.357883, 25.885311>,  <33.444298, 39.703617, 25.834948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639057, 39.357883, 25.885311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187851, -0.037153, -0.981495,
		0.853019, 0.501541, 0.144277,
		0.486900, -0.864336, 0.125907,
		33.785126, 39.098583, 25.923082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129658, 39.775909, 25.405853>,  <33.444298, 39.703617, 25.834948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129658, 39.775909, 25.405853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017208, 39.398434, 25.475611>,  <33.949738, 39.171947, 25.517466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017208, 39.398434, 25.475611>,  <34.129658, 39.775909, 25.405853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017208, 39.398434, 25.475611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139742, -0.220037, -0.965430,
		0.949443, -0.247034, 0.193731,
		-0.281122, -0.943694, 0.174392,
		33.932873, 39.115326, 25.527927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486885, 39.474068, 24.929646>,  <34.129658, 39.775909, 25.405853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486885, 39.474068, 24.929646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230453, 39.183800, 25.029581>,  <34.076595, 39.009640, 25.089542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230453, 39.183800, 25.029581>,  <34.486885, 39.474068, 24.929646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230453, 39.183800, 25.029581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107576, -0.237353, -0.965449,
		0.759901, -0.645802, 0.074096,
		-0.641076, -0.725675, 0.249837,
		34.038132, 38.966099, 25.104532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696472, 38.917862, 24.634832>,  <34.486885, 39.474068, 24.929646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696472, 38.917862, 24.634832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311638, 38.820724, 24.684513>,  <34.080738, 38.762444, 24.714321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311638, 38.820724, 24.684513>,  <34.696472, 38.917862, 24.634832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311638, 38.820724, 24.684513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057483, -0.264607, -0.962642,
		0.266632, -0.933280, 0.240615,
		-0.962083, -0.242839, 0.124200,
		34.023014, 38.747871, 24.721773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579212, 38.537346, 24.069540>,  <34.696472, 38.917862, 24.634832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579212, 38.537346, 24.069540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203289, 38.551609, 24.205471>,  <33.977734, 38.560165, 24.287029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203289, 38.551609, 24.205471>,  <34.579212, 38.537346, 24.069540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203289, 38.551609, 24.205471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339668, -0.205592, -0.917800,
		0.037143, -0.977988, 0.205328,
		-0.939812, 0.035654, 0.339827,
		33.921345, 38.562305, 24.307419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289520, 37.937374, 24.019297>,  <34.579212, 38.537346, 24.069540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289520, 37.937374, 24.019297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012928, 38.223545, 23.979254>,  <33.846973, 38.395248, 23.955227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012928, 38.223545, 23.979254>,  <34.289520, 37.937374, 24.019297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012928, 38.223545, 23.979254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251151, -0.368015, -0.895259,
		-0.677334, -0.593910, 0.434154,
		-0.691478, 0.715427, -0.100108,
		33.805485, 38.438171, 23.949221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777359, 37.594715, 23.843916>,  <34.289520, 37.937374, 24.019297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777359, 37.594715, 23.843916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668339, 37.961643, 23.727818>,  <33.602928, 38.181801, 23.658159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668339, 37.961643, 23.727818>,  <33.777359, 37.594715, 23.843916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668339, 37.961643, 23.727818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473247, -0.390464, -0.789668,
		-0.837707, -0.077867, 0.540540,
		-0.272551, 0.917319, -0.290244,
		33.586575, 38.236839, 23.640745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081429, 37.567860, 23.462976>,  <33.777359, 37.594715, 23.843916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081429, 37.567860, 23.462976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217602, 37.921715, 23.335527>,  <33.299305, 38.134029, 23.259058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217602, 37.921715, 23.335527>,  <33.081429, 37.567860, 23.462976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217602, 37.921715, 23.335527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253424, -0.239998, -0.937111,
		-0.905473, 0.399771, 0.142485,
		0.340433, 0.884638, -0.318623,
		33.319733, 38.187107, 23.239941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513493, 38.094948, 23.146727>,  <33.081429, 37.567860, 23.462976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513493, 38.094948, 23.146727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875641, 38.126862, 22.979902>,  <33.092930, 38.146011, 22.879808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875641, 38.126862, 22.979902>,  <32.513493, 38.094948, 23.146727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875641, 38.126862, 22.979902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404476, -0.136898, -0.904244,
		-0.129239, 0.987367, -0.091672,
		0.905371, 0.079784, -0.417059,
		33.147251, 38.150795, 22.854784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430645, 38.405758, 22.485239>,  <32.513493, 38.094948, 23.146727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430645, 38.405758, 22.485239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810249, 38.298634, 22.418715>,  <33.038010, 38.234360, 22.378799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810249, 38.298634, 22.418715>,  <32.430645, 38.405758, 22.485239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810249, 38.298634, 22.418715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219051, -0.180806, -0.958815,
		0.226712, 0.946354, -0.230251,
		0.949009, -0.267812, -0.166309,
		33.094952, 38.218288, 22.368822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698601, 38.725063, 21.831007>,  <32.430645, 38.405758, 22.485239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698601, 38.725063, 21.831007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910278, 38.392128, 21.896923>,  <33.037285, 38.192368, 21.936472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910278, 38.392128, 21.896923>,  <32.698601, 38.725063, 21.831007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910278, 38.392128, 21.896923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240857, -0.333584, -0.911433,
		0.813595, 0.442637, -0.377008,
		0.529198, -0.832343, 0.164790,
		33.069038, 38.142426, 21.946360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259571, 38.635567, 21.267670>,  <32.698601, 38.725063, 21.831007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259571, 38.635567, 21.267670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183086, 38.277702, 21.429174>,  <33.137196, 38.062984, 21.526077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183086, 38.277702, 21.429174>,  <33.259571, 38.635567, 21.267670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183086, 38.277702, 21.429174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218326, -0.362281, -0.906138,
		0.956959, -0.261417, -0.126054,
		-0.191213, -0.894659, 0.403762,
		33.125721, 38.009304, 21.550303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439926, 38.269417, 20.690535>,  <33.259571, 38.635567, 21.267670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439926, 38.269417, 20.690535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287773, 37.993565, 20.937019>,  <33.196484, 37.828053, 21.084909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287773, 37.993565, 20.937019>,  <33.439926, 38.269417, 20.690535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287773, 37.993565, 20.937019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333977, -0.518903, -0.786892,
		0.862421, -0.505119, -0.032941,
		-0.380381, -0.689634, 0.616211,
		33.173660, 37.786674, 21.121883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785732, 37.592628, 20.710878>,  <33.439926, 38.269417, 20.690535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785732, 37.592628, 20.710878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413654, 37.494232, 20.819859>,  <33.190407, 37.435196, 20.885246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413654, 37.494232, 20.819859>,  <33.785732, 37.592628, 20.710878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413654, 37.494232, 20.819859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017261, -0.712100, -0.701866,
		0.366662, -0.657574, 0.658145,
		-0.930194, -0.245987, 0.272450,
		33.134598, 37.420437, 20.901594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750607, 36.938389, 20.608959>,  <33.785732, 37.592628, 20.710878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750607, 36.938389, 20.608959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363194, 37.019222, 20.667074>,  <33.130745, 37.067722, 20.701944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363194, 37.019222, 20.667074>,  <33.750607, 36.938389, 20.608959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363194, 37.019222, 20.667074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248688, -0.761986, -0.597940,
		-0.010127, -0.615255, 0.788263,
		-0.968531, 0.202087, 0.145289,
		33.072636, 37.079849, 20.710661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424969, 36.268150, 20.711359>,  <33.750607, 36.938389, 20.608959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424969, 36.268150, 20.711359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136414, 36.513359, 20.582487>,  <32.963280, 36.660484, 20.505163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136414, 36.513359, 20.582487>,  <33.424969, 36.268150, 20.711359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136414, 36.513359, 20.582487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319075, -0.707116, -0.631013,
		-0.614643, -0.352408, 0.705707,
		-0.721391, 0.613021, -0.322179,
		32.919998, 36.697266, 20.485832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847954, 35.896633, 20.704313>,  <33.424969, 36.268150, 20.711359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847954, 35.896633, 20.704313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770340, 36.185879, 20.439148>,  <32.723770, 36.359425, 20.280048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770340, 36.185879, 20.439148>,  <32.847954, 35.896633, 20.704313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770340, 36.185879, 20.439148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117475, -0.688023, -0.716117,
		-0.973935, -0.061077, 0.218449,
		-0.194036, 0.723114, -0.662914,
		32.712128, 36.402813, 20.240274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213203, 35.756535, 20.343264>,  <32.847954, 35.896633, 20.704313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213203, 35.756535, 20.343264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368668, 36.013626, 20.079189>,  <32.461948, 36.167881, 19.920744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368668, 36.013626, 20.079189>,  <32.213203, 35.756535, 20.343264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368668, 36.013626, 20.079189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047614, -0.701552, -0.711026,
		-0.920149, 0.307782, -0.242064,
		0.388662, 0.642724, -0.660187,
		32.485268, 36.206444, 19.881134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952911, 35.516556, 19.674419>,  <32.213203, 35.756535, 20.343264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952911, 35.516556, 19.674419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238594, 35.774727, 19.566099>,  <32.410004, 35.929630, 19.501106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238594, 35.774727, 19.566099>,  <31.952911, 35.516556, 19.674419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238594, 35.774727, 19.566099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214786, -0.570325, -0.792841,
		-0.666166, 0.508087, -0.545958,
		0.714206, 0.645428, -0.270802,
		32.452854, 35.968353, 19.484859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739361, 35.744923, 19.052862>,  <31.952911, 35.516556, 19.674419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739361, 35.744923, 19.052862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135025, 35.795601, 19.082542>,  <32.372425, 35.826008, 19.100351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135025, 35.795601, 19.082542>,  <31.739361, 35.744923, 19.052862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135025, 35.795601, 19.082542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129210, -0.511114, -0.849745,
		-0.069738, 0.850123, -0.521946,
		0.989162, 0.126700, 0.074200,
		32.431774, 35.833611, 19.104803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925533, 35.834652, 18.374401>,  <31.739361, 35.744923, 19.052862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925533, 35.834652, 18.374401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241581, 35.709896, 18.585470>,  <32.431210, 35.635044, 18.712111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241581, 35.709896, 18.585470>,  <31.925533, 35.834652, 18.374401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241581, 35.709896, 18.585470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213259, -0.667206, -0.713693,
		0.574658, 0.676433, -0.460659,
		0.790119, -0.311889, 0.527671,
		32.478619, 35.616329, 18.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498451, 35.741268, 17.879734>,  <31.925533, 35.834652, 18.374401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498451, 35.741268, 17.879734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632435, 35.549896, 18.204426>,  <32.712826, 35.435074, 18.399240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632435, 35.549896, 18.204426>,  <32.498451, 35.741268, 17.879734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632435, 35.549896, 18.204426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434053, -0.686292, -0.583610,
		0.836302, 0.547819, -0.022215,
		0.334958, -0.478431, 0.811730,
		32.732922, 35.406368, 18.447945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215908, 35.485149, 17.712164>,  <32.498451, 35.741268, 17.879734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215908, 35.485149, 17.712164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042912, 35.260967, 17.994680>,  <32.939114, 35.126457, 18.164190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042912, 35.260967, 17.994680>,  <33.215908, 35.485149, 17.712164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042912, 35.260967, 17.994680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346624, -0.826490, -0.443584,
		0.832350, 0.052973, 0.551713,
		-0.432487, -0.560454, 0.706290,
		32.913166, 35.092831, 18.206568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684654, 35.017063, 18.154161>,  <33.215908, 35.485149, 17.712164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684654, 35.017063, 18.154161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314487, 34.865974, 18.141970>,  <33.092388, 34.775322, 18.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314487, 34.865974, 18.141970>,  <33.684654, 35.017063, 18.154161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314487, 34.865974, 18.141970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359441, -0.849457, -0.386296,
		0.120022, -0.368440, 0.921871,
		-0.925417, -0.377723, -0.030479,
		33.036861, 34.752659, 18.132826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491257, 34.299641, 17.925774>,  <33.684654, 35.017063, 18.154161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491257, 34.299641, 17.925774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857407, 34.153603, 17.857885>,  <34.077095, 34.065979, 17.817152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857407, 34.153603, 17.857885>,  <33.491257, 34.299641, 17.925774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857407, 34.153603, 17.857885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387486, 0.684419, 0.617596,
		-0.109320, -0.631093, 0.767965,
		0.915371, -0.365091, -0.169719,
		34.132019, 34.044075, 17.806971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871834, 34.093792, 18.564835>,  <33.491257, 34.299641, 17.925774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871834, 34.093792, 18.564835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174778, 34.161896, 18.312670>,  <34.356544, 34.202759, 18.161371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174778, 34.161896, 18.312670>,  <33.871834, 34.093792, 18.564835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174778, 34.161896, 18.312670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418406, 0.614669, 0.668669,
		0.501339, -0.770191, 0.394290,
		0.757361, 0.170257, -0.630410,
		34.401985, 34.212975, 18.123547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486805, 33.970116, 18.922066>,  <33.871834, 34.093792, 18.564835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486805, 33.970116, 18.922066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577679, 34.200493, 18.607950>,  <34.632202, 34.338718, 18.419481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577679, 34.200493, 18.607950>,  <34.486805, 33.970116, 18.922066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577679, 34.200493, 18.607950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530797, 0.602836, 0.595688,
		0.816483, -0.552156, -0.168758,
		0.227180, 0.575945, -0.785287,
		34.645832, 34.373276, 18.372364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192375, 33.929638, 18.957075>,  <34.486805, 33.970116, 18.922066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192375, 33.929638, 18.957075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110268, 34.266033, 18.756832>,  <35.061005, 34.467869, 18.636686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110268, 34.266033, 18.756832>,  <35.192375, 33.929638, 18.957075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110268, 34.266033, 18.756832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584351, 0.515632, 0.626623,
		0.785110, -0.163904, -0.597275,
		-0.205268, 0.840987, -0.500605,
		35.048687, 34.518330, 18.606651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862492, 34.217762, 18.812424>,  <35.192375, 33.929638, 18.957075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862492, 34.217762, 18.812424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592670, 34.510704, 18.775242>,  <35.430779, 34.686470, 18.752934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592670, 34.510704, 18.775242>,  <35.862492, 34.217762, 18.812424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592670, 34.510704, 18.775242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600883, 0.617833, 0.507171,
		0.428857, 0.286259, -0.856818,
		-0.674552, 0.732351, -0.092954,
		35.390305, 34.730408, 18.747356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268188, 34.865108, 18.780872>,  <35.862492, 34.217762, 18.812424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268188, 34.865108, 18.780872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909565, 35.032940, 18.837633>,  <35.694393, 35.133640, 18.871689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909565, 35.032940, 18.837633>,  <36.268188, 34.865108, 18.780872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909565, 35.032940, 18.837633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429548, 0.745491, 0.509639,
		0.108049, 0.517874, -0.848606,
		-0.896557, 0.419583, 0.141902,
		35.640598, 35.158813, 18.880203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364407, 35.606354, 18.631409>,  <36.268188, 34.865108, 18.780872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364407, 35.606354, 18.631409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063255, 35.534515, 18.884684>,  <35.882565, 35.491413, 19.036648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063255, 35.534515, 18.884684>,  <36.364407, 35.606354, 18.631409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063255, 35.534515, 18.884684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350897, 0.704387, 0.617017,
		-0.556819, 0.686720, -0.467298,
		-0.752877, -0.179594, 0.633185,
		35.837391, 35.480637, 19.074638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193233, 36.184799, 18.812531>,  <36.364407, 35.606354, 18.631409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193233, 36.184799, 18.812531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040150, 35.970997, 19.113953>,  <35.948299, 35.842716, 19.294806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040150, 35.970997, 19.113953>,  <36.193233, 36.184799, 18.812531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040150, 35.970997, 19.113953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246016, 0.727240, 0.640780,
		-0.890512, 0.430617, -0.146823,
		-0.382706, -0.534502, 0.753555,
		35.925339, 35.810646, 19.340019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066223, 36.771618, 19.362217>,  <36.193233, 36.184799, 18.812531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066223, 36.771618, 19.362217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019955, 36.425175, 19.556736>,  <35.992195, 36.217308, 19.673447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019955, 36.425175, 19.556736>,  <36.066223, 36.771618, 19.362217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019955, 36.425175, 19.556736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370955, 0.416491, 0.830017,
		-0.921419, 0.276404, 0.273109,
		-0.115673, -0.866104, 0.486296,
		35.985252, 36.165344, 19.702625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761383, 36.923359, 19.965414>,  <36.066223, 36.771618, 19.362217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761383, 36.923359, 19.965414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942253, 36.571846, 20.026440>,  <36.050774, 36.360939, 20.063055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942253, 36.571846, 20.026440>,  <35.761383, 36.923359, 19.965414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942253, 36.571846, 20.026440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198213, 0.265779, 0.943437,
		-0.869626, -0.396357, 0.294365,
		0.452174, -0.878784, 0.152565,
		36.077904, 36.308212, 20.072208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537373, 36.735294, 20.674664>,  <35.761383, 36.923359, 19.965414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537373, 36.735294, 20.674664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862537, 36.522354, 20.580196>,  <36.057636, 36.394588, 20.523516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862537, 36.522354, 20.580196>,  <35.537373, 36.735294, 20.674664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862537, 36.522354, 20.580196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360776, 0.141984, 0.921782,
		-0.457181, -0.834530, 0.307481,
		0.812912, -0.532353, -0.236166,
		36.106411, 36.362648, 20.509346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525818, 36.143761, 21.074654>,  <35.537373, 36.735294, 20.674664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525818, 36.143761, 21.074654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905514, 36.214256, 20.970432>,  <36.133331, 36.256554, 20.907900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905514, 36.214256, 20.970432>,  <35.525818, 36.143761, 21.074654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905514, 36.214256, 20.970432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256131, 0.047791, 0.965460,
		0.182603, -0.983187, 0.000225,
		0.949238, 0.176238, -0.260551,
		36.190285, 36.267128, 20.892267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871490, 35.801342, 21.624367>,  <35.525818, 36.143761, 21.074654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871490, 35.801342, 21.624367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110676, 36.068340, 21.446880>,  <36.254189, 36.228539, 21.340387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110676, 36.068340, 21.446880>,  <35.871490, 35.801342, 21.624367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110676, 36.068340, 21.446880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163357, 0.440483, 0.882774,
		0.784698, -0.600353, 0.154353,
		0.597966, 0.667496, -0.443718,
		36.290066, 36.268589, 21.313765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372749, 35.779690, 21.993288>,  <35.871490, 35.801342, 21.624367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372749, 35.779690, 21.993288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421963, 36.122879, 21.793793>,  <36.451492, 36.328793, 21.674095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421963, 36.122879, 21.793793>,  <36.372749, 35.779690, 21.993288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421963, 36.122879, 21.793793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304230, 0.445751, 0.841873,
		0.944619, -0.255314, -0.206178,
		0.123038, 0.857975, -0.498739,
		36.458874, 36.380272, 21.644171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931442, 36.161995, 22.273533>,  <36.372749, 35.779690, 21.993288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931442, 36.161995, 22.273533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730736, 36.468605, 22.113195>,  <36.610313, 36.652569, 22.016993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730736, 36.468605, 22.113195>,  <36.931442, 36.161995, 22.273533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730736, 36.468605, 22.113195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275067, 0.580740, 0.766211,
		0.820104, 0.274198, -0.502239,
		-0.501764, 0.766522, -0.400845,
		36.580208, 36.698563, 21.992943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260918, 36.629066, 22.537457>,  <36.931442, 36.161995, 22.273533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260918, 36.629066, 22.537457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970608, 36.864605, 22.395187>,  <36.796421, 37.005928, 22.309826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970608, 36.864605, 22.395187>,  <37.260918, 36.629066, 22.537457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970608, 36.864605, 22.395187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173468, 0.656967, 0.733692,
		0.665699, 0.470799, -0.578958,
		-0.725778, 0.588849, -0.355674,
		36.752876, 37.041260, 22.288485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560204, 37.260681, 22.611595>,  <37.260918, 36.629066, 22.537457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560204, 37.260681, 22.611595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160385, 37.260189, 22.599495>,  <36.920494, 37.259892, 22.592236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160385, 37.260189, 22.599495>,  <37.560204, 37.260681, 22.611595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160385, 37.260189, 22.599495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025567, 0.569544, 0.821563,
		0.016215, 0.821960, -0.569314,
		-0.999542, -0.001233, -0.030250,
		36.860523, 37.259819, 22.590420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401714, 37.792976, 22.897171>,  <37.560204, 37.260681, 22.611595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401714, 37.792976, 22.897171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043694, 37.619438, 22.938469>,  <36.828880, 37.515316, 22.963247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043694, 37.619438, 22.938469>,  <37.401714, 37.792976, 22.897171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043694, 37.619438, 22.938469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148957, 0.509051, 0.847749,
		-0.420348, 0.743401, -0.520252,
		-0.895053, -0.433845, 0.103244,
		36.775177, 37.489285, 22.969442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958046, 38.259834, 23.066114>,  <37.401714, 37.792976, 22.897171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958046, 38.259834, 23.066114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777683, 37.925518, 23.191418>,  <36.669464, 37.724926, 23.266600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777683, 37.925518, 23.191418>,  <36.958046, 38.259834, 23.066114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777683, 37.925518, 23.191418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387196, 0.499379, 0.775048,
		-0.804215, 0.228183, -0.548790,
		-0.450907, -0.835795, 0.313256,
		36.642410, 37.674778, 23.285395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249084, 38.434319, 23.181004>,  <36.958046, 38.259834, 23.066114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249084, 38.434319, 23.181004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291847, 38.104095, 23.402641>,  <36.317505, 37.905960, 23.535624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291847, 38.104095, 23.402641>,  <36.249084, 38.434319, 23.181004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291847, 38.104095, 23.402641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479199, 0.445513, 0.756232,
		-0.871171, -0.346366, -0.347981,
		0.106903, -0.825559, 0.554097,
		36.323917, 37.856426, 23.568871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747639, 38.468296, 23.569860>,  <36.249084, 38.434319, 23.181004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747639, 38.468296, 23.569860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940800, 38.175461, 23.762047>,  <36.056698, 37.999760, 23.877359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940800, 38.175461, 23.762047>,  <35.747639, 38.468296, 23.569860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940800, 38.175461, 23.762047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349535, 0.341925, 0.872303,
		-0.802889, -0.589176, -0.090776,
		0.482901, -0.732092, 0.480466,
		36.085670, 37.955833, 23.906187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292332, 38.111168, 24.126579>,  <35.747639, 38.468296, 23.569860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292332, 38.111168, 24.126579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669456, 38.024677, 24.228046>,  <35.895733, 37.972782, 24.288927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669456, 38.024677, 24.228046>,  <35.292332, 38.111168, 24.126579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669456, 38.024677, 24.228046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140110, 0.433447, 0.890221,
		-0.302439, -0.874855, 0.378365,
		0.942815, -0.216224, 0.253667,
		35.952301, 37.959808, 24.304146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189960, 37.819931, 24.756197>,  <35.292332, 38.111168, 24.126579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189960, 37.819931, 24.756197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577190, 37.919319, 24.769472>,  <35.809528, 37.978951, 24.777437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577190, 37.919319, 24.769472>,  <35.189960, 37.819931, 24.756197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577190, 37.919319, 24.769472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110392, 0.303698, 0.946352,
		0.225056, -0.919800, 0.321430,
		0.968072, 0.248465, 0.033189,
		35.867611, 37.993858, 24.779428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451820, 37.449013, 25.325191>,  <35.189960, 37.819931, 24.756197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451820, 37.449013, 25.325191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688225, 37.767090, 25.270958>,  <35.830067, 37.957935, 25.238419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688225, 37.767090, 25.270958>,  <35.451820, 37.449013, 25.325191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688225, 37.767090, 25.270958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086231, 0.229395, 0.969506,
		0.802044, -0.561293, 0.204144,
		0.591007, 0.795190, -0.135584,
		35.865528, 38.005646, 25.230282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965572, 37.377693, 25.895489>,  <35.451820, 37.449013, 25.325191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965572, 37.377693, 25.895489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024570, 37.756050, 25.779879>,  <36.059971, 37.983063, 25.710512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024570, 37.756050, 25.779879>,  <35.965572, 37.377693, 25.895489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024570, 37.756050, 25.779879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351257, 0.223076, 0.909316,
		0.924588, -0.235646, -0.299347,
		0.147500, 0.945890, -0.289025,
		36.068821, 38.039818, 25.693171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634861, 37.643757, 26.157824>,  <35.965572, 37.377693, 25.895489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634861, 37.643757, 26.157824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467724, 37.996937, 26.072210>,  <36.367443, 38.208843, 26.020842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467724, 37.996937, 26.072210>,  <36.634861, 37.643757, 26.157824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467724, 37.996937, 26.072210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110010, 0.283023, 0.952783,
		0.901834, 0.374568, -0.215392,
		-0.417843, 0.882948, -0.214033,
		36.342369, 38.261822, 26.007999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136787, 38.182217, 26.348562>,  <36.634861, 37.643757, 26.157824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136787, 38.182217, 26.348562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773514, 38.349003, 26.363205>,  <36.555550, 38.449074, 26.371990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773514, 38.349003, 26.363205>,  <37.136787, 38.182217, 26.348562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773514, 38.349003, 26.363205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256162, 0.484515, 0.836437,
		0.331026, 0.769018, -0.546840,
		-0.908186, 0.416962, 0.036606,
		36.501057, 38.474091, 26.374187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271904, 38.828251, 26.490559>,  <37.136787, 38.182217, 26.348562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271904, 38.828251, 26.490559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901138, 38.726131, 26.600576>,  <36.678680, 38.664860, 26.666586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901138, 38.726131, 26.600576>,  <37.271904, 38.828251, 26.490559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901138, 38.726131, 26.600576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117192, 0.499339, 0.858444,
		-0.356504, 0.827938, -0.432925,
		-0.926915, -0.255303, 0.275044,
		36.623062, 38.649540, 26.683090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945633, 39.377110, 26.759943>,  <37.271904, 38.828251, 26.490559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945633, 39.377110, 26.759943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714092, 39.095589, 26.924665>,  <36.575169, 38.926674, 27.023499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714092, 39.095589, 26.924665>,  <36.945633, 39.377110, 26.759943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714092, 39.095589, 26.924665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143070, 0.409521, 0.901012,
		-0.802780, 0.580473, -0.136361,
		-0.578856, -0.703806, 0.411804,
		36.540436, 38.884445, 27.048206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480961, 39.772259, 27.200399>,  <36.945633, 39.377110, 26.759943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480961, 39.772259, 27.200399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449669, 39.399315, 27.341587>,  <36.430893, 39.175549, 27.426300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449669, 39.399315, 27.341587>,  <36.480961, 39.772259, 27.200399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449669, 39.399315, 27.341587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116844, 0.343037, 0.932026,
		-0.990064, 0.114154, 0.082105,
		-0.078229, -0.932359, 0.352967,
		36.426201, 39.119606, 27.447477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040085, 39.868988, 27.773005>,  <36.480961, 39.772259, 27.200399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040085, 39.868988, 27.773005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192059, 39.510689, 27.865335>,  <36.283245, 39.295708, 27.920734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192059, 39.510689, 27.865335>,  <36.040085, 39.868988, 27.773005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192059, 39.510689, 27.865335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224164, 0.331261, 0.916524,
		-0.897440, -0.296478, 0.326653,
		0.379937, -0.895749, 0.230828,
		36.306038, 39.241962, 27.934584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802673, 39.801685, 28.460985>,  <36.040085, 39.868988, 27.773005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802673, 39.801685, 28.460985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109993, 39.546650, 28.438364>,  <36.294384, 39.393627, 28.424791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109993, 39.546650, 28.438364>,  <35.802673, 39.801685, 28.460985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109993, 39.546650, 28.438364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311635, 0.295415, 0.903113,
		-0.559108, -0.711485, 0.425662,
		0.768298, -0.637589, -0.056554,
		36.340481, 39.355373, 28.421398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784725, 39.338505, 29.037308>,  <35.802673, 39.801685, 28.460985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784725, 39.338505, 29.037308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 39.374722, 28.905828>,  <36.386379, 39.396450, 28.826941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160759, 39.374722, 28.905828>,  <35.784725, 39.338505, 29.037308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160759, 39.374722, 28.905828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234230, 0.529042, 0.815629,
		0.247742, -0.843752, 0.476137,
		0.940085, 0.090540, -0.328698,
		36.442783, 39.401882, 28.807219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174328, 39.203724, 29.652811>,  <35.784725, 39.338505, 29.037308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174328, 39.203724, 29.652811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425293, 39.392143, 29.404791>,  <36.575871, 39.505196, 29.255978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425293, 39.392143, 29.404791>,  <36.174328, 39.203724, 29.652811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425293, 39.392143, 29.404791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430257, 0.453975, 0.780247,
		0.649025, -0.756318, 0.082156,
		0.627411, 0.471052, -0.620052,
		36.613518, 39.533459, 29.218775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675556, 39.309769, 30.084066>,  <36.174328, 39.203724, 29.652811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675556, 39.309769, 30.084066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801769, 39.524078, 29.770792>,  <36.877499, 39.652664, 29.582827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801769, 39.524078, 29.770792>,  <36.675556, 39.309769, 30.084066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801769, 39.524078, 29.770792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716909, 0.406125, 0.566660,
		0.621676, -0.740273, -0.255959,
		0.315532, 0.535778, -0.783187,
		36.896427, 39.684811, 29.535835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361946, 39.230339, 30.144720>,  <36.675556, 39.309769, 30.084066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361946, 39.230339, 30.144720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286922, 39.559975, 29.930918>,  <37.241909, 39.757755, 29.802637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286922, 39.559975, 29.930918>,  <37.361946, 39.230339, 30.144720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286922, 39.559975, 29.930918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632027, 0.517801, 0.576562,
		0.751908, -0.229685, -0.617964,
		-0.187555, 0.824091, -0.534506,
		37.230656, 39.807201, 29.770565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045013, 39.493790, 29.960068>,  <37.361946, 39.230339, 30.144720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045013, 39.493790, 29.960068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784462, 39.794289, 29.917496>,  <37.628132, 39.974590, 29.891953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784462, 39.794289, 29.917496>,  <38.045013, 39.493790, 29.960068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784462, 39.794289, 29.917496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554786, 0.567259, 0.608630,
		0.517607, 0.337403, -0.786284,
		-0.651380, 0.751250, -0.106431,
		37.589046, 40.019665, 29.885567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476265, 40.070007, 29.943991>,  <38.045013, 39.493790, 29.960068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476265, 40.070007, 29.943991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111809, 40.201168, 30.043839>,  <37.893135, 40.279865, 30.103748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111809, 40.201168, 30.043839>,  <38.476265, 40.070007, 29.943991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111809, 40.201168, 30.043839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394614, 0.519603, 0.757820,
		0.118788, 0.788982, -0.602825,
		-0.911136, 0.327903, 0.249621,
		37.838467, 40.299538, 30.118725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563152, 40.758541, 30.118015>,  <38.476265, 40.070007, 29.943991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563152, 40.758541, 30.118015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204296, 40.676426, 30.274471>,  <37.988983, 40.627155, 30.368345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204296, 40.676426, 30.274471>,  <38.563152, 40.758541, 30.118015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204296, 40.676426, 30.274471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290787, 0.392099, 0.872755,
		-0.332536, 0.896724, -0.292072,
		-0.897142, -0.205292, 0.391142,
		37.935154, 40.614838, 30.391813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381271, 41.307224, 30.582829>,  <38.563152, 40.758541, 30.118015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381271, 41.307224, 30.582829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158810, 41.004013, 30.719112>,  <38.025333, 40.822086, 30.800882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158810, 41.004013, 30.719112>,  <38.381271, 41.307224, 30.582829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158810, 41.004013, 30.719112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272241, 0.221174, 0.936465,
		-0.785226, 0.613573, 0.083360,
		-0.556153, -0.758030, 0.340711,
		37.991962, 40.776604, 30.821325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072453, 41.554470, 31.136879>,  <38.381271, 41.307224, 30.582829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072453, 41.554470, 31.136879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075214, 41.158630, 31.194353>,  <38.076870, 40.921127, 31.228838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075214, 41.158630, 31.194353>,  <38.072453, 41.554470, 31.136879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075214, 41.158630, 31.194353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444500, 0.131752, 0.886036,
		-0.895752, 0.057750, 0.440787,
		0.006906, -0.989599, 0.143687,
		38.077286, 40.861752, 31.237459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944912, 41.517872, 31.813398>,  <38.072453, 41.554470, 31.136879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944912, 41.517872, 31.813398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093021, 41.159180, 31.716431>,  <38.181889, 40.943962, 31.658251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093021, 41.159180, 31.716431>,  <37.944912, 41.517872, 31.813398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093021, 41.159180, 31.716431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512587, -0.020398, 0.858393,
		-0.774694, -0.442102, 0.452101,
		0.370276, -0.896733, -0.242418,
		38.204105, 40.890160, 31.643705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786972, 41.168579, 32.383575>,  <37.944912, 41.517872, 31.813398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786972, 41.168579, 32.383575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081932, 40.961239, 32.210346>,  <38.258907, 40.836834, 32.106407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.081932, 40.961239, 32.210346>,  <37.786972, 41.168579, 32.383575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081932, 40.961239, 32.210346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488889, -0.032821, 0.871728,
		-0.466072, -0.854540, 0.229212,
		0.737404, -0.518348, -0.433072,
		38.303154, 40.805737, 32.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934986, 40.540337, 32.746311>,  <37.786972, 41.168579, 32.383575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934986, 40.540337, 32.746311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275276, 40.621124, 32.552204>,  <38.479450, 40.669598, 32.435741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275276, 40.621124, 32.552204>,  <37.934986, 40.540337, 32.746311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275276, 40.621124, 32.552204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476138, 0.094924, 0.874232,
		0.222632, -0.974781, -0.015411,
		0.850722, 0.201969, -0.485263,
		38.530495, 40.681713, 32.406624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412731, 40.119709, 33.165905>,  <37.934986, 40.540337, 32.746311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412731, 40.119709, 33.165905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618671, 40.392799, 32.958515>,  <38.742237, 40.556652, 32.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618671, 40.392799, 32.958515>,  <38.412731, 40.119709, 33.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618671, 40.392799, 32.958515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727912, -0.028669, 0.685071,
		0.452849, -0.730115, -0.511722,
		0.514852, 0.682722, -0.518477,
		38.773129, 40.597614, 32.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058659, 39.758923, 32.986877>,  <38.412731, 40.119709, 33.165905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058659, 39.758923, 32.986877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133434, 40.149326, 32.942219>,  <39.178299, 40.383568, 32.915424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133434, 40.149326, 32.942219>,  <39.058659, 39.758923, 32.986877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133434, 40.149326, 32.942219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694234, -0.050846, 0.717951,
		0.695048, -0.211722, -0.687082,
		0.186941, 0.976007, -0.111644,
		39.189518, 40.442127, 32.908726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736130, 39.744183, 32.932701>,  <39.058659, 39.758923, 32.986877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736130, 39.744183, 32.932701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629078, 40.112579, 33.045944>,  <39.564846, 40.333618, 33.113892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629078, 40.112579, 33.045944>,  <39.736130, 39.744183, 32.932701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629078, 40.112579, 33.045944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707250, -0.011765, 0.706865,
		0.654346, 0.389410, -0.648222,
		-0.267634, 0.920990, 0.283108,
		39.548786, 40.388878, 33.130878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384762, 40.268806, 32.920216>,  <39.736130, 39.744183, 32.932701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384762, 40.268806, 32.920216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118286, 40.429577, 33.171497>,  <39.958401, 40.526039, 33.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118286, 40.429577, 33.171497>,  <40.384762, 40.268806, 32.920216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118286, 40.429577, 33.171497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712881, 0.095764, 0.694716,
		0.219068, 0.910649, -0.350324,
		-0.666191, 0.401929, 0.628205,
		39.918430, 40.550156, 33.359959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803185, 40.850304, 33.172863>,  <40.384762, 40.268806, 32.920216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803185, 40.850304, 33.172863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504692, 40.812641, 33.436462>,  <40.325596, 40.790043, 33.594624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504692, 40.812641, 33.436462>,  <40.803185, 40.850304, 33.172863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504692, 40.812641, 33.436462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649193, 0.116108, 0.751710,
		-0.147291, 0.988764, -0.025519,
		-0.746226, -0.094154, 0.659000,
		40.280823, 40.784393, 33.634163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798820, 41.478451, 33.635502>,  <40.803185, 40.850304, 33.172863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798820, 41.478451, 33.635502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670944, 41.135067, 33.795925>,  <40.594219, 40.929039, 33.892181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670944, 41.135067, 33.795925>,  <40.798820, 41.478451, 33.635502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670944, 41.135067, 33.795925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650278, 0.109077, 0.751825,
		-0.689154, 0.501156, 0.523363,
		-0.319695, -0.858455, 0.401062,
		40.575035, 40.877529, 33.916245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940914, 41.623466, 34.305252>,  <40.798820, 41.478451, 33.635502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940914, 41.623466, 34.305252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907013, 41.226723, 34.267220>,  <40.886673, 40.988678, 34.244400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907013, 41.226723, 34.267220>,  <40.940914, 41.623466, 34.305252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907013, 41.226723, 34.267220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627429, -0.127253, 0.768205,
		-0.774048, 0.005449, 0.633104,
		-0.084750, -0.991855, -0.095081,
		40.881588, 40.929165, 34.238693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945339, 41.420319, 34.974941>,  <40.940914, 41.623466, 34.305252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945339, 41.420319, 34.974941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029987, 41.085793, 34.772640>,  <41.080776, 40.885075, 34.651260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029987, 41.085793, 34.772640>,  <40.945339, 41.420319, 34.974941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029987, 41.085793, 34.772640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670331, -0.252379, 0.697826,
		-0.711246, -0.486700, 0.507200,
		0.211625, -0.836318, -0.505754,
		41.093475, 40.834896, 34.620914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119537, 40.992897, 35.476086>,  <40.945339, 41.420319, 34.974941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119537, 40.992897, 35.476086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197998, 40.757877, 35.162064>,  <41.245075, 40.616863, 34.973652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197998, 40.757877, 35.162064>,  <41.119537, 40.992897, 35.476086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197998, 40.757877, 35.162064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743511, -0.432858, 0.509730,
		-0.639310, -0.683679, 0.351947,
		0.196149, -0.587551, -0.785053,
		41.256844, 40.581612, 34.926548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238041, 40.378357, 35.734535>,  <41.119537, 40.992897, 35.476086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238041, 40.378357, 35.734535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462730, 40.415630, 35.405712>,  <41.597542, 40.437996, 35.208416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462730, 40.415630, 35.405712>,  <41.238041, 40.378357, 35.734535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462730, 40.415630, 35.405712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812403, -0.250000, 0.526784,
		-0.156427, -0.963751, -0.216135,
		0.561722, 0.093185, -0.822061,
		41.631248, 40.443584, 35.159092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696133, 39.808083, 35.705650>,  <41.238041, 40.378357, 35.734535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696133, 39.808083, 35.705650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877541, 40.088581, 35.485622>,  <41.986385, 40.256882, 35.353607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877541, 40.088581, 35.485622>,  <41.696133, 39.808083, 35.705650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877541, 40.088581, 35.485622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885439, -0.284158, 0.367766,
		0.101587, -0.653842, -0.749781,
		0.453517, 0.701245, -0.550070,
		42.013596, 40.298954, 35.320602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096306, 39.427879, 35.187077>,  <41.696133, 39.808083, 35.705650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096306, 39.427879, 35.187077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246758, 39.794209, 35.243340>,  <42.337029, 40.014008, 35.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246758, 39.794209, 35.243340>,  <42.096306, 39.427879, 35.187077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246758, 39.794209, 35.243340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797220, -0.397238, 0.454579,
		0.472191, -0.058844, -0.879530,
		0.376132, 0.915827, 0.140661,
		42.359596, 40.068958, 35.285538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770882, 39.248169, 35.366364>,  <42.096306, 39.427879, 35.187077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770882, 39.248169, 35.366364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800011, 39.646667, 35.385090>,  <42.817486, 39.885765, 35.396324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800011, 39.646667, 35.385090>,  <42.770882, 39.248169, 35.366364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800011, 39.646667, 35.385090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717426, -0.084928, 0.691439,
		0.692819, -0.016766, -0.720917,
		0.072819, 0.996246, 0.046811,
		42.821857, 39.945541, 35.399132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437691, 39.548008, 35.171459>,  <42.770882, 39.248169, 35.366364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437691, 39.548008, 35.171459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269089, 39.777725, 35.452179>,  <43.167927, 39.915554, 35.620609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269089, 39.777725, 35.452179>,  <43.437691, 39.548008, 35.171459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269089, 39.777725, 35.452179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667341, -0.327558, 0.668851,
		0.613997, 0.750262, -0.245183,
		-0.421502, 0.574293, 0.701800,
		43.142639, 39.950012, 35.662720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.991150, 39.870300, 35.543957>,  <43.437691, 39.548008, 35.171459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.991150, 39.870300, 35.543957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691757, 39.915508, 35.805336>,  <43.512119, 39.942631, 35.962162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691757, 39.915508, 35.805336>,  <43.991150, 39.870300, 35.543957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691757, 39.915508, 35.805336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626014, -0.204699, 0.752465,
		0.218803, 0.972278, 0.082464,
		-0.748486, 0.113018, 0.653449,
		43.467213, 39.949413, 36.001369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328854, 40.269966, 36.062862>,  <43.991150, 39.870300, 35.543957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328854, 40.269966, 36.062862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001019, 40.093464, 36.209053>,  <43.804317, 39.987564, 36.296768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.001019, 40.093464, 36.209053>,  <44.328854, 40.269966, 36.062862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001019, 40.093464, 36.209053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522337, -0.313296, 0.793101,
		-0.235457, 0.840917, 0.487257,
		-0.819588, -0.441253, 0.365474,
		43.755142, 39.961086, 36.318695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307617, 40.386414, 36.743217>,  <44.328854, 40.269966, 36.062862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307617, 40.386414, 36.743217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108383, 40.040901, 36.712772>,  <43.988842, 39.833591, 36.694508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108383, 40.040901, 36.712772>,  <44.307617, 40.386414, 36.743217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108383, 40.040901, 36.712772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634929, -0.423074, 0.646432,
		-0.590577, 0.273652, 0.759167,
		-0.498081, -0.863784, -0.076108,
		43.958958, 39.781765, 36.689941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261421, 40.141525, 37.436565>,  <44.307617, 40.386414, 36.743217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261421, 40.141525, 37.436565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211693, 39.840179, 37.178265>,  <44.181854, 39.659374, 37.023285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211693, 39.840179, 37.178265>,  <44.261421, 40.141525, 37.436565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211693, 39.840179, 37.178265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544148, -0.595970, 0.590527,
		-0.829727, -0.277969, 0.484031,
		-0.124320, -0.753361, -0.645749,
		44.174397, 39.614170, 36.984539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953690, 39.440617, 37.669682>,  <44.261421, 40.141525, 37.436565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953690, 39.440617, 37.669682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237877, 39.401638, 37.390903>,  <44.408390, 39.378250, 37.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237877, 39.401638, 37.390903>,  <43.953690, 39.440617, 37.669682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237877, 39.401638, 37.390903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387494, -0.772534, 0.503030,
		-0.587433, -0.627451, -0.511104,
		0.710472, -0.097447, -0.696946,
		44.451019, 39.372402, 37.181820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985065, 38.711708, 37.611835>,  <43.953690, 39.440617, 37.669682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985065, 38.711708, 37.611835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310684, 38.869446, 37.441277>,  <44.506058, 38.964088, 37.338940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310684, 38.869446, 37.441277>,  <43.985065, 38.711708, 37.611835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310684, 38.869446, 37.441277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578130, -0.620418, 0.529951,
		-0.055565, -0.677921, -0.733031,
		0.814051, 0.394341, -0.426400,
		44.554901, 38.987747, 37.313358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409531, 38.293728, 37.090618>,  <43.985065, 38.711708, 37.611835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409531, 38.293728, 37.090618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600666, 38.555885, 37.324585>,  <44.715347, 38.713181, 37.464966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600666, 38.555885, 37.324585>,  <44.409531, 38.293728, 37.090618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600666, 38.555885, 37.324585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381117, -0.754595, 0.534168,
		0.791466, -0.032324, -0.610357,
		0.477839, 0.655394, 0.584917,
		44.744019, 38.752502, 37.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927345, 38.821793, 36.593811>,  <44.409531, 38.293728, 37.090618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927345, 38.821793, 36.593811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923943, 39.111423, 36.869678>,  <43.921902, 39.285202, 37.035198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.923943, 39.111423, 36.869678>,  <43.927345, 38.821793, 36.593811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923943, 39.111423, 36.869678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354780, 0.642642, -0.679075,
		-0.934911, -0.250458, 0.251420,
		-0.008507, 0.724073, 0.689671,
		43.921391, 39.328644, 37.076580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236965, 38.928108, 36.618980>,  <43.927345, 38.821793, 36.593811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236965, 38.928108, 36.618980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406040, 39.272213, 36.733021>,  <43.507484, 39.478676, 36.801445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.406040, 39.272213, 36.733021>,  <43.236965, 38.928108, 36.618980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.406040, 39.272213, 36.733021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628266, 0.504871, -0.591935,
		-0.653160, 0.071082, 0.753876,
		0.422687, 0.860263, 0.285103,
		43.532845, 39.530293, 36.818550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709381, 39.319134, 36.826717>,  <43.236965, 38.928108, 36.618980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709381, 39.319134, 36.826717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016113, 39.534809, 36.687431>,  <43.200153, 39.664215, 36.603859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016113, 39.534809, 36.687431>,  <42.709381, 39.319134, 36.826717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016113, 39.534809, 36.687431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605819, 0.428800, -0.670159,
		-0.212027, 0.724851, 0.655465,
		0.766829, 0.539186, -0.348212,
		43.246162, 39.696564, 36.582966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580009, 40.019295, 36.888557>,  <42.709381, 39.319134, 36.826717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580009, 40.019295, 36.888557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862450, 40.008720, 36.605511>,  <43.031914, 40.002377, 36.435680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862450, 40.008720, 36.605511>,  <42.580009, 40.019295, 36.888557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862450, 40.008720, 36.605511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594523, 0.520711, -0.612700,
		0.384665, 0.853323, 0.351955,
		0.706098, -0.026439, -0.707620,
		43.074280, 40.000790, 36.393223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670521, 40.743282, 36.516792>,  <42.580009, 40.019295, 36.888557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670521, 40.743282, 36.516792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795174, 40.464176, 36.258797>,  <42.869965, 40.296711, 36.104000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795174, 40.464176, 36.258797>,  <42.670521, 40.743282, 36.516792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795174, 40.464176, 36.258797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281879, 0.580347, -0.764030,
		0.907430, 0.419904, -0.015831,
		0.311632, -0.697766, -0.644987,
		42.888664, 40.254845, 36.065300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047173, 41.096001, 35.948421>,  <42.670521, 40.743282, 36.516792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047173, 41.096001, 35.948421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864056, 40.755421, 35.846085>,  <42.754185, 40.551071, 35.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.864056, 40.755421, 35.846085>,  <43.047173, 41.096001, 35.948421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.864056, 40.755421, 35.846085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406332, 0.456330, -0.791616,
		0.790772, -0.258440, -0.554877,
		-0.457793, -0.851453, -0.255841,
		42.726719, 40.499985, 35.769333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653683, 41.317886, 35.458992>,  <43.047173, 41.096001, 35.948421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653683, 41.317886, 35.458992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578403, 40.928001, 35.410789>,  <42.533234, 40.694073, 35.381866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.578403, 40.928001, 35.410789>,  <42.653683, 41.317886, 35.458992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578403, 40.928001, 35.410789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586724, 0.209982, -0.782089,
		0.787613, -0.076485, -0.611404,
		-0.188202, -0.974709, -0.120509,
		42.521942, 40.635590, 35.374638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613369, 41.246220, 34.764977>,  <42.653683, 41.317886, 35.458992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613369, 41.246220, 34.764977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429897, 40.931816, 34.930771>,  <42.319813, 40.743172, 35.030247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429897, 40.931816, 34.930771>,  <42.613369, 41.246220, 34.764977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429897, 40.931816, 34.930771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705208, 0.038193, -0.707971,
		0.540644, -0.617029, -0.571822,
		-0.458678, -0.786013, 0.414485,
		42.292294, 40.696011, 35.055115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388069, 40.741734, 34.260330>,  <42.613369, 41.246220, 34.764977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388069, 40.741734, 34.260330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138641, 40.732113, 34.572891>,  <41.988987, 40.726341, 34.760426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138641, 40.732113, 34.572891>,  <42.388069, 40.741734, 34.260330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138641, 40.732113, 34.572891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769854, -0.154955, -0.619124,
		0.135974, -0.987629, 0.078107,
		-0.623567, -0.024054, 0.781400,
		41.951572, 40.724895, 34.807312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108990, 40.028778, 34.075951>,  <42.388069, 40.741734, 34.260330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108990, 40.028778, 34.075951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874004, 40.276901, 34.283836>,  <41.733013, 40.425777, 34.408569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874004, 40.276901, 34.283836>,  <42.108990, 40.028778, 34.075951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874004, 40.276901, 34.283836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736577, -0.143869, -0.660875,
		-0.335177, -0.771049, 0.541424,
		-0.587461, 0.620311, 0.519715,
		41.697765, 40.462994, 34.439751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488033, 39.621349, 34.234955>,  <42.108990, 40.028778, 34.075951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488033, 39.621349, 34.234955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410789, 40.011902, 34.273712>,  <41.364445, 40.246235, 34.296967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410789, 40.011902, 34.273712>,  <41.488033, 39.621349, 34.234955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410789, 40.011902, 34.273712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849803, -0.117074, -0.513934,
		-0.490452, -0.181584, 0.852340,
		-0.193109, 0.976382, 0.096891,
		41.352856, 40.304817, 34.302780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735817, 39.643005, 34.178295>,  <41.488033, 39.621349, 34.234955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735817, 39.643005, 34.178295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802948, 40.037327, 34.176239>,  <40.843227, 40.273918, 34.175007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802948, 40.037327, 34.176239>,  <40.735817, 39.643005, 34.178295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802948, 40.037327, 34.176239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871751, 0.145974, -0.467698,
		-0.460308, 0.082972, 0.883873,
		0.167828, 0.985803, -0.005138,
		40.853298, 40.333069, 34.174698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118065, 39.737099, 34.331394>,  <40.735817, 39.643005, 34.178295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118065, 39.737099, 34.331394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270607, 40.093651, 34.233414>,  <40.362133, 40.307583, 34.174625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270607, 40.093651, 34.233414>,  <40.118065, 39.737099, 34.331394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270607, 40.093651, 34.233414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863037, 0.248353, -0.439872,
		-0.331259, 0.379154, 0.864008,
		0.381359, 0.891382, -0.244954,
		40.385014, 40.361065, 34.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764065, 40.331123, 34.737762>,  <40.118065, 39.737099, 34.331394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764065, 40.331123, 34.737762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938946, 40.455696, 34.400276>,  <40.043877, 40.530441, 34.197784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938946, 40.455696, 34.400276>,  <39.764065, 40.331123, 34.737762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938946, 40.455696, 34.400276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879315, 0.344992, -0.328307,
		0.188829, 0.885431, 0.424682,
		0.437205, 0.311436, -0.843718,
		40.070107, 40.549126, 34.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154243, 40.564789, 34.444492>,  <39.764065, 40.331123, 34.737762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154243, 40.564789, 34.444492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476982, 40.617611, 34.214169>,  <39.670624, 40.649303, 34.075974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476982, 40.617611, 34.214169>,  <39.154243, 40.564789, 34.444492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476982, 40.617611, 34.214169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583141, 0.334081, -0.740498,
		0.094584, 0.933248, 0.346557,
		0.806846, 0.132052, -0.575814,
		39.719036, 40.657227, 34.041424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096268, 41.302280, 34.047359>,  <39.154243, 40.564789, 34.444492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096268, 41.302280, 34.047359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365807, 41.096760, 33.834972>,  <39.527531, 40.973446, 33.707539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365807, 41.096760, 33.834972>,  <39.096268, 41.302280, 34.047359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365807, 41.096760, 33.834972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484084, 0.235901, -0.842623,
		0.558201, 0.824836, -0.089763,
		0.673850, -0.513806, -0.530970,
		39.567963, 40.942619, 33.675682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492760, 41.656086, 33.515469>,  <39.096268, 41.302280, 34.047359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492760, 41.656086, 33.515469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510479, 41.278740, 33.383953>,  <39.521111, 41.052334, 33.305042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510479, 41.278740, 33.383953>,  <39.492760, 41.656086, 33.515469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510479, 41.278740, 33.383953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536169, 0.255246, -0.804595,
		0.842948, 0.211928, -0.494495,
		0.044298, -0.943364, -0.328788,
		39.523769, 40.995731, 33.285316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461121, 41.692543, 32.791805>,  <39.492760, 41.656086, 33.515469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461121, 41.692543, 32.791805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378899, 41.303307, 32.833450>,  <39.329563, 41.069763, 32.858437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378899, 41.303307, 32.833450>,  <39.461121, 41.692543, 32.791805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378899, 41.303307, 32.833450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468304, 0.004396, -0.883556,
		0.859324, -0.230376, -0.456606,
		-0.205558, -0.973092, 0.104108,
		39.317230, 41.011379, 32.864681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846287, 41.299221, 32.189365>,  <39.461121, 41.692543, 32.791805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846287, 41.299221, 32.189365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535015, 41.106377, 32.350368>,  <39.348251, 40.990669, 32.446968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535015, 41.106377, 32.350368>,  <39.846287, 41.299221, 32.189365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535015, 41.106377, 32.350368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428689, -0.060627, -0.901415,
		0.458986, -0.874009, -0.159498,
		-0.778175, -0.482113, 0.402506,
		39.301563, 40.961742, 32.471119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564888, 40.947678, 31.693226>,  <39.846287, 41.299221, 32.189365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564888, 40.947678, 31.693226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255978, 40.852364, 31.928787>,  <39.070633, 40.795174, 32.070126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.255978, 40.852364, 31.928787>,  <39.564888, 40.947678, 31.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255978, 40.852364, 31.928787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555112, -0.197674, -0.807945,
		0.308935, -0.950865, 0.020382,
		-0.772276, -0.238288, 0.588905,
		39.024296, 40.780876, 32.105457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371998, 40.228848, 31.675972>,  <39.564888, 40.947678, 31.693226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371998, 40.228848, 31.675972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038494, 40.420143, 31.786345>,  <38.838394, 40.534920, 31.852568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038494, 40.420143, 31.786345>,  <39.371998, 40.228848, 31.675972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038494, 40.420143, 31.786345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495152, -0.426537, -0.756895,
		-0.244279, -0.767695, 0.592429,
		-0.833757, 0.478236, 0.275932,
		38.788368, 40.563614, 31.869123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800125, 39.724468, 31.577236>,  <39.371998, 40.228848, 31.675972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800125, 39.724468, 31.577236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638451, 40.090317, 31.581291>,  <38.541447, 40.309826, 31.583723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638451, 40.090317, 31.581291>,  <38.800125, 39.724468, 31.577236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638451, 40.090317, 31.581291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533036, -0.226521, -0.815206,
		-0.743310, -0.334894, 0.579082,
		-0.404182, 0.914623, 0.010135,
		38.517197, 40.364704, 31.584332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182381, 39.083691, 31.748489>,  <38.800125, 39.724468, 31.577236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182381, 39.083691, 31.748489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315849, 38.749680, 31.573496>,  <39.395931, 38.549274, 31.468500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315849, 38.749680, 31.573496>,  <39.182381, 39.083691, 31.748489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315849, 38.749680, 31.573496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685394, -0.103733, 0.720746,
		-0.647225, -0.540340, 0.537711,
		0.333669, -0.835028, -0.437484,
		39.415951, 38.499172, 31.442251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325489, 38.489624, 32.110622>,  <39.182381, 39.083691, 31.748489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325489, 38.489624, 32.110622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569912, 38.386276, 31.811329>,  <39.716564, 38.324268, 31.631752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569912, 38.386276, 31.811329>,  <39.325489, 38.489624, 32.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569912, 38.386276, 31.811329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682550, -0.306769, 0.663339,
		-0.400920, -0.916046, -0.011106,
		0.611056, -0.258365, -0.748237,
		39.753227, 38.308765, 31.586859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534664, 37.794533, 32.241619>,  <39.325489, 38.489624, 32.110622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534664, 37.794533, 32.241619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806561, 37.999607, 32.031818>,  <39.969700, 38.122650, 31.905937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806561, 37.999607, 32.031818>,  <39.534664, 37.794533, 32.241619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806561, 37.999607, 32.031818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702871, -0.250995, 0.665563,
		0.209574, -0.821072, -0.530962,
		0.679744, 0.512682, -0.524505,
		40.010483, 38.153412, 31.874466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070938, 37.879608, 32.718575>,  <39.534664, 37.794533, 32.241619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070938, 37.879608, 32.718575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231636, 38.039295, 32.388916>,  <40.328056, 38.135109, 32.191120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231636, 38.039295, 32.388916>,  <40.070938, 37.879608, 32.718575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231636, 38.039295, 32.388916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856558, 0.154499, 0.492381,
		0.323900, -0.903743, -0.279888,
		0.401743, 0.399222, -0.824151,
		40.352158, 38.159061, 32.141670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702499, 37.517811, 32.482967>,  <40.070938, 37.879608, 32.718575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702499, 37.517811, 32.482967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672443, 37.912525, 32.425533>,  <40.654411, 38.149353, 32.391075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672443, 37.912525, 32.425533>,  <40.702499, 37.517811, 32.482967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672443, 37.912525, 32.425533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716922, 0.153538, 0.680036,
		0.693092, -0.051841, -0.718982,
		-0.075137, 0.986782, -0.143582,
		40.649902, 38.208561, 32.382458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249996, 37.740261, 32.149242>,  <40.702499, 37.517811, 32.482967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249996, 37.740261, 32.149242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105968, 38.020081, 32.396137>,  <41.019550, 38.187973, 32.544273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105968, 38.020081, 32.396137>,  <41.249996, 37.740261, 32.149242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105968, 38.020081, 32.396137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718424, -0.214164, 0.661816,
		0.595162, 0.681739, -0.425457,
		-0.360068, 0.699547, 0.617240,
		40.997948, 38.229946, 32.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726704, 38.213711, 32.200714>,  <41.249996, 37.740261, 32.149242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726704, 38.213711, 32.200714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554176, 38.176476, 32.559666>,  <41.450661, 38.154133, 32.775036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554176, 38.176476, 32.559666>,  <41.726704, 38.213711, 32.200714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554176, 38.176476, 32.559666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893886, -0.178808, 0.411091,
		0.122190, 0.979470, 0.160336,
		-0.431321, -0.093091, 0.897383,
		41.424782, 38.148548, 32.828880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114014, 38.509872, 32.594284>,  <41.726704, 38.213711, 32.200714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114014, 38.509872, 32.594284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904854, 38.227684, 32.785656>,  <41.779358, 38.058372, 32.900478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904854, 38.227684, 32.785656>,  <42.114014, 38.509872, 32.594284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904854, 38.227684, 32.785656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845624, -0.358711, 0.395280,
		-0.107241, 0.611260, 0.784130,
		-0.522895, -0.705470, 0.478428,
		41.747986, 38.016045, 32.929184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516747, 38.365231, 33.182671>,  <42.114014, 38.509872, 32.594284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516747, 38.365231, 33.182671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288792, 38.037918, 33.152615>,  <42.152020, 37.841530, 33.134583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288792, 38.037918, 33.152615>,  <42.516747, 38.365231, 33.182671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288792, 38.037918, 33.152615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648839, -0.504215, 0.569891,
		-0.504215, 0.276024, 0.818278,
		-0.569891, -0.818278, -0.075138,
		42.117825, 37.792435, 33.130074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612595, 38.092060, 33.815872>,  <42.516747, 38.365231, 33.182671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612595, 38.092060, 33.815872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474552, 37.777145, 33.611488>,  <42.391727, 37.588196, 33.488857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474552, 37.777145, 33.611488>,  <42.612595, 38.092060, 33.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474552, 37.777145, 33.611488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472903, -0.616106, 0.629901,
		-0.810719, -0.024251, 0.584933,
		-0.345105, -0.787290, -0.510957,
		42.371021, 37.540958, 33.458202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332596, 37.953350, 33.858902>,  <42.612595, 38.092060, 33.815872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332596, 37.953350, 33.858902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206493, 37.574238, 33.878178>,  <43.130833, 37.346771, 33.889744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.206493, 37.574238, 33.878178>,  <43.332596, 37.953350, 33.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206493, 37.574238, 33.878178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624235, -0.168856, 0.762770,
		-0.714804, 0.270548, 0.644872,
		-0.315256, -0.947782, 0.048187,
		43.111916, 37.289902, 33.892635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981339, 38.385479, 34.044083>,  <43.332596, 37.953350, 33.858902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981339, 38.385479, 34.044083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096214, 38.103199, 34.303162>,  <44.165138, 37.933830, 34.458611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096214, 38.103199, 34.303162>,  <43.981339, 38.385479, 34.044083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096214, 38.103199, 34.303162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750977, -0.253864, -0.609579,
		0.594606, 0.661470, 0.457056,
		0.287188, -0.705698, 0.647698,
		44.182369, 37.891491, 34.497471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660553, 38.561230, 34.428234>,  <43.981339, 38.385479, 34.044083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660553, 38.561230, 34.428234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557327, 38.187027, 34.331707>,  <44.495392, 37.962505, 34.273792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557327, 38.187027, 34.331707>,  <44.660553, 38.561230, 34.428234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557327, 38.187027, 34.331707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846440, -0.098509, -0.523293,
		0.465772, -0.339300, 0.817271,
		-0.258061, -0.935506, -0.241314,
		44.479908, 37.906376, 34.259312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036976, 37.949543, 34.783882>,  <44.660553, 38.561230, 34.428234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036976, 37.949543, 34.783882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941311, 37.949707, 34.395489>,  <44.883911, 37.949806, 34.162453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941311, 37.949707, 34.395489>,  <45.036976, 37.949543, 34.783882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941311, 37.949707, 34.395489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964368, 0.116606, -0.237483,
		0.113124, -0.993178, -0.028287,
		-0.239162, 0.000414, -0.970980,
		44.869564, 37.949829, 34.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462639, 37.523376, 34.515102>,  <45.036976, 37.949543, 34.783882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462639, 37.523376, 34.515102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368610, 37.787323, 34.229637>,  <45.312195, 37.945690, 34.058357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368610, 37.787323, 34.229637>,  <45.462639, 37.523376, 34.515102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368610, 37.787323, 34.229637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944357, -0.018746, -0.328389,
		-0.230071, -0.751148, -0.618744,
		-0.235070, 0.659867, -0.713665,
		45.298088, 37.985283, 34.015537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533321, 36.809177, 34.590946>,  <45.462639, 37.523376, 34.515102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533321, 36.809177, 34.590946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873363, 36.607960, 34.528633>,  <46.077389, 36.487228, 34.491245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.873363, 36.607960, 34.528633>,  <45.533321, 36.809177, 34.590946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873363, 36.607960, 34.528633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310195, -0.717380, 0.623815,
		-0.425564, -0.481984, -0.765889,
		0.850102, -0.503049, -0.155782,
		46.128395, 36.457047, 34.481899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245937, 36.095654, 34.465660>,  <45.533321, 36.809177, 34.590946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245937, 36.095654, 34.465660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631119, 36.125961, 34.569187>,  <45.862228, 36.144146, 34.631306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631119, 36.125961, 34.569187>,  <45.245937, 36.095654, 34.465660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631119, 36.125961, 34.569187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131749, -0.705235, 0.696624,
		0.235309, -0.704913, -0.669124,
		0.962949, 0.075766, 0.258820,
		45.920002, 36.148689, 34.646832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588291, 35.374249, 34.499866>,  <45.245937, 36.095654, 34.465660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588291, 35.374249, 34.499866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801743, 35.622185, 34.730007>,  <45.929813, 35.770947, 34.868092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801743, 35.622185, 34.730007>,  <45.588291, 35.374249, 34.499866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801743, 35.622185, 34.730007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034773, -0.695820, 0.717374,
		0.845003, -0.362805, -0.392865,
		0.533630, 0.619844, 0.575354,
		45.961830, 35.808140, 34.902615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337078, 35.242233, 34.389591>,  <45.588291, 35.374249, 34.499866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337078, 35.242233, 34.389591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166965, 35.344967, 34.736732>,  <46.064896, 35.406605, 34.945019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.166965, 35.344967, 34.736732>,  <46.337078, 35.242233, 34.389591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.166965, 35.344967, 34.736732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129040, -0.931889, 0.339016,
		0.895813, 0.256166, 0.363177,
		-0.425285, 0.256830, 0.867854,
		46.039379, 35.422016, 34.997089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823910, 34.964363, 34.954594>,  <46.337078, 35.242233, 34.389591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823910, 34.964363, 34.954594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472271, 35.052654, 35.123577>,  <46.261288, 35.105629, 35.224968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.472271, 35.052654, 35.123577>,  <46.823910, 34.964363, 34.954594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.472271, 35.052654, 35.123577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120278, -0.754907, 0.644709,
		0.461218, 0.617574, 0.637088,
		-0.879097, 0.220723, 0.422457,
		46.208542, 35.118870, 35.250313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522812, 35.321476, 34.992043>,  <46.823910, 34.964363, 34.954594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522812, 35.321476, 34.992043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830936, 35.104000, 35.125320>,  <48.015812, 34.973515, 35.205288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.830936, 35.104000, 35.125320>,  <47.522812, 35.321476, 34.992043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.830936, 35.104000, 35.125320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466999, -0.125204, 0.875349,
		-0.434205, -0.829892, -0.350350,
		0.770310, -0.543694, 0.333194,
		48.062031, 34.940891, 35.225277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.853886, 32.908665, 25.081499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492428, 32.798153, 25.212404>,  <35.275555, 32.731846, 25.290947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492428, 32.798153, 25.212404>,  <35.853886, 32.908665, 25.081499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492428, 32.798153, 25.212404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157120, 0.496996, 0.853410,
		-0.398432, 0.822595, -0.405695,
		-0.903640, -0.276284, 0.327265,
		35.221336, 32.715267, 25.310583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595322, 33.439472, 25.548223>,  <35.853886, 32.908665, 25.081499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595322, 33.439472, 25.548223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388607, 33.113678, 25.653709>,  <35.264580, 32.918201, 25.717001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388607, 33.113678, 25.653709>,  <35.595322, 33.439472, 25.548223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388607, 33.113678, 25.653709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063286, 0.270847, 0.960540,
		-0.853771, 0.513084, -0.088424,
		-0.516787, -0.814485, 0.263712,
		35.233570, 32.869331, 25.732822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049290, 33.672684, 25.986753>,  <35.595322, 33.439472, 25.548223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049290, 33.672684, 25.986753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104313, 33.283436, 26.060644>,  <35.137325, 33.049889, 26.104979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104313, 33.283436, 26.060644>,  <35.049290, 33.672684, 25.986753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104313, 33.283436, 26.060644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216610, 0.152432, 0.964285,
		-0.966519, -0.172655, -0.189819,
		0.137554, -0.973116, 0.184727,
		35.145580, 32.991501, 26.116062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388992, 33.298306, 26.261143>,  <35.049290, 33.672684, 25.986753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388992, 33.298306, 26.261143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.709469, 33.093102, 26.384373>,  <34.901756, 32.969978, 26.458311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.709469, 33.093102, 26.384373>,  <34.388992, 33.298306, 26.261143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709469, 33.093102, 26.384373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257345, 0.169402, 0.951355,
		-0.540242, -0.841502, 0.003704,
		0.801194, -0.513009, 0.308074,
		34.949825, 32.939198, 26.476795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217968, 33.127819, 26.955606>,  <34.388992, 33.298306, 26.261143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217968, 33.127819, 26.955606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585663, 32.970428, 26.960943>,  <34.806278, 32.875996, 26.964146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.585663, 32.970428, 26.960943>,  <34.217968, 33.127819, 26.955606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585663, 32.970428, 26.960943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014730, 0.068238, 0.997560,
		-0.393426, -0.916799, 0.068523,
		0.919238, -0.393475, 0.013342,
		34.861435, 32.852386, 26.964945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209896, 32.631523, 27.478115>,  <34.217968, 33.127819, 26.955606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209896, 32.631523, 27.478115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583561, 32.763931, 27.424788>,  <34.807758, 32.843376, 27.392790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.583561, 32.763931, 27.424788>,  <34.209896, 32.631523, 27.478115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583561, 32.763931, 27.424788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119140, 0.062866, 0.990885,
		0.336383, -0.941528, 0.019289,
		0.934159, 0.331019, -0.133321,
		34.863808, 32.863235, 27.384792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569633, 32.335354, 27.944723>,  <34.209896, 32.631523, 27.478115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569633, 32.335354, 27.944723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841690, 32.609501, 27.840652>,  <35.004921, 32.773987, 27.778210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841690, 32.609501, 27.840652>,  <34.569633, 32.335354, 27.944723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841690, 32.609501, 27.840652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187386, 0.180579, 0.965545,
		0.708732, -0.705456, -0.005609,
		0.680137, 0.685364, -0.260174,
		35.045731, 32.815109, 27.762600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176502, 32.159454, 28.267410>,  <34.569633, 32.335354, 27.944723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176502, 32.159454, 28.267410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176395, 32.553349, 28.197794>,  <35.176331, 32.789684, 28.156023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176395, 32.553349, 28.197794>,  <35.176502, 32.159454, 28.267410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176395, 32.553349, 28.197794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091162, 0.173342, 0.980633,
		0.995836, -0.015600, -0.089817,
		-0.000271, 0.984738, -0.174042,
		35.176315, 32.848770, 28.145582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813519, 32.439003, 28.620651>,  <35.176502, 32.159454, 28.267410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813519, 32.439003, 28.620651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613956, 32.773514, 28.529665>,  <35.494221, 32.974220, 28.475073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.613956, 32.773514, 28.529665>,  <35.813519, 32.439003, 28.620651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613956, 32.773514, 28.529665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309092, 0.416898, 0.854785,
		0.809664, 0.356150, -0.466478,
		-0.498906, 0.836273, -0.227464,
		35.464283, 33.024395, 28.461426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294731, 32.995590, 28.866188>,  <35.813519, 32.439003, 28.620651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294731, 32.995590, 28.866188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920284, 33.136143, 28.860315>,  <35.695618, 33.220474, 28.856792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.920284, 33.136143, 28.860315>,  <36.294731, 32.995590, 28.866188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920284, 33.136143, 28.860315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203732, 0.575835, 0.791775,
		0.286672, 0.738202, -0.610636,
		-0.936116, 0.351386, -0.014681,
		35.639450, 33.241558, 28.855911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256588, 33.761318, 28.956810>,  <36.294731, 32.995590, 28.866188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256588, 33.761318, 28.956810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889790, 33.637489, 29.057436>,  <35.669712, 33.563190, 29.117811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889790, 33.637489, 29.057436>,  <36.256588, 33.761318, 28.956810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889790, 33.637489, 29.057436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007632, 0.644149, 0.764862,
		-0.398825, 0.699455, -0.593044,
		-0.916995, -0.309572, 0.251565,
		35.614693, 33.544617, 29.132906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976620, 34.387390, 29.030605>,  <36.256588, 33.761318, 28.956810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976620, 34.387390, 29.030605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760712, 34.116119, 29.230091>,  <35.631165, 33.953354, 29.349783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.760712, 34.116119, 29.230091>,  <35.976620, 34.387390, 29.030605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760712, 34.116119, 29.230091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013836, 0.585202, 0.810770,
		-0.841697, 0.444532, -0.306493,
		-0.539773, -0.678182, 0.498713,
		35.598782, 33.912666, 29.379705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536861, 34.767181, 29.388613>,  <35.976620, 34.387390, 29.030605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536861, 34.767181, 29.388613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548325, 34.405010, 29.558025>,  <35.555202, 34.187706, 29.659674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548325, 34.405010, 29.558025>,  <35.536861, 34.767181, 29.388613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548325, 34.405010, 29.558025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027273, 0.424257, 0.905131,
		-0.999217, -0.014384, 0.036850,
		0.028653, -0.905428, 0.423533,
		35.556919, 34.133381, 29.685085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964676, 34.728073, 29.847706>,  <35.536861, 34.767181, 29.388613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964676, 34.728073, 29.847706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202209, 34.441654, 29.994484>,  <35.344730, 34.269802, 30.082550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202209, 34.441654, 29.994484>,  <34.964676, 34.728073, 29.847706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202209, 34.441654, 29.994484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024996, 0.472263, 0.881103,
		-0.804202, -0.514053, 0.298342,
		0.593830, -0.716043, 0.366946,
		35.380360, 34.226841, 30.104568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691914, 34.639603, 30.517834>,  <34.964676, 34.728073, 29.847706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691914, 34.639603, 30.517834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058956, 34.480701, 30.523239>,  <35.279182, 34.385361, 30.526482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058956, 34.480701, 30.523239>,  <34.691914, 34.639603, 30.517834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058956, 34.480701, 30.523239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140763, 0.356560, 0.923607,
		-0.371725, -0.845609, 0.383102,
		0.917609, -0.397254, 0.013512,
		35.334240, 34.361526, 30.527292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761784, 34.323925, 31.194559>,  <34.691914, 34.639603, 30.517834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761784, 34.323925, 31.194559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119148, 34.411400, 31.037590>,  <35.333565, 34.463882, 30.943409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119148, 34.411400, 31.037590>,  <34.761784, 34.323925, 31.194559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119148, 34.411400, 31.037590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262961, 0.453679, 0.851485,
		0.364236, -0.863919, 0.347817,
		0.893411, 0.218679, -0.392423,
		35.387173, 34.477005, 30.919863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251480, 34.459187, 31.776405>,  <34.761784, 34.323925, 31.194559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251480, 34.459187, 31.776405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484268, 34.604282, 31.485273>,  <35.623940, 34.691338, 31.310595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484268, 34.604282, 31.485273>,  <35.251480, 34.459187, 31.776405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484268, 34.604282, 31.485273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368038, 0.680619, 0.633487,
		0.725163, -0.636538, 0.262599,
		0.581969, 0.362735, -0.727830,
		35.658859, 34.713104, 31.266924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854218, 34.570927, 32.120934>,  <35.251480, 34.459187, 31.776405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854218, 34.570927, 32.120934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870380, 34.778408, 31.779331>,  <35.880077, 34.902897, 31.574371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870380, 34.778408, 31.779331>,  <35.854218, 34.570927, 32.120934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870380, 34.778408, 31.779331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317922, 0.803606, 0.503133,
		0.947255, -0.291837, -0.132432,
		0.040410, 0.518699, -0.854001,
		35.882504, 34.934017, 31.523130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280373, 35.019634, 32.297752>,  <35.854218, 34.570927, 32.120934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280373, 35.019634, 32.297752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108505, 35.183136, 31.975683>,  <36.005383, 35.281239, 31.782442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.108505, 35.183136, 31.975683>,  <36.280373, 35.019634, 32.297752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108505, 35.183136, 31.975683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161454, 0.912085, 0.376872,
		0.888433, 0.031933, -0.457893,
		-0.429672, 0.408754, -0.805172,
		35.979603, 35.305763, 31.734131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741722, 35.576500, 32.102207>,  <36.280373, 35.019634, 32.297752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741722, 35.576500, 32.102207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388691, 35.657467, 31.932465>,  <36.176872, 35.706047, 31.830620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.388691, 35.657467, 31.932465>,  <36.741722, 35.576500, 32.102207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388691, 35.657467, 31.932465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094102, 0.960368, 0.262370,
		0.460646, 0.191630, -0.866651,
		-0.882581, 0.202413, -0.424357,
		36.123917, 35.718189, 31.805157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780437, 36.213642, 31.821634>,  <36.741722, 35.576500, 32.102207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780437, 36.213642, 31.821634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390591, 36.153809, 31.888254>,  <36.156681, 36.117908, 31.928226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390591, 36.153809, 31.888254>,  <36.780437, 36.213642, 31.821634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390591, 36.153809, 31.888254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067848, 0.906360, 0.417023,
		-0.213335, 0.395139, -0.893506,
		-0.974620, -0.149588, 0.166549,
		36.098206, 36.108932, 31.938219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322876, 36.847908, 31.650656>,  <36.780437, 36.213642, 31.821634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322876, 36.847908, 31.650656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126431, 36.637177, 31.928146>,  <36.008564, 36.510738, 32.094639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.126431, 36.637177, 31.928146>,  <36.322876, 36.847908, 31.650656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126431, 36.637177, 31.928146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234477, 0.846942, 0.477190,
		-0.838944, 0.071692, -0.539476,
		-0.491115, -0.526830, 0.693726,
		35.979095, 36.479126, 32.136265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939346, 37.279465, 31.510159>,  <36.322876, 36.847908, 31.650656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939346, 37.279465, 31.510159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315781, 37.411545, 31.539330>,  <37.541641, 37.490795, 31.556831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315781, 37.411545, 31.539330>,  <36.939346, 37.279465, 31.510159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315781, 37.411545, 31.539330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115598, -0.111474, -0.987021,
		-0.317789, 0.937304, -0.143078,
		0.941088, 0.330204, 0.072925,
		37.598106, 37.510605, 31.561207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038052, 37.806896, 31.109335>,  <36.939346, 37.279465, 31.510159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038052, 37.806896, 31.109335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413635, 37.671394, 31.133368>,  <37.638985, 37.590096, 31.147787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.413635, 37.671394, 31.133368>,  <37.038052, 37.806896, 31.109335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413635, 37.671394, 31.133368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053835, -0.027821, -0.998162,
		0.339801, 0.940464, -0.007886,
		0.938955, -0.338752, 0.060083,
		37.695320, 37.569767, 31.151392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410942, 38.163593, 30.615297>,  <37.038052, 37.806896, 31.109335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410942, 38.163593, 30.615297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646515, 37.846149, 30.676401>,  <37.787861, 37.655682, 30.713064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646515, 37.846149, 30.676401>,  <37.410942, 38.163593, 30.615297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646515, 37.846149, 30.676401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055837, -0.228523, -0.971936,
		0.806250, 0.563877, -0.178898,
		0.588935, -0.793612, 0.152762,
		37.823196, 37.608067, 30.722229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080242, 38.275917, 30.098177>,  <37.410942, 38.163593, 30.615297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080242, 38.275917, 30.098177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057209, 37.898933, 30.229910>,  <38.043388, 37.672745, 30.308950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.057209, 37.898933, 30.229910>,  <38.080242, 38.275917, 30.098177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057209, 37.898933, 30.229910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222818, -0.333690, -0.915971,
		0.973158, 0.020641, 0.229210,
		-0.057578, -0.942457, 0.329333,
		38.039936, 37.616196, 30.328711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619240, 37.971798, 29.806961>,  <38.080242, 38.275917, 30.098177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619240, 37.971798, 29.806961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397530, 37.649044, 29.888664>,  <38.264503, 37.455391, 29.937687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397530, 37.649044, 29.888664>,  <38.619240, 37.971798, 29.806961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397530, 37.649044, 29.888664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237431, -0.388486, -0.890340,
		0.797751, -0.444995, 0.406906,
		-0.554274, -0.806881, 0.204259,
		38.231247, 37.406979, 29.949942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917282, 37.479980, 29.380981>,  <38.619240, 37.971798, 29.806961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917282, 37.479980, 29.380981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575344, 37.306595, 29.495068>,  <38.370182, 37.202564, 29.563519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575344, 37.306595, 29.495068>,  <38.917282, 37.479980, 29.380981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575344, 37.306595, 29.495068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177952, -0.271425, -0.945865,
		0.487410, -0.859325, 0.154892,
		-0.854848, -0.433461, 0.285214,
		38.318890, 37.176556, 29.580631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921837, 36.843426, 29.146687>,  <38.917282, 37.479980, 29.380981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921837, 36.843426, 29.146687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529831, 36.881390, 29.216621>,  <38.294628, 36.904167, 29.258583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529831, 36.881390, 29.216621>,  <38.921837, 36.843426, 29.146687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529831, 36.881390, 29.216621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196375, -0.320968, -0.926508,
		-0.031812, -0.942323, 0.333190,
		-0.980013, 0.094904, 0.174838,
		38.235828, 36.909863, 29.269073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503975, 36.138702, 28.885569>,  <38.921837, 36.843426, 29.146687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503975, 36.138702, 28.885569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.280949, 36.470753, 28.886940>,  <38.147133, 36.669983, 28.887762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.280949, 36.470753, 28.886940>,  <38.503975, 36.138702, 28.885569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280949, 36.470753, 28.886940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301164, -0.198432, -0.932698,
		-0.773574, -0.521076, 0.360643,
		-0.557570, 0.830123, 0.003428,
		38.113678, 36.719791, 28.887968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896133, 35.973560, 28.504801>,  <38.503975, 36.138702, 28.885569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896133, 35.973560, 28.504801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876743, 36.373074, 28.500994>,  <37.865108, 36.612782, 28.498711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876743, 36.373074, 28.500994>,  <37.896133, 35.973560, 28.504801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876743, 36.373074, 28.500994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361734, -0.026436, -0.931906,
		-0.931020, -0.041731, 0.362574,
		-0.048475, 0.998779, -0.009517,
		37.862202, 36.672707, 28.498138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221554, 36.134857, 28.384363>,  <37.896133, 35.973560, 28.504801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221554, 36.134857, 28.384363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458145, 36.442055, 28.286112>,  <37.600101, 36.626373, 28.227161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458145, 36.442055, 28.286112>,  <37.221554, 36.134857, 28.384363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458145, 36.442055, 28.286112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435954, 0.048334, -0.898670,
		-0.678302, 0.638629, 0.363400,
		0.591482, 0.767995, -0.245628,
		37.635590, 36.672455, 28.212423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828789, 36.584488, 27.848686>,  <37.221554, 36.134857, 28.384363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828789, 36.584488, 27.848686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208778, 36.697578, 27.795588>,  <37.436771, 36.765430, 27.763729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208778, 36.697578, 27.795588>,  <36.828789, 36.584488, 27.848686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208778, 36.697578, 27.795588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128873, -0.032339, -0.991134,
		-0.284509, 0.958657, 0.005714,
		0.949972, 0.282722, -0.132746,
		37.493771, 36.782394, 27.755764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761192, 36.985027, 27.300459>,  <36.828789, 36.584488, 27.848686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761192, 36.985027, 27.300459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140400, 36.859592, 27.322084>,  <37.367924, 36.784332, 27.335060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140400, 36.859592, 27.322084>,  <36.761192, 36.985027, 27.300459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140400, 36.859592, 27.322084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027080, -0.248782, -0.968181,
		0.317057, 0.916390, -0.244342,
		0.948020, -0.313585, 0.054062,
		37.424805, 36.765518, 27.338303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044533, 37.092571, 26.667229>,  <36.761192, 36.985027, 27.300459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044533, 37.092571, 26.667229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315838, 36.839813, 26.817249>,  <37.478622, 36.688160, 26.907261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315838, 36.839813, 26.817249>,  <37.044533, 37.092571, 26.667229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315838, 36.839813, 26.817249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027442, -0.488263, -0.872265,
		0.734304, 0.601920, -0.313831,
		0.678266, -0.631896, 0.375051,
		37.519318, 36.650246, 26.929764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623894, 37.075924, 26.232456>,  <37.044533, 37.092571, 26.667229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623894, 37.075924, 26.232456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622318, 36.730274, 26.433764>,  <37.621372, 36.522884, 26.554548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622318, 36.730274, 26.433764>,  <37.623894, 37.075924, 26.232456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622318, 36.730274, 26.433764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014484, -0.503269, -0.864008,
		0.999887, 0.003889, 0.014496,
		-0.003935, -0.864121, 0.503269,
		37.621140, 36.471039, 26.584743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183247, 36.694820, 25.903181>,  <37.623894, 37.075924, 26.232456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183247, 36.694820, 25.903181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952057, 36.428551, 26.091997>,  <37.813343, 36.268787, 26.205286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952057, 36.428551, 26.091997>,  <38.183247, 36.694820, 25.903181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952057, 36.428551, 26.091997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011960, -0.571468, -0.820537,
		0.815967, -0.479895, 0.322332,
		-0.577974, -0.665676, 0.472039,
		37.778664, 36.228848, 26.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475643, 36.094643, 25.721163>,  <38.183247, 36.694820, 25.903181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475643, 36.094643, 25.721163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102600, 35.999275, 25.829535>,  <37.878777, 35.942055, 25.894558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102600, 35.999275, 25.829535>,  <38.475643, 36.094643, 25.721163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102600, 35.999275, 25.829535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022771, -0.710339, -0.703491,
		0.360177, -0.662250, 0.657037,
		-0.932606, -0.238420, 0.270928,
		37.822819, 35.927750, 25.910812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445969, 35.332195, 25.916170>,  <38.475643, 36.094643, 25.721163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445969, 35.332195, 25.916170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079868, 35.460880, 25.819164>,  <37.860207, 35.538090, 25.760960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079868, 35.460880, 25.819164>,  <38.445969, 35.332195, 25.916170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079868, 35.460880, 25.819164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107782, -0.775539, -0.622031,
		-0.388195, -0.543177, 0.744489,
		-0.915253, 0.321712, -0.242515,
		37.805294, 35.557392, 25.746410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126984, 34.806835, 25.666058>,  <38.445969, 35.332195, 25.916170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126984, 34.806835, 25.666058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822838, 35.039490, 25.550444>,  <37.640350, 35.179085, 25.481075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.822838, 35.039490, 25.550444>,  <38.126984, 34.806835, 25.666058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822838, 35.039490, 25.550444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254352, -0.676132, -0.691485,
		-0.597619, -0.452265, 0.662048,
		-0.760366, 0.581637, -0.289034,
		37.594727, 35.213982, 25.463734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.453194, 34.381935, 25.539600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389835, 34.723835, 25.341887>,  <37.351822, 34.928974, 25.223259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.389835, 34.723835, 25.341887>,  <37.453194, 34.381935, 25.539600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389835, 34.723835, 25.341887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442801, -0.508932, -0.738184,
		-0.882518, 0.101943, 0.459096,
		-0.158396, 0.854749, -0.494283,
		37.342316, 34.980259, 25.193602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845879, 34.267467, 25.277451>,  <37.453194, 34.381935, 25.539600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845879, 34.267467, 25.277451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973267, 34.570515, 25.049561>,  <37.049702, 34.752342, 24.912827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973267, 34.570515, 25.049561>,  <36.845879, 34.267467, 25.277451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973267, 34.570515, 25.049561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438486, -0.415114, -0.797126,
		-0.840419, 0.503681, 0.200002,
		0.318473, 0.757618, -0.569727,
		37.068810, 34.797802, 24.878643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299065, 34.452602, 24.882996>,  <36.845879, 34.267467, 25.277451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299065, 34.452602, 24.882996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615673, 34.591259, 24.681665>,  <36.805637, 34.674454, 24.560867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615673, 34.591259, 24.681665>,  <36.299065, 34.452602, 24.882996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615673, 34.591259, 24.681665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333311, -0.445462, -0.830944,
		-0.512253, 0.825472, -0.237052,
		0.791518, 0.346641, -0.503328,
		36.853130, 34.695251, 24.530666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988041, 34.673931, 24.198217>,  <36.299065, 34.452602, 24.882996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988041, 34.673931, 24.198217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384617, 34.642551, 24.156464>,  <36.622562, 34.623722, 24.131411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.384617, 34.642551, 24.156464>,  <35.988041, 34.673931, 24.198217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384617, 34.642551, 24.156464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125230, -0.344851, -0.930266,
		0.036982, 0.935373, -0.351723,
		0.991438, -0.078449, -0.104384,
		36.682049, 34.619019, 24.125149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198212, 35.019714, 23.496153>,  <35.988041, 34.673931, 24.198217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198212, 35.019714, 23.496153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449509, 34.733982, 23.619471>,  <36.600285, 34.562542, 23.693460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449509, 34.733982, 23.619471>,  <36.198212, 35.019714, 23.496153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449509, 34.733982, 23.619471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161925, -0.507627, -0.846224,
		0.760982, 0.481712, -0.434580,
		0.628241, -0.714331, 0.308294,
		36.637981, 34.519684, 23.711958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300674, 34.652069, 22.948746>,  <36.198212, 35.019714, 23.496153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300674, 34.652069, 22.948746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465366, 34.401630, 23.213617>,  <36.564182, 34.251366, 23.372541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465366, 34.401630, 23.213617>,  <36.300674, 34.652069, 22.948746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465366, 34.401630, 23.213617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068780, -0.703206, -0.707651,
		0.908707, 0.336906, -0.246468,
		0.411730, -0.626095, 0.662181,
		36.588886, 34.213802, 23.412271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892303, 34.362823, 22.597891>,  <36.300674, 34.652069, 22.948746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892303, 34.362823, 22.597891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766220, 34.118431, 22.888365>,  <36.690571, 33.971794, 23.062649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.766220, 34.118431, 22.888365>,  <36.892303, 34.362823, 22.597891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766220, 34.118431, 22.888365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000745, -0.765349, -0.643615,
		0.949024, -0.202330, 0.241696,
		-0.315204, -0.610985, 0.726184,
		36.671658, 33.935135, 23.106220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252041, 33.761044, 22.480818>,  <36.892303, 34.362823, 22.597891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252041, 33.761044, 22.480818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935715, 33.644756, 22.696259>,  <36.745918, 33.574986, 22.825523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935715, 33.644756, 22.696259>,  <37.252041, 33.761044, 22.480818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935715, 33.644756, 22.696259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098496, -0.808073, -0.580790,
		0.604075, -0.512349, 0.610403,
		-0.790817, -0.290718, 0.538601,
		36.698471, 33.557541, 22.857840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311794, 32.936829, 22.482407>,  <37.252041, 33.761044, 22.480818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311794, 32.936829, 22.482407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941257, 33.022568, 22.606302>,  <36.718933, 33.074013, 22.680639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.941257, 33.022568, 22.606302>,  <37.311794, 32.936829, 22.482407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941257, 33.022568, 22.606302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365745, -0.708490, -0.603549,
		0.090081, -0.672382, 0.734703,
		-0.926346, 0.214346, 0.309742,
		36.663353, 33.086872, 22.699224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887505, 32.272358, 22.486515>,  <37.311794, 32.936829, 22.482407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887505, 32.272358, 22.486515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621868, 32.571365, 22.480824>,  <36.462486, 32.750771, 22.477409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621868, 32.571365, 22.480824>,  <36.887505, 32.272358, 22.486515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621868, 32.571365, 22.480824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578713, -0.525989, -0.623239,
		-0.473365, -0.405654, 0.781902,
		-0.664091, 0.747516, -0.014228,
		36.422642, 32.795620, 22.476555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347134, 31.933001, 22.368855>,  <36.887505, 32.272358, 22.486515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347134, 31.933001, 22.368855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223351, 32.299320, 22.266445>,  <36.149082, 32.519112, 22.205000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223351, 32.299320, 22.266445>,  <36.347134, 31.933001, 22.368855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223351, 32.299320, 22.266445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401149, -0.369838, -0.838033,
		-0.862157, -0.156633, 0.481822,
		-0.309459, 0.915798, -0.256025,
		36.130512, 32.574059, 22.189638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635105, 31.880671, 22.093250>,  <36.347134, 31.933001, 22.368855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635105, 31.880671, 22.093250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763794, 32.227757, 21.941689>,  <35.841007, 32.436008, 21.850752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763794, 32.227757, 21.941689>,  <35.635105, 31.880671, 22.093250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763794, 32.227757, 21.941689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183866, -0.335308, -0.923993,
		-0.928811, 0.366933, 0.051669,
		0.321718, 0.867715, -0.378904,
		35.860310, 32.488071, 21.828018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118397, 32.088886, 21.663078>,  <35.635105, 31.880671, 22.093250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118397, 32.088886, 21.663078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462151, 32.256039, 21.545208>,  <35.668404, 32.356331, 21.474485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.462151, 32.256039, 21.545208>,  <35.118397, 32.088886, 21.663078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462151, 32.256039, 21.545208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210241, -0.236552, -0.948600,
		-0.466108, 0.877165, -0.115434,
		0.859385, 0.417881, -0.294674,
		35.719967, 32.381401, 21.456806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897167, 32.456654, 21.067472>,  <35.118397, 32.088886, 21.663078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897167, 32.456654, 21.067472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294495, 32.468594, 21.022886>,  <35.532890, 32.475758, 20.996134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294495, 32.468594, 21.022886>,  <34.897167, 32.456654, 21.067472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294495, 32.468594, 21.022886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107974, -0.100334, -0.989078,
		-0.040711, 0.994506, -0.096440,
		0.993320, 0.029853, -0.111466,
		35.592491, 32.477551, 20.989447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930119, 33.034721, 20.692247>,  <34.897167, 32.456654, 21.067472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930119, 33.034721, 20.692247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268246, 32.823212, 20.661684>,  <35.471123, 32.696304, 20.643347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268246, 32.823212, 20.661684>,  <34.930119, 33.034721, 20.692247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268246, 32.823212, 20.661684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015206, 0.119147, -0.992760,
		0.534052, 0.840356, 0.092676,
		0.845314, -0.528777, -0.076409,
		35.521839, 32.664577, 20.638762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388950, 33.497414, 20.317570>,  <34.930119, 33.034721, 20.692247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388950, 33.497414, 20.317570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476360, 33.110371, 20.267017>,  <35.528809, 32.878143, 20.236687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476360, 33.110371, 20.267017>,  <35.388950, 33.497414, 20.317570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476360, 33.110371, 20.267017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274396, 0.063353, -0.959528,
		0.936457, 0.244362, -0.251664,
		0.218528, -0.967612, -0.126380,
		35.541920, 32.820087, 20.229103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665058, 33.454422, 19.561666>,  <35.388950, 33.497414, 20.317570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665058, 33.454422, 19.561666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614475, 33.067287, 19.648659>,  <35.584126, 32.835007, 19.700853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614475, 33.067287, 19.648659>,  <35.665058, 33.454422, 19.561666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614475, 33.067287, 19.648659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148825, -0.198247, -0.968787,
		0.980744, -0.154876, -0.118969,
		-0.126456, -0.967838, 0.217479,
		35.576538, 32.776936, 19.713903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928020, 33.178383, 19.056467>,  <35.665058, 33.454422, 19.561666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928020, 33.178383, 19.056467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713291, 32.873158, 19.200447>,  <35.584454, 32.690022, 19.286835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713291, 32.873158, 19.200447>,  <35.928020, 33.178383, 19.056467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713291, 32.873158, 19.200447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107984, -0.360984, -0.926299,
		0.836759, -0.536123, 0.111385,
		-0.536819, -0.763061, 0.359949,
		35.552246, 32.644238, 19.308432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130047, 32.567043, 18.738218>,  <35.928020, 33.178383, 19.056467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130047, 32.567043, 18.738218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758476, 32.500530, 18.870544>,  <35.535534, 32.460621, 18.949940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758476, 32.500530, 18.870544>,  <36.130047, 32.567043, 18.738218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758476, 32.500530, 18.870544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234743, -0.426462, -0.873513,
		0.286332, -0.889089, 0.357120,
		-0.928929, -0.166284, 0.330817,
		35.479797, 32.450645, 18.969790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005962, 31.923807, 18.448177>,  <36.130047, 32.567043, 18.738218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005962, 31.923807, 18.448177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633221, 32.022427, 18.554653>,  <35.409576, 32.081596, 18.618540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.633221, 32.022427, 18.554653>,  <36.005962, 31.923807, 18.448177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633221, 32.022427, 18.554653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362454, -0.599261, -0.713802,
		-0.016468, -0.761643, 0.647787,
		-0.931856, 0.246548, 0.266192,
		35.353664, 32.096390, 18.634510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597511, 31.243902, 18.645378>,  <36.005962, 31.923807, 18.448177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597511, 31.243902, 18.645378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332970, 31.530762, 18.557459>,  <35.174244, 31.702877, 18.504707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332970, 31.530762, 18.557459>,  <35.597511, 31.243902, 18.645378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332970, 31.530762, 18.557459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435560, -0.605750, -0.665848,
		-0.610665, -0.344614, 0.712972,
		-0.661344, 0.717153, -0.219811,
		35.134563, 31.745907, 18.491520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944534, 31.081915, 18.834316>,  <35.597511, 31.243902, 18.645378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944534, 31.081915, 18.834316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859314, 31.345270, 18.545559>,  <34.808182, 31.503283, 18.372303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859314, 31.345270, 18.545559>,  <34.944534, 31.081915, 18.834316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859314, 31.345270, 18.545559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418238, -0.729199, -0.541615,
		-0.882998, 0.186532, 0.430720,
		-0.213052, 0.658388, -0.721896,
		34.795399, 31.542788, 18.328991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172173, 31.118912, 18.749552>,  <34.944534, 31.081915, 18.834316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172173, 31.118912, 18.749552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368752, 31.220085, 18.416204>,  <34.486698, 31.280788, 18.216196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368752, 31.220085, 18.416204>,  <34.172173, 31.118912, 18.749552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368752, 31.220085, 18.416204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416892, -0.771820, -0.480099,
		-0.764644, 0.583369, -0.273863,
		0.491447, 0.252933, -0.833369,
		34.516186, 31.295965, 18.166193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349087, 30.837006, 19.353832>,  <34.172173, 31.118912, 18.749552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349087, 30.837006, 19.353832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657318, 30.813242, 19.607658>,  <34.842258, 30.798983, 19.759954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.657318, 30.813242, 19.607658>,  <34.349087, 30.837006, 19.353832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657318, 30.813242, 19.607658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635811, 0.140603, -0.758930,
		-0.044133, 0.988282, 0.146120,
		0.770582, -0.059411, 0.634565,
		34.888493, 30.795420, 19.798029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887600, 30.449806, 18.719307>,  <34.349087, 30.837006, 19.353832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887600, 30.449806, 18.719307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522732, 30.357479, 18.583858>,  <33.303810, 30.302084, 18.502590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522732, 30.357479, 18.583858>,  <33.887600, 30.449806, 18.719307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522732, 30.357479, 18.583858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373211, 0.126574, 0.919072,
		-0.169276, 0.964729, -0.201601,
		-0.912173, -0.230816, -0.338621,
		33.249081, 30.288235, 18.482271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361462, 30.995632, 18.615883>,  <33.887600, 30.449806, 18.719307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361462, 30.995632, 18.615883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172951, 30.656578, 18.713388>,  <33.059845, 30.453146, 18.771891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172951, 30.656578, 18.713388>,  <33.361462, 30.995632, 18.615883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172951, 30.656578, 18.713388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222372, 0.381641, 0.897162,
		-0.853494, 0.368603, -0.368347,
		-0.471273, -0.847633, 0.243762,
		33.031570, 30.402288, 18.786516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749813, 31.254200, 18.795944>,  <33.361462, 30.995632, 18.615883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749813, 31.254200, 18.795944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806683, 30.902576, 18.977953>,  <32.840805, 30.691603, 19.087158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806683, 30.902576, 18.977953>,  <32.749813, 31.254200, 18.795944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806683, 30.902576, 18.977953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282704, 0.404484, 0.869754,
		-0.948612, -0.252293, -0.191005,
		0.142175, -0.879057, 0.455023,
		32.849335, 30.638859, 19.114460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158203, 31.158810, 19.238249>,  <32.749813, 31.254200, 18.795944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158203, 31.158810, 19.238249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.451603, 30.945530, 19.406855>,  <32.627644, 30.817562, 19.508018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.451603, 30.945530, 19.406855>,  <32.158203, 31.158810, 19.238249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451603, 30.945530, 19.406855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270929, 0.339394, 0.900783,
		-0.623354, -0.774927, 0.104488,
		0.733503, -0.533198, 0.421513,
		32.671654, 30.785570, 19.533308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859745, 31.063427, 19.878922>,  <32.158203, 31.158810, 19.238249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859745, 31.063427, 19.878922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235813, 30.935415, 19.925667>,  <32.461456, 30.858608, 19.953714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235813, 30.935415, 19.925667>,  <31.859745, 31.063427, 19.878922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235813, 30.935415, 19.925667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054398, 0.197599, 0.978772,
		-0.336328, -0.926572, 0.168368,
		0.940173, -0.320030, 0.116861,
		32.517864, 30.839407, 19.960726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843288, 30.640432, 20.474037>,  <31.859745, 31.063427, 19.878922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843288, 30.640432, 20.474037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213432, 30.777290, 20.408739>,  <32.435516, 30.859406, 20.369560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.213432, 30.777290, 20.408739>,  <31.843288, 30.640432, 20.474037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213432, 30.777290, 20.408739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046923, 0.323929, 0.944917,
		0.376181, -0.882045, 0.283696,
		0.925357, 0.342148, -0.163244,
		32.491039, 30.879934, 20.359766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135540, 30.578989, 21.090282>,  <31.843288, 30.640432, 20.474037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135540, 30.578989, 21.090282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.386761, 30.824257, 20.898626>,  <32.537491, 30.971418, 20.783632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.386761, 30.824257, 20.898626>,  <32.135540, 30.578989, 21.090282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386761, 30.824257, 20.898626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368466, 0.308000, 0.877137,
		0.685410, -0.727432, -0.032493,
		0.628050, 0.613171, -0.479140,
		32.575176, 31.008207, 20.754885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948269, 30.437937, 21.354393>,  <32.135540, 30.578989, 21.090282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948269, 30.437937, 21.354393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947903, 30.801367, 21.187305>,  <32.947685, 31.019424, 21.087053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947903, 30.801367, 21.187305>,  <32.948269, 30.437937, 21.354393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947903, 30.801367, 21.187305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546633, 0.350241, 0.760607,
		0.837372, -0.227645, -0.496977,
		-0.000913, 0.908575, -0.417720,
		32.947628, 31.073940, 21.061989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708214, 30.659916, 21.241785>,  <32.948269, 30.437937, 21.354393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708214, 30.659916, 21.241785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470970, 30.981867, 21.249800>,  <33.328625, 31.175037, 21.254608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.470970, 30.981867, 21.249800>,  <33.708214, 30.659916, 21.241785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470970, 30.981867, 21.249800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554327, 0.390177, 0.735175,
		0.583908, 0.447142, -0.677581,
		-0.593104, 0.804876, 0.020036,
		33.293037, 31.223330, 21.255810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101807, 31.314466, 21.130205>,  <33.708214, 30.659916, 21.241785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101807, 31.314466, 21.130205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754951, 31.413624, 21.303007>,  <33.546841, 31.473118, 21.406689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.754951, 31.413624, 21.303007>,  <34.101807, 31.314466, 21.130205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754951, 31.413624, 21.303007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497790, 0.402000, 0.768505,
		0.016840, 0.881445, -0.471987,
		-0.867134, 0.247892, 0.432005,
		33.494812, 31.487991, 21.432608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252003, 32.019787, 21.445875>,  <34.101807, 31.314466, 21.130205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252003, 32.019787, 21.445875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902103, 31.905300, 21.602280>,  <33.692162, 31.836609, 21.696123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902103, 31.905300, 21.602280>,  <34.252003, 32.019787, 21.445875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902103, 31.905300, 21.602280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222656, 0.479287, 0.848946,
		-0.430388, 0.829678, -0.355529,
		-0.874752, -0.286215, 0.391011,
		33.639679, 31.819435, 21.719584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770908, 32.658772, 21.678762>,  <34.252003, 32.019787, 21.445875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770908, 32.658772, 21.678762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733841, 32.327995, 21.900602>,  <33.711601, 32.129528, 22.033707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.733841, 32.327995, 21.900602>,  <33.770908, 32.658772, 21.678762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733841, 32.327995, 21.900602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230468, 0.524054, 0.819910,
		-0.968657, 0.203799, 0.142019,
		-0.092671, -0.826942, 0.554598,
		33.706039, 32.079914, 22.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511944, 32.963112, 22.231386>,  <33.770908, 32.658772, 21.678762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511944, 32.963112, 22.231386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633331, 32.598732, 22.343159>,  <33.706161, 32.380104, 22.410223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633331, 32.598732, 22.343159>,  <33.511944, 32.963112, 22.231386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633331, 32.598732, 22.343159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138395, 0.332290, 0.932968,
		-0.942739, -0.244450, 0.226909,
		0.303464, -0.910948, 0.279432,
		33.724369, 32.325447, 22.426989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304054, 32.882271, 22.896425>,  <33.511944, 32.963112, 22.231386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304054, 32.882271, 22.896425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569305, 32.583385, 22.878788>,  <33.728455, 32.404057, 22.868206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569305, 32.583385, 22.878788>,  <33.304054, 32.882271, 22.896425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569305, 32.583385, 22.878788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257852, 0.172736, 0.950618,
		-0.702693, -0.641748, 0.307215,
		0.663125, -0.747209, -0.044095,
		33.768242, 32.359222, 22.865559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184776, 32.591015, 23.494339>,  <33.304054, 32.882271, 22.896425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184776, 32.591015, 23.494339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.554707, 32.488655, 23.381758>,  <33.776665, 32.427238, 23.314209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.554707, 32.488655, 23.381758>,  <33.184776, 32.591015, 23.494339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554707, 32.488655, 23.381758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345618, 0.256197, 0.902724,
		-0.158896, -0.932137, 0.325380,
		0.924824, -0.255897, -0.281455,
		33.832153, 32.411884, 23.297321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412918, 32.243225, 23.959299>,  <33.184776, 32.591015, 23.494339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412918, 32.243225, 23.959299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769924, 32.328461, 23.800303>,  <33.984131, 32.379601, 23.704905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.769924, 32.328461, 23.800303>,  <33.412918, 32.243225, 23.959299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769924, 32.328461, 23.800303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391162, 0.072972, 0.917424,
		0.224500, -0.974303, -0.018224,
		0.892520, 0.213090, -0.397493,
		34.037682, 32.392387, 23.681055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890095, 31.739939, 24.160915>,  <33.412918, 32.243225, 23.959299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890095, 31.739939, 24.160915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106991, 32.065342, 24.076845>,  <34.237129, 32.260586, 24.026403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106991, 32.065342, 24.076845>,  <33.890095, 31.739939, 24.160915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106991, 32.065342, 24.076845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359291, 0.001622, 0.933224,
		0.759528, -0.581548, -0.291408,
		0.542242, 0.813510, -0.210177,
		34.269665, 32.309395, 24.013792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544849, 31.586975, 24.254549>,  <33.890095, 31.739939, 24.160915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544849, 31.586975, 24.254549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563042, 31.983685, 24.302406>,  <34.573956, 32.221710, 24.331120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563042, 31.983685, 24.302406>,  <34.544849, 31.586975, 24.254549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563042, 31.983685, 24.302406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411578, -0.127730, 0.902380,
		0.910239, 0.008204, -0.414001,
		0.045478, 0.991775, 0.119642,
		34.576687, 32.281216, 24.338299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213245, 31.800810, 24.467743>,  <34.544849, 31.586975, 24.254549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213245, 31.800810, 24.467743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975502, 32.090656, 24.607267>,  <34.832855, 32.264565, 24.690981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.975502, 32.090656, 24.607267>,  <35.213245, 31.800810, 24.467743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975502, 32.090656, 24.607267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495293, -0.011880, 0.868644,
		0.633578, 0.689050, -0.351837,
		-0.594360, 0.724616, 0.348809,
		34.797195, 32.308041, 24.711910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696041, 32.114605, 24.828602>,  <35.213245, 31.800810, 24.467743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696041, 32.114605, 24.828602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342804, 32.254711, 24.953482>,  <35.130863, 32.338776, 25.028410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342804, 32.254711, 24.953482>,  <35.696041, 32.114605, 24.828602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342804, 32.254711, 24.953482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357110, 0.070152, 0.931424,
		0.304343, 0.934020, -0.187033,
		-0.883090, 0.350264, 0.312198,
		35.077877, 32.359791, 25.047140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.725128, 36.457489, 27.334068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.334816, 36.544445, 27.343811>,  <38.100628, 36.596619, 27.349657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.334816, 36.544445, 27.343811>,  <38.725128, 36.457489, 27.334068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334816, 36.544445, 27.343811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128717, 0.480576, 0.867455,
		0.176871, 0.849581, -0.496919,
		-0.975781, 0.217390, 0.024355,
		38.042080, 36.609661, 27.351118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701721, 37.118542, 27.582945>,  <38.725128, 36.457489, 27.334068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701721, 37.118542, 27.582945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319687, 37.016983, 27.644064>,  <38.090466, 36.956047, 27.680735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.319687, 37.016983, 27.644064>,  <38.701721, 37.118542, 27.582945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319687, 37.016983, 27.644064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038747, 0.404212, 0.913844,
		-0.293781, 0.878721, -0.376220,
		-0.955087, -0.253893, 0.152798,
		38.033161, 36.940815, 27.689903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231392, 37.742241, 27.844250>,  <38.701721, 37.118542, 27.582945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231392, 37.742241, 27.844250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062717, 37.398167, 27.958981>,  <37.961514, 37.191723, 28.027819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.062717, 37.398167, 27.958981>,  <38.231392, 37.742241, 27.844250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062717, 37.398167, 27.958981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074811, 0.282243, 0.956422,
		-0.903652, 0.424764, -0.054666,
		-0.421682, -0.860183, 0.286826,
		37.936214, 37.140110, 28.045029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855038, 37.955940, 28.377031>,  <38.231392, 37.742241, 27.844250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855038, 37.955940, 28.377031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830090, 37.559082, 28.420410>,  <37.815121, 37.320969, 28.446438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.830090, 37.559082, 28.420410>,  <37.855038, 37.955940, 28.377031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830090, 37.559082, 28.420410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064177, 0.112420, 0.991586,
		-0.995987, 0.054890, -0.070685,
		-0.062375, -0.992144, 0.108446,
		37.811378, 37.261440, 28.452944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303810, 37.703064, 28.928205>,  <37.855038, 37.955940, 28.377031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303810, 37.703064, 28.928205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577084, 37.411060, 28.920843>,  <37.741047, 37.235859, 28.916426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.577084, 37.411060, 28.920843>,  <37.303810, 37.703064, 28.928205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577084, 37.411060, 28.920843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054371, 0.025715, 0.998190,
		-0.728219, -0.682949, 0.057260,
		0.683184, -0.730013, -0.018406,
		37.782040, 37.192055, 28.915321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012093, 37.353622, 29.511148>,  <37.303810, 37.703064, 28.928205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012093, 37.353622, 29.511148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363228, 37.185936, 29.418488>,  <37.573910, 37.085323, 29.362890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363228, 37.185936, 29.418488>,  <37.012093, 37.353622, 29.511148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363228, 37.185936, 29.418488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200160, -0.118305, 0.972594,
		-0.435137, -0.900143, -0.019942,
		0.877834, -0.419221, -0.231651,
		37.626579, 37.060169, 29.348991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041142, 36.735497, 29.848089>,  <37.012093, 37.353622, 29.511148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041142, 36.735497, 29.848089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414371, 36.853569, 29.765873>,  <37.638309, 36.924412, 29.716543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.414371, 36.853569, 29.765873>,  <37.041142, 36.735497, 29.848089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414371, 36.853569, 29.765873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201979, 0.042855, 0.978452,
		0.297628, -0.954480, -0.019634,
		0.933072, 0.295180, -0.205539,
		37.694294, 36.942123, 29.704210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415527, 36.404041, 30.249859>,  <37.041142, 36.735497, 29.848089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415527, 36.404041, 30.249859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671631, 36.700390, 30.168692>,  <37.825294, 36.878201, 30.119991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671631, 36.700390, 30.168692>,  <37.415527, 36.404041, 30.249859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671631, 36.700390, 30.168692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193872, 0.099756, 0.975942,
		0.743291, -0.664196, -0.079765,
		0.640259, 0.740873, -0.202916,
		37.863708, 36.922653, 30.107817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996960, 36.293770, 30.666735>,  <37.415527, 36.404041, 30.249859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996960, 36.293770, 30.666735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020924, 36.679596, 30.563955>,  <38.035301, 36.911091, 30.502287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.020924, 36.679596, 30.563955>,  <37.996960, 36.293770, 30.666735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020924, 36.679596, 30.563955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148396, 0.245944, 0.957857,
		0.987112, -0.095514, -0.128403,
		0.059908, 0.964567, -0.256948,
		38.038895, 36.968967, 30.486872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648914, 36.594727, 30.908972>,  <37.996960, 36.293770, 30.666735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648914, 36.594727, 30.908972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394474, 36.898903, 30.856653>,  <38.241810, 37.081409, 30.825262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.394474, 36.898903, 30.856653>,  <38.648914, 36.594727, 30.908972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394474, 36.898903, 30.856653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153456, 0.290806, 0.944396,
		0.756190, 0.580661, -0.301676,
		-0.636103, 0.760437, -0.130798,
		38.203644, 37.127033, 30.817413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879234, 37.179672, 31.460747>,  <38.648914, 36.594727, 30.908972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879234, 37.179672, 31.460747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521011, 37.314621, 31.344704>,  <38.306080, 37.395592, 31.275078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.521011, 37.314621, 31.344704>,  <38.879234, 37.179672, 31.460747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521011, 37.314621, 31.344704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065443, 0.545037, 0.835854,
		0.440115, 0.767538, -0.466031,
		-0.895554, 0.337373, -0.290108,
		38.252346, 37.415833, 31.257671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907276, 37.847504, 31.522530>,  <38.879234, 37.179672, 31.460747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907276, 37.847504, 31.522530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518471, 37.755642, 31.542318>,  <38.285187, 37.700527, 31.554192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.518471, 37.755642, 31.542318>,  <38.907276, 37.847504, 31.522530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518471, 37.755642, 31.542318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071838, 0.491077, 0.868149,
		-0.223665, 0.840300, -0.493832,
		-0.972015, -0.229650, 0.049471,
		38.226868, 37.686749, 31.557159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605522, 38.434380, 31.611837>,  <38.907276, 37.847504, 31.522530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605522, 38.434380, 31.611837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371777, 38.152687, 31.773119>,  <38.231529, 37.983673, 31.869888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371777, 38.152687, 31.773119>,  <38.605522, 38.434380, 31.611837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371777, 38.152687, 31.773119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117418, 0.418259, 0.900707,
		-0.802949, 0.573688, -0.161728,
		-0.584369, -0.704231, 0.403202,
		38.196465, 37.941418, 31.894079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031990, 38.867573, 31.647863>,  <38.605522, 38.434380, 31.611837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031990, 38.867573, 31.647863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850941, 38.819870, 32.001339>,  <37.742310, 38.791248, 32.213425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.850941, 38.819870, 32.001339>,  <38.031990, 38.867573, 31.647863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850941, 38.819870, 32.001339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866171, -0.176637, -0.467490,
		0.211844, -0.977025, -0.023347,
		-0.452625, -0.119257, 0.883689,
		37.715153, 38.784092, 32.266445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036869, 39.662773, 31.580769>,  <38.031990, 38.867573, 31.647863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036869, 39.662773, 31.580769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.071571, 40.027931, 31.421219>,  <38.092392, 40.247025, 31.325489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.071571, 40.027931, 31.421219>,  <38.036869, 39.662773, 31.580769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071571, 40.027931, 31.421219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579070, -0.279590, -0.765837,
		-0.810649, 0.297412, 0.504375,
		0.086751, 0.912894, -0.398872,
		38.097595, 40.301800, 31.301558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258484, 39.810459, 31.256372>,  <38.036869, 39.662773, 31.580769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258484, 39.810459, 31.256372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478733, 40.116692, 31.123285>,  <37.610882, 40.300430, 31.043432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.478733, 40.116692, 31.123285>,  <37.258484, 39.810459, 31.256372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478733, 40.116692, 31.123285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481294, -0.034500, -0.875880,
		-0.682038, 0.642412, 0.349474,
		0.550619, 0.765583, -0.332719,
		37.643917, 40.346367, 31.023470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818878, 40.280956, 30.943375>,  <37.258484, 39.810459, 31.256372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818878, 40.280956, 30.943375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.165710, 40.389198, 30.776066>,  <37.373810, 40.454144, 30.675680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.165710, 40.389198, 30.776066>,  <36.818878, 40.280956, 30.943375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165710, 40.389198, 30.776066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402234, -0.115065, -0.908277,
		-0.293912, 0.955789, 0.009076,
		0.867078, 0.270604, -0.418270,
		37.425835, 40.470379, 30.650585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676830, 40.820801, 30.421162>,  <36.818878, 40.280956, 30.943375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676830, 40.820801, 30.421162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.026314, 40.653721, 30.321428>,  <37.236004, 40.553474, 30.261589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.026314, 40.653721, 30.321428>,  <36.676830, 40.820801, 30.421162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026314, 40.653721, 30.321428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395682, -0.312068, -0.863742,
		0.282973, 0.853313, -0.437931,
		0.873706, -0.417697, -0.249333,
		37.288425, 40.528412, 30.246628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004745, 41.130947, 29.684183>,  <36.676830, 40.820801, 30.421162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004745, 41.130947, 29.684183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.173218, 40.775463, 29.756632>,  <37.274300, 40.562172, 29.800102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.173218, 40.775463, 29.756632>,  <37.004745, 41.130947, 29.684183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173218, 40.775463, 29.756632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364083, -0.348571, -0.863679,
		0.830693, 0.297821, -0.470375,
		0.421181, -0.888707, 0.181124,
		37.299572, 40.508850, 29.810968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332821, 40.871475, 29.044128>,  <37.004745, 41.130947, 29.684183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332821, 40.871475, 29.044128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.247406, 40.556610, 29.275568>,  <37.196159, 40.367691, 29.414433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.247406, 40.556610, 29.275568>,  <37.332821, 40.871475, 29.044128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247406, 40.556610, 29.275568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443856, -0.449434, -0.775243,
		0.870285, -0.422356, -0.253417,
		-0.213534, -0.787163, 0.578601,
		37.183346, 40.320461, 29.449148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236618, 40.468426, 28.550287>,  <37.332821, 40.871475, 29.044128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236618, 40.468426, 28.550287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.155067, 40.225018, 28.857048>,  <37.106136, 40.078972, 29.041105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.155067, 40.225018, 28.857048>,  <37.236618, 40.468426, 28.550287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155067, 40.225018, 28.857048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408679, -0.658936, -0.631494,
		0.889616, -0.442163, -0.114348,
		-0.203876, -0.608518, 0.766903,
		37.093906, 40.042461, 29.087118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564823, 39.883049, 28.400570>,  <37.236618, 40.468426, 28.550287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564823, 39.883049, 28.400570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257233, 39.803913, 28.643726>,  <37.072678, 39.756432, 28.789621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257233, 39.803913, 28.643726>,  <37.564823, 39.883049, 28.400570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257233, 39.803913, 28.643726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357790, -0.654832, -0.665718,
		0.529775, -0.729420, 0.432765,
		-0.768976, -0.197842, 0.607893,
		37.026539, 39.744560, 28.826094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638348, 39.193623, 28.488470>,  <37.564823, 39.883049, 28.400570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638348, 39.193623, 28.488470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.255836, 39.274693, 28.572802>,  <37.026329, 39.323334, 28.623400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.255836, 39.274693, 28.572802>,  <37.638348, 39.193623, 28.488470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255836, 39.274693, 28.572802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292118, -0.627625, -0.721633,
		-0.013937, -0.751671, 0.659391,
		-0.956281, 0.202677, 0.210829,
		36.968952, 39.335495, 28.636051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340847, 38.558060, 28.334045>,  <37.638348, 39.193623, 28.488470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340847, 38.558060, 28.334045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.022530, 38.796650, 28.375858>,  <36.831539, 38.939804, 28.400946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.022530, 38.796650, 28.375858>,  <37.340847, 38.558060, 28.334045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022530, 38.796650, 28.375858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428716, -0.433013, -0.792907,
		-0.427666, -0.675821, 0.600306,
		-0.795804, 0.596461, 0.104551,
		36.783791, 38.975594, 28.407219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891205, 38.104504, 28.201777>,  <37.340847, 38.558060, 28.334045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891205, 38.104504, 28.201777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721775, 38.458672, 28.125223>,  <36.620117, 38.671173, 28.079290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.721775, 38.458672, 28.125223>,  <36.891205, 38.104504, 28.201777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721775, 38.458672, 28.125223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344131, -0.352712, -0.870154,
		-0.837951, -0.302711, 0.454097,
		-0.423570, 0.885415, -0.191383,
		36.594704, 38.724297, 28.067808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168015, 37.965458, 27.974974>,  <36.891205, 38.104504, 28.201777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168015, 37.965458, 27.974974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.276924, 38.313496, 27.810633>,  <36.342270, 38.522320, 27.712029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.276924, 38.313496, 27.810633>,  <36.168015, 37.965458, 27.974974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276924, 38.313496, 27.810633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347568, -0.309222, -0.885199,
		-0.897254, 0.383813, 0.218225,
		0.272271, 0.870097, -0.410852,
		36.358604, 38.574524, 27.687378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685120, 38.078972, 27.557384>,  <36.168015, 37.965458, 27.974974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685120, 38.078972, 27.557384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.974716, 38.313889, 27.412653>,  <36.148476, 38.454838, 27.325815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.974716, 38.313889, 27.412653>,  <35.685120, 38.078972, 27.557384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974716, 38.313889, 27.412653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219445, -0.301191, -0.927970,
		-0.653968, 0.751247, -0.089182,
		0.723995, 0.587292, -0.361827,
		36.191914, 38.490078, 27.304106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355644, 38.431747, 27.014666>,  <35.685120, 38.078972, 27.557384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355644, 38.431747, 27.014666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.741096, 38.473049, 26.916077>,  <35.972370, 38.497829, 26.856924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.741096, 38.473049, 26.916077>,  <35.355644, 38.431747, 27.014666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741096, 38.473049, 26.916077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225602, -0.180010, -0.957445,
		-0.143228, 0.978230, -0.150170,
		0.963634, 0.103254, -0.246473,
		36.030186, 38.504025, 26.842134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914669, 39.032330, 26.981373>,  <35.355644, 38.431747, 27.014666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914669, 39.032330, 26.981373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533348, 38.978256, 26.873346>,  <34.304554, 38.945812, 26.808531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533348, 38.978256, 26.873346>,  <34.914669, 39.032330, 26.981373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533348, 38.978256, 26.873346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296416, 0.247475, 0.922439,
		-0.057859, 0.959418, -0.275988,
		-0.953305, -0.135179, -0.270068,
		34.247356, 38.937702, 26.792326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438316, 39.605339, 27.232483>,  <34.914669, 39.032330, 26.981373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438316, 39.605339, 27.232483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207638, 39.280029, 27.201477>,  <34.069229, 39.084843, 27.182875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207638, 39.280029, 27.201477>,  <34.438316, 39.605339, 27.232483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207638, 39.280029, 27.201477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268756, 0.099264, 0.958080,
		-0.771484, 0.573357, -0.275816,
		-0.576700, -0.813270, -0.077513,
		34.034626, 39.036049, 27.178223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796097, 39.836567, 27.547197>,  <34.438316, 39.605339, 27.232483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796097, 39.836567, 27.547197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762714, 39.438805, 27.521315>,  <33.742683, 39.200146, 27.505785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762714, 39.438805, 27.521315>,  <33.796097, 39.836567, 27.547197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762714, 39.438805, 27.521315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480994, -0.016671, 0.876565,
		-0.872742, 0.104282, -0.476913,
		-0.083459, -0.994408, -0.064709,
		33.737675, 39.140484, 27.501902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115238, 39.748734, 27.842077>,  <33.796097, 39.836567, 27.547197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115238, 39.748734, 27.842077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326042, 39.409245, 27.859659>,  <33.452526, 39.205551, 27.870209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.326042, 39.409245, 27.859659>,  <33.115238, 39.748734, 27.842077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326042, 39.409245, 27.859659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285441, -0.128054, 0.949803,
		-0.800489, -0.513104, -0.309746,
		0.527012, -0.848721, 0.043955,
		33.484146, 39.154629, 27.872847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742809, 39.382954, 28.298319>,  <33.115238, 39.748734, 27.842077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742809, 39.382954, 28.298319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.084274, 39.174759, 28.305773>,  <33.289154, 39.049843, 28.310246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.084274, 39.174759, 28.305773>,  <32.742809, 39.382954, 28.298319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084274, 39.174759, 28.305773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169255, -0.243402, 0.955044,
		-0.492554, -0.818441, -0.295879,
		0.853665, -0.520490, 0.018636,
		33.340374, 39.018612, 28.311363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572922, 38.707520, 28.733360>,  <32.742809, 39.382954, 28.298319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572922, 38.707520, 28.733360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.971600, 38.721485, 28.704037>,  <33.210808, 38.729862, 28.686443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.971600, 38.721485, 28.704037>,  <32.572922, 38.707520, 28.733360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971600, 38.721485, 28.704037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078943, -0.205364, 0.975497,
		0.019003, -0.978063, -0.207442,
		0.996698, 0.034913, -0.073309,
		33.270611, 38.731960, 28.682045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681099, 38.154816, 28.998997>,  <32.572922, 38.707520, 28.733360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681099, 38.154816, 28.998997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.016499, 38.369289, 29.037836>,  <33.217739, 38.497974, 29.061140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.016499, 38.369289, 29.037836>,  <32.681099, 38.154816, 28.998997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016499, 38.369289, 29.037836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104718, -0.333429, 0.936941,
		0.534748, -0.775455, -0.335728,
		0.838498, 0.536185, 0.097096,
		33.268047, 38.530144, 29.066965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135036, 37.726009, 29.487394>,  <32.681099, 38.154816, 28.998997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135036, 37.726009, 29.487394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.306351, 38.087456, 29.484503>,  <33.409138, 38.304325, 29.482769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.306351, 38.087456, 29.484503>,  <33.135036, 37.726009, 29.487394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306351, 38.087456, 29.484503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246618, -0.109187, 0.962942,
		0.869340, -0.414195, -0.269611,
		0.428284, 0.903615, -0.007228,
		33.434837, 38.358540, 29.482334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822086, 37.654556, 29.765972>,  <33.135036, 37.726009, 29.487394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822086, 37.654556, 29.765972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671753, 38.017910, 29.839283>,  <33.581551, 38.235920, 29.883268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.671753, 38.017910, 29.839283>,  <33.822086, 37.654556, 29.765972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671753, 38.017910, 29.839283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194550, -0.116023, 0.974007,
		0.906034, 0.401724, -0.133120,
		-0.375837, 0.908381, 0.183276,
		33.559002, 38.290424, 29.894266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262482, 37.790588, 30.366295>,  <33.822086, 37.654556, 29.765972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262482, 37.790588, 30.366295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.967804, 38.060642, 30.381632>,  <33.790997, 38.222675, 30.390833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.967804, 38.060642, 30.381632>,  <34.262482, 37.790588, 30.366295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967804, 38.060642, 30.381632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184224, 0.145821, 0.972007,
		0.650648, 0.723135, -0.231802,
		-0.736694, 0.675138, 0.038341,
		33.746796, 38.263184, 30.393135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514191, 38.386715, 30.563839>,  <34.262482, 37.790588, 30.366295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514191, 38.386715, 30.563839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.126663, 38.447323, 30.642252>,  <33.894146, 38.483688, 30.689301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.126663, 38.447323, 30.642252>,  <34.514191, 38.386715, 30.563839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126663, 38.447323, 30.642252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193821, -0.029393, 0.980596,
		0.154338, 0.988018, -0.000891,
		-0.968821, 0.151516, 0.196035,
		33.836018, 38.492779, 30.701063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423260, 39.030190, 31.045105>,  <34.514191, 38.386715, 30.563839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423260, 39.030190, 31.045105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090519, 38.808987, 31.063881>,  <33.890873, 38.676266, 31.075146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.090519, 38.808987, 31.063881>,  <34.423260, 39.030190, 31.045105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090519, 38.808987, 31.063881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055055, 0.001935, 0.998481,
		-0.552256, 0.833176, 0.028836,
		-0.831855, -0.553005, 0.046939,
		33.840961, 38.643085, 31.077963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.812267, 39.350674, 22.974792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628304, 39.003918, 23.051729>,  <33.517925, 38.795864, 23.097891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628304, 39.003918, 23.051729>,  <33.812267, 39.350674, 22.974792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628304, 39.003918, 23.051729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046942, 0.240040, 0.969627,
		-0.886726, 0.436908, -0.151089,
		-0.459905, -0.866887, 0.192340,
		33.490334, 38.743851, 23.109430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358547, 39.537815, 23.480856>,  <33.812267, 39.350674, 22.974792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358547, 39.537815, 23.480856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377075, 39.139305, 23.509935>,  <33.388191, 38.900200, 23.527384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377075, 39.139305, 23.509935>,  <33.358547, 39.537815, 23.480856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377075, 39.139305, 23.509935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040882, 0.074606, 0.996375,
		-0.998090, -0.043180, 0.044185,
		0.046320, -0.996278, 0.072698,
		33.390972, 38.840424, 23.531744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818592, 39.278950, 23.813400>,  <33.358547, 39.537815, 23.480856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818592, 39.278950, 23.813400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097130, 38.998215, 23.873440>,  <33.264252, 38.829773, 23.909464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097130, 38.998215, 23.873440>,  <32.818592, 39.278950, 23.813400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097130, 38.998215, 23.873440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045853, 0.165203, 0.985193,
		-0.716245, -0.692912, 0.082856,
		0.696340, -0.701841, 0.150098,
		33.306030, 38.787663, 23.918468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696060, 38.856483, 24.452250>,  <32.818592, 39.278950, 23.813400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696060, 38.856483, 24.452250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077835, 38.738571, 24.433651>,  <33.306900, 38.667824, 24.422493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077835, 38.738571, 24.433651>,  <32.696060, 38.856483, 24.452250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077835, 38.738571, 24.433651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074412, 0.084203, 0.993666,
		-0.288997, -0.951848, 0.102301,
		0.954434, -0.294779, -0.046495,
		33.364166, 38.650139, 24.419703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780781, 38.560825, 25.169397>,  <32.696060, 38.856483, 24.452250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780781, 38.560825, 25.169397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151169, 38.586010, 25.020473>,  <33.373402, 38.601120, 24.931118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151169, 38.586010, 25.020473>,  <32.780781, 38.560825, 25.169397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151169, 38.586010, 25.020473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355436, 0.187482, 0.915705,
		0.127454, -0.980248, 0.151224,
		0.925970, 0.062960, -0.372311,
		33.428959, 38.604900, 24.908781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145691, 38.056271, 25.396776>,  <32.780781, 38.560825, 25.169397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145691, 38.056271, 25.396776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413181, 38.334770, 25.292431>,  <33.573673, 38.501869, 25.229824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413181, 38.334770, 25.292431>,  <33.145691, 38.056271, 25.396776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413181, 38.334770, 25.292431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260421, 0.109290, 0.959290,
		0.696414, -0.709432, -0.108233,
		0.668722, 0.696249, -0.260862,
		33.613796, 38.543644, 25.214172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914940, 37.819504, 25.606392>,  <33.145691, 38.056271, 25.396776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914940, 37.819504, 25.606392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890625, 38.217358, 25.572912>,  <33.876034, 38.456070, 25.552824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890625, 38.217358, 25.572912>,  <33.914940, 37.819504, 25.606392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890625, 38.217358, 25.572912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304525, 0.098336, 0.947415,
		0.950562, 0.032106, -0.308869,
		-0.060790, 0.994635, -0.083697,
		33.872387, 38.515747, 25.547804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485107, 38.015114, 26.039488>,  <33.914940, 37.819504, 25.606392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485107, 38.015114, 26.039488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254803, 38.338852, 25.993082>,  <34.116619, 38.533096, 25.965239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254803, 38.338852, 25.993082>,  <34.485107, 38.015114, 26.039488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254803, 38.338852, 25.993082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090374, 0.204021, 0.974786,
		0.812611, 0.550755, -0.190611,
		-0.575757, 0.809348, -0.116016,
		34.082077, 38.581657, 25.958277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834854, 38.523064, 26.322563>,  <34.485107, 38.015114, 26.039488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834854, 38.523064, 26.322563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455235, 38.648705, 26.332747>,  <34.227463, 38.724087, 26.338856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455235, 38.648705, 26.332747>,  <34.834854, 38.523064, 26.322563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455235, 38.648705, 26.332747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081499, 0.166606, 0.982650,
		0.304408, 0.934657, -0.183716,
		-0.949049, 0.314099, 0.025458,
		34.170521, 38.742935, 26.340384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373451, 39.033588, 26.233944>,  <34.834854, 38.523064, 26.322563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373451, 39.033588, 26.233944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724174, 38.849491, 26.289646>,  <35.934608, 38.739033, 26.323069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724174, 38.849491, 26.289646>,  <35.373451, 39.033588, 26.233944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724174, 38.849491, 26.289646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109572, -0.090751, -0.989827,
		0.468195, 0.883145, -0.029142,
		0.876805, -0.460239, 0.139257,
		35.987217, 38.711418, 26.331423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760849, 39.380737, 25.712029>,  <35.373451, 39.033588, 26.233944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760849, 39.380737, 25.712029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933758, 39.034111, 25.811798>,  <36.037502, 38.826138, 25.871660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933758, 39.034111, 25.811798>,  <35.760849, 39.380737, 25.712029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933758, 39.034111, 25.811798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031342, -0.261996, -0.964560,
		0.901200, 0.424767, -0.086093,
		0.432269, -0.866563, 0.249424,
		36.063438, 38.774143, 25.886625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315269, 39.300709, 25.347748>,  <35.760849, 39.380737, 25.712029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315269, 39.300709, 25.347748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219048, 38.921925, 25.432976>,  <36.161312, 38.694653, 25.484112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219048, 38.921925, 25.432976>,  <36.315269, 39.300709, 25.347748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219048, 38.921925, 25.432976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285878, -0.278899, -0.916782,
		0.927580, -0.159628, 0.337807,
		-0.240558, -0.946960, 0.213068,
		36.146881, 38.637836, 25.496897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804771, 38.933815, 25.067875>,  <36.315269, 39.300709, 25.347748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804771, 38.933815, 25.067875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523247, 38.655342, 25.124409>,  <36.354332, 38.488258, 25.158329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523247, 38.655342, 25.124409>,  <36.804771, 38.933815, 25.067875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523247, 38.655342, 25.124409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342806, -0.507105, -0.790777,
		0.622195, -0.508111, 0.595564,
		-0.703816, -0.696181, 0.141335,
		36.312103, 38.446487, 25.166809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098934, 38.351532, 24.895536>,  <36.804771, 38.933815, 25.067875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098934, 38.351532, 24.895536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717869, 38.231022, 24.879200>,  <36.489231, 38.158714, 24.869398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717869, 38.231022, 24.879200>,  <37.098934, 38.351532, 24.895536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717869, 38.231022, 24.879200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238281, -0.656440, -0.715758,
		0.188829, -0.691607, 0.697153,
		-0.952662, -0.301274, -0.040842,
		36.432072, 38.140640, 24.866947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191525, 37.653179, 24.633921>,  <37.098934, 38.351532, 24.895536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191525, 37.653179, 24.633921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816132, 37.747433, 24.532948>,  <36.590897, 37.803986, 24.472363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816132, 37.747433, 24.532948>,  <37.191525, 37.653179, 24.633921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816132, 37.747433, 24.532948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047320, -0.636371, -0.769931,
		-0.342061, -0.734514, 0.586075,
		-0.938486, 0.235630, -0.252434,
		36.534584, 37.818123, 24.457216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815174, 37.016117, 24.544134>,  <37.191525, 37.653179, 24.633921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815174, 37.016117, 24.544134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615036, 37.304394, 24.352192>,  <36.494953, 37.477360, 24.237026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615036, 37.304394, 24.352192>,  <36.815174, 37.016117, 24.544134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615036, 37.304394, 24.352192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014857, -0.546987, -0.837009,
		-0.865699, -0.425922, 0.262974,
		-0.500344, 0.720691, -0.479855,
		36.464931, 37.520599, 24.208235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416470, 36.705566, 24.131397>,  <36.815174, 37.016117, 24.544134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416470, 36.705566, 24.131397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381622, 37.063805, 23.956894>,  <36.360714, 37.278748, 23.852192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381622, 37.063805, 23.956894>,  <36.416470, 36.705566, 24.131397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381622, 37.063805, 23.956894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024486, -0.435867, -0.899678,
		-0.995897, -0.089062, 0.016043,
		-0.087119, 0.895594, -0.436259,
		36.355488, 37.332481, 23.826015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896442, 36.634026, 23.639467>,  <36.416470, 36.705566, 24.131397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896442, 36.634026, 23.639467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117153, 36.946026, 23.521387>,  <36.249580, 37.133224, 23.450539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117153, 36.946026, 23.521387>,  <35.896442, 36.634026, 23.639467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117153, 36.946026, 23.521387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033526, -0.332929, -0.942356,
		-0.833319, 0.529865, -0.157552,
		0.551775, 0.780001, -0.295200,
		36.282684, 37.180027, 23.432827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698986, 36.741470, 22.972073>,  <35.896442, 36.634026, 23.639467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698986, 36.741470, 22.972073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999699, 37.005165, 22.978168>,  <36.180126, 37.163383, 22.981827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999699, 37.005165, 22.978168>,  <35.698986, 36.741470, 22.972073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999699, 37.005165, 22.978168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205661, -0.212448, -0.955285,
		-0.626523, 0.721297, -0.295294,
		0.751779, 0.659239, 0.015239,
		36.225231, 37.202938, 22.982740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565128, 37.307835, 22.550182>,  <35.698986, 36.741470, 22.972073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565128, 37.307835, 22.550182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964672, 37.290546, 22.558357>,  <36.204399, 37.280174, 22.563263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964672, 37.290546, 22.558357>,  <35.565128, 37.307835, 22.550182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964672, 37.290546, 22.558357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012403, -0.178609, -0.983842,
		0.046170, 0.982970, -0.177869,
		0.998857, -0.043218, 0.020438,
		36.264328, 37.277580, 22.564489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583698, 37.370800, 21.897011>,  <35.565128, 37.307835, 22.550182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583698, 37.370800, 21.897011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957706, 37.321922, 22.030159>,  <36.182110, 37.292595, 22.110048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957706, 37.321922, 22.030159>,  <35.583698, 37.370800, 21.897011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957706, 37.321922, 22.030159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262131, -0.393985, -0.880945,
		0.238794, 0.910958, -0.336353,
		0.935021, -0.122196, 0.332871,
		36.238213, 37.285263, 22.130020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002380, 37.722523, 21.417219>,  <35.583698, 37.370800, 21.897011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002380, 37.722523, 21.417219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144806, 37.389843, 21.587627>,  <36.230263, 37.190235, 21.689873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144806, 37.389843, 21.587627>,  <36.002380, 37.722523, 21.417219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144806, 37.389843, 21.587627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104359, -0.417658, -0.902591,
		0.928616, 0.365840, -0.061918,
		0.356065, -0.831699, 0.426023,
		36.251625, 37.140335, 21.715435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479790, 37.549744, 21.027988>,  <36.002380, 37.722523, 21.417219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479790, 37.549744, 21.027988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442451, 37.207897, 21.232306>,  <36.420048, 37.002789, 21.354897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442451, 37.207897, 21.232306>,  <36.479790, 37.549744, 21.027988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442451, 37.207897, 21.232306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211063, -0.518360, -0.828707,
		0.973005, 0.030450, 0.228767,
		-0.093349, -0.854620, 0.510794,
		36.414448, 36.951511, 21.385544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.488638, 30.572126, 24.479784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.536116, 30.960276, 24.395603>,  <31.564602, 31.193165, 24.345095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.536116, 30.960276, 24.395603>,  <31.488638, 30.572126, 24.479784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536116, 30.960276, 24.395603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562500, 0.108944, 0.819588,
		0.818233, -0.215659, -0.532903,
		0.118695, 0.970372, -0.210450,
		31.571724, 31.251387, 24.332468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213943, 30.620829, 24.548943>,  <31.488638, 30.572126, 24.479784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213943, 30.620829, 24.548943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005806, 30.951984, 24.632704>,  <31.880924, 31.150677, 24.682961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005806, 30.951984, 24.632704>,  <32.213943, 30.620829, 24.548943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005806, 30.951984, 24.632704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386229, 0.009454, 0.922354,
		0.761626, 0.560815, -0.324673,
		-0.520339, 0.827887, 0.209403,
		31.849705, 31.200350, 24.695524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728882, 30.975721, 24.667707>,  <32.213943, 30.620829, 24.548943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728882, 30.975721, 24.667707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.427933, 31.173033, 24.842346>,  <32.247364, 31.291420, 24.947130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.427933, 31.173033, 24.842346>,  <32.728882, 30.975721, 24.667707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427933, 31.173033, 24.842346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501554, -0.000722, 0.865126,
		0.427061, 0.869872, -0.246861,
		-0.752371, 0.493276, 0.436597,
		32.202221, 31.321016, 24.973326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036373, 31.529987, 25.098368>,  <32.728882, 30.975721, 24.667707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036373, 31.529987, 25.098368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.667797, 31.490997, 25.248810>,  <32.446651, 31.467604, 25.339075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.667797, 31.490997, 25.248810>,  <33.036373, 31.529987, 25.098368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667797, 31.490997, 25.248810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350464, 0.209365, 0.912875,
		-0.167725, 0.972967, -0.158755,
		-0.921436, -0.097474, 0.376106,
		32.391365, 31.461756, 25.361641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923901, 32.168118, 25.479485>,  <33.036373, 31.529987, 25.098368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923901, 32.168118, 25.479485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.661263, 31.902058, 25.621731>,  <32.503681, 31.742422, 25.707079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.661263, 31.902058, 25.621731>,  <32.923901, 32.168118, 25.479485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661263, 31.902058, 25.621731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061055, 0.423065, 0.904040,
		-0.751771, 0.615297, -0.237170,
		-0.656592, -0.665150, 0.355614,
		32.464287, 31.702513, 25.728415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447529, 32.542439, 25.871897>,  <32.923901, 32.168118, 25.479485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447529, 32.542439, 25.871897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.386856, 32.168762, 26.001062>,  <32.350452, 31.944555, 26.078562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.386856, 32.168762, 26.001062>,  <32.447529, 32.542439, 25.871897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386856, 32.168762, 26.001062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046345, 0.333057, 0.941767,
		-0.987343, 0.127880, -0.093813,
		-0.151679, -0.934194, 0.322914,
		32.341354, 31.888504, 26.097937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044643, 32.585850, 26.400501>,  <32.447529, 32.542439, 25.871897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044643, 32.585850, 26.400501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.155201, 32.210552, 26.483747>,  <32.221535, 31.985374, 26.533695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.155201, 32.210552, 26.483747>,  <32.044643, 32.585850, 26.400501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155201, 32.210552, 26.483747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183235, 0.161130, 0.969774,
		-0.943414, -0.306176, -0.127383,
		0.276397, -0.938239, 0.208114,
		32.238121, 31.929081, 26.546183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611897, 32.243988, 26.971928>,  <32.044643, 32.585850, 26.400501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611897, 32.243988, 26.971928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.958973, 32.045471, 26.960552>,  <32.167217, 31.926363, 26.953726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.958973, 32.045471, 26.960552>,  <31.611897, 32.243988, 26.971928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958973, 32.045471, 26.960552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064720, 0.056058, 0.996328,
		-0.492871, -0.866346, 0.080761,
		0.867692, -0.496288, -0.028441,
		32.219280, 31.896585, 26.952021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646427, 31.792084, 27.487326>,  <31.611897, 32.243988, 26.971928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646427, 31.792084, 27.487326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.037422, 31.804132, 27.403790>,  <32.272018, 31.811361, 27.353668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.037422, 31.804132, 27.403790>,  <31.646427, 31.792084, 27.487326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037422, 31.804132, 27.403790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206712, 0.061829, 0.976446,
		0.042312, -0.997632, 0.054214,
		0.977486, 0.030109, -0.208839,
		32.330669, 31.813169, 27.341137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041637, 31.301767, 28.018160>,  <31.646427, 31.792084, 27.487326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041637, 31.301767, 28.018160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.290737, 31.573399, 27.862703>,  <32.440197, 31.736378, 27.769430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.290737, 31.573399, 27.862703>,  <32.041637, 31.301767, 28.018160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290737, 31.573399, 27.862703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381150, 0.170496, 0.908656,
		0.683310, -0.713991, -0.152656,
		0.622745, 0.679079, -0.388640,
		32.477562, 31.777122, 27.746111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668983, 31.271519, 28.501451>,  <32.041637, 31.301767, 28.018160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668983, 31.271519, 28.501451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.739902, 31.593672, 28.275204>,  <32.782455, 31.786964, 28.139456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.739902, 31.593672, 28.275204>,  <32.668983, 31.271519, 28.501451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739902, 31.593672, 28.275204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265902, 0.514148, 0.815443,
		0.947556, -0.294974, -0.122996,
		0.177296, 0.805383, -0.565618,
		32.793091, 31.835287, 28.105518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413921, 31.519587, 28.568022>,  <32.668983, 31.271519, 28.501451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413921, 31.519587, 28.568022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202255, 31.841354, 28.460032>,  <33.075256, 32.034416, 28.395237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202255, 31.841354, 28.460032>,  <33.413921, 31.519587, 28.568022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202255, 31.841354, 28.460032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229431, 0.441971, 0.867193,
		0.816910, 0.396950, -0.418436,
		-0.529169, 0.804421, -0.269978,
		33.043503, 32.082680, 28.379038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837002, 32.067657, 28.902662>,  <33.413921, 31.519587, 28.568022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837002, 32.067657, 28.902662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479820, 32.232525, 28.830275>,  <33.265511, 32.331444, 28.786842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479820, 32.232525, 28.830275>,  <33.837002, 32.067657, 28.902662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479820, 32.232525, 28.830275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189082, 0.708280, 0.680137,
		0.408506, 0.573114, -0.710396,
		-0.892956, 0.412164, -0.180971,
		33.211933, 32.356174, 28.775984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888157, 32.828934, 28.762386>,  <33.837002, 32.067657, 28.902662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888157, 32.828934, 28.762386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537689, 32.743362, 28.935160>,  <33.327408, 32.692020, 29.038824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537689, 32.743362, 28.935160>,  <33.888157, 32.828934, 28.762386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537689, 32.743362, 28.935160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124984, 0.764626, 0.632240,
		-0.465522, 0.607932, -0.643202,
		-0.876167, -0.213932, 0.431932,
		33.274837, 32.679184, 29.064739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305073, 33.523239, 28.750757>,  <33.888157, 32.828934, 28.762386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305073, 33.523239, 28.750757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.695690, 33.457039, 28.805853>,  <34.930061, 33.417316, 28.838911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.695690, 33.457039, 28.805853>,  <34.305073, 33.523239, 28.750757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695690, 33.457039, 28.805853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102353, -0.205999, -0.973185,
		0.189441, 0.964454, -0.184227,
		0.976543, -0.165505, 0.137739,
		34.988651, 33.407387, 28.847176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649773, 34.050522, 28.256952>,  <34.305073, 33.523239, 28.750757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649773, 34.050522, 28.256952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.858089, 33.713955, 28.314642>,  <34.983078, 33.512016, 28.349257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.858089, 33.713955, 28.314642>,  <34.649773, 34.050522, 28.256952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858089, 33.713955, 28.314642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054358, -0.135919, -0.989228,
		0.851952, 0.523020, -0.025048,
		0.520790, -0.841413, 0.144226,
		35.014328, 33.461533, 28.357910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324234, 34.130676, 27.898373>,  <34.649773, 34.050522, 28.256952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324234, 34.130676, 27.898373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.293674, 33.737881, 27.967495>,  <35.275337, 33.502205, 28.008968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.293674, 33.737881, 27.967495>,  <35.324234, 34.130676, 27.898373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293674, 33.737881, 27.967495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231080, -0.186034, -0.954983,
		0.969930, -0.033028, 0.241131,
		-0.076400, -0.981988, 0.172808,
		35.270756, 33.443283, 28.019337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827053, 33.815311, 27.566914>,  <35.324234, 34.130676, 27.898373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827053, 33.815311, 27.566914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585213, 33.500038, 27.612904>,  <35.440109, 33.310875, 27.640497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.585213, 33.500038, 27.612904>,  <35.827053, 33.815311, 27.566914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585213, 33.500038, 27.612904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200978, -0.290627, -0.935491,
		0.770757, -0.542491, 0.334122,
		-0.604600, -0.788187, 0.114974,
		35.403831, 33.263580, 27.647396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087185, 33.293190, 27.142597>,  <35.827053, 33.815311, 27.566914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087185, 33.293190, 27.142597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719913, 33.149918, 27.210318>,  <35.499550, 33.063953, 27.250950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719913, 33.149918, 27.210318>,  <36.087185, 33.293190, 27.142597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719913, 33.149918, 27.210318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040006, -0.341322, -0.939095,
		0.394151, -0.869026, 0.299064,
		-0.918175, -0.358181, 0.169299,
		35.444462, 33.042465, 27.261106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121956, 32.645924, 26.851938>,  <36.087185, 33.293190, 27.142597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121956, 32.645924, 26.851938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726662, 32.689190, 26.895199>,  <35.489487, 32.715149, 26.921154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726662, 32.689190, 26.895199>,  <36.121956, 32.645924, 26.851938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726662, 32.689190, 26.895199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133474, -0.264473, -0.955112,
		-0.074711, -0.958308, 0.275798,
		-0.988232, 0.108169, 0.108150,
		35.430191, 32.721642, 26.927645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759640, 32.022385, 26.666695>,  <36.121956, 32.645924, 26.851938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759640, 32.022385, 26.666695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517422, 32.337463, 26.621357>,  <35.372093, 32.526512, 26.594154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.517422, 32.337463, 26.621357>,  <35.759640, 32.022385, 26.666695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517422, 32.337463, 26.621357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238741, -0.315676, -0.918342,
		-0.759159, -0.529034, 0.379211,
		-0.605542, 0.787700, -0.113346,
		35.335758, 32.573772, 26.587353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189499, 31.721632, 26.351881>,  <35.759640, 32.022385, 26.666695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189499, 31.721632, 26.351881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160667, 32.116493, 26.294846>,  <35.143368, 32.353409, 26.260624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.160667, 32.116493, 26.294846>,  <35.189499, 31.721632, 26.351881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160667, 32.116493, 26.294846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278500, -0.157195, -0.947485,
		-0.957727, -0.028585, 0.286254,
		-0.072082, 0.987154, -0.142589,
		35.139042, 32.412640, 26.252069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594227, 31.803907, 25.979647>,  <35.189499, 31.721632, 26.351881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594227, 31.803907, 25.979647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804462, 32.137871, 25.914312>,  <34.930603, 32.338249, 25.875113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804462, 32.137871, 25.914312>,  <34.594227, 31.803907, 25.979647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804462, 32.137871, 25.914312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261702, -0.024009, -0.964850,
		-0.809484, 0.549863, 0.205879,
		0.525592, 0.834910, -0.163335,
		34.962139, 32.388344, 25.865313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106003, 32.259148, 25.862896>,  <34.594227, 31.803907, 25.979647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106003, 32.259148, 25.862896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434048, 32.412842, 25.693293>,  <34.630875, 32.505058, 25.591530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.434048, 32.412842, 25.693293>,  <34.106003, 32.259148, 25.862896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434048, 32.412842, 25.693293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519265, 0.188459, -0.833575,
		-0.240381, 0.903796, 0.354077,
		0.820110, 0.384235, -0.424008,
		34.680080, 32.528111, 25.566090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991306, 32.930016, 25.474825>,  <34.106003, 32.259148, 25.862896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991306, 32.930016, 25.474825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317112, 32.756748, 25.320457>,  <34.512596, 32.652786, 25.227837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317112, 32.756748, 25.320457>,  <33.991306, 32.930016, 25.474825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317112, 32.756748, 25.320457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324819, 0.210666, -0.922015,
		0.480688, 0.876347, 0.030889,
		0.814513, -0.433169, -0.385919,
		34.561466, 32.626797, 25.204681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102039, 33.375858, 24.962313>,  <33.991306, 32.930016, 25.474825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102039, 33.375858, 24.962313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317986, 33.042751, 24.913237>,  <34.447552, 32.842888, 24.883791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317986, 33.042751, 24.913237>,  <34.102039, 33.375858, 24.962313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317986, 33.042751, 24.913237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213801, 0.005315, -0.976863,
		0.814149, 0.553601, -0.175176,
		0.539861, -0.832765, -0.122688,
		34.479942, 32.792923, 24.876431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671795, 33.550522, 24.410080>,  <34.102039, 33.375858, 24.962313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671795, 33.550522, 24.410080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619297, 33.153984, 24.409187>,  <34.587799, 32.916061, 24.408651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619297, 33.153984, 24.409187>,  <34.671795, 33.550522, 24.410080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619297, 33.153984, 24.409187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243316, 0.034396, -0.969337,
		0.961026, -0.126680, -0.245725,
		-0.131248, -0.991347, -0.002232,
		34.579922, 32.856579, 24.408518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928005, 33.369381, 23.663288>,  <34.671795, 33.550522, 24.410080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928005, 33.369381, 23.663288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718487, 33.053539, 23.791147>,  <34.592777, 32.864037, 23.867863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718487, 33.053539, 23.791147>,  <34.928005, 33.369381, 23.663288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718487, 33.053539, 23.791147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180147, -0.264076, -0.947529,
		0.832580, -0.553891, -0.003923,
		-0.523791, -0.789600, 0.319646,
		34.561348, 32.816658, 23.887041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743061, 33.101360, 23.552788>,  <34.928005, 33.369381, 23.663288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743061, 33.101360, 23.552788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029770, 33.278580, 23.337400>,  <36.201794, 33.384911, 23.208168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029770, 33.278580, 23.337400>,  <35.743061, 33.101360, 23.552788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029770, 33.278580, 23.337400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315618, 0.482449, 0.817085,
		0.621794, -0.755612, 0.205970,
		0.716769, 0.443051, -0.538469,
		36.244801, 33.411495, 23.175859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325294, 33.092232, 24.024836>,  <35.743061, 33.101360, 23.552788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325294, 33.092232, 24.024836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436337, 33.353180, 23.742744>,  <36.502960, 33.509750, 23.573490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436337, 33.353180, 23.742744>,  <36.325294, 33.092232, 24.024836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436337, 33.353180, 23.742744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389457, 0.594635, 0.703372,
		0.878213, -0.469917, -0.088996,
		0.277606, 0.652371, -0.705229,
		36.519619, 33.548893, 23.531176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021290, 33.301064, 24.263149>,  <36.325294, 33.092232, 24.024836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021290, 33.301064, 24.263149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890823, 33.577164, 24.004795>,  <36.812542, 33.742825, 23.849783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890823, 33.577164, 24.004795>,  <37.021290, 33.301064, 24.263149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890823, 33.577164, 24.004795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382062, 0.721215, 0.577820,
		0.864663, -0.058301, -0.498957,
		-0.326168, 0.690253, -0.645884,
		36.792973, 33.784241, 23.811029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568237, 33.738560, 24.321903>,  <37.021290, 33.301064, 24.263149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568237, 33.738560, 24.321903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293839, 33.957592, 24.130251>,  <37.129200, 34.089012, 24.015261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293839, 33.957592, 24.130251>,  <37.568237, 33.738560, 24.321903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293839, 33.957592, 24.130251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294469, 0.811102, 0.505373,
		0.665355, 0.205596, -0.717658,
		-0.685996, 0.547580, -0.479129,
		37.088039, 34.121864, 23.986511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942394, 34.405548, 24.012671>,  <37.568237, 33.738560, 24.321903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942394, 34.405548, 24.012671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.550415, 34.481602, 24.036530>,  <37.315228, 34.527233, 24.050846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.550415, 34.481602, 24.036530>,  <37.942394, 34.405548, 24.012671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550415, 34.481602, 24.036530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167860, 0.626299, 0.761296,
		0.107392, 0.756040, -0.645655,
		-0.979944, 0.190137, 0.059649,
		37.256432, 34.538643, 24.054424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984814, 35.117840, 24.005054>,  <37.942394, 34.405548, 24.012671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984814, 35.117840, 24.005054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.638439, 34.997673, 24.165007>,  <37.430614, 34.925571, 24.260979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.638439, 34.997673, 24.165007>,  <37.984814, 35.117840, 24.005054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638439, 34.997673, 24.165007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033346, 0.763060, 0.645467,
		-0.499043, 0.572267, -0.650743,
		-0.865936, -0.300416, 0.399882,
		37.378658, 34.907547, 24.284971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650871, 35.692062, 24.207264>,  <37.984814, 35.117840, 24.005054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650871, 35.692062, 24.207264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452217, 35.418629, 24.421206>,  <37.333023, 35.254570, 24.549570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.452217, 35.418629, 24.421206>,  <37.650871, 35.692062, 24.207264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452217, 35.418629, 24.421206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001796, 0.617029, 0.786938,
		-0.867956, 0.389863, -0.307668,
		-0.496638, -0.683580, 0.534853,
		37.303226, 35.213554, 24.581661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108395, 36.013618, 24.512877>,  <37.650871, 35.692062, 24.207264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108395, 36.013618, 24.512877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188377, 35.684891, 24.726280>,  <37.236366, 35.487656, 24.854322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.188377, 35.684891, 24.726280>,  <37.108395, 36.013618, 24.512877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188377, 35.684891, 24.726280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082071, 0.556639, 0.826690,
		-0.976361, -0.121519, 0.178753,
		0.199960, -0.821819, 0.533507,
		37.248363, 35.438347, 24.886332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652378, 36.101685, 25.083513>,  <37.108395, 36.013618, 24.512877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652378, 36.101685, 25.083513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939659, 35.845894, 25.193243>,  <37.112030, 35.692421, 25.259081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.939659, 35.845894, 25.193243>,  <36.652378, 36.101685, 25.083513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939659, 35.845894, 25.193243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053987, 0.444261, 0.894269,
		-0.693733, -0.627460, 0.353594,
		0.718206, -0.639474, 0.274324,
		37.155121, 35.654053, 25.275539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477146, 35.860619, 25.690392>,  <36.652378, 36.101685, 25.083513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477146, 35.860619, 25.690392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872066, 35.797688, 25.699266>,  <37.109016, 35.759930, 25.704592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.872066, 35.797688, 25.699266>,  <36.477146, 35.860619, 25.690392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872066, 35.797688, 25.699266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035038, 0.351806, 0.935417,
		-0.154971, -0.922758, 0.352850,
		0.987297, -0.157325, 0.022188,
		37.168255, 35.750488, 25.705923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679836, 35.504070, 26.339190>,  <36.477146, 35.860619, 25.690392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679836, 35.504070, 26.339190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028179, 35.655380, 26.213644>,  <37.237186, 35.746166, 26.138317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.028179, 35.655380, 26.213644>,  <36.679836, 35.504070, 26.339190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028179, 35.655380, 26.213644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225499, 0.259917, 0.938932,
		0.436753, -0.888455, 0.141051,
		0.870860, 0.378274, -0.313865,
		37.289436, 35.768864, 26.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056843, 35.414856, 26.982496>,  <36.679836, 35.504070, 26.339190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056843, 35.414856, 26.982496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290775, 35.642338, 26.751137>,  <37.431133, 35.778828, 26.612322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.290775, 35.642338, 26.751137>,  <37.056843, 35.414856, 26.982496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290775, 35.642338, 26.751137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382278, 0.435666, 0.814898,
		0.715426, -0.697688, 0.037388,
		0.584833, 0.568706, -0.578398,
		37.466225, 35.812950, 26.577618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680008, 35.377838, 27.293291>,  <37.056843, 35.414856, 26.982496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680008, 35.377838, 27.293291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669964, 35.714909, 27.078159>,  <37.663937, 35.917152, 26.949080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.669964, 35.714909, 27.078159>,  <37.680008, 35.377838, 27.293291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669964, 35.714909, 27.078159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387594, 0.504122, 0.771772,
		0.921488, -0.189081, -0.339275,
		-0.025109, 0.842680, -0.537829,
		37.662430, 35.967712, 26.916811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278801, 35.764858, 27.472258>,  <37.680008, 35.377838, 27.293291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278801, 35.764858, 27.472258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068386, 36.049335, 27.285717>,  <37.942135, 36.220024, 27.173794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.068386, 36.049335, 27.285717>,  <38.278801, 35.764858, 27.472258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068386, 36.049335, 27.285717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225905, 0.645500, 0.729587,
		0.819908, 0.278440, -0.500221,
		-0.526039, 0.711197, -0.466350,
		37.910576, 36.262695, 27.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.220310, 36.987881, 20.819056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.923851, 36.762039, 20.964334>,  <36.745975, 36.626534, 21.051502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.923851, 36.762039, 20.964334>,  <37.220310, 36.987881, 20.819056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923851, 36.762039, 20.964334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051399, -0.491693, -0.869250,
		0.669367, -0.662914, 0.335399,
		-0.741152, -0.564609, 0.363196,
		36.701504, 36.592655, 21.073294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373604, 36.399765, 20.437298>,  <37.220310, 36.987881, 20.819056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373604, 36.399765, 20.437298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.006538, 36.365120, 20.592419>,  <36.786301, 36.344334, 20.685492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.006538, 36.365120, 20.592419>,  <37.373604, 36.399765, 20.437298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006538, 36.365120, 20.592419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285899, -0.533871, -0.795766,
		0.275961, -0.841118, 0.465152,
		-0.917664, -0.086614, 0.387803,
		36.731239, 36.339134, 20.708759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191204, 35.667362, 20.221325>,  <37.373604, 36.399765, 20.437298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191204, 35.667362, 20.221325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858551, 35.868557, 20.315466>,  <36.658958, 35.989273, 20.371950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.858551, 35.868557, 20.315466>,  <37.191204, 35.667362, 20.221325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858551, 35.868557, 20.315466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477487, -0.431276, -0.765511,
		-0.283541, -0.749002, 0.598833,
		-0.831632, 0.502988, 0.235354,
		36.609062, 36.019455, 20.386072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678806, 35.200745, 20.370888>,  <37.191204, 35.667362, 20.221325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678806, 35.200745, 20.370888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496120, 35.544708, 20.279696>,  <36.386509, 35.751087, 20.224979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496120, 35.544708, 20.279696>,  <36.678806, 35.200745, 20.370888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496120, 35.544708, 20.279696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483620, -0.455085, -0.747669,
		-0.746676, -0.231213, 0.623711,
		-0.456713, 0.859906, -0.227982,
		36.359108, 35.802681, 20.211302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033142, 35.024269, 20.314596>,  <36.678806, 35.200745, 20.370888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033142, 35.024269, 20.314596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026226, 35.368359, 20.110746>,  <36.022076, 35.574814, 19.988436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.026226, 35.368359, 20.110746>,  <36.033142, 35.024269, 20.314596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026226, 35.368359, 20.110746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706629, -0.371113, -0.602453,
		-0.707373, 0.349700, 0.614274,
		-0.017287, 0.860223, -0.509624,
		36.021038, 35.626427, 19.957859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323853, 35.129379, 20.203007>,  <36.033142, 35.024269, 20.314596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323853, 35.129379, 20.203007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.510044, 35.356125, 19.931126>,  <35.621758, 35.492172, 19.767996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.510044, 35.356125, 19.931126>,  <35.323853, 35.129379, 20.203007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510044, 35.356125, 19.931126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672773, -0.272374, -0.687887,
		-0.575069, 0.777485, 0.254583,
		0.465480, 0.566859, -0.679705,
		35.649689, 35.526184, 19.727215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777676, 35.485802, 19.847441>,  <35.323853, 35.129379, 20.203007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777676, 35.485802, 19.847441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.104218, 35.454144, 19.618603>,  <35.300144, 35.435150, 19.481300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.104218, 35.454144, 19.618603>,  <34.777676, 35.485802, 19.847441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104218, 35.454144, 19.618603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552087, -0.397797, -0.732774,
		-0.169582, 0.914053, -0.368440,
		0.816359, -0.079145, -0.572096,
		35.349125, 35.430401, 19.446974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498615, 35.532684, 19.192986>,  <34.777676, 35.485802, 19.847441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498615, 35.532684, 19.192986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.861511, 35.385284, 19.111868>,  <35.079250, 35.296844, 19.063196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.861511, 35.385284, 19.111868>,  <34.498615, 35.532684, 19.192986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861511, 35.385284, 19.111868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349146, -0.390910, -0.851637,
		0.234552, 0.843444, -0.483309,
		0.907239, -0.368499, -0.202796,
		35.133682, 35.274734, 19.051029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775223, 35.835457, 18.529699>,  <34.498615, 35.532684, 19.192986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775223, 35.835457, 18.529699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.932755, 35.478775, 18.618937>,  <35.027271, 35.264767, 18.672480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.932755, 35.478775, 18.618937>,  <34.775223, 35.835457, 18.529699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932755, 35.478775, 18.618937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442592, -0.396678, -0.804213,
		0.805614, 0.217981, -0.550882,
		0.393826, -0.891701, 0.223092,
		35.050903, 35.211266, 18.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818394, 35.515381, 17.831327>,  <34.775223, 35.835457, 18.529699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818394, 35.515381, 17.831327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867031, 35.224018, 18.101034>,  <34.896214, 35.049198, 18.262857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.867031, 35.224018, 18.101034>,  <34.818394, 35.515381, 17.831327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867031, 35.224018, 18.101034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424693, -0.652164, -0.627947,
		0.897135, -0.210000, -0.388650,
		0.121595, -0.728410, 0.674265,
		34.903511, 35.005493, 18.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003712, 35.066525, 17.331835>,  <34.818394, 35.515381, 17.831327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003712, 35.066525, 17.331835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923744, 34.850670, 17.658960>,  <34.875763, 34.721157, 17.855236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923744, 34.850670, 17.658960>,  <35.003712, 35.066525, 17.331835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923744, 34.850670, 17.658960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461272, -0.684551, -0.564463,
		0.864442, -0.490082, -0.112066,
		-0.199919, -0.539639, 0.817816,
		34.863770, 34.688778, 17.904305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230648, 34.381199, 17.177841>,  <35.003712, 35.066525, 17.331835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230648, 34.381199, 17.177841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956379, 34.349171, 17.467239>,  <34.791817, 34.329952, 17.640879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.956379, 34.349171, 17.467239>,  <35.230648, 34.381199, 17.177841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956379, 34.349171, 17.467239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442823, -0.742969, -0.501901,
		0.577724, -0.664519, 0.473973,
		-0.685670, -0.080074, 0.723495,
		34.750679, 34.325150, 17.684288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167786, 33.709206, 17.277971>,  <35.230648, 34.381199, 17.177841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167786, 33.709206, 17.277971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830917, 33.868633, 17.423239>,  <34.628796, 33.964291, 17.510399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830917, 33.868633, 17.423239>,  <35.167786, 33.709206, 17.277971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830917, 33.868633, 17.423239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516327, -0.790214, -0.330104,
		0.155413, -0.465518, 0.871286,
		-0.842171, 0.398567, 0.363169,
		34.578266, 33.988205, 17.532190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777760, 33.230267, 17.674921>,  <35.167786, 33.709206, 17.277971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777760, 33.230267, 17.674921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536106, 33.499157, 17.503740>,  <34.391113, 33.660492, 17.401031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536106, 33.499157, 17.503740>,  <34.777760, 33.230267, 17.674921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536106, 33.499157, 17.503740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551593, -0.740339, -0.384244,
		-0.575125, 0.003919, 0.818056,
		-0.604133, 0.672222, -0.427949,
		34.354866, 33.700825, 17.375355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442986, 32.532173, 17.553350>,  <34.777760, 33.230267, 17.674921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442986, 32.532173, 17.553350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557751, 32.231064, 17.790337>,  <34.626610, 32.050400, 17.932528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.557751, 32.231064, 17.790337>,  <34.442986, 32.532173, 17.553350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557751, 32.231064, 17.790337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258003, 0.656334, 0.708985,
		-0.922560, -0.050557, 0.382526,
		0.286909, -0.752774, 0.592464,
		34.643822, 32.005230, 17.968077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410740, 32.749004, 18.155943>,  <34.442986, 32.532173, 17.553350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410740, 32.749004, 18.155943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618176, 32.420456, 18.250944>,  <34.742638, 32.223328, 18.307945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618176, 32.420456, 18.250944>,  <34.410740, 32.749004, 18.155943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618176, 32.420456, 18.250944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345549, 0.455415, 0.820484,
		-0.782086, -0.343428, 0.519999,
		0.518593, -0.821374, 0.237503,
		34.773754, 32.174046, 18.322195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141350, 32.482372, 18.875998>,  <34.410740, 32.749004, 18.155943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141350, 32.482372, 18.875998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514244, 32.343563, 18.834982>,  <34.737980, 32.260277, 18.810373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514244, 32.343563, 18.834982>,  <34.141350, 32.482372, 18.875998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514244, 32.343563, 18.834982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264104, 0.458793, 0.848386,
		-0.247369, -0.817974, 0.519353,
		0.932232, -0.347028, -0.102539,
		34.793915, 32.239456, 18.804220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310352, 32.136410, 19.470629>,  <34.141350, 32.482372, 18.875998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310352, 32.136410, 19.470629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659962, 32.238804, 19.305435>,  <34.869728, 32.300240, 19.206318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659962, 32.238804, 19.305435>,  <34.310352, 32.136410, 19.470629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659962, 32.238804, 19.305435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373797, 0.188780, 0.908096,
		0.310419, -0.948069, 0.069313,
		0.874023, 0.255981, -0.412986,
		34.922169, 32.315598, 19.181540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779755, 31.736944, 19.743181>,  <34.310352, 32.136410, 19.470629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779755, 31.736944, 19.743181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050072, 31.998709, 19.607508>,  <35.212261, 32.155769, 19.526104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.050072, 31.998709, 19.607508>,  <34.779755, 31.736944, 19.743181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050072, 31.998709, 19.607508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479048, -0.040218, 0.876867,
		0.560192, -0.755067, -0.340674,
		0.675794, 0.654413, -0.339183,
		35.252811, 32.195034, 19.505753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475716, 31.504841, 19.900110>,  <34.779755, 31.736944, 19.743181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475716, 31.504841, 19.900110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487190, 31.902397, 19.857479>,  <35.494076, 32.140930, 19.831902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.487190, 31.902397, 19.857479>,  <35.475716, 31.504841, 19.900110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487190, 31.902397, 19.857479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432646, 0.083770, 0.897664,
		0.901107, -0.071861, -0.427599,
		0.028687, 0.993891, -0.106577,
		35.495796, 32.200565, 19.825506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062767, 31.655260, 20.251328>,  <35.475716, 31.504841, 19.900110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062767, 31.655260, 20.251328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920757, 32.027653, 20.217321>,  <35.835552, 32.251087, 20.196918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.920757, 32.027653, 20.217321>,  <36.062767, 31.655260, 20.251328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920757, 32.027653, 20.217321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417280, 0.239191, 0.876735,
		0.836560, 0.275791, -0.473400,
		-0.355029, 0.930982, -0.085016,
		35.814247, 32.306946, 20.191816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625351, 32.001961, 20.382097>,  <36.062767, 31.655260, 20.251328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625351, 32.001961, 20.382097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294033, 32.210903, 20.463158>,  <36.095242, 32.336269, 20.511793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.294033, 32.210903, 20.463158>,  <36.625351, 32.001961, 20.382097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294033, 32.210903, 20.463158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343077, 0.186890, 0.920527,
		0.442972, 0.831994, -0.334009,
		-0.828296, 0.522359, 0.202651,
		36.045544, 32.367611, 20.523952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846481, 32.467926, 20.792955>,  <36.625351, 32.001961, 20.382097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846481, 32.467926, 20.792955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.453472, 32.465672, 20.867371>,  <36.217667, 32.464317, 20.912020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.453472, 32.465672, 20.867371>,  <36.846481, 32.467926, 20.792955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453472, 32.465672, 20.867371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168951, 0.392353, 0.904165,
		-0.078091, 0.919798, -0.384544,
		-0.982526, -0.005638, 0.186040,
		36.158714, 32.463982, 20.923183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810364, 33.027710, 21.096315>,  <36.846481, 32.467926, 20.792955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810364, 33.027710, 21.096315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.466858, 32.846741, 21.192507>,  <36.260754, 32.738159, 21.250221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.466858, 32.846741, 21.192507>,  <36.810364, 33.027710, 21.096315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466858, 32.846741, 21.192507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017782, 0.495381, 0.868494,
		-0.512055, 0.741559, -0.433463,
		-0.858768, -0.452425, 0.240476,
		36.209229, 32.711014, 21.264650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426868, 33.535641, 21.379181>,  <36.810364, 33.027710, 21.096315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426868, 33.535641, 21.379181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269768, 33.189140, 21.502695>,  <36.175507, 32.981239, 21.576803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269768, 33.189140, 21.502695>,  <36.426868, 33.535641, 21.379181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269768, 33.189140, 21.502695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006657, 0.338437, 0.940966,
		-0.919621, 0.367509, -0.138688,
		-0.392750, -0.866255, 0.308787,
		36.151943, 32.929264, 21.595331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807518, 33.785786, 21.751375>,  <36.426868, 33.535641, 21.379181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807518, 33.785786, 21.751375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924976, 33.423702, 21.874254>,  <35.995453, 33.206451, 21.947981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924976, 33.423702, 21.874254>,  <35.807518, 33.785786, 21.751375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924976, 33.423702, 21.874254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027378, 0.329198, 0.943864,
		-0.955521, -0.268754, 0.121451,
		0.293649, -0.905207, 0.307198,
		36.013069, 33.152142, 21.966413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567768, 33.773006, 22.340965>,  <35.807518, 33.785786, 21.751375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567768, 33.773006, 22.340965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845814, 33.486328, 22.363470>,  <36.012642, 33.314323, 22.376972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845814, 33.486328, 22.363470>,  <35.567768, 33.773006, 22.340965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845814, 33.486328, 22.363470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331672, 0.389150, 0.859393,
		-0.637813, -0.578719, 0.508212,
		0.695117, -0.716691, 0.056260,
		36.054348, 33.271320, 22.380348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445801, 33.501976, 23.018120>,  <35.567768, 33.773006, 22.340965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445801, 33.501976, 23.018120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816292, 33.441914, 22.879818>,  <36.038586, 33.405876, 22.796837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.816292, 33.441914, 22.879818>,  <35.445801, 33.501976, 23.018120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816292, 33.441914, 22.879818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375763, 0.440650, 0.815248,
		0.029942, -0.885031, 0.464567,
		0.926232, -0.150157, -0.345756,
		36.094162, 33.396866, 22.776091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089279, 32.825874, 23.134350>,  <35.445801, 33.501976, 23.018120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089279, 32.825874, 23.134350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768044, 32.667099, 23.312111>,  <34.575302, 32.571835, 23.418768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768044, 32.667099, 23.312111>,  <35.089279, 32.825874, 23.134350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768044, 32.667099, 23.312111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253747, -0.446987, -0.857796,
		0.539133, -0.801650, 0.258248,
		-0.803086, -0.396937, 0.444402,
		34.527119, 32.548019, 23.445431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005501, 32.132500, 22.865765>,  <35.089279, 32.825874, 23.134350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005501, 32.132500, 22.865765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.646725, 32.219772, 23.019592>,  <34.431458, 32.272137, 23.111889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.646725, 32.219772, 23.019592>,  <35.005501, 32.132500, 22.865765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646725, 32.219772, 23.019592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442146, -0.438663, -0.782356,
		-0.001999, -0.871763, 0.489923,
		-0.896941, 0.218182, 0.384570,
		34.377644, 32.285229, 23.134964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656528, 31.450304, 22.809635>,  <35.005501, 32.132500, 22.865765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656528, 31.450304, 22.809635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378254, 31.736347, 22.836901>,  <34.211288, 31.907974, 22.853260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.378254, 31.736347, 22.836901>,  <34.656528, 31.450304, 22.809635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378254, 31.736347, 22.836901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471699, -0.383186, -0.794146,
		-0.541782, -0.584626, 0.603891,
		-0.695682, 0.715109, 0.068164,
		34.169548, 31.950880, 22.857349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967159, 31.111057, 22.830135>,  <34.656528, 31.450304, 22.809635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967159, 31.111057, 22.830135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940113, 31.488878, 22.701607>,  <33.923885, 31.715570, 22.624489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940113, 31.488878, 22.701607>,  <33.967159, 31.111057, 22.830135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940113, 31.488878, 22.701607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565359, -0.301634, -0.767715,
		-0.822069, 0.129756, 0.554405,
		-0.067611, 0.944553, -0.321323,
		33.919830, 31.772243, 22.605209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229832, 31.107281, 22.679705>,  <33.967159, 31.111057, 22.830135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229832, 31.107281, 22.679705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426426, 31.393873, 22.481676>,  <33.544380, 31.565830, 22.362858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426426, 31.393873, 22.481676>,  <33.229832, 31.107281, 22.679705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426426, 31.393873, 22.481676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616611, -0.115160, -0.778800,
		-0.615010, 0.688033, 0.385193,
		0.491481, 0.716484, -0.495074,
		33.573872, 31.608818, 22.333155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595436, 31.424381, 22.398438>,  <33.229832, 31.107281, 22.679705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595436, 31.424381, 22.398438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917526, 31.529633, 22.185883>,  <33.110779, 31.592783, 22.058350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.917526, 31.529633, 22.185883>,  <32.595436, 31.424381, 22.398438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917526, 31.529633, 22.185883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568591, 0.088320, -0.817866,
		-0.168272, 0.960710, 0.220730,
		0.805226, 0.263129, -0.531389,
		33.159096, 31.608572, 22.026466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313251, 31.807926, 21.864368>,  <32.595436, 31.424381, 22.398438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313251, 31.807926, 21.864368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685310, 31.723196, 21.744396>,  <32.908546, 31.672358, 21.672413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.685310, 31.723196, 21.744396>,  <32.313251, 31.807926, 21.864368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685310, 31.723196, 21.744396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347251, -0.241942, -0.906025,
		0.119355, 0.946886, -0.298598,
		0.930146, -0.211827, -0.299930,
		32.964355, 31.659647, 21.654417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860697, 32.432899, 21.592760>,  <32.313251, 31.807926, 21.864368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860697, 32.432899, 21.592760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475546, 32.329277, 21.623110>,  <31.244455, 32.267101, 21.641319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.475546, 32.329277, 21.623110>,  <31.860697, 32.432899, 21.592760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475546, 32.329277, 21.623110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121354, -0.164351, 0.978909,
		-0.241124, 0.951776, 0.189687,
		-0.962877, -0.259058, 0.075873,
		31.186684, 32.251560, 21.645872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701450, 32.713139, 22.142233>,  <31.860697, 32.432899, 21.592760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701450, 32.713139, 22.142233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405165, 32.446495, 22.108818>,  <31.227392, 32.286510, 22.088770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405165, 32.446495, 22.108818>,  <31.701450, 32.713139, 22.142233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405165, 32.446495, 22.108818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043025, -0.171156, 0.984304,
		-0.670439, 0.725496, 0.155458,
		-0.740716, -0.666604, -0.083535,
		31.182949, 32.246513, 22.083757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382282, 32.778748, 22.832445>,  <31.701450, 32.713139, 22.142233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382282, 32.778748, 22.832445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227081, 32.439056, 22.689192>,  <31.133961, 32.235241, 22.603239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227081, 32.439056, 22.689192>,  <31.382282, 32.778748, 22.832445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227081, 32.439056, 22.689192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119957, -0.338740, 0.933202,
		-0.913819, 0.405046, 0.029561,
		-0.388003, -0.849231, -0.358135,
		31.110680, 32.184288, 22.581751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660267, 32.725002, 23.194349>,  <31.382282, 32.778748, 22.832445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660267, 32.725002, 23.194349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.809032, 32.376549, 23.066095>,  <30.898293, 32.167477, 22.989143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.809032, 32.376549, 23.066095>,  <30.660267, 32.725002, 23.194349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809032, 32.376549, 23.066095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183406, -0.407562, 0.894570,
		-0.909969, -0.273896, -0.311348,
		0.371913, -0.871134, -0.320634,
		30.920607, 32.115208, 22.969906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229105, 32.156082, 23.452364>,  <30.660267, 32.725002, 23.194349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229105, 32.156082, 23.452364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567516, 31.974714, 23.340187>,  <30.770563, 31.865894, 23.272881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.567516, 31.974714, 23.340187>,  <30.229105, 32.156082, 23.452364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567516, 31.974714, 23.340187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084006, -0.406075, 0.909970,
		-0.526477, -0.793420, -0.305461,
		0.846029, -0.453418, -0.280442,
		30.821325, 31.838690, 23.256054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246288, 31.592127, 23.883150>,  <30.229105, 32.156082, 23.452364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246288, 31.592127, 23.883150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625683, 31.620131, 23.759558>,  <30.853319, 31.636932, 23.685402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.625683, 31.620131, 23.759558>,  <30.246288, 31.592127, 23.883150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625683, 31.620131, 23.759558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316506, -0.252321, 0.914417,
		-0.013945, -0.965108, -0.261481,
		0.948488, 0.070009, -0.308981,
		30.910229, 31.641132, 23.666864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611797, 30.998957, 24.120359>,  <30.246288, 31.592127, 23.883150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611797, 30.998957, 24.120359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.926325, 31.236799, 24.053251>,  <31.115042, 31.379505, 24.012987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.926325, 31.236799, 24.053251>,  <30.611797, 30.998957, 24.120359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926325, 31.236799, 24.053251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407070, -0.294352, 0.864668,
		0.464752, -0.748199, -0.473501,
		0.786320, 0.594604, -0.167769,
		31.162220, 31.415180, 24.002920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.202980, 34.376965, 17.826384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.580994, 34.340645, 17.952030>,  <32.807800, 34.318851, 18.027418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.580994, 34.340645, 17.952030>,  <32.202980, 34.376965, 17.826384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580994, 34.340645, 17.952030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156541, 0.717775, 0.678450,
		-0.287069, -0.690329, 0.664106,
		0.945032, -0.090802, 0.314116,
		32.864502, 34.313404, 18.046265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115078, 34.340088, 18.480438>,  <32.202980, 34.376965, 17.826384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115078, 34.340088, 18.480438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.505371, 34.417393, 18.439257>,  <32.739548, 34.463776, 18.414549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.505371, 34.417393, 18.439257>,  <32.115078, 34.340088, 18.480438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505371, 34.417393, 18.439257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077667, 0.745023, 0.662501,
		0.204740, -0.638427, 0.741952,
		0.975730, 0.193266, -0.102951,
		32.798092, 34.475372, 18.408371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559555, 34.374172, 19.220823>,  <32.115078, 34.340088, 18.480438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559555, 34.374172, 19.220823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726704, 34.567501, 18.913115>,  <32.826992, 34.683498, 18.728489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.726704, 34.567501, 18.913115>,  <32.559555, 34.374172, 19.220823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726704, 34.567501, 18.913115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128187, 0.806908, 0.576600,
		0.899416, -0.339557, 0.275230,
		0.417874, 0.483323, -0.769273,
		32.852066, 34.712498, 18.682333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171272, 34.742027, 19.473152>,  <32.559555, 34.374172, 19.220823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171272, 34.742027, 19.473152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.036415, 34.945950, 19.156563>,  <32.955502, 35.068302, 18.966608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.036415, 34.945950, 19.156563>,  <33.171272, 34.742027, 19.473152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036415, 34.945950, 19.156563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041969, 0.847997, 0.528337,
		0.940518, 0.144906, -0.307290,
		-0.337140, 0.509807, -0.791475,
		32.935272, 35.098892, 18.919121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577869, 35.304680, 19.415400>,  <33.171272, 34.742027, 19.473152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577869, 35.304680, 19.415400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.247051, 35.407986, 19.215681>,  <33.048561, 35.469971, 19.095850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.247051, 35.407986, 19.215681>,  <33.577869, 35.304680, 19.415400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247051, 35.407986, 19.215681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059284, 0.843184, 0.534347,
		0.559003, 0.471528, -0.682039,
		-0.827044, 0.258267, -0.499297,
		32.998940, 35.485466, 19.065891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709610, 36.043751, 19.225729>,  <33.577869, 35.304680, 19.415400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709610, 36.043751, 19.225729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.316711, 35.981003, 19.184580>,  <33.080971, 35.943356, 19.159891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.316711, 35.981003, 19.184580>,  <33.709610, 36.043751, 19.225729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316711, 35.981003, 19.184580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185756, 0.889893, 0.416636,
		0.026186, 0.428348, -0.903234,
		-0.982247, -0.156871, -0.102871,
		33.022038, 35.933941, 19.153719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354462, 36.653011, 18.882593>,  <33.709610, 36.043751, 19.225729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354462, 36.653011, 18.882593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.104961, 36.452579, 19.122545>,  <32.955261, 36.332321, 19.266516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.104961, 36.452579, 19.122545>,  <33.354462, 36.653011, 18.882593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104961, 36.452579, 19.122545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217335, 0.848399, 0.482685,
		-0.750801, 0.170699, -0.638090,
		-0.623749, -0.501080, 0.599880,
		32.917835, 36.302254, 19.302509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955704, 37.151600, 19.157253>,  <33.354462, 36.653011, 18.882593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955704, 37.151600, 19.157253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828568, 36.847145, 19.383402>,  <32.752285, 36.664471, 19.519091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828568, 36.847145, 19.383402>,  <32.955704, 37.151600, 19.157253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828568, 36.847145, 19.383402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211281, 0.638156, 0.740349,
		-0.924304, 0.115861, -0.363646,
		-0.317841, -0.761140, 0.565371,
		32.733215, 36.618805, 19.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266781, 37.222614, 19.374784>,  <32.955704, 37.151600, 19.157253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266781, 37.222614, 19.374784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.431961, 36.986904, 19.652555>,  <32.531067, 36.845478, 19.819218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.431961, 36.986904, 19.652555>,  <32.266781, 37.222614, 19.374784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431961, 36.986904, 19.652555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194289, 0.687928, 0.699291,
		-0.889790, -0.423690, 0.169589,
		0.412947, -0.589273, 0.694430,
		32.555847, 36.810123, 19.860884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998482, 37.429352, 19.978149>,  <32.266781, 37.222614, 19.374784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998482, 37.429352, 19.978149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297127, 37.211357, 20.130756>,  <32.476315, 37.080559, 20.222321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297127, 37.211357, 20.130756>,  <31.998482, 37.429352, 19.978149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297127, 37.211357, 20.130756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001229, 0.572356, 0.820005,
		-0.665256, -0.612696, 0.426660,
		0.746615, -0.544988, 0.381516,
		32.521111, 37.047859, 20.245211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830225, 37.437344, 20.666634>,  <31.998482, 37.429352, 19.978149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830225, 37.437344, 20.666634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.211147, 37.317131, 20.687773>,  <32.439701, 37.245003, 20.700457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.211147, 37.317131, 20.687773>,  <31.830225, 37.437344, 20.666634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211147, 37.317131, 20.687773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096558, 0.461076, 0.882091,
		-0.289466, -0.834918, 0.468104,
		0.952306, -0.300535, 0.052847,
		32.496838, 37.226971, 20.703627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982573, 37.363789, 21.405626>,  <31.830225, 37.437344, 20.666634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982573, 37.363789, 21.405626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354095, 37.345734, 21.258505>,  <32.577011, 37.334900, 21.170233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354095, 37.345734, 21.258505>,  <31.982573, 37.363789, 21.405626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354095, 37.345734, 21.258505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350975, 0.425573, 0.834089,
		0.118880, -0.903798, 0.411116,
		0.928808, -0.045135, -0.367803,
		32.632736, 37.332191, 21.148165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681322, 36.662796, 21.551716>,  <31.982573, 37.363789, 21.405626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681322, 36.662796, 21.551716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.296616, 36.699467, 21.654945>,  <31.065792, 36.721470, 21.716883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.296616, 36.699467, 21.654945>,  <31.681322, 36.662796, 21.551716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296616, 36.699467, 21.654945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273445, -0.268743, -0.923582,
		-0.015316, -0.958839, 0.283537,
		-0.961766, 0.091677, 0.258074,
		31.008085, 36.726971, 21.732368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267118, 36.135883, 21.496208>,  <31.681322, 36.662796, 21.551716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267118, 36.135883, 21.496208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.970369, 36.402870, 21.470568>,  <30.792320, 36.563065, 21.455183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.970369, 36.402870, 21.470568>,  <31.267118, 36.135883, 21.496208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970369, 36.402870, 21.470568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317094, -0.433447, -0.843549,
		-0.590829, -0.605479, 0.533213,
		-0.741871, 0.667472, -0.064100,
		30.747808, 36.603111, 21.451338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764299, 35.721939, 21.245663>,  <31.267118, 36.135883, 21.496208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764299, 35.721939, 21.245663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618004, 36.088097, 21.178375>,  <30.530226, 36.307789, 21.138002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618004, 36.088097, 21.178375>,  <30.764299, 35.721939, 21.245663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618004, 36.088097, 21.178375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294105, -0.285149, -0.912246,
		-0.883028, -0.284169, 0.373511,
		-0.365739, 0.915390, -0.168219,
		30.508282, 36.362713, 21.127909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160709, 35.611641, 20.973721>,  <30.764299, 35.721939, 21.245663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160709, 35.611641, 20.973721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198645, 35.999477, 20.883472>,  <30.221405, 36.232178, 20.829323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.198645, 35.999477, 20.883472>,  <30.160709, 35.611641, 20.973721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198645, 35.999477, 20.883472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476543, -0.154770, -0.865420,
		-0.874021, 0.189594, 0.447372,
		0.094838, 0.969588, -0.225622,
		30.227097, 36.290352, 20.815786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449564, 35.888435, 20.845512>,  <30.160709, 35.611641, 20.973721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449564, 35.888435, 20.845512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723940, 36.134338, 20.689793>,  <29.888565, 36.281879, 20.596361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.723940, 36.134338, 20.689793>,  <29.449564, 35.888435, 20.845512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723940, 36.134338, 20.689793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415250, -0.108621, -0.903199,
		-0.597538, 0.781198, 0.180772,
		0.685942, 0.614762, -0.389297,
		29.929722, 36.318768, 20.573004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071957, 36.337574, 20.372585>,  <29.449564, 35.888435, 20.845512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071957, 36.337574, 20.372585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440901, 36.347076, 20.218344>,  <29.662268, 36.352779, 20.125799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440901, 36.347076, 20.218344>,  <29.071957, 36.337574, 20.372585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440901, 36.347076, 20.218344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379820, -0.126759, -0.916335,
		-0.070649, 0.991649, -0.107894,
		0.922359, 0.023758, -0.385604,
		29.717607, 36.354202, 20.102663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883780, 36.623753, 19.761719>,  <29.071957, 36.337574, 20.372585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883780, 36.623753, 19.761719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253632, 36.479027, 19.714132>,  <29.475542, 36.392193, 19.685579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253632, 36.479027, 19.714132>,  <28.883780, 36.623753, 19.761719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253632, 36.479027, 19.714132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226802, -0.272118, -0.935154,
		0.305975, 0.891653, -0.333668,
		0.924630, -0.361810, -0.118967,
		29.531021, 36.370483, 19.678442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011282, 36.657120, 19.057871>,  <28.883780, 36.623753, 19.761719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011282, 36.657120, 19.057871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283710, 36.389603, 19.177105>,  <29.447166, 36.229092, 19.248646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283710, 36.389603, 19.177105>,  <29.011282, 36.657120, 19.057871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283710, 36.389603, 19.177105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130823, -0.511693, -0.849150,
		0.720438, 0.539334, -0.435992,
		0.681069, -0.668797, 0.298086,
		29.488031, 36.188965, 19.266531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345581, 36.464241, 18.422235>,  <29.011282, 36.657120, 19.057871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345581, 36.464241, 18.422235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462328, 36.188110, 18.687040>,  <29.532377, 36.022430, 18.845924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462328, 36.188110, 18.687040>,  <29.345581, 36.464241, 18.422235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462328, 36.188110, 18.687040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175199, -0.719027, -0.672536,
		0.940275, 0.080308, -0.330806,
		0.291869, -0.690326, 0.662014,
		29.549889, 35.981014, 18.885645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780018, 36.056545, 17.992615>,  <29.345581, 36.464241, 18.422235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780018, 36.056545, 17.992615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666481, 35.853889, 18.318253>,  <29.598358, 35.732296, 18.513636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666481, 35.853889, 18.318253>,  <29.780018, 36.056545, 17.992615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666481, 35.853889, 18.318253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033155, -0.843320, -0.536387,
		0.958297, -0.179242, 0.222574,
		-0.283844, -0.506639, 0.814094,
		29.581327, 35.701897, 18.562481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107838, 35.367733, 17.897348>,  <29.780018, 36.056545, 17.992615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107838, 35.367733, 17.897348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.826475, 35.313702, 18.176483>,  <29.657658, 35.281284, 18.343964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.826475, 35.313702, 18.176483>,  <30.107838, 35.367733, 17.897348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826475, 35.313702, 18.176483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226225, -0.888179, -0.399950,
		0.673825, -0.439195, 0.594194,
		-0.703407, -0.135074, 0.697835,
		29.615454, 35.273178, 18.385834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148188, 34.621361, 18.111401>,  <30.107838, 35.367733, 17.897348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148188, 34.621361, 18.111401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769022, 34.725910, 18.184225>,  <29.541523, 34.788639, 18.227919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.769022, 34.725910, 18.184225>,  <30.148188, 34.621361, 18.111401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769022, 34.725910, 18.184225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311570, -0.879660, -0.359336,
		0.066230, -0.397344, 0.915277,
		-0.947913, 0.261374, 0.182060,
		29.484648, 34.804321, 18.238842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790646, 34.049576, 18.520252>,  <30.148188, 34.621361, 18.111401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790646, 34.049576, 18.520252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484169, 34.273201, 18.393505>,  <29.300283, 34.407375, 18.317457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484169, 34.273201, 18.393505>,  <29.790646, 34.049576, 18.520252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484169, 34.273201, 18.393505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508258, -0.828936, -0.233537,
		-0.393222, -0.017885, 0.919270,
		-0.766192, 0.559058, -0.316866,
		29.254311, 34.440918, 18.298445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954790, 34.375664, 19.197657>,  <29.790646, 34.049576, 18.520252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954790, 34.375664, 19.197657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058014, 34.028145, 19.028612>,  <30.119949, 33.819633, 18.927185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.058014, 34.028145, 19.028612>,  <29.954790, 34.375664, 19.197657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058014, 34.028145, 19.028612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129479, -0.402382, 0.906269,
		-0.957413, -0.288593, 0.008651,
		0.258061, -0.868794, -0.422612,
		30.135433, 33.767506, 18.901829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581507, 33.916130, 19.536514>,  <29.954790, 34.375664, 19.197657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581507, 33.916130, 19.536514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857115, 33.676311, 19.373642>,  <30.022480, 33.532421, 19.275919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.857115, 33.676311, 19.373642>,  <29.581507, 33.916130, 19.536514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857115, 33.676311, 19.373642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084038, -0.491947, 0.866560,
		-0.719854, -0.631296, -0.288576,
		0.689020, -0.599545, -0.407183,
		30.063822, 33.496449, 19.251488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447969, 33.286785, 19.892561>,  <29.581507, 33.916130, 19.536514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447969, 33.286785, 19.892561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810282, 33.230881, 19.732546>,  <30.027668, 33.197338, 19.636538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810282, 33.230881, 19.732546>,  <29.447969, 33.286785, 19.892561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810282, 33.230881, 19.732546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324917, -0.376936, 0.867380,
		-0.272017, -0.915634, -0.296009,
		0.905779, -0.139764, -0.400038,
		30.082016, 33.188950, 19.612534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709194, 32.547134, 19.912136>,  <29.447969, 33.286785, 19.892561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709194, 32.547134, 19.912136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.053862, 32.746914, 19.876200>,  <30.260662, 32.866783, 19.854637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.053862, 32.746914, 19.876200>,  <29.709194, 32.547134, 19.912136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053862, 32.746914, 19.876200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381519, -0.520843, 0.763653,
		0.334616, -0.692293, -0.639345,
		0.861670, 0.499453, -0.089841,
		30.312363, 32.896751, 19.849247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170610, 32.021576, 19.934597>,  <29.709194, 32.547134, 19.912136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170610, 32.021576, 19.934597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.347279, 32.368607, 20.026024>,  <30.453279, 32.576824, 20.080879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.347279, 32.368607, 20.026024>,  <30.170610, 32.021576, 19.934597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347279, 32.368607, 20.026024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380012, -0.411683, 0.828316,
		0.812723, -0.278983, -0.511516,
		0.441669, 0.867574, 0.228568,
		30.479780, 32.628880, 20.094595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749245, 31.816031, 20.038578>,  <30.170610, 32.021576, 19.934597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749245, 31.816031, 20.038578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.749300, 32.164516, 20.234940>,  <30.749334, 32.373608, 20.352757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.749300, 32.164516, 20.234940>,  <30.749245, 31.816031, 20.038578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749300, 32.164516, 20.234940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343972, -0.460991, 0.818028,
		0.938980, 0.168743, -0.299737,
		0.000139, 0.871213, 0.490905,
		30.749342, 32.425880, 20.382212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362352, 31.834673, 20.408567>,  <30.749245, 31.816031, 20.038578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362352, 31.834673, 20.408567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.150133, 32.109280, 20.607450>,  <31.022802, 32.274044, 20.726780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.150133, 32.109280, 20.607450>,  <31.362352, 31.834673, 20.408567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150133, 32.109280, 20.607450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268390, -0.420340, 0.866765,
		0.804045, 0.593304, 0.038756,
		-0.530546, 0.686516, 0.497209,
		30.990969, 32.315235, 20.756613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773781, 32.020672, 20.978811>,  <31.362352, 31.834673, 20.408567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773781, 32.020672, 20.978811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.410471, 32.154057, 21.079880>,  <31.192486, 32.234089, 21.140520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.410471, 32.154057, 21.079880>,  <31.773781, 32.020672, 20.978811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410471, 32.154057, 21.079880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131648, -0.345455, 0.929155,
		0.397127, 0.877190, 0.269868,
		-0.908272, 0.333465, 0.252670,
		31.137989, 32.254097, 21.155682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452862, 32.230297, 21.172457>,  <31.773781, 32.020672, 20.978811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452862, 32.230297, 21.172457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.717262, 31.934353, 21.222553>,  <32.875904, 31.756786, 21.252611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.717262, 31.934353, 21.222553>,  <32.452862, 32.230297, 21.172457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717262, 31.934353, 21.222553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311508, -0.422396, -0.851202,
		0.682669, 0.523634, -0.509677,
		0.661004, -0.739857, 0.125241,
		32.915562, 31.712397, 21.260126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765682, 32.269741, 20.529888>,  <32.452862, 32.230297, 21.172457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765682, 32.269741, 20.529888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.817604, 31.915895, 20.709044>,  <32.848759, 31.703588, 20.816538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.817604, 31.915895, 20.709044>,  <32.765682, 32.269741, 20.529888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817604, 31.915895, 20.709044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206043, -0.465916, -0.860505,
		0.969895, 0.019415, -0.242748,
		0.129807, -0.884616, 0.447889,
		32.856544, 31.650511, 20.843410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358063, 31.924397, 20.146809>,  <32.765682, 32.269741, 20.529888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358063, 31.924397, 20.146809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122547, 31.648085, 20.314692>,  <32.981239, 31.482298, 20.415421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.122547, 31.648085, 20.314692>,  <33.358063, 31.924397, 20.146809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122547, 31.648085, 20.314692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016428, -0.508921, -0.860656,
		0.808121, -0.513639, 0.288298,
		-0.588788, -0.690778, 0.419708,
		32.945911, 31.440851, 20.440603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713600, 31.236376, 20.089005>,  <33.358063, 31.924397, 20.146809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713600, 31.236376, 20.089005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331215, 31.147295, 20.165470>,  <33.101784, 31.093845, 20.211349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331215, 31.147295, 20.165470>,  <33.713600, 31.236376, 20.089005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331215, 31.147295, 20.165470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005583, -0.665011, -0.746813,
		0.293444, -0.712856, 0.636967,
		-0.955961, -0.222704, 0.191164,
		33.044426, 31.080484, 20.222818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797035, 30.533829, 20.093220>,  <33.713600, 31.236376, 20.089005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797035, 30.533829, 20.093220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.412498, 30.636206, 20.052593>,  <33.181778, 30.697632, 20.028217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.412498, 30.636206, 20.052593>,  <33.797035, 30.533829, 20.093220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412498, 30.636206, 20.052593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066054, -0.572436, -0.817285,
		-0.267317, -0.778981, 0.567213,
		-0.961342, 0.255941, -0.101567,
		33.124096, 30.712988, 20.022123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536457, 29.902830, 20.039627>,  <33.797035, 30.533829, 20.093220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536457, 29.902830, 20.039627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270954, 30.162445, 19.890942>,  <33.111652, 30.318214, 19.801731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270954, 30.162445, 19.890942>,  <33.536457, 29.902830, 20.039627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270954, 30.162445, 19.890942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118537, -0.581984, -0.804514,
		-0.738492, -0.489944, 0.463233,
		-0.663761, 0.649037, -0.371715,
		33.071827, 30.357157, 19.779427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968014, 29.443913, 19.727020>,  <33.536457, 29.902830, 20.039627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968014, 29.443913, 19.727020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.932755, 29.792702, 19.534399>,  <32.911598, 30.001976, 19.418827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.932755, 29.792702, 19.534399>,  <32.968014, 29.443913, 19.727020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932755, 29.792702, 19.534399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084167, -0.488224, -0.868650,
		-0.992545, -0.036036, 0.116425,
		-0.088144, 0.871974, -0.481552,
		32.906311, 30.054295, 19.389933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394188, 29.359735, 19.186020>,  <32.968014, 29.443913, 19.727020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394188, 29.359735, 19.186020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.605877, 29.676218, 19.063437>,  <32.732891, 29.866108, 18.989885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.605877, 29.676218, 19.063437>,  <32.394188, 29.359735, 19.186020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605877, 29.676218, 19.063437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198725, -0.466722, -0.861788,
		-0.824883, 0.395177, -0.404232,
		0.529223, 0.791205, -0.306460,
		32.764645, 29.913580, 18.971498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262493, 29.378819, 18.522257>,  <32.394188, 29.359735, 19.186020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262493, 29.378819, 18.522257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.599495, 29.589741, 18.566326>,  <32.801697, 29.716293, 18.592768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.599495, 29.589741, 18.566326>,  <32.262493, 29.378819, 18.522257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599495, 29.589741, 18.566326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387097, -0.450384, -0.804556,
		-0.374626, 0.720489, -0.583568,
		0.842503, 0.527305, 0.110174,
		32.852245, 29.747932, 18.599379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.338100, 36.068375, 32.725544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450806, 36.295883, 32.416451>,  <35.518429, 36.432388, 32.230995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450806, 36.295883, 32.416451>,  <35.338100, 36.068375, 32.725544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450806, 36.295883, 32.416451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403676, -0.800886, -0.442299,
		-0.870434, -0.187308, -0.455259,
		0.281764, 0.568769, -0.772730,
		35.535336, 36.466515, 32.184631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884914, 35.949978, 32.097382>,  <35.338100, 36.068375, 32.725544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884914, 35.949978, 32.097382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258362, 36.038887, 31.984985>,  <35.482430, 36.092232, 31.917547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258362, 36.038887, 31.984985>,  <34.884914, 35.949978, 32.097382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258362, 36.038887, 31.984985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045464, -0.851451, -0.522460,
		-0.355375, 0.475002, -0.805035,
		0.933617, 0.222270, -0.280989,
		35.538448, 36.105568, 31.900688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876049, 35.813091, 31.430916>,  <34.884914, 35.949978, 32.097382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876049, 35.813091, 31.430916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265858, 35.806274, 31.520382>,  <35.499741, 35.802185, 31.574062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.265858, 35.806274, 31.520382>,  <34.876049, 35.813091, 31.430916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265858, 35.806274, 31.520382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156500, -0.662692, -0.732357,
		0.160700, 0.748698, -0.643138,
		0.974517, -0.017039, 0.223666,
		35.558212, 35.801163, 31.587482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282513, 35.843918, 30.814260>,  <34.876049, 35.813091, 31.430916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282513, 35.843918, 30.814260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501045, 35.658779, 31.093487>,  <35.632164, 35.547695, 31.261023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501045, 35.658779, 31.093487>,  <35.282513, 35.843918, 30.814260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501045, 35.658779, 31.093487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284876, -0.681071, -0.674528,
		0.787633, 0.567380, -0.240238,
		0.546333, -0.462842, 0.698067,
		35.664944, 35.519928, 31.302906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828316, 35.721889, 30.483416>,  <35.282513, 35.843918, 30.814260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828316, 35.721889, 30.483416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838333, 35.483639, 30.804565>,  <35.844341, 35.340691, 30.997255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838333, 35.483639, 30.804565>,  <35.828316, 35.721889, 30.483416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838333, 35.483639, 30.804565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115930, -0.795977, -0.594123,
		0.992942, 0.107955, 0.049118,
		0.025042, -0.595623, 0.802874,
		35.845844, 35.304951, 31.045427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370586, 35.282200, 30.387033>,  <35.828316, 35.721889, 30.483416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370586, 35.282200, 30.387033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129002, 35.096718, 30.646326>,  <35.984051, 34.985428, 30.801901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129002, 35.096718, 30.646326>,  <36.370586, 35.282200, 30.387033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129002, 35.096718, 30.646326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023134, -0.802788, -0.595816,
		0.796675, -0.374848, 0.474129,
		-0.603965, -0.463703, 0.648232,
		35.947811, 34.957607, 30.840796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647007, 34.612598, 30.501041>,  <36.370586, 35.282200, 30.387033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647007, 34.612598, 30.501041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267025, 34.567745, 30.617674>,  <36.039036, 34.540833, 30.687653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.267025, 34.567745, 30.617674>,  <36.647007, 34.612598, 30.501041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267025, 34.567745, 30.617674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085679, -0.804053, -0.588352,
		0.300421, -0.583887, 0.754204,
		-0.949951, -0.112134, 0.291582,
		35.982040, 34.534103, 30.705149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565407, 33.872959, 30.503729>,  <36.647007, 34.612598, 30.501041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565407, 33.872959, 30.503729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185650, 33.998260, 30.512861>,  <35.957794, 34.073441, 30.518341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185650, 33.998260, 30.512861>,  <36.565407, 33.872959, 30.503729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185650, 33.998260, 30.512861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212983, -0.588675, -0.779808,
		-0.230838, -0.745209, 0.625603,
		-0.949396, 0.313252, 0.022829,
		35.900829, 34.092236, 30.519711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104813, 33.271854, 30.565153>,  <36.565407, 33.872959, 30.503729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104813, 33.271854, 30.565153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904594, 33.578682, 30.404627>,  <35.784462, 33.762779, 30.308311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.904594, 33.578682, 30.404627>,  <36.104813, 33.271854, 30.565153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904594, 33.578682, 30.404627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306735, -0.590637, -0.746365,
		-0.809549, -0.250491, 0.530928,
		-0.500544, 0.767074, -0.401315,
		35.754433, 33.808804, 30.284233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509697, 32.966770, 30.234306>,  <36.104813, 33.271854, 30.565153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509697, 32.966770, 30.234306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543587, 33.324535, 30.058651>,  <35.563919, 33.539196, 29.953259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.543587, 33.324535, 30.058651>,  <35.509697, 32.966770, 30.234306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543587, 33.324535, 30.058651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308360, -0.395550, -0.865133,
		-0.947489, 0.208711, 0.242289,
		0.084725, 0.894416, -0.439137,
		35.569004, 33.592861, 29.926910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755116, 33.091961, 29.989233>,  <35.509697, 32.966770, 30.234306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755116, 33.091961, 29.989233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012539, 33.331470, 29.798529>,  <35.166992, 33.475174, 29.684107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.012539, 33.331470, 29.798529>,  <34.755116, 33.091961, 29.989233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012539, 33.331470, 29.798529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284523, -0.391106, -0.875262,
		-0.710546, 0.698934, -0.081336,
		0.643561, 0.598772, -0.476761,
		35.205608, 33.511101, 29.655500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377029, 33.287868, 29.498713>,  <34.755116, 33.091961, 29.989233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377029, 33.287868, 29.498713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756485, 33.358765, 29.393890>,  <34.984158, 33.401302, 29.330997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756485, 33.358765, 29.393890>,  <34.377029, 33.287868, 29.498713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756485, 33.358765, 29.393890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197452, -0.315495, -0.928157,
		-0.247184, 0.932228, -0.264294,
		0.948637, 0.177240, -0.262055,
		35.041077, 33.411938, 29.315273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618271, 33.386536, 29.611897>,  <34.377029, 33.287868, 29.498713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618271, 33.386536, 29.611897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226971, 33.307056, 29.635723>,  <32.992191, 33.259369, 29.650019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.226971, 33.307056, 29.635723>,  <33.618271, 33.386536, 29.611897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226971, 33.307056, 29.635723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045601, 0.486122, 0.872701,
		-0.202361, 0.851002, -0.484609,
		-0.978249, -0.198699, 0.059565,
		32.933495, 33.247448, 29.653593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399719, 33.984074, 29.768763>,  <33.618271, 33.386536, 29.611897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399719, 33.984074, 29.768763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111610, 33.732948, 29.886782>,  <32.938744, 33.582272, 29.957594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111610, 33.732948, 29.886782>,  <33.399719, 33.984074, 29.768763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111610, 33.732948, 29.886782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181113, 0.580774, 0.793662,
		-0.669630, 0.518216, -0.532021,
		-0.720273, -0.627816, 0.295048,
		32.895527, 33.544605, 29.975296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962677, 34.425068, 30.145107>,  <33.399719, 33.984074, 29.768763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962677, 34.425068, 30.145107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803822, 34.067661, 30.228931>,  <32.708508, 33.853218, 30.279226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803822, 34.067661, 30.228931>,  <32.962677, 34.425068, 30.145107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803822, 34.067661, 30.228931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386669, 0.369984, 0.844748,
		-0.832327, 0.254452, -0.492429,
		-0.397139, -0.893513, 0.209559,
		32.684681, 33.799606, 30.291800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294884, 34.536205, 30.417145>,  <32.962677, 34.425068, 30.145107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294884, 34.536205, 30.417145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417313, 34.178993, 30.549097>,  <32.490768, 33.964664, 30.628267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417313, 34.178993, 30.549097>,  <32.294884, 34.536205, 30.417145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417313, 34.178993, 30.549097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310787, 0.233797, 0.921277,
		-0.899851, -0.384498, -0.205983,
		0.306071, -0.893029, 0.329879,
		32.509132, 33.911083, 30.648062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686991, 34.270981, 30.825523>,  <32.294884, 34.536205, 30.417145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686991, 34.270981, 30.825523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030025, 34.097855, 30.936676>,  <32.235847, 33.993980, 31.003368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030025, 34.097855, 30.936676>,  <31.686991, 34.270981, 30.825523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030025, 34.097855, 30.936676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237710, 0.145584, 0.960364,
		-0.456113, -0.889651, 0.021966,
		0.857587, -0.432813, 0.277882,
		32.287300, 33.968010, 31.020041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468967, 33.770287, 31.278376>,  <31.686991, 34.270981, 30.825523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468967, 33.770287, 31.278376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857855, 33.826721, 31.353090>,  <32.091187, 33.860580, 31.397919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857855, 33.826721, 31.353090>,  <31.468967, 33.770287, 31.278376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857855, 33.826721, 31.353090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183995, -0.032703, 0.982383,
		0.144708, -0.989457, -0.005835,
		0.972216, 0.141085, 0.186787,
		32.149521, 33.869045, 31.409126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524590, 33.546394, 31.913721>,  <31.468967, 33.770287, 31.278376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524590, 33.546394, 31.913721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869423, 33.745693, 31.876696>,  <32.076324, 33.865273, 31.854481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869423, 33.745693, 31.876696>,  <31.524590, 33.546394, 31.913721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869423, 33.745693, 31.876696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093576, 0.336021, 0.937194,
		0.498055, -0.799276, 0.336301,
		0.862082, 0.498244, -0.092564,
		32.128048, 33.895164, 31.848927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977043, 33.447224, 32.509190>,  <31.524590, 33.546394, 31.913721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977043, 33.447224, 32.509190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118084, 33.783665, 32.345135>,  <32.202709, 33.985531, 32.246700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118084, 33.783665, 32.345135>,  <31.977043, 33.447224, 32.509190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118084, 33.783665, 32.345135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075295, 0.462370, 0.883484,
		0.932740, -0.280636, 0.226363,
		0.352600, 0.841105, -0.410140,
		32.223866, 34.035995, 32.222092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465416, 33.704475, 32.861584>,  <31.977043, 33.447224, 32.509190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465416, 33.704475, 32.861584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338108, 34.028339, 32.664341>,  <32.261723, 34.222660, 32.545994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338108, 34.028339, 32.664341>,  <32.465416, 33.704475, 32.861584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338108, 34.028339, 32.664341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037133, 0.509107, 0.859902,
		0.947274, 0.291988, -0.131966,
		-0.318266, 0.809663, -0.493106,
		32.242630, 34.271236, 32.516411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855930, 34.213741, 33.146713>,  <32.465416, 33.704475, 32.861584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855930, 34.213741, 33.146713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525570, 34.386505, 33.001751>,  <32.327354, 34.490162, 32.914772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525570, 34.386505, 33.001751>,  <32.855930, 34.213741, 33.146713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525570, 34.386505, 33.001751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082295, 0.543551, 0.835332,
		0.557773, 0.719728, -0.413377,
		-0.825904, 0.431906, -0.362408,
		32.277798, 34.516079, 32.893028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931007, 34.927826, 33.208538>,  <32.855930, 34.213741, 33.146713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931007, 34.927826, 33.208538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533485, 34.897537, 33.176010>,  <32.294971, 34.879364, 33.156494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.533485, 34.897537, 33.176010>,  <32.931007, 34.927826, 33.208538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533485, 34.897537, 33.176010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110485, 0.595745, 0.795538,
		-0.011796, 0.799596, -0.600422,
		-0.993808, -0.075721, -0.081316,
		32.235344, 34.874821, 33.151615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758991, 35.607555, 33.188606>,  <32.931007, 34.927826, 33.208538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758991, 35.607555, 33.188606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449276, 35.383450, 33.306301>,  <32.263447, 35.248985, 33.376919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449276, 35.383450, 33.306301>,  <32.758991, 35.607555, 33.188606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449276, 35.383450, 33.306301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150798, 0.614907, 0.774048,
		-0.614601, 0.554968, -0.560604,
		-0.774291, -0.560268, 0.294234,
		32.216988, 35.215370, 33.394573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189423, 36.103306, 33.312576>,  <32.758991, 35.607555, 33.188606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189423, 36.103306, 33.312576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097481, 35.772743, 33.518185>,  <32.042316, 35.574406, 33.641552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.097481, 35.772743, 33.518185>,  <32.189423, 36.103306, 33.312576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097481, 35.772743, 33.518185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307073, 0.562769, 0.767462,
		-0.923512, 0.018559, -0.383121,
		-0.229852, -0.826406, 0.514024,
		32.028526, 35.524822, 33.672394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571165, 36.459732, 33.298985>,  <32.189423, 36.103306, 33.312576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571165, 36.459732, 33.298985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613234, 36.061951, 33.299713>,  <31.638474, 35.823280, 33.300152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613234, 36.061951, 33.299713>,  <31.571165, 36.459732, 33.298985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613234, 36.061951, 33.299713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598940, 0.061877, -0.798400,
		0.793858, 0.085061, 0.602125,
		0.105170, -0.994453, 0.001825,
		31.644785, 35.763615, 33.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673725, 36.976032, 32.827320>,  <31.571165, 36.459732, 33.298985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673725, 36.976032, 32.827320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515295, 37.334335, 32.746582>,  <31.420237, 37.549316, 32.698139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515295, 37.334335, 32.746582>,  <31.673725, 36.976032, 32.827320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515295, 37.334335, 32.746582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023753, -0.229742, -0.972961,
		-0.917911, -0.380570, 0.112272,
		-0.396074, 0.895759, -0.201843,
		31.396473, 37.603062, 32.686028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942135, 36.916100, 32.482498>,  <31.673725, 36.976032, 32.827320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942135, 36.916100, 32.482498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154747, 37.229534, 32.353832>,  <31.282314, 37.417595, 32.276630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.154747, 37.229534, 32.353832>,  <30.942135, 36.916100, 32.482498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154747, 37.229534, 32.353832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069303, -0.338250, -0.938501,
		-0.844199, 0.521135, -0.125485,
		0.531531, 0.783585, -0.321667,
		31.314207, 37.464611, 32.257332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494198, 37.458263, 32.094120>,  <30.942135, 36.916100, 32.482498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494198, 37.458263, 32.094120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879919, 37.465954, 31.988480>,  <31.111353, 37.470570, 31.925097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.879919, 37.465954, 31.988480>,  <30.494198, 37.458263, 32.094120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879919, 37.465954, 31.988480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241505, -0.345164, -0.906938,
		-0.108593, 0.938345, -0.328200,
		0.964304, 0.019225, -0.264098,
		31.169210, 37.471722, 31.909250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565620, 37.824009, 31.360435>,  <30.494198, 37.458263, 32.094120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565620, 37.824009, 31.360435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918360, 37.636284, 31.378719>,  <31.130003, 37.523647, 31.389688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918360, 37.636284, 31.378719>,  <30.565620, 37.824009, 31.360435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918360, 37.636284, 31.378719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124349, -0.324960, -0.937517,
		0.454845, 0.821063, -0.344923,
		0.881847, -0.469316, 0.045708,
		31.182913, 37.495487, 31.392431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830339, 38.010757, 30.732035>,  <30.565620, 37.824009, 31.360435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830339, 38.010757, 30.732035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.025873, 37.682701, 30.850969>,  <31.143192, 37.485867, 30.922329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.025873, 37.682701, 30.850969>,  <30.830339, 38.010757, 30.732035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025873, 37.682701, 30.850969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011347, -0.334825, -0.942212,
		0.872304, 0.463957, -0.154367,
		0.488832, -0.820144, 0.297334,
		31.172523, 37.436657, 30.940170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381958, 37.943417, 30.253134>,  <30.830339, 38.010757, 30.732035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381958, 37.943417, 30.253134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321808, 37.587940, 30.426392>,  <31.285717, 37.374653, 30.530346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321808, 37.587940, 30.426392>,  <31.381958, 37.943417, 30.253134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321808, 37.587940, 30.426392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035220, -0.442666, -0.895995,
		0.988001, -0.119481, 0.097867,
		-0.150377, -0.888691, 0.433147,
		31.276695, 37.321335, 30.556335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958387, 37.433891, 30.024248>,  <31.381958, 37.943417, 30.253134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958387, 37.433891, 30.024248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671310, 37.181622, 30.142349>,  <31.499063, 37.030262, 30.213209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671310, 37.181622, 30.142349>,  <31.958387, 37.433891, 30.024248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671310, 37.181622, 30.142349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116481, -0.526741, -0.842007,
		0.686550, -0.569910, 0.451499,
		-0.717692, -0.630671, 0.295250,
		31.456003, 36.992420, 30.230925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247307, 36.664566, 29.810801>,  <31.958387, 37.433891, 30.024248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247307, 36.664566, 29.810801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.855864, 36.672405, 29.892727>,  <31.620998, 36.677109, 29.941883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.855864, 36.672405, 29.892727>,  <32.247307, 36.664566, 29.810801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855864, 36.672405, 29.892727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192592, -0.437545, -0.878330,
		0.072406, -0.898983, 0.431957,
		-0.978604, 0.019595, 0.204818,
		31.562283, 36.678284, 29.954172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025486, 36.053867, 29.658178>,  <32.247307, 36.664566, 29.810801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025486, 36.053867, 29.658178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704309, 36.288162, 29.613989>,  <31.511604, 36.428738, 29.587475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704309, 36.288162, 29.613989>,  <32.025486, 36.053867, 29.658178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704309, 36.288162, 29.613989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257762, -0.508321, -0.821687,
		-0.537453, -0.631284, 0.559130,
		-0.802934, 0.585739, -0.110478,
		31.463428, 36.463882, 29.580847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550320, 35.583885, 29.490267>,  <32.025486, 36.053867, 29.658178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550320, 35.583885, 29.490267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415739, 35.936886, 29.358816>,  <31.334991, 36.148685, 29.279945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.415739, 35.936886, 29.358816>,  <31.550320, 35.583885, 29.490267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415739, 35.936886, 29.358816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048105, -0.364623, -0.929911,
		-0.940472, -0.297060, 0.165130,
		-0.336450, 0.882499, -0.328628,
		31.314804, 36.201637, 29.260227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222782, 35.393757, 28.999853>,  <31.550320, 35.583885, 29.490267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222782, 35.393757, 28.999853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265955, 35.784924, 28.928267>,  <31.291859, 36.019623, 28.885315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265955, 35.784924, 28.928267>,  <31.222782, 35.393757, 28.999853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265955, 35.784924, 28.928267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170447, -0.159150, -0.972429,
		-0.979438, 0.135462, 0.149506,
		0.107934, 0.977917, -0.178966,
		31.298334, 36.078300, 28.874577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634527, 35.525467, 28.539778>,  <31.222782, 35.393757, 28.999853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634527, 35.525467, 28.539778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915733, 35.804352, 28.483679>,  <31.084457, 35.971684, 28.450020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915733, 35.804352, 28.483679>,  <30.634527, 35.525467, 28.539778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915733, 35.804352, 28.483679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030099, -0.167858, -0.985352,
		-0.710536, 0.696940, -0.097022,
		0.703017, 0.697208, -0.140247,
		31.126638, 36.013515, 28.441605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452452, 36.006535, 27.898312>,  <30.634527, 35.525467, 28.539778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452452, 36.006535, 27.898312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846006, 36.057995, 27.947975>,  <31.082140, 36.088871, 27.977774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.846006, 36.057995, 27.947975>,  <30.452452, 36.006535, 27.898312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846006, 36.057995, 27.947975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137738, -0.102663, -0.985134,
		-0.113992, 0.986361, -0.118729,
		0.983887, 0.128651, 0.124157,
		31.141172, 36.096592, 27.985222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624128, 36.672329, 27.526093>,  <30.452452, 36.006535, 27.898312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624128, 36.672329, 27.526093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.936659, 36.425877, 27.565910>,  <31.124178, 36.278004, 27.589802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.936659, 36.425877, 27.565910>,  <30.624128, 36.672329, 27.526093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936659, 36.425877, 27.565910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217527, 0.119339, -0.968731,
		0.584987, 0.778549, 0.227268,
		0.781327, -0.616132, 0.099544,
		31.171057, 36.241035, 27.595774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984453, 36.920883, 27.078096>,  <30.624128, 36.672329, 27.526093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984453, 36.920883, 27.078096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185978, 36.581219, 27.141472>,  <31.306892, 36.377422, 27.179497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185978, 36.581219, 27.141472>,  <30.984453, 36.920883, 27.078096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185978, 36.581219, 27.141472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214379, -0.054766, -0.975214,
		0.836788, 0.525292, 0.154450,
		0.503813, -0.849158, 0.158439,
		31.337122, 36.326473, 27.189003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755997, 37.015423, 26.904295>,  <30.984453, 36.920883, 27.078096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755997, 37.015423, 26.904295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.660864, 36.628407, 26.870108>,  <31.603785, 36.396198, 26.849594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.660864, 36.628407, 26.870108>,  <31.755997, 37.015423, 26.904295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660864, 36.628407, 26.870108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409139, -0.019985, -0.912253,
		0.880932, -0.251932, 0.400611,
		-0.237831, -0.967539, -0.085470,
		31.589514, 36.338146, 26.844467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319344, 36.637341, 26.565987>,  <31.755997, 37.015423, 26.904295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319344, 36.637341, 26.565987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.983725, 36.430756, 26.497559>,  <31.782354, 36.306805, 26.456501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.983725, 36.430756, 26.497559>,  <32.319344, 36.637341, 26.565987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983725, 36.430756, 26.497559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280832, -0.141824, -0.949220,
		0.465977, -0.844482, 0.264036,
		-0.839046, -0.516465, -0.171071,
		31.732010, 36.275818, 26.446238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448654, 36.360558, 25.986816>,  <32.319344, 36.637341, 26.565987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448654, 36.360558, 25.986816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059158, 36.269814, 25.994556>,  <31.825462, 36.215366, 25.999201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059158, 36.269814, 25.994556>,  <32.448654, 36.360558, 25.986816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059158, 36.269814, 25.994556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032227, 0.053195, -0.998064,
		0.225392, -0.972474, -0.059109,
		-0.973735, -0.226860, 0.019350,
		31.767038, 36.201756, 26.000362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402824, 35.802872, 25.529488>,  <32.448654, 36.360558, 25.986816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402824, 35.802872, 25.529488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.032360, 35.951500, 25.555315>,  <31.810083, 36.040676, 25.570812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.032360, 35.951500, 25.555315>,  <32.402824, 35.802872, 25.529488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032360, 35.951500, 25.555315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129145, -0.151607, -0.979968,
		-0.354339, -0.915942, 0.188399,
		-0.926156, 0.371572, 0.064569,
		31.754513, 36.062969, 25.574686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025742, 35.476208, 25.021900>,  <32.402824, 35.802872, 25.529488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025742, 35.476208, 25.021900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782320, 35.788136, 25.080624>,  <31.636269, 35.975292, 25.115858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.782320, 35.788136, 25.080624>,  <32.025742, 35.476208, 25.021900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782320, 35.788136, 25.080624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078682, 0.124798, -0.989058,
		-0.789604, -0.613443, -0.014588,
		-0.608551, 0.779816, 0.146808,
		31.599754, 36.022079, 25.124666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491392, 35.251476, 24.567043>,  <32.025742, 35.476208, 25.021900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491392, 35.251476, 24.567043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.468761, 35.645775, 24.630419>,  <31.455183, 35.882355, 24.668444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.468761, 35.645775, 24.630419>,  <31.491392, 35.251476, 24.567043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468761, 35.645775, 24.630419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128222, 0.150205, -0.980305,
		-0.990130, -0.075779, 0.117896,
		-0.056578, 0.985746, 0.158439,
		31.451788, 35.941498, 24.677950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086941, 35.473927, 24.137878>,  <31.491392, 35.251476, 24.567043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086941, 35.473927, 24.137878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.234287, 35.827129, 24.254230>,  <31.322695, 36.039051, 24.324041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.234287, 35.827129, 24.254230>,  <31.086941, 35.473927, 24.137878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234287, 35.827129, 24.254230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003506, 0.311562, -0.950219,
		-0.929675, 0.351047, 0.111672,
		0.368365, 0.883003, 0.290882,
		31.344797, 36.092030, 24.341496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487421, 35.968124, 23.961472>,  <31.086941, 35.473927, 24.137878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487421, 35.968124, 23.961472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838970, 36.158756, 23.969965>,  <31.049900, 36.273136, 23.975061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.838970, 36.158756, 23.969965>,  <30.487421, 35.968124, 23.961472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838970, 36.158756, 23.969965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203766, 0.415273, -0.886582,
		-0.431344, 0.774868, 0.462084,
		0.878875, 0.476579, 0.021234,
		31.102633, 36.301731, 23.976336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361176, 36.515358, 23.671152>,  <30.487421, 35.968124, 23.961472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361176, 36.515358, 23.671152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761122, 36.515533, 23.664572>,  <31.001089, 36.515636, 23.660624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761122, 36.515533, 23.664572>,  <30.361176, 36.515358, 23.671152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761122, 36.515533, 23.664572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014680, 0.475287, -0.879708,
		0.007434, 0.879831, 0.475229,
		0.999865, 0.000437, -0.016449,
		31.061081, 36.515663, 23.659637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541464, 37.178104, 23.567104>,  <30.361176, 36.515358, 23.671152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541464, 37.178104, 23.567104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.843895, 36.942810, 23.452337>,  <31.025354, 36.801632, 23.383476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.843895, 36.942810, 23.452337>,  <30.541464, 37.178104, 23.567104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843895, 36.942810, 23.452337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028911, 0.407943, -0.912549,
		0.653842, 0.698254, 0.291431,
		0.756079, -0.588237, -0.286918,
		31.070719, 36.766338, 23.366262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967525, 37.690617, 23.206154>,  <30.541464, 37.178104, 23.567104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967525, 37.690617, 23.206154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029875, 37.309624, 23.101486>,  <31.067286, 37.081028, 23.038685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.029875, 37.309624, 23.101486>,  <30.967525, 37.690617, 23.206154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029875, 37.309624, 23.101486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094046, 0.249395, -0.963825,
		0.983289, 0.174846, -0.050703,
		0.155876, -0.952487, -0.261671,
		31.076637, 37.023876, 23.022985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382555, 37.720028, 22.650391>,  <30.967525, 37.690617, 23.206154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382555, 37.720028, 22.650391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242996, 37.346436, 22.619516>,  <31.159262, 37.122280, 22.600992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.242996, 37.346436, 22.619516>,  <31.382555, 37.720028, 22.650391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242996, 37.346436, 22.619516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097428, 0.118063, -0.988215,
		0.932083, -0.337265, -0.132187,
		-0.348897, -0.933977, -0.077186,
		31.138327, 37.066242, 22.596361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758413, 37.318546, 22.073355>,  <31.382555, 37.720028, 22.650391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758413, 37.318546, 22.073355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399963, 37.149570, 22.127762>,  <31.184893, 37.048183, 22.160406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.399963, 37.149570, 22.127762>,  <31.758413, 37.318546, 22.073355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399963, 37.149570, 22.127762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180967, 0.067977, -0.981137,
		0.405229, -0.903837, -0.137364,
		-0.896125, -0.422443, 0.136018,
		31.131126, 37.022839, 22.168568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423496, 37.022232, 21.951817>,  <31.758413, 37.318546, 22.073355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423496, 37.022232, 21.951817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636421, 37.236984, 21.690008>,  <32.764175, 37.365837, 21.532923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636421, 37.236984, 21.690008>,  <32.423496, 37.022232, 21.951817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636421, 37.236984, 21.690008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645080, 0.243424, 0.724304,
		0.548193, -0.807776, -0.216755,
		0.532312, 0.536883, -0.654523,
		32.796116, 37.398048, 21.493650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179573, 36.840706, 22.130234>,  <32.423496, 37.022232, 21.951817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179573, 36.840706, 22.130234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150543, 37.190083, 21.937639>,  <33.133125, 37.399708, 21.822083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.150543, 37.190083, 21.937639>,  <33.179573, 36.840706, 22.130234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150543, 37.190083, 21.937639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525512, 0.443799, 0.725865,
		0.847685, -0.200350, -0.491212,
		-0.072573, 0.873443, -0.481488,
		33.128773, 37.452114, 21.793192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858482, 37.145657, 22.061617>,  <33.179573, 36.840706, 22.130234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858482, 37.145657, 22.061617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611027, 37.457550, 22.023060>,  <33.462551, 37.644688, 21.999926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.611027, 37.457550, 22.023060>,  <33.858482, 37.145657, 22.061617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611027, 37.457550, 22.023060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573601, 0.532088, 0.622788,
		0.536901, 0.329991, -0.776430,
		-0.618643, 0.779736, -0.096395,
		33.425434, 37.691471, 21.994141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239239, 37.711147, 22.134275>,  <33.858482, 37.145657, 22.061617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239239, 37.711147, 22.134275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879677, 37.866058, 22.216236>,  <33.663940, 37.959007, 22.265411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879677, 37.866058, 22.216236>,  <34.239239, 37.711147, 22.134275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879677, 37.866058, 22.216236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394940, 0.513704, 0.761663,
		0.189721, 0.765585, -0.614724,
		-0.898904, 0.387282, 0.204900,
		33.610004, 37.982243, 22.277706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292973, 38.384808, 22.384598>,  <34.239239, 37.711147, 22.134275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292973, 38.384808, 22.384598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925781, 38.283478, 22.506680>,  <33.705467, 38.222679, 22.579929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.925781, 38.283478, 22.506680>,  <34.292973, 38.384808, 22.384598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925781, 38.283478, 22.506680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169159, 0.445950, 0.878927,
		-0.358760, 0.858461, -0.366519,
		-0.917974, -0.253324, 0.305205,
		33.650391, 38.207481, 22.598242>
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
