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
	<5.141434, 5.901626, 3.393280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.188683, 5.759903, 3.764336>,  <5.217032, 5.674870, 3.986969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.188683, 5.759903, 3.764336>,  <5.141434, 5.901626, 3.393280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.188683, 5.759903, 3.764336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260562, -0.912504, -0.315347,
		0.958204, -0.204458, -0.200106,
		0.118122, -0.354307, 0.927639,
		5.224119, 5.653611, 4.042627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.642600, 5.366508, 3.544081>,  <5.141434, 5.901626, 3.393280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.642600, 5.366508, 3.544081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.319084, 5.323318, 3.775322>,  <5.124975, 5.297405, 3.914067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.319084, 5.323318, 3.775322>,  <5.642600, 5.366508, 3.544081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.319084, 5.323318, 3.775322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143306, -0.917187, -0.371795,
		0.570372, -0.383549, 0.726337,
		-0.808789, -0.107973, 0.578103,
		5.076447, 5.290926, 3.948753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.657729, 4.690389, 3.998337>,  <5.642600, 5.366508, 3.544081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.657729, 4.690389, 3.998337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.269463, 4.786560, 3.998550>,  <5.036502, 4.844263, 3.998679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.269463, 4.786560, 3.998550>,  <5.657729, 4.690389, 3.998337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.269463, 4.786560, 3.998550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240055, -0.969035, -0.057831,
		-0.013386, -0.056263, 0.998327,
		-0.970667, 0.240428, 0.000534,
		4.978262, 4.858688, 3.998711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.326737, 4.200170, 4.405482>,  <5.657729, 4.690389, 3.998337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.326737, 4.200170, 4.405482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.081032, 4.323868, 4.115089>,  <4.933609, 4.398087, 3.940854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.081032, 4.323868, 4.115089>,  <5.326737, 4.200170, 4.405482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.081032, 4.323868, 4.115089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288227, -0.944370, -0.158398,
		-0.734579, 0.111950, 0.669224,
		-0.614263, 0.309245, -0.725981,
		4.896753, 4.416641, 3.897295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.767689, 3.865599, 4.513999>,  <5.326737, 4.200170, 4.405482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.767689, 3.865599, 4.513999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.785019, 3.939835, 4.121330>,  <4.795417, 3.984376, 3.885729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.785019, 3.939835, 4.121330>,  <4.767689, 3.865599, 4.513999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.785019, 3.939835, 4.121330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199136, -0.961273, -0.190522,
		-0.979013, 0.203741, -0.004690,
		0.043325, 0.185590, -0.981672,
		4.798017, 3.995512, 3.826829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.262013, 3.486444, 4.207108>,  <4.767689, 3.865599, 4.513999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.262013, 3.486444, 4.207108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.490219, 3.530670, 3.881584>,  <4.627143, 3.557206, 3.686270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.490219, 3.530670, 3.881584>,  <4.262013, 3.486444, 4.207108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.490219, 3.530670, 3.881584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011126, -0.989765, -0.142272,
		-0.821211, 0.090223, -0.563447,
		0.570516, 0.110566, -0.813810,
		4.661374, 3.563840, 3.637441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.009192, 3.021565, 3.749490>,  <4.262013, 3.486444, 4.207108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.009192, 3.021565, 3.749490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.373337, 3.104614, 3.606308>,  <4.591824, 3.154444, 3.520399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.373337, 3.104614, 3.606308>,  <4.009192, 3.021565, 3.749490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.373337, 3.104614, 3.606308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249206, -0.965643, 0.073691,
		-0.330356, -0.156290, -0.930827,
		0.910363, 0.207623, -0.357955,
		4.646446, 3.166901, 3.498922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.014914, 2.690118, 3.104811>,  <4.009192, 3.021565, 3.749490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.014914, 2.690118, 3.104811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.385620, 2.746063, 3.244263>,  <4.608044, 2.779630, 3.327934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.385620, 2.746063, 3.244263>,  <4.014914, 2.690118, 3.104811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.385620, 2.746063, 3.244263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176064, -0.981575, -0.074244,
		0.331823, 0.130188, -0.934315,
		0.926766, 0.139863, 0.348630,
		4.663650, 2.788022, 3.348852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.489482, 2.706120, 3.170716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.430977, 2.337723, 3.315147>,  <2.395874, 2.116684, 3.401806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.430977, 2.337723, 3.315147>,  <2.489482, 2.706120, 3.170716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.430977, 2.337723, 3.315147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330871, 0.389527, 0.859531,
		-0.932272, 0.006248, -0.361704,
		-0.146263, -0.920994, 0.361077,
		2.387098, 2.061424, 3.423471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770883, 2.514872, 3.398496>,  <2.489482, 2.706120, 3.170716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770883, 2.514872, 3.398496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026493, 2.293900, 3.612587>,  <2.179859, 2.161316, 3.741041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.026493, 2.293900, 3.612587>,  <1.770883, 2.514872, 3.398496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.026493, 2.293900, 3.612587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337920, 0.423463, 0.840529,
		-0.690983, -0.717983, 0.083927,
		0.639025, -0.552430, 0.535226,
		2.218201, 2.128170, 3.773155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.382667, 2.036241, 3.802937>,  <1.770883, 2.514872, 3.398496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.382667, 2.036241, 3.802937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738457, 2.134964, 3.956779>,  <1.951931, 2.194198, 4.049085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738457, 2.134964, 3.956779>,  <1.382667, 2.036241, 3.802937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.738457, 2.134964, 3.956779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456984, 0.482165, 0.747451,
		-0.000967, -0.840597, 0.541660,
		0.889475, 0.246807, 0.384606,
		2.005299, 2.209006, 4.072161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.740436, 2.509638, 4.114137>,  <1.382667, 2.036241, 3.802937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.740436, 2.509638, 4.114137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.492405, 2.473129, 3.802452>,  <0.343586, 2.451224, 3.615441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.492405, 2.473129, 3.802452>,  <0.740436, 2.509638, 4.114137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.492405, 2.473129, 3.802452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023099, 0.994903, -0.098156,
		0.784199, -0.042866, -0.619027,
		-0.620079, -0.091273, -0.779212,
		0.306381, 2.445747, 3.568688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973637, 2.981009, 3.702979>,  <0.740436, 2.509638, 4.114137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973637, 2.981009, 3.702979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596626, 2.932739, 3.578346>,  <0.370420, 2.903778, 3.503567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596626, 2.932739, 3.578346>,  <0.973637, 2.981009, 3.702979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596626, 2.932739, 3.578346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094830, 0.990770, -0.096859,
		0.320395, -0.061745, -0.945270,
		-0.942526, -0.120673, -0.311582,
		0.313869, 2.896537, 3.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.857619, 3.335474, 3.022154>,  <0.973637, 2.981009, 3.702979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.857619, 3.335474, 3.022154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.486225, 3.304993, 3.167542>,  <0.263389, 3.286704, 3.254774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.486225, 3.304993, 3.167542>,  <0.857619, 3.335474, 3.022154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.486225, 3.304993, 3.167542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102483, 0.993293, -0.053546,
		-0.356950, -0.086966, -0.930066,
		-0.928485, -0.076202, 0.363469,
		0.207680, 3.282132, 3.276582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.413518, 3.797228, 2.626077>,  <0.857619, 3.335474, 3.022154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.413518, 3.797228, 2.626077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.187099, 3.720444, 2.946762>,  <0.051248, 3.674373, 3.139173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.187099, 3.720444, 2.946762>,  <0.413518, 3.797228, 2.626077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.187099, 3.720444, 2.946762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302190, 0.953132, 0.014856,
		-0.766989, -0.233860, -0.597526,
		-0.566047, -0.191961, 0.801712,
		0.017285, 3.662855, 3.187276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.324318, 3.952188, 2.518924>,  <0.413518, 3.797228, 2.626077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.324318, 3.952188, 2.518924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.266792, 3.994278, 2.912521>,  <-0.232277, 4.019532, 3.148680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.266792, 3.994278, 2.912521>,  <-0.324318, 3.952188, 2.518924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.266792, 3.994278, 2.912521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382060, 0.923142, -0.042879,
		-0.912879, -0.369779, 0.172962,
		0.143813, 0.105225, 0.983995,
		-0.223648, 4.025846, 3.207720>
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
