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
	<24.328745, 35.580669, 35.323814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316755, 35.305492, 35.033756>,  <24.309563, 35.140388, 34.859722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316755, 35.305492, 35.033756>,  <24.328745, 35.580669, 35.323814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316755, 35.305492, 35.033756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022409, 0.724831, -0.688562,
		0.999300, -0.036887, -0.006309,
		-0.029972, -0.687939, -0.725150,
		24.307764, 35.099110, 34.816212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759050, 35.857037, 34.801258>,  <24.328745, 35.580669, 35.323814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759050, 35.857037, 34.801258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577394, 35.559494, 34.605118>,  <24.468401, 35.380970, 34.487434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577394, 35.559494, 34.605118>,  <24.759050, 35.857037, 34.801258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577394, 35.559494, 34.605118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039804, 0.532886, -0.845250,
		0.890041, -0.403379, -0.212396,
		-0.454140, -0.743853, -0.490346,
		24.441153, 35.336338, 34.458015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535051, 36.090145, 34.442654>,  <24.759050, 35.857037, 34.801258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535051, 36.090145, 34.442654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422028, 36.456383, 34.557087>,  <25.354214, 36.676125, 34.625748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422028, 36.456383, 34.557087>,  <25.535051, 36.090145, 34.442654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422028, 36.456383, 34.557087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906642, 0.352319, -0.232103,
		-0.313306, 0.193794, -0.929668,
		-0.282560, 0.915595, 0.286086,
		25.337259, 36.731060, 34.642914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691845, 36.368835, 33.781067>,  <25.535051, 36.090145, 34.442654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691845, 36.368835, 33.781067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335016, 36.408745, 33.957363>,  <25.120918, 36.432690, 34.063141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335016, 36.408745, 33.957363>,  <25.691845, 36.368835, 33.781067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335016, 36.408745, 33.957363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410135, 0.230720, -0.882359,
		-0.189726, -0.967891, -0.164897,
		-0.892072, 0.099776, 0.440740,
		25.067394, 36.438679, 34.089584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622656, 36.066761, 33.129700>,  <25.691845, 36.368835, 33.781067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622656, 36.066761, 33.129700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988010, 36.094769, 33.290108>,  <26.207224, 36.111572, 33.386353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988010, 36.094769, 33.290108>,  <25.622656, 36.066761, 33.129700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988010, 36.094769, 33.290108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088573, -0.995679, -0.027895,
		0.397338, 0.060999, -0.915643,
		0.913388, 0.070018, 0.401024,
		26.262026, 36.115772, 33.410416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140293, 35.755615, 32.632298>,  <25.622656, 36.066761, 33.129700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140293, 35.755615, 32.632298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300007, 35.744251, 32.998852>,  <26.395836, 35.737434, 33.218784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300007, 35.744251, 32.998852>,  <26.140293, 35.755615, 32.632298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300007, 35.744251, 32.998852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208441, -0.970532, -0.120911,
		0.892818, 0.239291, -0.381597,
		0.399285, -0.028411, 0.916386,
		26.419792, 35.735729, 33.273769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372208, 35.702255, 32.027241>,  <26.140293, 35.755615, 32.632298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372208, 35.702255, 32.027241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609739, 35.849598, 32.313366>,  <26.752258, 35.938004, 32.485043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.609739, 35.849598, 32.313366>,  <26.372208, 35.702255, 32.027241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.609739, 35.849598, 32.313366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469918, -0.880439, 0.063279,
		0.653102, 0.298563, -0.695930,
		0.593831, 0.368358, 0.715316,
		26.787889, 35.960106, 32.527962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184563, 35.648075, 31.812153>,  <26.372208, 35.702255, 32.027241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184563, 35.648075, 31.812153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114515, 35.635662, 32.205776>,  <27.072487, 35.628216, 32.441952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114515, 35.635662, 32.205776>,  <27.184563, 35.648075, 31.812153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114515, 35.635662, 32.205776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308572, -0.950874, 0.024927,
		0.934942, 0.308018, 0.176093,
		-0.175121, -0.031032, 0.984058,
		27.061979, 35.626354, 32.500992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725641, 35.259041, 31.909327>,  <27.184563, 35.648075, 31.812153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725641, 35.259041, 31.909327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517994, 35.257710, 32.251205>,  <27.393406, 35.256912, 32.456333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517994, 35.257710, 32.251205>,  <27.725641, 35.259041, 31.909327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517994, 35.257710, 32.251205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376677, -0.898533, 0.225283,
		0.767224, 0.438893, 0.467697,
		-0.519117, -0.003328, 0.854697,
		27.362259, 35.256710, 32.507614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227478, 35.049129, 32.426727>,  <27.725641, 35.259041, 31.909327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227478, 35.049129, 32.426727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861172, 34.966732, 32.564682>,  <27.641388, 34.917294, 32.647453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861172, 34.966732, 32.564682>,  <28.227478, 35.049129, 32.426727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861172, 34.966732, 32.564682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252688, -0.962782, 0.095915,
		0.312291, 0.174984, 0.933732,
		-0.915764, -0.205989, 0.344885,
		27.586443, 34.904934, 32.668148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393162, 34.615494, 33.092552>,  <28.227478, 35.049129, 32.426727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393162, 34.615494, 33.092552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022722, 34.551571, 32.955849>,  <27.800459, 34.513218, 32.873825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022722, 34.551571, 32.955849>,  <28.393162, 34.615494, 33.092552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022722, 34.551571, 32.955849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160168, -0.986710, 0.027370,
		-0.341590, -0.029392, 0.939389,
		-0.926100, -0.159809, -0.341758,
		27.744892, 34.503628, 32.853321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040899, 34.184948, 33.587379>,  <28.393162, 34.615494, 33.092552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040899, 34.184948, 33.587379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880543, 34.135242, 33.224316>,  <27.784328, 34.105419, 33.006477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880543, 34.135242, 33.224316>,  <28.040899, 34.184948, 33.587379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880543, 34.135242, 33.224316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408677, -0.910973, -0.055781,
		-0.819921, -0.393301, 0.415986,
		-0.400891, -0.124268, -0.907659,
		27.760275, 34.097961, 32.952019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651272, 33.537262, 33.565033>,  <28.040899, 34.184948, 33.587379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651272, 33.537262, 33.565033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684679, 33.603378, 33.171951>,  <27.704723, 33.643047, 32.936104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684679, 33.603378, 33.171951>,  <27.651272, 33.537262, 33.565033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684679, 33.603378, 33.171951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225928, -0.963609, -0.142881,
		-0.970557, -0.210086, -0.117825,
		0.083519, 0.165294, -0.982701,
		27.709734, 33.652966, 32.877140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523491, 32.902302, 33.285908>,  <27.651272, 33.537262, 33.565033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523491, 32.902302, 33.285908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720312, 33.109512, 33.006042>,  <27.838406, 33.233841, 32.838123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720312, 33.109512, 33.006042>,  <27.523491, 32.902302, 33.285908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720312, 33.109512, 33.006042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355921, -0.853159, -0.381366,
		-0.794482, -0.061372, -0.604178,
		0.492055, 0.518028, -0.699663,
		27.867929, 33.264919, 32.796143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353487, 32.473385, 32.600445>,  <27.523491, 32.902302, 33.285908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353487, 32.473385, 32.600445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673895, 32.701778, 32.528511>,  <27.866140, 32.838814, 32.485352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673895, 32.701778, 32.528511>,  <27.353487, 32.473385, 32.600445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673895, 32.701778, 32.528511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444684, -0.768655, -0.459810,
		-0.400775, 0.288348, -0.869618,
		0.801021, 0.570986, -0.179834,
		27.914202, 32.873074, 32.474560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577440, 32.291546, 31.872000>,  <27.353487, 32.473385, 32.600445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577440, 32.291546, 31.872000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889168, 32.443859, 32.071064>,  <28.076204, 32.535248, 32.190502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889168, 32.443859, 32.071064>,  <27.577440, 32.291546, 31.872000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889168, 32.443859, 32.071064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590364, -0.712408, -0.379401,
		0.210068, 0.589476, -0.779993,
		0.779321, 0.380780, 0.497660,
		28.122965, 32.558094, 32.220364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255301, 32.479012, 31.353716>,  <27.577440, 32.291546, 31.872000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255301, 32.479012, 31.353716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342434, 32.399410, 31.735909>,  <28.394714, 32.351650, 31.965223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.342434, 32.399410, 31.735909>,  <28.255301, 32.479012, 31.353716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342434, 32.399410, 31.735909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651402, -0.699383, -0.294175,
		0.726790, 0.686484, -0.022717,
		0.217835, -0.199005, 0.955482,
		28.407784, 32.339710, 32.022552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935295, 32.258930, 31.306198>,  <28.255301, 32.479012, 31.353716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935295, 32.258930, 31.306198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863989, 32.177540, 31.691284>,  <28.821205, 32.128704, 31.922337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863989, 32.177540, 31.691284>,  <28.935295, 32.258930, 31.306198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863989, 32.177540, 31.691284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613459, -0.787950, -0.052944,
		0.769344, 0.581149, 0.265286,
		-0.178264, -0.203475, 0.962715,
		28.810509, 32.116497, 31.980099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596096, 32.137829, 31.638838>,  <28.935295, 32.258930, 31.306198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596096, 32.137829, 31.638838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347488, 31.958576, 31.895866>,  <29.198324, 31.851025, 32.050083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347488, 31.958576, 31.895866>,  <29.596096, 32.137829, 31.638838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347488, 31.958576, 31.895866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678453, -0.718001, 0.155488,
		0.391687, 0.532592, 0.750285,
		-0.621517, -0.448130, 0.642570,
		29.161034, 31.824137, 32.088638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009029, 31.884548, 32.212212>,  <29.596096, 32.137829, 31.638838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009029, 31.884548, 32.212212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667303, 31.676672, 32.215565>,  <29.462267, 31.551947, 32.217579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667303, 31.676672, 32.215565>,  <30.009029, 31.884548, 32.212212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667303, 31.676672, 32.215565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518604, -0.851233, 0.080323,
		-0.034604, 0.072970, 0.996734,
		-0.854314, -0.519690, 0.008387,
		29.411009, 31.520765, 32.218082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192369, 31.375128, 32.722626>,  <30.009029, 31.884548, 32.212212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192369, 31.375128, 32.722626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873974, 31.234108, 32.525806>,  <29.682936, 31.149496, 32.407715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873974, 31.234108, 32.525806>,  <30.192369, 31.375128, 32.722626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873974, 31.234108, 32.525806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384391, -0.922345, 0.039020,
		-0.467594, -0.158079, 0.869693,
		-0.795989, -0.352548, -0.492048,
		29.635178, 31.128344, 32.378193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907017, 30.776873, 33.112923>,  <30.192369, 31.375128, 32.722626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907017, 30.776873, 33.112923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782654, 30.739080, 32.734631>,  <29.708036, 30.716406, 32.507656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782654, 30.739080, 32.734631>,  <29.907017, 30.776873, 33.112923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782654, 30.739080, 32.734631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463327, -0.883872, -0.064016,
		-0.829859, -0.458087, 0.318576,
		-0.310906, -0.094481, -0.945733,
		29.689383, 30.710735, 32.450912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745066, 30.098030, 33.177177>,  <29.907017, 30.776873, 33.112923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745066, 30.098030, 33.177177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769180, 30.199747, 32.791080>,  <29.783649, 30.260778, 32.559422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.769180, 30.199747, 32.791080>,  <29.745066, 30.098030, 33.177177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769180, 30.199747, 32.791080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538462, -0.822524, -0.183064,
		-0.840491, -0.508712, -0.186513,
		0.060285, 0.254294, -0.965246,
		29.787266, 30.276035, 32.501507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518000, 29.503052, 32.838898>,  <29.745066, 30.098030, 33.177177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518000, 29.503052, 32.838898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696743, 29.713608, 32.549561>,  <29.803989, 29.839941, 32.375957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696743, 29.713608, 32.549561>,  <29.518000, 29.503052, 32.838898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696743, 29.713608, 32.549561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517675, -0.811591, -0.270801,
		-0.729608, -0.253449, -0.635166,
		0.446860, 0.526388, -0.723347,
		29.830801, 29.871525, 32.332558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398838, 29.202354, 32.100311>,  <29.518000, 29.503052, 32.838898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398838, 29.202354, 32.100311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757776, 29.377552, 32.121960>,  <29.973139, 29.482670, 32.134949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757776, 29.377552, 32.121960>,  <29.398838, 29.202354, 32.100311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757776, 29.377552, 32.121960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431751, -0.845852, -0.313251,
		-0.091427, 0.304460, -0.948127,
		0.897347, 0.437994, 0.054117,
		30.026981, 29.508951, 32.138195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650219, 29.090355, 31.500917>,  <29.398838, 29.202354, 32.100311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650219, 29.090355, 31.500917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948755, 29.148323, 31.760756>,  <30.127876, 29.183104, 31.916658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948755, 29.148323, 31.760756>,  <29.650219, 29.090355, 31.500917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948755, 29.148323, 31.760756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450440, -0.828505, -0.332691,
		0.489979, 0.540905, -0.683624,
		0.746340, 0.144920, 0.649596,
		30.172657, 29.191799, 31.955635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386755, 29.214689, 31.100815>,  <29.650219, 29.090355, 31.500917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386755, 29.214689, 31.100815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407417, 29.082851, 31.477898>,  <30.419815, 29.003748, 31.704147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407417, 29.082851, 31.477898>,  <30.386755, 29.214689, 31.100815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407417, 29.082851, 31.477898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486256, -0.816212, -0.312014,
		0.872288, 0.474515, 0.118104,
		0.051658, -0.329595, 0.942708,
		30.422915, 28.983973, 31.760710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104788, 29.101671, 31.366739>,  <30.386755, 29.214689, 31.100815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104788, 29.101671, 31.366739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846701, 28.857176, 31.550076>,  <30.691849, 28.710478, 31.660078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846701, 28.857176, 31.550076>,  <31.104788, 29.101671, 31.366739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846701, 28.857176, 31.550076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602785, -0.775884, -0.186155,
		0.469407, 0.156171, 0.869061,
		-0.645219, -0.611240, 0.458343,
		30.653135, 28.673803, 31.687578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644327, 28.958330, 31.784557>,  <31.104788, 29.101671, 31.366739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644327, 28.958330, 31.784557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554148, 28.654335, 32.028389>,  <31.500040, 28.471937, 32.174686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554148, 28.654335, 32.028389>,  <31.644327, 28.958330, 31.784557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554148, 28.654335, 32.028389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906762, 0.065144, 0.416581,
		-0.356308, 0.646662, 0.674443,
		-0.225451, -0.759990, 0.609579,
		31.486513, 28.426338, 32.211262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110500, 29.034300, 32.399307>,  <31.644327, 28.958330, 31.784557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110500, 29.034300, 32.399307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982868, 28.655403, 32.411461>,  <31.906290, 28.428066, 32.418755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982868, 28.655403, 32.411461>,  <32.110500, 29.034300, 32.399307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982868, 28.655403, 32.411461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832098, -0.264657, 0.487412,
		-0.453654, 0.180808, 0.872643,
		-0.319079, -0.947241, 0.030387,
		31.887144, 28.371231, 32.420578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009174, 28.687166, 33.111965>,  <32.110500, 29.034300, 32.399307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009174, 28.687166, 33.111965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110039, 28.423639, 32.828453>,  <32.170559, 28.265524, 32.658344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110039, 28.423639, 32.828453>,  <32.009174, 28.687166, 33.111965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110039, 28.423639, 32.828453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817075, -0.247474, 0.520716,
		-0.518462, -0.710436, 0.475898,
		0.252163, -0.658815, -0.708785,
		32.185688, 28.225994, 32.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048775, 27.977591, 33.347115>,  <32.009174, 28.687166, 33.111965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048775, 27.977591, 33.347115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297447, 28.074387, 33.049133>,  <32.446651, 28.132465, 32.870346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297447, 28.074387, 33.049133>,  <32.048775, 27.977591, 33.347115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297447, 28.074387, 33.049133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774680, -0.330422, 0.539158,
		-0.115675, -0.912284, -0.392884,
		0.621682, 0.241993, -0.744949,
		32.483952, 28.146984, 32.825649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674700, 28.298819, 33.961990>,  <32.048775, 27.977591, 33.347115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674700, 28.298819, 33.961990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073334, 28.271448, 33.980495>,  <32.312515, 28.255026, 33.991600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073334, 28.271448, 33.980495>,  <31.674700, 28.298819, 33.961990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073334, 28.271448, 33.980495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062245, 0.990342, 0.123888,
		-0.054295, -0.120585, 0.991217,
		0.996583, -0.068425, 0.046265,
		32.372307, 28.250921, 33.994373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996508, 28.708443, 34.580971>,  <31.674700, 28.298819, 33.961990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996508, 28.708443, 34.580971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283756, 28.683113, 34.303757>,  <32.456104, 28.667915, 34.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283756, 28.683113, 34.303757>,  <31.996508, 28.708443, 34.580971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283756, 28.683113, 34.303757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091382, 0.995809, 0.003697,
		0.689893, -0.065986, 0.720898,
		0.718121, -0.063326, -0.693032,
		32.499191, 28.664116, 34.095848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657349, 29.095922, 34.667805>,  <31.996508, 28.708443, 34.580971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657349, 29.095922, 34.667805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526112, 29.096798, 34.289948>,  <32.447369, 29.097324, 34.063232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526112, 29.096798, 34.289948>,  <32.657349, 29.095922, 34.667805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526112, 29.096798, 34.289948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043093, 0.998991, -0.012651,
		0.943661, -0.044858, -0.327858,
		-0.328095, 0.002190, -0.944642,
		32.427685, 29.097456, 34.006554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196285, 29.402466, 34.179119>,  <32.657349, 29.095922, 34.667805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196285, 29.402466, 34.179119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818230, 29.449675, 34.057278>,  <32.591396, 29.478001, 33.984173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818230, 29.449675, 34.057278>,  <33.196285, 29.402466, 34.179119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818230, 29.449675, 34.057278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142242, 0.988102, -0.058499,
		0.294077, -0.098617, -0.950681,
		-0.945138, 0.118024, -0.304605,
		32.534687, 29.485083, 33.965897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150364, 29.829393, 33.619896>,  <33.196285, 29.402466, 34.179119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150364, 29.829393, 33.619896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764900, 29.846458, 33.725376>,  <32.533623, 29.856697, 33.788666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764900, 29.846458, 33.725376>,  <33.150364, 29.829393, 33.619896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764900, 29.846458, 33.725376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000135, 0.987243, -0.159220,
		-0.267130, -0.153399, -0.951373,
		-0.963660, 0.042661, 0.263702,
		32.475803, 29.859257, 33.804485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860195, 30.323999, 33.156029>,  <33.150364, 29.829393, 33.619896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860195, 30.323999, 33.156029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593292, 30.314594, 33.453812>,  <32.433151, 30.308952, 33.632481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.593292, 30.314594, 33.453812>,  <32.860195, 30.323999, 33.156029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593292, 30.314594, 33.453812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111247, 0.991436, -0.068400,
		-0.736471, -0.128459, -0.664161,
		-0.667260, -0.023511, 0.744454,
		32.393116, 30.307541, 33.677147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160278, 30.575899, 32.956585>,  <32.860195, 30.323999, 33.156029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160278, 30.575899, 32.956585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123192, 30.610680, 33.353340>,  <32.100941, 30.631548, 33.591393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123192, 30.610680, 33.353340>,  <32.160278, 30.575899, 32.956585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123192, 30.610680, 33.353340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452847, 0.883506, -0.119780,
		-0.886755, -0.460279, -0.042539,
		-0.092715, 0.086952, 0.991889,
		32.095375, 30.636765, 33.650906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531298, 30.983015, 33.040398>,  <32.160278, 30.575899, 32.956585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531298, 30.983015, 33.040398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715302, 31.017767, 33.393860>,  <31.825703, 31.038618, 33.605938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715302, 31.017767, 33.393860>,  <31.531298, 30.983015, 33.040398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715302, 31.017767, 33.393860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376872, 0.920213, 0.105717,
		-0.803965, -0.381655, 0.456048,
		0.460009, 0.086879, 0.883654,
		31.853304, 31.043831, 33.658955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982296, 31.277555, 33.493050>,  <31.531298, 30.983015, 33.040398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982296, 31.277555, 33.493050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329210, 31.361988, 33.673386>,  <31.537359, 31.412647, 33.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329210, 31.361988, 33.673386>,  <30.982296, 31.277555, 33.493050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329210, 31.361988, 33.673386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337628, 0.914938, 0.221124,
		-0.365818, -0.343995, 0.864780,
		0.867286, 0.211084, 0.450843,
		31.589396, 31.425314, 33.808640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763048, 31.594433, 34.072258>,  <30.982296, 31.277555, 33.493050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763048, 31.594433, 34.072258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141569, 31.709934, 34.014114>,  <31.368683, 31.779236, 33.979229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141569, 31.709934, 34.014114>,  <30.763048, 31.594433, 34.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141569, 31.709934, 34.014114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253787, 0.942082, 0.219258,
		0.200251, -0.170594, 0.964778,
		0.946304, 0.288755, -0.145358,
		31.425461, 31.796560, 33.970509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961971, 31.988184, 34.725166>,  <30.763048, 31.594433, 34.072258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961971, 31.988184, 34.725166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199249, 32.099087, 34.422840>,  <31.341616, 32.165627, 34.241444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199249, 32.099087, 34.422840>,  <30.961971, 31.988184, 34.725166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199249, 32.099087, 34.422840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133012, 0.959676, 0.247647,
		0.793995, -0.046371, 0.606152,
		0.593194, 0.277256, -0.755811,
		31.377207, 32.182262, 34.196098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357582, 32.425922, 35.049362>,  <30.961971, 31.988184, 34.725166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357582, 32.425922, 35.049362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389334, 32.485138, 34.655045>,  <31.408384, 32.520668, 34.418453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389334, 32.485138, 34.655045>,  <31.357582, 32.425922, 35.049362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389334, 32.485138, 34.655045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256197, 0.958723, 0.123345,
		0.963360, 0.242766, 0.114028,
		0.079377, 0.148039, -0.985791,
		31.413147, 32.529549, 34.359306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660679, 33.143200, 34.880096>,  <31.357582, 32.425922, 35.049362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660679, 33.143200, 34.880096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477913, 33.028397, 34.543324>,  <31.368254, 32.959515, 34.341259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477913, 33.028397, 34.543324>,  <31.660679, 33.143200, 34.880096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477913, 33.028397, 34.543324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258672, 0.948482, -0.182948,
		0.851069, 0.134194, -0.507615,
		-0.456913, -0.287008, -0.841937,
		31.340839, 32.942295, 34.290741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801252, 33.752682, 34.557308>,  <31.660679, 33.143200, 34.880096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801252, 33.752682, 34.557308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535067, 33.589821, 34.307068>,  <31.375355, 33.492104, 34.156921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535067, 33.589821, 34.307068>,  <31.801252, 33.752682, 34.557308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535067, 33.589821, 34.307068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319442, 0.912845, -0.254303,
		0.674621, 0.030615, -0.737529,
		-0.665464, -0.407156, -0.625604,
		31.335426, 33.467674, 34.119385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815704, 34.069042, 33.924648>,  <31.801252, 33.752682, 34.557308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815704, 34.069042, 33.924648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447884, 33.911880, 33.927521>,  <31.227192, 33.817581, 33.929245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447884, 33.911880, 33.927521>,  <31.815704, 34.069042, 33.924648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447884, 33.911880, 33.927521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353699, 0.819548, -0.450820,
		0.171243, -0.417092, -0.892586,
		-0.919550, -0.392907, 0.007183,
		31.172018, 33.794010, 33.929676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545403, 34.169971, 33.235813>,  <31.815704, 34.069042, 33.924648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545403, 34.169971, 33.235813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216829, 34.101734, 33.453491>,  <31.019686, 34.060791, 33.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216829, 34.101734, 33.453491>,  <31.545403, 34.169971, 33.235813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216829, 34.101734, 33.453491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423749, 0.821192, -0.382205,
		-0.381686, -0.544557, -0.746842,
		-0.821433, -0.170592, 0.544193,
		30.970400, 34.050556, 33.616749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998352, 34.315868, 32.813610>,  <31.545403, 34.169971, 33.235813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998352, 34.315868, 32.813610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862450, 34.360649, 33.187141>,  <30.780909, 34.387516, 33.411259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862450, 34.360649, 33.187141>,  <30.998352, 34.315868, 32.813610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862450, 34.360649, 33.187141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488001, 0.827794, -0.276787,
		-0.804004, -0.549749, -0.226615,
		-0.339754, 0.111950, 0.933828,
		30.760523, 34.394234, 33.467289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317793, 34.484692, 32.693886>,  <30.998352, 34.315868, 32.813610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317793, 34.484692, 32.693886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367386, 34.562729, 33.083054>,  <30.397142, 34.609550, 33.316555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367386, 34.562729, 33.083054>,  <30.317793, 34.484692, 32.693886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367386, 34.562729, 33.083054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577866, 0.811261, -0.089035,
		-0.806659, -0.551177, 0.213319,
		0.123983, 0.195091, 0.972917,
		30.404581, 34.621258, 33.374928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746311, 34.723202, 32.898407>,  <30.317793, 34.484692, 32.693886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746311, 34.723202, 32.898407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990023, 34.840343, 33.193165>,  <30.136250, 34.910629, 33.370022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990023, 34.840343, 33.193165>,  <29.746311, 34.723202, 32.898407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990023, 34.840343, 33.193165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517533, 0.850946, 0.089729,
		-0.600782, -0.436039, 0.670023,
		0.609279, 0.292851, 0.736898,
		30.172806, 34.928200, 33.414234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276773, 35.109886, 33.241646>,  <29.746311, 34.723202, 32.898407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276773, 35.109886, 33.241646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635099, 35.243027, 33.359444>,  <29.850096, 35.322910, 33.430122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635099, 35.243027, 33.359444>,  <29.276773, 35.109886, 33.241646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635099, 35.243027, 33.359444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366061, 0.928371, 0.064238,
		-0.252017, -0.165348, 0.953492,
		0.895816, 0.332848, 0.294493,
		29.903845, 35.342880, 33.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162354, 35.416210, 33.967716>,  <29.276773, 35.109886, 33.241646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162354, 35.416210, 33.967716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482174, 35.556221, 33.772495>,  <29.674067, 35.640228, 33.655361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482174, 35.556221, 33.772495>,  <29.162354, 35.416210, 33.967716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482174, 35.556221, 33.772495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371757, 0.926665, 0.055568,
		0.471714, 0.137009, 0.871042,
		0.799551, 0.350028, -0.488055,
		29.722040, 35.661228, 33.626080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399687, 36.016361, 34.340065>,  <29.162354, 35.416210, 33.967716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399687, 36.016361, 34.340065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536398, 36.052952, 33.965939>,  <29.618423, 36.074905, 33.741463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536398, 36.052952, 33.965939>,  <29.399687, 36.016361, 34.340065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536398, 36.052952, 33.965939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317311, 0.948037, -0.023234,
		0.884592, 0.304728, 0.353042,
		0.341776, 0.091472, -0.935319,
		29.638931, 36.080395, 33.685341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662277, 36.657696, 34.309608>,  <29.399687, 36.016361, 34.340065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662277, 36.657696, 34.309608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648476, 36.559074, 33.922203>,  <29.640194, 36.499901, 33.689758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648476, 36.559074, 33.922203>,  <29.662277, 36.657696, 34.309608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648476, 36.559074, 33.922203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301120, 0.926623, -0.225159,
		0.952962, 0.283871, -0.106214,
		-0.034504, -0.246551, -0.968515,
		29.638124, 36.485107, 33.631649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924503, 37.293072, 34.023067>,  <29.662277, 36.657696, 34.309608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924503, 37.293072, 34.023067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741604, 37.107155, 33.719780>,  <29.631865, 36.995605, 33.537807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741604, 37.107155, 33.719780>,  <29.924503, 37.293072, 34.023067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741604, 37.107155, 33.719780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273049, 0.884756, -0.377693,
		0.846384, 0.034330, -0.531465,
		-0.457251, -0.464789, -0.758217,
		29.604429, 36.967716, 33.492313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193157, 37.576363, 33.364834>,  <29.924503, 37.293072, 34.023067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193157, 37.576363, 33.364834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833887, 37.414272, 33.296631>,  <29.618324, 37.317017, 33.255711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833887, 37.414272, 33.296631>,  <30.193157, 37.576363, 33.364834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833887, 37.414272, 33.296631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325620, 0.873749, -0.361295,
		0.295387, -0.268986, -0.916730,
		-0.898175, -0.405227, -0.170507,
		29.564434, 37.292706, 33.245480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199347, 36.873356, 33.132553>,  <30.193157, 37.576363, 33.364834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199347, 36.873356, 33.132553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014252, 37.174343, 32.945076>,  <29.903194, 37.354935, 32.832592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014252, 37.174343, 32.945076>,  <30.199347, 36.873356, 33.132553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014252, 37.174343, 32.945076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751277, 0.613522, 0.243257,
		0.470594, -0.239553, -0.849209,
		-0.462735, 0.752466, -0.468690,
		29.875431, 37.400082, 32.804470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562685, 36.601307, 33.641750>,  <30.199347, 36.873356, 33.132553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562685, 36.601307, 33.641750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744598, 36.957047, 33.622898>,  <30.853746, 37.170490, 33.611588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744598, 36.957047, 33.622898>,  <30.562685, 36.601307, 33.641750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744598, 36.957047, 33.622898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639432, 0.362901, 0.677812,
		0.619918, -0.278123, 0.733723,
		0.454784, 0.889354, -0.047128,
		30.881033, 37.223854, 33.608761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818604, 36.838387, 34.326134>,  <30.562685, 36.601307, 33.641750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818604, 36.838387, 34.326134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797722, 37.202606, 34.162098>,  <30.785192, 37.421139, 34.063675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797722, 37.202606, 34.162098>,  <30.818604, 36.838387, 34.326134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797722, 37.202606, 34.162098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534202, 0.321495, 0.781837,
		0.843744, 0.259884, 0.469635,
		-0.052202, 0.910550, -0.410089,
		30.782061, 37.475773, 34.039070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785501, 37.350773, 34.910282>,  <30.818604, 36.838387, 34.326134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785501, 37.350773, 34.910282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651398, 37.530842, 34.579239>,  <30.570936, 37.638885, 34.380611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651398, 37.530842, 34.579239>,  <30.785501, 37.350773, 34.910282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651398, 37.530842, 34.579239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697413, 0.472020, 0.539271,
		0.633416, 0.757983, 0.155710,
		-0.335260, 0.450177, -0.827612,
		30.550819, 37.665894, 34.330956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340727, 37.022423, 34.907585>,  <30.785501, 37.350773, 34.910282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340727, 37.022423, 34.907585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499187, 36.655163, 34.904339>,  <31.594263, 36.434807, 34.902393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499187, 36.655163, 34.904339>,  <31.340727, 37.022423, 34.907585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499187, 36.655163, 34.904339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196396, 0.093361, -0.976070,
		0.896936, 0.385078, 0.217306,
		0.396151, -0.918150, -0.008111,
		31.618032, 36.379719, 34.901905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611702, 36.994759, 34.263767>,  <31.340727, 37.022423, 34.907585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611702, 36.994759, 34.263767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690916, 36.610252, 34.340458>,  <31.738445, 36.379551, 34.386471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690916, 36.610252, 34.340458>,  <31.611702, 36.994759, 34.263767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690916, 36.610252, 34.340458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230207, -0.144516, -0.962351,
		0.952778, 0.234717, 0.192670,
		0.198037, -0.961261, 0.191725,
		31.750326, 36.321873, 34.397976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322460, 36.840519, 34.148319>,  <31.611702, 36.994759, 34.263767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322460, 36.840519, 34.148319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103886, 36.509319, 34.097996>,  <31.972740, 36.310600, 34.067802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103886, 36.509319, 34.097996>,  <32.322460, 36.840519, 34.148319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103886, 36.509319, 34.097996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225209, -0.000585, -0.974310,
		0.806651, -0.560734, 0.186792,
		-0.546438, -0.827996, -0.125810,
		31.939955, 36.260921, 34.060253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041996, 36.908810, 34.072948>,  <32.322460, 36.840519, 34.148319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041996, 36.908810, 34.072948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850254, 36.575855, 33.961697>,  <32.735207, 36.376083, 33.894947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850254, 36.575855, 33.961697>,  <33.041996, 36.908810, 34.072948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850254, 36.575855, 33.961697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310469, 0.457257, -0.833382,
		0.820868, -0.313139, -0.477619,
		-0.479359, -0.832382, -0.278127,
		32.706448, 36.326141, 33.878258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672207, 36.492020, 34.376621>,  <33.041996, 36.908810, 34.072948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672207, 36.492020, 34.376621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951698, 36.221516, 34.283287>,  <34.119392, 36.059212, 34.227287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951698, 36.221516, 34.283287>,  <33.672207, 36.492020, 34.376621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951698, 36.221516, 34.283287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081946, -0.248365, 0.965194,
		-0.710678, -0.693530, -0.118122,
		0.698729, -0.676263, -0.233340,
		34.161316, 36.018639, 34.213284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421501, 35.837040, 34.596180>,  <33.672207, 36.492020, 34.376621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421501, 35.837040, 34.596180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820133, 35.869072, 34.604370>,  <34.059311, 35.888290, 34.609283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820133, 35.869072, 34.604370>,  <33.421501, 35.837040, 34.596180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820133, 35.869072, 34.604370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021017, 0.005919, 0.999762,
		0.079942, -0.996771, 0.007582,
		0.996578, 0.080082, 0.020476,
		34.119106, 35.893097, 34.610512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728096, 35.269695, 34.916336>,  <33.421501, 35.837040, 34.596180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728096, 35.269695, 34.916336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999504, 35.560802, 34.956280>,  <34.162350, 35.735466, 34.980244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999504, 35.560802, 34.956280>,  <33.728096, 35.269695, 34.916336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999504, 35.560802, 34.956280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028760, -0.109512, 0.993569,
		0.734020, -0.677028, -0.053375,
		0.678519, 0.727764, 0.099856,
		34.203060, 35.779133, 34.986237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224327, 35.015240, 35.405087>,  <33.728096, 35.269695, 34.916336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224327, 35.015240, 35.405087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254078, 35.414131, 35.404892>,  <34.271931, 35.653465, 35.404774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254078, 35.414131, 35.404892>,  <34.224327, 35.015240, 35.405087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254078, 35.414131, 35.404892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224501, -0.016271, 0.974338,
		0.971631, -0.072581, -0.225089,
		0.074381, 0.997230, -0.000486,
		34.276394, 35.713299, 35.404747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696697, 35.038452, 35.863106>,  <34.224327, 35.015240, 35.405087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696697, 35.038452, 35.863106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587448, 35.422916, 35.847267>,  <34.521900, 35.653595, 35.837765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587448, 35.422916, 35.847267>,  <34.696697, 35.038452, 35.863106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587448, 35.422916, 35.847267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032975, 0.031786, 0.998951,
		0.961415, 0.274138, 0.023013,
		-0.273119, 0.961165, -0.039599,
		34.505512, 35.711266, 35.835388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995083, 35.287224, 36.417679>,  <34.696697, 35.038452, 35.863106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995083, 35.287224, 36.417679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766392, 35.604355, 36.333252>,  <34.629177, 35.794632, 36.282597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766392, 35.604355, 36.333252>,  <34.995083, 35.287224, 36.417679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766392, 35.604355, 36.333252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162963, 0.142392, 0.976303,
		0.804093, 0.592579, 0.047792,
		-0.571732, 0.792826, -0.211065,
		34.594872, 35.842201, 36.269932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190857, 35.944923, 36.834480>,  <34.995083, 35.287224, 36.417679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190857, 35.944923, 36.834480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809341, 35.990765, 36.723370>,  <34.580433, 36.018269, 36.656704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809341, 35.990765, 36.723370>,  <35.190857, 35.944923, 36.834480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809341, 35.990765, 36.723370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254136, 0.185611, 0.949191,
		0.160342, 0.975917, -0.147908,
		-0.953785, 0.114607, -0.277777,
		34.523205, 36.025146, 36.640038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983082, 36.482643, 37.221661>,  <35.190857, 35.944923, 36.834480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983082, 36.482643, 37.221661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648895, 36.283195, 37.129257>,  <34.448383, 36.163525, 37.073814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648895, 36.283195, 37.129257>,  <34.983082, 36.482643, 37.221661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648895, 36.283195, 37.129257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404434, 0.273300, 0.872777,
		-0.372050, 0.822608, -0.429994,
		-0.835471, -0.498621, -0.231009,
		34.398254, 36.133610, 37.059956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372330, 36.983990, 37.339752>,  <34.983082, 36.482643, 37.221661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372330, 36.983990, 37.339752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230946, 36.609856, 37.333801>,  <34.146118, 36.385376, 37.330231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230946, 36.609856, 37.333801>,  <34.372330, 36.983990, 37.339752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230946, 36.609856, 37.333801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513385, 0.180662, 0.838926,
		-0.781988, 0.304160, -0.544042,
		-0.353455, -0.935333, -0.014875,
		34.124908, 36.329254, 37.329338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663174, 37.070824, 37.341873>,  <34.372330, 36.983990, 37.339752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663174, 37.070824, 37.341873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725800, 36.702686, 37.485241>,  <33.763374, 36.481804, 37.571262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725800, 36.702686, 37.485241>,  <33.663174, 37.070824, 37.341873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725800, 36.702686, 37.485241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533668, 0.226527, 0.814791,
		-0.831076, -0.318841, -0.455690,
		0.156563, -0.920340, 0.358417,
		33.772770, 36.426586, 37.592766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935375, 36.684265, 37.693787>,  <33.663174, 37.070824, 37.341873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935375, 36.684265, 37.693787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259380, 36.490314, 37.825710>,  <33.453785, 36.373943, 37.904865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259380, 36.490314, 37.825710>,  <32.935375, 36.684265, 37.693787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259380, 36.490314, 37.825710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428505, -0.105470, 0.897363,
		-0.400322, -0.868202, -0.293203,
		0.810016, -0.484872, 0.329807,
		33.502384, 36.344852, 37.924652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660694, 36.181351, 38.042145>,  <32.935375, 36.684265, 37.693787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660694, 36.181351, 38.042145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029747, 36.225220, 38.190048>,  <33.251179, 36.251541, 38.278790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029747, 36.225220, 38.190048>,  <32.660694, 36.181351, 38.042145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029747, 36.225220, 38.190048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380268, 0.098657, 0.919599,
		0.064362, -0.989061, 0.132723,
		0.922634, 0.109657, 0.369759,
		33.306538, 36.258121, 38.300976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735855, 35.729256, 38.565834>,  <32.660694, 36.181351, 38.042145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735855, 35.729256, 38.565834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007442, 36.010330, 38.650902>,  <33.170395, 36.178974, 38.701942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007442, 36.010330, 38.650902>,  <32.735855, 35.729256, 38.565834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007442, 36.010330, 38.650902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401887, 0.113322, 0.908650,
		0.614399, -0.702414, 0.359344,
		0.678970, 0.702689, 0.212666,
		33.211132, 36.221138, 38.714703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868076, 35.528481, 39.280457>,  <32.735855, 35.729256, 38.565834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868076, 35.528481, 39.280457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050457, 35.881622, 39.235420>,  <33.159885, 36.093506, 39.208397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050457, 35.881622, 39.235420>,  <32.868076, 35.528481, 39.280457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050457, 35.881622, 39.235420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189261, 0.219796, 0.957011,
		0.869650, -0.415038, 0.267306,
		0.455949, 0.882855, -0.112595,
		33.187241, 36.146481, 39.201641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482712, 35.608532, 39.788750>,  <32.868076, 35.528481, 39.280457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482712, 35.608532, 39.788750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295422, 35.938862, 39.663033>,  <33.183048, 36.137058, 39.587601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.295422, 35.938862, 39.663033>,  <33.482712, 35.608532, 39.788750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295422, 35.938862, 39.663033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180646, 0.258718, 0.948911,
		0.864946, 0.501081, 0.028043,
		-0.468226, 0.825823, -0.314295,
		33.154953, 36.186607, 39.568745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763641, 36.090778, 40.184040>,  <33.482712, 35.608532, 39.788750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763641, 36.090778, 40.184040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428928, 36.272057, 40.061138>,  <33.228100, 36.380825, 39.987396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428928, 36.272057, 40.061138>,  <33.763641, 36.090778, 40.184040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428928, 36.272057, 40.061138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243736, 0.194169, 0.950206,
		0.490288, 0.870007, -0.052018,
		-0.836786, 0.453196, -0.307251,
		33.177891, 36.408016, 39.968964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739094, 36.746307, 40.556206>,  <33.763641, 36.090778, 40.184040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739094, 36.746307, 40.556206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365978, 36.663589, 40.438126>,  <33.142109, 36.613956, 40.367275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365978, 36.663589, 40.438126>,  <33.739094, 36.746307, 40.556206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365978, 36.663589, 40.438126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333537, 0.184821, 0.924443,
		-0.136613, 0.960768, -0.241373,
		-0.932786, -0.206797, -0.295203,
		33.086143, 36.601551, 40.349564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292904, 37.084652, 41.039055>,  <33.739094, 36.746307, 40.556206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292904, 37.084652, 41.039055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999680, 36.874420, 40.866364>,  <32.823746, 36.748280, 40.762749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999680, 36.874420, 40.866364>,  <33.292904, 37.084652, 41.039055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999680, 36.874420, 40.866364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568102, 0.124103, 0.813546,
		-0.374004, 0.841645, -0.389558,
		-0.733063, -0.525578, -0.431725,
		32.779762, 36.716747, 40.736847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558712, 37.548183, 41.041889>,  <33.292904, 37.084652, 41.039055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558712, 37.548183, 41.041889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480328, 37.156406, 41.022747>,  <32.433296, 36.921341, 41.011261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480328, 37.156406, 41.022747>,  <32.558712, 37.548183, 41.041889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480328, 37.156406, 41.022747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569800, 0.074017, 0.818443,
		-0.798076, 0.187654, -0.572591,
		-0.195966, -0.979442, -0.047853,
		32.421539, 36.862576, 41.008392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821491, 37.490791, 41.025249>,  <32.558712, 37.548183, 41.041889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821491, 37.490791, 41.025249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925411, 37.128708, 41.159775>,  <31.987762, 36.911457, 41.240490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925411, 37.128708, 41.159775>,  <31.821491, 37.490791, 41.025249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925411, 37.128708, 41.159775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608332, 0.117059, 0.785003,
		-0.749957, -0.408534, -0.520254,
		0.259800, -0.905205, 0.336314,
		32.003353, 36.857147, 41.260670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222057, 37.174652, 41.270489>,  <31.821491, 37.490791, 41.025249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222057, 37.174652, 41.270489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529099, 36.989155, 41.447453>,  <31.713324, 36.877857, 41.553631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529099, 36.989155, 41.447453>,  <31.222057, 37.174652, 41.270489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529099, 36.989155, 41.447453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422199, 0.153478, 0.893417,
		-0.482215, -0.872575, -0.077982,
		0.767605, -0.463743, 0.442409,
		31.759380, 36.850033, 41.580173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899784, 36.602318, 41.711601>,  <31.222057, 37.174652, 41.270489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899784, 36.602318, 41.711601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274679, 36.627037, 41.848869>,  <31.499617, 36.641869, 41.931232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274679, 36.627037, 41.848869>,  <30.899784, 36.602318, 41.711601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274679, 36.627037, 41.848869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333525, -0.128248, 0.933977,
		0.101729, -0.989815, -0.099588,
		0.937236, 0.061797, 0.343175,
		31.555851, 36.645576, 41.951820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042877, 36.035118, 42.232433>,  <30.899784, 36.602318, 41.711601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042877, 36.035118, 42.232433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310818, 36.320278, 42.315445>,  <31.471582, 36.491375, 42.365250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310818, 36.320278, 42.315445>,  <31.042877, 36.035118, 42.232433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310818, 36.320278, 42.315445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147502, -0.146160, 0.978203,
		0.727697, -0.685861, 0.007250,
		0.669851, 0.712904, 0.207526,
		31.511774, 36.534149, 42.377705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313868, 35.717503, 42.776291>,  <31.042877, 36.035118, 42.232433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313868, 35.717503, 42.776291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400341, 36.107922, 42.786026>,  <31.452225, 36.342175, 42.791866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400341, 36.107922, 42.786026>,  <31.313868, 35.717503, 42.776291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400341, 36.107922, 42.786026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124888, 0.002920, 0.992167,
		0.968332, -0.217530, 0.122528,
		0.216183, 0.976050, 0.024339,
		31.465197, 36.400738, 42.793327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601772, 35.839748, 43.391647>,  <31.313868, 35.717503, 42.776291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601772, 35.839748, 43.391647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447908, 36.198135, 43.302845>,  <31.355589, 36.413166, 43.249565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447908, 36.198135, 43.302845>,  <31.601772, 35.839748, 43.391647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447908, 36.198135, 43.302845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315099, 0.098604, 0.943923,
		0.867611, 0.433043, 0.244388,
		-0.384661, 0.895964, -0.222001,
		31.332510, 36.466923, 43.236244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817892, 36.269985, 43.868813>,  <31.601772, 35.839748, 43.391647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817892, 36.269985, 43.868813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518482, 36.504890, 43.745632>,  <31.338837, 36.645832, 43.671726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518482, 36.504890, 43.745632>,  <31.817892, 36.269985, 43.868813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518482, 36.504890, 43.745632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318020, 0.089581, 0.943842,
		0.581869, 0.804425, 0.119708,
		-0.748527, 0.587262, -0.307948,
		31.293924, 36.681068, 43.653248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828423, 36.943840, 44.332031>,  <31.817892, 36.269985, 43.868813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828423, 36.943840, 44.332031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467031, 36.915268, 44.162975>,  <31.250196, 36.898125, 44.061543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467031, 36.915268, 44.162975>,  <31.828423, 36.943840, 44.332031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467031, 36.915268, 44.162975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428401, 0.117774, 0.895881,
		-0.014213, 0.990469, -0.137005,
		-0.903477, -0.071426, -0.422644,
		31.195988, 36.893841, 44.036182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473707, 37.432037, 44.708050>,  <31.828423, 36.943840, 44.332031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473707, 37.432037, 44.708050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164827, 37.234428, 44.548225>,  <30.979500, 37.115864, 44.452332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164827, 37.234428, 44.548225>,  <31.473707, 37.432037, 44.708050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164827, 37.234428, 44.548225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517794, 0.124843, 0.846347,
		-0.368235, 0.860438, -0.352207,
		-0.772200, -0.494025, -0.399558,
		30.933167, 37.086220, 44.428356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887722, 37.938862, 44.626789>,  <31.473707, 37.432037, 44.708050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887722, 37.938862, 44.626789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716364, 37.577766, 44.611073>,  <30.613548, 37.361111, 44.601643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716364, 37.577766, 44.611073>,  <30.887722, 37.938862, 44.626789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716364, 37.577766, 44.611073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589803, 0.246418, 0.769032,
		-0.684551, 0.352626, -0.638001,
		-0.428396, -0.902737, -0.039294,
		30.587845, 37.306946, 44.599285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278433, 38.086048, 44.887943>,  <30.887722, 37.938862, 44.626789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278433, 38.086048, 44.887943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291313, 37.688339, 44.928726>,  <30.299042, 37.449715, 44.953194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291313, 37.688339, 44.928726>,  <30.278433, 38.086048, 44.887943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291313, 37.688339, 44.928726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635698, 0.058340, 0.769730,
		-0.771266, -0.089599, -0.630176,
		0.032202, -0.994268, 0.101953,
		30.300974, 37.390060, 44.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672995, 37.892090, 45.166508>,  <30.278433, 38.086048, 44.887943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672995, 37.892090, 45.166508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909197, 37.581738, 45.255333>,  <30.050919, 37.395527, 45.308628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909197, 37.581738, 45.255333>,  <29.672995, 37.892090, 45.166508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909197, 37.581738, 45.255333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392214, -0.035424, 0.919192,
		-0.705318, -0.629883, -0.325230,
		0.590504, -0.775882, 0.222064,
		30.086348, 37.348972, 45.321953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201052, 37.315014, 45.397293>,  <29.672995, 37.892090, 45.166508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201052, 37.315014, 45.397293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571049, 37.293308, 45.547733>,  <29.793047, 37.280285, 45.637997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571049, 37.293308, 45.547733>,  <29.201052, 37.315014, 45.397293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571049, 37.293308, 45.547733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379984, -0.137823, 0.914668,
		0.002206, -0.988970, -0.148102,
		0.924990, -0.054259, 0.376097,
		29.848545, 37.277031, 45.660561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299507, 36.624252, 45.765629>,  <29.201052, 37.315014, 45.397293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299507, 36.624252, 45.765629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496510, 36.951366, 45.884735>,  <29.614712, 37.147636, 45.956200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496510, 36.951366, 45.884735>,  <29.299507, 36.624252, 45.765629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496510, 36.951366, 45.884735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619016, 0.088663, 0.780358,
		0.611765, -0.568652, 0.549890,
		0.492507, 0.817786, 0.297763,
		29.644262, 37.196701, 45.974064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756735, 35.961964, 45.967678>,  <29.299507, 36.624252, 45.765629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756735, 35.961964, 45.967678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004139, 36.193508, 46.180233>,  <30.152580, 36.332436, 46.307766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004139, 36.193508, 46.180233>,  <29.756735, 35.961964, 45.967678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004139, 36.193508, 46.180233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615460, -0.063559, 0.785601,
		0.488525, -0.812949, 0.316951,
		0.618508, 0.578857, 0.531388,
		30.189692, 36.367165, 46.339649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101206, 35.617016, 46.575356>,  <29.756735, 35.961964, 45.967678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101206, 35.617016, 46.575356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072002, 36.009132, 46.648788>,  <30.054480, 36.244400, 46.692848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072002, 36.009132, 46.648788>,  <30.101206, 35.617016, 46.575356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072002, 36.009132, 46.648788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741856, -0.176404, 0.646940,
		0.666573, -0.088958, 0.740113,
		-0.073009, 0.980290, 0.183580,
		30.050100, 36.303219, 46.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012236, 35.619450, 47.262806>,  <30.101206, 35.617016, 46.575356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012236, 35.619450, 47.262806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877777, 35.977909, 47.146923>,  <29.797102, 36.192986, 47.077393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877777, 35.977909, 47.146923>,  <30.012236, 35.619450, 47.262806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877777, 35.977909, 47.146923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752690, -0.070726, 0.654565,
		0.566097, 0.438087, 0.698295,
		-0.336144, 0.896146, -0.289706,
		29.776934, 36.246754, 47.060013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164297, 36.039711, 47.863567>,  <30.012236, 35.619450, 47.262806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164297, 36.039711, 47.863567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881359, 36.164825, 47.610008>,  <29.711597, 36.239895, 47.457870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881359, 36.164825, 47.610008>,  <30.164297, 36.039711, 47.863567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881359, 36.164825, 47.610008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683325, -0.073045, 0.726451,
		0.180923, 0.947009, 0.265405,
		-0.707343, 0.312790, -0.633900,
		29.669157, 36.258663, 47.419838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784428, 36.492508, 48.258694>,  <30.164297, 36.039711, 47.863567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784428, 36.492508, 48.258694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544178, 36.393124, 47.954716>,  <29.400028, 36.333492, 47.772327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544178, 36.393124, 47.954716>,  <29.784428, 36.492508, 48.258694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544178, 36.393124, 47.954716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755568, -0.134451, 0.641124,
		-0.261471, 0.959265, -0.106976,
		-0.600624, -0.248463, -0.759945,
		29.363991, 36.318584, 47.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170809, 36.809364, 48.358559>,  <29.784428, 36.492508, 48.258694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170809, 36.809364, 48.358559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084087, 36.518024, 48.098557>,  <29.032055, 36.343220, 47.942554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084087, 36.518024, 48.098557>,  <29.170809, 36.809364, 48.358559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084087, 36.518024, 48.098557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835454, -0.206001, 0.509491,
		-0.504988, 0.653508, -0.563839,
		-0.216805, -0.728348, -0.650004,
		29.019047, 36.299519, 47.903557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460817, 36.754620, 48.476894>,  <29.170809, 36.809364, 48.358559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460817, 36.754620, 48.476894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573242, 36.423954, 48.281906>,  <28.640697, 36.225555, 48.164913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573242, 36.423954, 48.281906>,  <28.460817, 36.754620, 48.476894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573242, 36.423954, 48.281906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781276, -0.492075, 0.384018,
		-0.557327, 0.272914, -0.784159,
		0.281061, -0.826668, -0.487468,
		28.657560, 36.175953, 48.135666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853519, 36.593491, 48.295742>,  <28.460817, 36.754620, 48.476894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853519, 36.593491, 48.295742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098042, 36.277199, 48.282784>,  <28.244755, 36.087425, 48.275009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098042, 36.277199, 48.282784>,  <27.853519, 36.593491, 48.295742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098042, 36.277199, 48.282784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726256, -0.576787, 0.373989,
		-0.314413, -0.205092, -0.926867,
		0.611307, -0.790730, -0.032400,
		28.281433, 36.039978, 48.273064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538179, 36.167828, 47.894112>,  <27.853519, 36.593491, 48.295742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538179, 36.167828, 47.894112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774521, 36.075085, 48.203209>,  <27.916327, 36.019440, 48.388668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774521, 36.075085, 48.203209>,  <27.538179, 36.167828, 47.894112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774521, 36.075085, 48.203209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806182, -0.132881, 0.576553,
		-0.030996, -0.963631, -0.265434,
		0.590855, -0.231859, 0.772743,
		27.951777, 36.005527, 48.435032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332230, 35.487354, 48.177475>,  <27.538179, 36.167828, 47.894112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332230, 35.487354, 48.177475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507111, 35.684589, 48.478333>,  <27.612040, 35.802929, 48.658848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507111, 35.684589, 48.478333>,  <27.332230, 35.487354, 48.177475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507111, 35.684589, 48.478333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846977, -0.055522, 0.528722,
		0.302466, -0.868207, 0.393358,
		0.437200, 0.493086, 0.752145,
		27.638271, 35.832516, 48.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311533, 35.127815, 48.829014>,  <27.332230, 35.487354, 48.177475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311533, 35.127815, 48.829014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319712, 35.514679, 48.930359>,  <27.324619, 35.746796, 48.991165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319712, 35.514679, 48.930359>,  <27.311533, 35.127815, 48.829014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319712, 35.514679, 48.930359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803253, -0.134996, 0.580138,
		0.595287, -0.215374, 0.774111,
		0.020445, 0.967156, 0.253361,
		27.325846, 35.804825, 49.006367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448786, 35.219730, 49.620327>,  <27.311533, 35.127815, 48.829014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448786, 35.219730, 49.620327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216522, 35.479488, 49.423908>,  <27.077164, 35.635342, 49.306057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216522, 35.479488, 49.423908>,  <27.448786, 35.219730, 49.620327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216522, 35.479488, 49.423908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797869, -0.333884, 0.501922,
		0.161995, 0.683232, 0.712005,
		-0.580657, 0.649396, -0.491043,
		27.042326, 35.674309, 49.276596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762539, 34.657608, 49.408924>,  <27.448786, 35.219730, 49.620327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762539, 34.657608, 49.408924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974295, 34.909611, 49.636200>,  <28.101349, 35.060814, 49.772564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974295, 34.909611, 49.636200>,  <27.762539, 34.657608, 49.408924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974295, 34.909611, 49.636200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739361, 0.671044, -0.055178,
		-0.416042, -0.390886, 0.821046,
		0.529390, 0.630006, 0.568189,
		28.133112, 35.098614, 49.806656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469141, 34.880390, 49.524841>,  <27.762539, 34.657608, 49.408924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469141, 34.880390, 49.524841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690971, 34.599339, 49.703171>,  <28.824070, 34.430706, 49.810169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690971, 34.599339, 49.703171>,  <28.469141, 34.880390, 49.524841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690971, 34.599339, 49.703171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665917, 0.053453, -0.744108,
		0.499001, 0.709547, 0.497536,
		0.554574, -0.702628, 0.445826,
		28.857344, 34.388550, 49.836918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198536, 35.133518, 49.424950>,  <28.469141, 34.880390, 49.524841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198536, 35.133518, 49.424950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222383, 34.751171, 49.540028>,  <29.236692, 34.521763, 49.609074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222383, 34.751171, 49.540028>,  <29.198536, 35.133518, 49.424950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222383, 34.751171, 49.540028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610539, -0.193095, -0.768086,
		0.789739, 0.221442, 0.572081,
		0.059621, -0.955865, 0.287694,
		29.240271, 34.464413, 49.626335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897417, 34.882809, 49.635384>,  <29.198536, 35.133518, 49.424950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897417, 34.882809, 49.635384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708992, 34.571064, 49.470123>,  <29.595938, 34.384018, 49.370968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708992, 34.571064, 49.470123>,  <29.897417, 34.882809, 49.635384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708992, 34.571064, 49.470123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820351, -0.214905, -0.529945,
		0.324231, -0.588566, 0.740584,
		-0.471062, -0.779363, -0.413152,
		29.567673, 34.337254, 49.346176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211334, 34.105911, 49.754906>,  <29.897417, 34.882809, 49.635384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211334, 34.105911, 49.754906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021547, 34.175941, 49.409832>,  <29.907675, 34.217960, 49.202785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021547, 34.175941, 49.409832>,  <30.211334, 34.105911, 49.754906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021547, 34.175941, 49.409832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741509, -0.448658, -0.498869,
		-0.474391, -0.876387, 0.083053,
		-0.474465, 0.175075, -0.862688,
		29.879208, 34.228462, 49.151024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279980, 33.536949, 49.314342>,  <30.211334, 34.105911, 49.754906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279980, 33.536949, 49.314342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159885, 33.826103, 49.065411>,  <30.087830, 33.999596, 48.916050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159885, 33.826103, 49.065411>,  <30.279980, 33.536949, 49.314342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159885, 33.826103, 49.065411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610792, -0.355430, -0.707532,
		-0.732661, -0.592539, -0.334821,
		-0.300235, 0.722887, -0.622328,
		30.069815, 34.042969, 48.878712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999052, 33.280983, 48.678379>,  <30.279980, 33.536949, 49.314342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999052, 33.280983, 48.678379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129761, 33.648121, 48.588234>,  <30.208185, 33.868404, 48.534145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129761, 33.648121, 48.588234>,  <29.999052, 33.280983, 48.678379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129761, 33.648121, 48.588234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542760, -0.377458, -0.750291,
		-0.773713, 0.122855, -0.621510,
		0.326771, 0.917841, -0.225363,
		30.227793, 33.923473, 48.520626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227777, 33.178944, 47.994415>,  <29.999052, 33.280983, 48.678379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227777, 33.178944, 47.994415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355797, 33.553261, 48.053547>,  <30.432608, 33.777851, 48.089024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355797, 33.553261, 48.053547>,  <30.227777, 33.178944, 47.994415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355797, 33.553261, 48.053547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619479, -0.088651, -0.779992,
		-0.716809, 0.341210, -0.608079,
		0.320047, 0.935797, 0.147827,
		30.451811, 33.834000, 48.097897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095821, 33.569813, 47.387184>,  <30.227777, 33.178944, 47.994415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095821, 33.569813, 47.387184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399202, 33.771301, 47.552597>,  <30.581230, 33.892197, 47.651844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399202, 33.771301, 47.552597>,  <30.095821, 33.569813, 47.387184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399202, 33.771301, 47.552597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551502, -0.157965, -0.819080,
		-0.347267, 0.849299, -0.397615,
		0.758453, 0.503725, 0.413534,
		30.626738, 33.922421, 47.676659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384056, 33.972935, 46.836647>,  <30.095821, 33.569813, 47.387184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384056, 33.972935, 46.836647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656618, 33.951683, 47.128635>,  <30.820156, 33.938931, 47.303829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.656618, 33.951683, 47.128635>,  <30.384056, 33.972935, 46.836647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656618, 33.951683, 47.128635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700834, -0.240154, -0.671683,
		0.210992, 0.969280, -0.126409,
		0.681406, -0.053128, 0.729975,
		30.861040, 33.935745, 47.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945456, 34.182831, 46.500919>,  <30.384056, 33.972935, 46.836647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945456, 34.182831, 46.500919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081312, 33.993729, 46.826164>,  <31.162827, 33.880268, 47.021309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081312, 33.993729, 46.826164>,  <30.945456, 34.182831, 46.500919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081312, 33.993729, 46.826164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740469, -0.398660, -0.541088,
		0.579957, 0.785856, 0.214662,
		0.339641, -0.472758, 0.813108,
		31.183205, 33.851902, 47.070095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563885, 34.391438, 46.553165>,  <30.945456, 34.182831, 46.500919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563885, 34.391438, 46.553165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551601, 34.027592, 46.718891>,  <31.544231, 33.809284, 46.818325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551601, 34.027592, 46.718891>,  <31.563885, 34.391438, 46.553165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551601, 34.027592, 46.718891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777832, -0.282067, -0.561618,
		0.627721, 0.305020, 0.716190,
		-0.030709, -0.909616, 0.414315,
		31.542389, 33.754707, 46.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252533, 34.227592, 46.639305>,  <31.563885, 34.391438, 46.553165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252533, 34.227592, 46.639305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056019, 33.879822, 46.618385>,  <31.938110, 33.671158, 46.605831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056019, 33.879822, 46.618385>,  <32.252533, 34.227592, 46.639305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056019, 33.879822, 46.618385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761748, -0.399768, -0.509829,
		0.422351, -0.290312, 0.858685,
		-0.491284, -0.869428, -0.052302,
		31.908634, 33.618992, 46.602695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727768, 33.776291, 46.590389>,  <32.252533, 34.227592, 46.639305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727768, 33.776291, 46.590389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422829, 33.535332, 46.495781>,  <32.239864, 33.390755, 46.439014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422829, 33.535332, 46.495781>,  <32.727768, 33.776291, 46.590389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422829, 33.535332, 46.495781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603843, -0.530626, -0.594819,
		0.232815, -0.596280, 0.768276,
		-0.762345, -0.602401, -0.236522,
		32.194126, 33.354610, 46.424824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942829, 33.059418, 46.737579>,  <32.727768, 33.776291, 46.590389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942829, 33.059418, 46.737579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645943, 33.048470, 46.469742>,  <32.467812, 33.041901, 46.309040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645943, 33.048470, 46.469742>,  <32.942829, 33.059418, 46.737579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645943, 33.048470, 46.469742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582795, -0.519631, -0.624766,
		-0.330847, -0.853952, 0.401630,
		-0.742220, -0.027366, -0.669597,
		32.423275, 33.040260, 46.268864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032787, 32.356686, 46.475842>,  <32.942829, 33.059418, 46.737579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032787, 32.356686, 46.475842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814575, 32.582596, 46.228157>,  <32.683647, 32.718143, 46.079544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814575, 32.582596, 46.228157>,  <33.032787, 32.356686, 46.475842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814575, 32.582596, 46.228157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593232, -0.261682, -0.761313,
		-0.592008, -0.782657, -0.192288,
		-0.545529, 0.564775, -0.619215,
		32.650917, 32.752029, 46.042393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125385, 32.056511, 45.886509>,  <33.032787, 32.356686, 46.475842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125385, 32.056511, 45.886509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975376, 32.401237, 45.749908>,  <32.885372, 32.608074, 45.667946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975376, 32.401237, 45.749908>,  <33.125385, 32.056511, 45.886509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975376, 32.401237, 45.749908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372106, -0.197461, -0.906944,
		-0.849056, -0.467200, -0.246636,
		-0.375023, 0.861820, -0.341503,
		32.862869, 32.659782, 45.647457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690434, 31.984011, 45.283169>,  <33.125385, 32.056511, 45.886509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690434, 31.984011, 45.283169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837273, 32.352604, 45.232399>,  <32.925377, 32.573761, 45.201939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837273, 32.352604, 45.232399>,  <32.690434, 31.984011, 45.283169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837273, 32.352604, 45.232399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256010, -0.231268, -0.938602,
		-0.894259, 0.312065, -0.320806,
		0.367097, 0.921483, -0.126922,
		32.947403, 32.629047, 45.194321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720917, 32.143665, 44.553959>,  <32.690434, 31.984011, 45.283169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720917, 32.143665, 44.553959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953773, 32.430252, 44.707726>,  <33.093487, 32.602203, 44.799984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953773, 32.430252, 44.707726>,  <32.720917, 32.143665, 44.553959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953773, 32.430252, 44.707726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366669, 0.190651, -0.910607,
		-0.725713, 0.671060, -0.151722,
		0.582146, 0.716471, 0.384415,
		33.128418, 32.645195, 44.823051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557980, 32.857632, 44.323338>,  <32.720917, 32.143665, 44.553959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557980, 32.857632, 44.323338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941536, 32.779594, 44.405769>,  <33.171669, 32.732773, 44.455227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941536, 32.779594, 44.405769>,  <32.557980, 32.857632, 44.323338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941536, 32.779594, 44.405769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235498, 0.141877, -0.961463,
		0.158340, 0.970468, 0.181989,
		0.958890, -0.195096, 0.206078,
		33.229202, 32.721066, 44.467594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913616, 33.305828, 43.915672>,  <32.557980, 32.857632, 44.323338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913616, 33.305828, 43.915672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193855, 33.037033, 44.011665>,  <33.362000, 32.875755, 44.069260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193855, 33.037033, 44.011665>,  <32.913616, 33.305828, 43.915672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193855, 33.037033, 44.011665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432621, 0.132563, -0.891777,
		0.567453, 0.728598, 0.383591,
		0.700597, -0.671991, 0.239984,
		33.404034, 32.835434, 44.083660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585278, 33.511646, 43.674416>,  <32.913616, 33.305828, 43.915672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585278, 33.511646, 43.674416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605865, 33.113903, 43.711502>,  <33.618217, 32.875256, 43.733753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605865, 33.113903, 43.711502>,  <33.585278, 33.511646, 43.674416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605865, 33.113903, 43.711502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356121, -0.068460, -0.931929,
		0.933021, 0.080986, 0.350589,
		0.051471, -0.994361, 0.092716,
		33.621307, 32.815594, 43.739315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208687, 33.347496, 43.277386>,  <33.585278, 33.511646, 43.674416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208687, 33.347496, 43.277386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999672, 33.009716, 43.324459>,  <33.874264, 32.807049, 43.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.999672, 33.009716, 43.324459>,  <34.208687, 33.347496, 43.277386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999672, 33.009716, 43.324459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237850, -0.276927, -0.930988,
		0.818766, -0.458488, 0.345559,
		-0.522542, -0.844453, 0.117687,
		33.842911, 32.756382, 43.359764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593307, 32.786961, 43.059677>,  <34.208687, 33.347496, 43.277386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593307, 32.786961, 43.059677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216110, 32.656029, 43.035637>,  <33.989792, 32.577469, 43.021214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216110, 32.656029, 43.035637>,  <34.593307, 32.786961, 43.059677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216110, 32.656029, 43.035637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187417, -0.373070, -0.908677,
		0.275018, -0.868142, 0.413151,
		-0.942995, -0.327334, -0.060103,
		33.933212, 32.557827, 43.017605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597691, 32.363857, 42.445469>,  <34.593307, 32.786961, 43.059677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597691, 32.363857, 42.445469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201210, 32.351368, 42.496914>,  <33.963322, 32.343876, 42.527782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201210, 32.351368, 42.496914>,  <34.597691, 32.363857, 42.445469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201210, 32.351368, 42.496914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114619, -0.283402, -0.952127,
		0.066179, -0.958493, 0.277330,
		-0.991203, -0.031224, 0.128616,
		33.903851, 32.341999, 42.535500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288246, 31.692188, 42.262230>,  <34.597691, 32.363857, 42.445469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288246, 31.692188, 42.262230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992744, 31.958782, 42.222157>,  <33.815445, 32.118740, 42.198112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992744, 31.958782, 42.222157>,  <34.288246, 31.692188, 42.262230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992744, 31.958782, 42.222157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126917, -0.283557, -0.950520,
		-0.661917, -0.689486, 0.294068,
		-0.738755, 0.666487, -0.100184,
		33.771118, 32.158730, 42.192101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551208, 31.377602, 41.980736>,  <34.288246, 31.692188, 42.262230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551208, 31.377602, 41.980736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545517, 31.765368, 41.882729>,  <33.542103, 31.998026, 41.823925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545517, 31.765368, 41.882729>,  <33.551208, 31.377602, 41.980736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545517, 31.765368, 41.882729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171372, -0.243785, -0.954568,
		-0.985104, 0.028410, 0.169598,
		-0.014226, 0.969413, -0.245022,
		33.541248, 32.056190, 41.809223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925156, 31.507355, 41.517021>,  <33.551208, 31.377602, 41.980736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925156, 31.507355, 41.517021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182842, 31.807863, 41.459633>,  <33.337452, 31.988169, 41.425201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182842, 31.807863, 41.459633>,  <32.925156, 31.507355, 41.517021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182842, 31.807863, 41.459633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176601, -0.036402, -0.983609,
		-0.744179, 0.658990, 0.109225,
		0.644213, 0.751270, -0.143468,
		33.376106, 32.033245, 41.416592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605484, 32.000206, 41.185230>,  <32.925156, 31.507355, 41.517021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605484, 32.000206, 41.185230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996170, 32.040005, 41.109203>,  <33.230583, 32.063885, 41.063587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996170, 32.040005, 41.109203>,  <32.605484, 32.000206, 41.185230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996170, 32.040005, 41.109203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200075, 0.102678, -0.974385,
		-0.077428, 0.989726, 0.120193,
		0.976716, 0.099492, -0.190070,
		33.289185, 32.069851, 41.052181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595093, 32.512962, 40.764881>,  <32.605484, 32.000206, 41.185230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595093, 32.512962, 40.764881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957741, 32.358082, 40.697811>,  <33.175331, 32.265152, 40.657570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957741, 32.358082, 40.697811>,  <32.595093, 32.512962, 40.764881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957741, 32.358082, 40.697811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063749, 0.267126, -0.961551,
		0.417104, 0.882450, 0.217498,
		0.906620, -0.387202, -0.167675,
		33.229729, 32.241920, 40.647507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991398, 33.075974, 40.512505>,  <32.595093, 32.512962, 40.764881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991398, 33.075974, 40.512505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165588, 32.738827, 40.386055>,  <33.270103, 32.536537, 40.310184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165588, 32.738827, 40.386055>,  <32.991398, 33.075974, 40.512505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165588, 32.738827, 40.386055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132501, 0.407360, -0.903605,
		0.890393, 0.351616, 0.289078,
		0.435481, -0.842867, -0.316121,
		33.296234, 32.485966, 40.291218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659161, 33.295815, 40.175800>,  <32.991398, 33.075974, 40.512505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659161, 33.295815, 40.175800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580067, 32.931206, 40.031559>,  <33.532608, 32.712440, 39.945015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580067, 32.931206, 40.031559>,  <33.659161, 33.295815, 40.175800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580067, 32.931206, 40.031559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292982, 0.296097, -0.909114,
		0.935447, -0.285416, 0.208509,
		-0.197736, -0.911518, -0.360605,
		33.520744, 32.657749, 39.923378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195580, 33.200901, 39.766510>,  <33.659161, 33.295815, 40.175800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195580, 33.200901, 39.766510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960983, 32.900730, 39.644600>,  <33.820225, 32.720627, 39.571453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960983, 32.900730, 39.644600>,  <34.195580, 33.200901, 39.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960983, 32.900730, 39.644600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324989, 0.126644, -0.937200,
		0.741900, -0.648705, 0.169606,
		-0.586487, -0.750428, -0.304779,
		33.785038, 32.675602, 39.553165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642895, 32.703835, 39.371635>,  <34.195580, 33.200901, 39.766510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642895, 32.703835, 39.371635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257324, 32.690552, 39.265991>,  <34.025982, 32.682583, 39.202606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257324, 32.690552, 39.265991>,  <34.642895, 32.703835, 39.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257324, 32.690552, 39.265991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258653, 0.117522, -0.958795,
		0.062870, -0.992515, -0.104695,
		-0.963922, -0.033200, -0.264106,
		33.968147, 32.680592, 39.186760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634026, 32.209515, 38.783115>,  <34.642895, 32.703835, 39.371635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634026, 32.209515, 38.783115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294167, 32.417961, 38.750774>,  <34.090252, 32.543030, 38.731369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294167, 32.417961, 38.750774>,  <34.634026, 32.209515, 38.783115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294167, 32.417961, 38.750774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230480, 0.229054, -0.945734,
		-0.474317, -0.822176, -0.314722,
		-0.849649, 0.521115, -0.080851,
		34.039272, 32.574295, 38.726521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494957, 31.931768, 38.226311>,  <34.634026, 32.209515, 38.783115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494957, 31.931768, 38.226311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259331, 32.251099, 38.276402>,  <34.117954, 32.442696, 38.306454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259331, 32.251099, 38.276402>,  <34.494957, 31.931768, 38.226311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259331, 32.251099, 38.276402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095029, 0.222323, -0.970331,
		-0.802478, -0.559689, -0.206826,
		-0.589066, 0.798324, 0.125223,
		34.082611, 32.490597, 38.313969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072582, 31.912943, 37.622787>,  <34.494957, 31.931768, 38.226311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072582, 31.912943, 37.622787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027359, 32.282047, 37.770153>,  <34.000225, 32.503510, 37.858570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027359, 32.282047, 37.770153>,  <34.072582, 31.912943, 37.622787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027359, 32.282047, 37.770153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075161, 0.361782, -0.929228,
		-0.990741, -0.132747, 0.028454,
		-0.113058, 0.922763, 0.368410,
		33.993443, 32.558876, 37.880676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468525, 32.170994, 37.313099>,  <34.072582, 31.912943, 37.622787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468525, 32.170994, 37.313099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716282, 32.468121, 37.414745>,  <33.864937, 32.646397, 37.475735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716282, 32.468121, 37.414745>,  <33.468525, 32.170994, 37.313099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716282, 32.468121, 37.414745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108938, 0.239229, -0.964833,
		-0.777487, 0.625293, 0.067256,
		0.619392, 0.742818, 0.254115,
		33.902100, 32.690968, 37.490978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283806, 32.719276, 36.895607>,  <33.468525, 32.170994, 37.313099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283806, 32.719276, 36.895607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655743, 32.797318, 37.020401>,  <33.878902, 32.844143, 37.095276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655743, 32.797318, 37.020401>,  <33.283806, 32.719276, 36.895607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655743, 32.797318, 37.020401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261708, 0.245357, -0.933439,
		-0.258662, 0.949597, 0.177084,
		0.929840, 0.195101, 0.311982,
		33.934696, 32.855846, 37.113995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464809, 33.222229, 36.412640>,  <33.283806, 32.719276, 36.895607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464809, 33.222229, 36.412640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807781, 33.101204, 36.579140>,  <34.013565, 33.028587, 36.679039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807781, 33.101204, 36.579140>,  <33.464809, 33.222229, 36.412640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807781, 33.101204, 36.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492770, 0.249668, -0.833573,
		0.148283, 0.919849, 0.363167,
		0.857432, -0.302562, 0.416253,
		34.065010, 33.010437, 36.704014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828651, 33.829636, 36.330681>,  <33.464809, 33.222229, 36.412640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828651, 33.829636, 36.330681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058029, 33.504665, 36.372871>,  <34.195656, 33.309685, 36.398186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058029, 33.504665, 36.372871>,  <33.828651, 33.829636, 36.330681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058029, 33.504665, 36.372871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530085, 0.269791, -0.803880,
		0.624635, 0.516894, 0.585364,
		0.573447, -0.812424, 0.105477,
		34.230064, 33.260937, 36.404514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541107, 33.968155, 36.346962>,  <33.828651, 33.829636, 36.330681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541107, 33.968155, 36.346962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533924, 33.577480, 36.261402>,  <34.529613, 33.343075, 36.210064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533924, 33.577480, 36.261402>,  <34.541107, 33.968155, 36.346962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533924, 33.577480, 36.261402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656518, 0.149837, -0.739279,
		0.754097, -0.153708, 0.638523,
		-0.017959, -0.976690, -0.213904,
		34.528538, 33.284473, 36.197231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257980, 33.732216, 36.257412>,  <34.541107, 33.968155, 36.346962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257980, 33.732216, 36.257412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032829, 33.476555, 36.047783>,  <34.897739, 33.323158, 35.922005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032829, 33.476555, 36.047783>,  <35.257980, 33.732216, 36.257412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032829, 33.476555, 36.047783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701082, -0.033371, -0.712299,
		0.437780, -0.768354, 0.466883,
		-0.562879, -0.639154, -0.524070,
		34.863964, 33.284809, 35.890560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769096, 33.292301, 36.118553>,  <35.257980, 33.732216, 36.257412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769096, 33.292301, 36.118553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462051, 33.208778, 35.876175>,  <35.277824, 33.158665, 35.730747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462051, 33.208778, 35.876175>,  <35.769096, 33.292301, 36.118553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462051, 33.208778, 35.876175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639323, -0.182926, -0.746863,
		0.045105, -0.960697, 0.273909,
		-0.767615, -0.208804, -0.605945,
		35.231766, 33.146137, 35.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214119, 32.975018, 35.599201>,  <35.769096, 33.292301, 36.118553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214119, 32.975018, 35.599201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848560, 33.033669, 35.447788>,  <35.629223, 33.068859, 35.356941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848560, 33.033669, 35.447788>,  <36.214119, 32.975018, 35.599201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848560, 33.033669, 35.447788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352888, -0.173944, -0.919355,
		-0.200653, -0.973777, 0.107221,
		-0.913897, 0.146635, -0.378536,
		35.574390, 33.077656, 35.334229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628143, 33.270092, 36.208633>,  <36.214119, 32.975018, 35.599201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628143, 33.270092, 36.208633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868320, 32.950230, 36.206646>,  <37.012428, 32.758312, 36.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868320, 32.950230, 36.206646>,  <36.628143, 33.270092, 36.208633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868320, 32.950230, 36.206646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173066, -0.136011, 0.975474,
		-0.780715, -0.584857, -0.220060,
		0.600443, -0.799652, -0.004967,
		37.048454, 32.710335, 36.205154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304100, 32.825684, 36.648129>,  <36.628143, 33.270092, 36.208633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304100, 32.825684, 36.648129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677971, 32.689228, 36.608124>,  <36.902294, 32.607353, 36.584122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677971, 32.689228, 36.608124>,  <36.304100, 32.825684, 36.648129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677971, 32.689228, 36.608124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085215, -0.058137, 0.994665,
		-0.345136, -0.938212, -0.025269,
		0.934676, -0.341142, -0.100015,
		36.958374, 32.586887, 36.578117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390778, 32.233532, 37.004925>,  <36.304100, 32.825684, 36.648129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390778, 32.233532, 37.004925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774662, 32.336052, 36.958858>,  <37.004993, 32.397564, 36.931217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774662, 32.336052, 36.958858>,  <36.390778, 32.233532, 37.004925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774662, 32.336052, 36.958858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139274, -0.077921, 0.987183,
		0.244038, -0.963452, -0.110477,
		0.959712, 0.256296, -0.115168,
		37.062576, 32.412941, 36.924309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705925, 31.838663, 37.544380>,  <36.390778, 32.233532, 37.004925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705925, 31.838663, 37.544380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979870, 32.105934, 37.428104>,  <37.144238, 32.266296, 37.358337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979870, 32.105934, 37.428104>,  <36.705925, 31.838663, 37.544380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979870, 32.105934, 37.428104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358779, 0.038010, 0.932648,
		0.634226, -0.743028, -0.213698,
		0.684861, 0.668180, -0.290690,
		37.185329, 32.306389, 37.340897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373180, 31.547600, 37.770447>,  <36.705925, 31.838663, 37.544380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373180, 31.547600, 37.770447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403992, 31.943235, 37.720219>,  <37.422478, 32.180618, 37.690083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403992, 31.943235, 37.720219>,  <37.373180, 31.547600, 37.770447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403992, 31.943235, 37.720219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350406, 0.091057, 0.932161,
		0.933425, -0.115805, -0.339569,
		0.077029, 0.989089, -0.125574,
		37.427101, 32.239964, 37.682545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053982, 31.819906, 38.123482>,  <37.373180, 31.547600, 37.770447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053982, 31.819906, 38.123482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821861, 32.143501, 38.085983>,  <37.682590, 32.337658, 38.063484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821861, 32.143501, 38.085983>,  <38.053982, 31.819906, 38.123482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821861, 32.143501, 38.085983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190270, 0.246605, 0.950254,
		0.791864, 0.533595, -0.297031,
		-0.580300, 0.808988, -0.093751,
		37.647770, 32.386196, 38.057858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414337, 32.454842, 38.260445>,  <38.053982, 31.819906, 38.123482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414337, 32.454842, 38.260445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032635, 32.528267, 38.354851>,  <37.803616, 32.572323, 38.411495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032635, 32.528267, 38.354851>,  <38.414337, 32.454842, 38.260445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032635, 32.528267, 38.354851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255755, 0.092229, 0.962332,
		0.154884, 0.978671, -0.134958,
		-0.954254, 0.183566, 0.236016,
		37.746357, 32.583336, 38.425655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429203, 33.030918, 38.777370>,  <38.414337, 32.454842, 38.260445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429203, 33.030918, 38.777370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060585, 32.879066, 38.809944>,  <37.839413, 32.787956, 38.829491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060585, 32.879066, 38.809944>,  <38.429203, 33.030918, 38.777370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060585, 32.879066, 38.809944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007740, 0.191741, 0.981415,
		-0.388192, 0.905050, -0.173759,
		-0.921546, -0.379632, 0.081438,
		37.784122, 32.765179, 38.834377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097198, 33.462914, 39.342899>,  <38.429203, 33.030918, 38.777370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097198, 33.462914, 39.342899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830776, 33.165783, 39.315849>,  <37.670921, 32.987503, 39.299618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830776, 33.165783, 39.315849>,  <38.097198, 33.462914, 39.342899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830776, 33.165783, 39.315849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101292, 0.000255, 0.994857,
		-0.738990, 0.669482, -0.075412,
		-0.666058, -0.742828, -0.067625,
		37.630959, 32.942936, 39.295563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477139, 33.674736, 39.775249>,  <38.097198, 33.462914, 39.342899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477139, 33.674736, 39.775249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485062, 33.278210, 39.723236>,  <37.489815, 33.040295, 39.692028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485062, 33.278210, 39.723236>,  <37.477139, 33.674736, 39.775249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485062, 33.278210, 39.723236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011194, -0.130268, 0.991416,
		-0.999741, -0.018183, -0.013677,
		0.019809, -0.991312, -0.130031,
		37.491005, 32.980816, 39.684227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879654, 33.383465, 40.167358>,  <37.477139, 33.674736, 39.775249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879654, 33.383465, 40.167358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151577, 33.093380, 40.123688>,  <37.314732, 32.919327, 40.097485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151577, 33.093380, 40.123688>,  <36.879654, 33.383465, 40.167358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151577, 33.093380, 40.123688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193326, -0.320810, 0.927204,
		-0.707447, -0.609217, -0.358293,
		0.679812, -0.725214, -0.109178,
		37.355522, 32.875816, 40.090935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563732, 32.772835, 40.457973>,  <36.879654, 33.383465, 40.167358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563732, 32.772835, 40.457973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955650, 32.697887, 40.429966>,  <37.190800, 32.652920, 40.413162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955650, 32.697887, 40.429966>,  <36.563732, 32.772835, 40.457973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955650, 32.697887, 40.429966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021357, -0.446028, 0.894764,
		-0.198880, -0.875187, -0.441015,
		0.979792, -0.187370, -0.070015,
		37.249588, 32.641678, 40.408962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651203, 32.052658, 40.591446>,  <36.563732, 32.772835, 40.457973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651203, 32.052658, 40.591446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979469, 32.262264, 40.682587>,  <37.176430, 32.388027, 40.737270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979469, 32.262264, 40.682587>,  <36.651203, 32.052658, 40.591446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979469, 32.262264, 40.682587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107833, -0.249567, 0.962335,
		0.561147, -0.814322, -0.148304,
		0.820662, 0.524019, 0.227855,
		37.225666, 32.419472, 40.750942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104523, 31.547571, 40.857323>,  <36.651203, 32.052658, 40.591446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104523, 31.547571, 40.857323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138000, 31.920872, 40.997059>,  <37.158089, 32.144852, 41.080898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138000, 31.920872, 40.997059>,  <37.104523, 31.547571, 40.857323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138000, 31.920872, 40.997059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302658, -0.310198, 0.901208,
		0.949417, -0.181157, 0.256494,
		0.083696, 0.933252, 0.349336,
		37.163109, 32.200848, 41.101860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422337, 31.443504, 41.460236>,  <37.104523, 31.547571, 40.857323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422337, 31.443504, 41.460236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299801, 31.821348, 41.507339>,  <37.226280, 32.048054, 41.535603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299801, 31.821348, 41.507339>,  <37.422337, 31.443504, 41.460236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299801, 31.821348, 41.507339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324657, -0.219965, 0.919899,
		0.894848, 0.243572, 0.374058,
		-0.306341, 0.944610, 0.117758,
		37.207897, 32.104733, 41.542667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700790, 31.601999, 42.058895>,  <37.422337, 31.443504, 41.460236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700790, 31.601999, 42.058895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442898, 31.900240, 41.991482>,  <37.288162, 32.079185, 41.951035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442898, 31.900240, 41.991482>,  <37.700790, 31.601999, 42.058895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442898, 31.900240, 41.991482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260734, -0.007247, 0.965383,
		0.718571, 0.666351, 0.199076,
		-0.644727, 0.745603, -0.168533,
		37.249481, 32.123920, 41.940922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785305, 32.233154, 42.511986>,  <37.700790, 31.601999, 42.058895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785305, 32.233154, 42.511986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396706, 32.219429, 42.418167>,  <37.163548, 32.211193, 42.361877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396706, 32.219429, 42.418167>,  <37.785305, 32.233154, 42.511986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396706, 32.219429, 42.418167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236791, 0.094929, 0.966912,
		-0.010909, 0.994893, -0.100348,
		-0.971499, -0.034310, -0.234546,
		37.105255, 32.209137, 42.347805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494854, 32.776806, 42.941681>,  <37.785305, 32.233154, 42.511986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494854, 32.776806, 42.941681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188908, 32.543701, 42.831863>,  <37.005341, 32.403839, 42.765972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188908, 32.543701, 42.831863>,  <37.494854, 32.776806, 42.941681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188908, 32.543701, 42.831863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467352, 0.208660, 0.859094,
		-0.443360, 0.785398, -0.431951,
		-0.764862, -0.582761, -0.274546,
		36.959450, 32.368874, 42.749500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828522, 33.191101, 43.056206>,  <37.494854, 32.776806, 42.941681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828522, 33.191101, 43.056206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715073, 32.808643, 43.026970>,  <36.647003, 32.579166, 43.009430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715073, 32.808643, 43.026970>,  <36.828522, 33.191101, 43.056206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715073, 32.808643, 43.026970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578708, 0.109891, 0.808097,
		-0.764628, 0.271491, -0.584497,
		-0.283622, -0.956147, -0.073089,
		36.629986, 32.521801, 43.005043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126514, 33.182945, 43.076374>,  <36.828522, 33.191101, 43.056206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126514, 33.182945, 43.076374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230774, 32.813473, 43.188713>,  <36.293331, 32.591789, 43.256115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.230774, 32.813473, 43.188713>,  <36.126514, 33.182945, 43.076374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230774, 32.813473, 43.188713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646019, 0.049306, 0.761727,
		-0.717440, -0.379979, -0.583863,
		0.260652, -0.923680, 0.280848,
		36.308971, 32.536369, 43.272968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525059, 32.820946, 43.120258>,  <36.126514, 33.182945, 43.076374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525059, 32.820946, 43.120258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793289, 32.634884, 43.351418>,  <35.954227, 32.523247, 43.490112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793289, 32.634884, 43.351418>,  <35.525059, 32.820946, 43.120258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793289, 32.634884, 43.351418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622179, 0.071600, 0.779594,
		-0.404008, -0.882330, -0.241395,
		0.670575, -0.465153, 0.577894,
		35.994461, 32.495338, 43.524784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170303, 32.301876, 43.446838>,  <35.525059, 32.820946, 43.120258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170303, 32.301876, 43.446838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504360, 32.313095, 43.666565>,  <35.704796, 32.319828, 43.798401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.504360, 32.313095, 43.666565>,  <35.170303, 32.301876, 43.446838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504360, 32.313095, 43.666565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550034, 0.044534, 0.833954,
		-0.001075, -0.998614, 0.052618,
		0.835142, 0.028045, 0.549319,
		35.754902, 32.321510, 43.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170673, 31.700523, 44.031876>,  <35.170303, 32.301876, 43.446838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170673, 31.700523, 44.031876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406498, 31.993746, 44.167553>,  <35.547993, 32.169678, 44.248959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406498, 31.993746, 44.167553>,  <35.170673, 31.700523, 44.031876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406498, 31.993746, 44.167553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562814, 0.071610, 0.823476,
		0.579363, -0.676390, 0.454792,
		0.589558, 0.733055, 0.339194,
		35.583366, 32.213661, 44.269310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313637, 31.594826, 44.725185>,  <35.170673, 31.700523, 44.031876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313637, 31.594826, 44.725185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446270, 31.972040, 44.714375>,  <35.525852, 32.198368, 44.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446270, 31.972040, 44.714375>,  <35.313637, 31.594826, 44.725185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446270, 31.972040, 44.714375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285753, 0.127700, 0.949757,
		0.899108, -0.307203, 0.311819,
		0.331587, 0.943037, -0.027031,
		35.545746, 32.254951, 44.706264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643574, 31.660826, 45.371429>,  <35.313637, 31.594826, 44.725185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643574, 31.660826, 45.371429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561539, 32.031391, 45.245129>,  <35.512318, 32.253731, 45.169350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561539, 32.031391, 45.245129>,  <35.643574, 31.660826, 45.371429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561539, 32.031391, 45.245129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205760, 0.274591, 0.939288,
		0.956871, 0.257607, 0.134303,
		-0.205089, 0.926412, -0.315753,
		35.500011, 32.309315, 45.150402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920826, 32.099319, 45.865952>,  <35.643574, 31.660826, 45.371429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920826, 32.099319, 45.865952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648731, 32.315636, 45.668034>,  <35.485474, 32.445427, 45.549282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648731, 32.315636, 45.668034>,  <35.920826, 32.099319, 45.865952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648731, 32.315636, 45.668034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246253, 0.467191, 0.849171,
		0.690390, 0.699481, -0.184628,
		-0.680236, 0.540794, -0.494794,
		35.444660, 32.477875, 45.519596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041462, 32.814423, 46.196583>,  <35.920826, 32.099319, 45.865952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041462, 32.814423, 46.196583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688988, 32.811989, 46.007488>,  <35.477505, 32.810528, 45.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688988, 32.811989, 46.007488>,  <36.041462, 32.814423, 46.196583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688988, 32.811989, 46.007488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338984, 0.705139, 0.622792,
		0.329550, 0.709043, -0.623422,
		-0.881185, -0.006089, -0.472733,
		35.424633, 32.810162, 45.865669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809418, 33.571415, 46.076878>,  <36.041462, 32.814423, 46.196583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809418, 33.571415, 46.076878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485985, 33.336445, 46.090309>,  <35.291924, 33.195465, 46.098370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485985, 33.336445, 46.090309>,  <35.809418, 33.571415, 46.076878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485985, 33.336445, 46.090309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413313, 0.607686, 0.678152,
		-0.418767, 0.534464, -0.734154,
		-0.808583, -0.587423, 0.033578,
		35.243408, 33.160217, 46.100384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176460, 33.949608, 46.006351>,  <35.809418, 33.571415, 46.076878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176460, 33.949608, 46.006351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010799, 33.619598, 46.160133>,  <34.911404, 33.421593, 46.252403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010799, 33.619598, 46.160133>,  <35.176460, 33.949608, 46.006351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010799, 33.619598, 46.160133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484297, 0.557368, 0.674387,
		-0.770670, 0.093112, -0.630396,
		-0.414156, -0.825028, 0.384453,
		34.886551, 33.372089, 46.275471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429619, 34.035347, 46.119190>,  <35.176460, 33.949608, 46.006351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429619, 34.035347, 46.119190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496033, 33.743454, 46.384499>,  <34.535881, 33.568317, 46.543682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496033, 33.743454, 46.384499>,  <34.429619, 34.035347, 46.119190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496033, 33.743454, 46.384499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496339, 0.519352, 0.695645,
		-0.852103, -0.444709, -0.275962,
		0.166038, -0.729731, 0.663267,
		34.545845, 33.524536, 46.583477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802589, 33.866863, 46.478310>,  <34.429619, 34.035347, 46.119190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802589, 33.866863, 46.478310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083496, 33.705349, 46.712841>,  <34.252041, 33.608440, 46.853561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083496, 33.705349, 46.712841>,  <33.802589, 33.866863, 46.478310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083496, 33.705349, 46.712841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404257, 0.451755, 0.795295,
		-0.586005, -0.795535, 0.154018,
		0.702263, -0.403784, 0.586331,
		34.294174, 33.584213, 46.888741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418068, 33.571537, 46.982220>,  <33.802589, 33.866863, 46.478310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418068, 33.571537, 46.982220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783840, 33.587673, 47.143311>,  <34.003304, 33.597355, 47.239964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783840, 33.587673, 47.143311>,  <33.418068, 33.571537, 46.982220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783840, 33.587673, 47.143311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396875, 0.284554, 0.872651,
		-0.079394, -0.957811, 0.276215,
		0.914432, 0.040339, 0.402723,
		34.058170, 33.599777, 47.264126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308472, 33.332020, 47.627415>,  <33.418068, 33.571537, 46.982220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308472, 33.332020, 47.627415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651302, 33.537640, 47.641136>,  <33.856998, 33.661011, 47.649368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651302, 33.537640, 47.641136>,  <33.308472, 33.332020, 47.627415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651302, 33.537640, 47.641136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190694, 0.254681, 0.948036,
		0.478607, -0.819076, 0.316307,
		0.857071, 0.514055, 0.034300,
		33.908424, 33.691856, 47.651428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731430, 33.104862, 48.276657>,  <33.308472, 33.332020, 47.627415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731430, 33.104862, 48.276657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860416, 33.470123, 48.176922>,  <33.937809, 33.689281, 48.117081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860416, 33.470123, 48.176922>,  <33.731430, 33.104862, 48.276657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860416, 33.470123, 48.176922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072065, 0.238959, 0.968352,
		0.943833, -0.330232, 0.011250,
		0.322469, 0.913151, -0.249336,
		33.957157, 33.744068, 48.102119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393276, 33.229679, 48.622879>,  <33.731430, 33.104862, 48.276657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393276, 33.229679, 48.622879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233410, 33.587132, 48.541210>,  <34.137489, 33.801601, 48.492207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233410, 33.587132, 48.541210>,  <34.393276, 33.229679, 48.622879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233410, 33.587132, 48.541210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234720, 0.315081, 0.919582,
		0.886099, 0.319605, -0.335681,
		-0.399670, 0.893631, -0.204175,
		34.113510, 33.855221, 48.479958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710716, 33.618210, 49.136307>,  <34.393276, 33.229679, 48.622879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710716, 33.618210, 49.136307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452400, 33.884720, 48.987156>,  <34.297409, 34.044624, 48.897667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452400, 33.884720, 48.987156>,  <34.710716, 33.618210, 49.136307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452400, 33.884720, 48.987156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077942, 0.543345, 0.835884,
		0.759527, 0.510742, -0.402817,
		-0.645790, 0.666272, -0.372877,
		34.258663, 34.084602, 48.875294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006386, 34.254414, 49.198631>,  <34.710716, 33.618210, 49.136307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006386, 34.254414, 49.198631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613152, 34.311611, 49.152859>,  <34.377213, 34.345932, 49.125393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613152, 34.311611, 49.152859>,  <35.006386, 34.254414, 49.198631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613152, 34.311611, 49.152859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022463, 0.525965, 0.850209,
		0.181766, 0.838399, -0.513856,
		-0.983085, 0.142996, -0.114436,
		34.318226, 34.354511, 49.118526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575726, 34.319126, 49.789394>,  <35.006386, 34.254414, 49.198631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575726, 34.319126, 49.789394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525631, 34.066490, 50.095440>,  <34.495575, 33.914909, 50.279068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525631, 34.066490, 50.095440>,  <34.575726, 34.319126, 49.789394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525631, 34.066490, 50.095440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974794, -0.065185, -0.213371,
		0.184638, -0.772554, -0.607511,
		-0.125240, -0.631595, 0.765116,
		34.488060, 33.877010, 50.324974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398888, 34.896111, 49.388054>,  <34.575726, 34.319126, 49.789394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398888, 34.896111, 49.388054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590096, 35.192677, 49.576435>,  <34.704823, 35.370617, 49.689465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590096, 35.192677, 49.576435>,  <34.398888, 34.896111, 49.388054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590096, 35.192677, 49.576435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836842, -0.221558, -0.500607,
		-0.266813, 0.633417, -0.726356,
		0.478024, 0.741414, 0.470955,
		34.733501, 35.415100, 49.717720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682873, 35.272377, 48.748787>,  <34.398888, 34.896111, 49.388054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682873, 35.272377, 48.748787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884762, 35.405323, 49.067482>,  <35.005898, 35.485088, 49.258698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884762, 35.405323, 49.067482>,  <34.682873, 35.272377, 48.748787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884762, 35.405323, 49.067482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829706, 0.068119, -0.554029,
		-0.238410, 0.940689, -0.241381,
		0.504726, 0.332361, 0.796736,
		35.036179, 35.505032, 49.306503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998093, 35.944462, 48.757885>,  <34.682873, 35.272377, 48.748787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998093, 35.944462, 48.757885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257244, 35.694733, 48.932461>,  <35.412735, 35.544895, 49.037205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257244, 35.694733, 48.932461>,  <34.998093, 35.944462, 48.757885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257244, 35.694733, 48.932461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693816, 0.247144, -0.676417,
		0.314437, 0.741044, 0.593282,
		0.647881, -0.624318, 0.436437,
		35.451607, 35.507439, 49.063393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638885, 36.440895, 48.818733>,  <34.998093, 35.944462, 48.757885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638885, 36.440895, 48.818733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800713, 36.122715, 48.999210>,  <35.897808, 35.931805, 49.107498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800713, 36.122715, 48.999210>,  <35.638885, 36.440895, 48.818733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800713, 36.122715, 48.999210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722190, -0.024780, -0.691251,
		0.561039, 0.605506, 0.564444,
		0.404570, -0.795455, 0.451193,
		35.922085, 35.884079, 49.134567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462029, 36.462013, 48.751431>,  <35.638885, 36.440895, 48.818733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462029, 36.462013, 48.751431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360432, 36.082047, 48.824257>,  <36.299473, 35.854065, 48.867950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360432, 36.082047, 48.824257>,  <36.462029, 36.462013, 48.751431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360432, 36.082047, 48.824257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674658, -0.308879, -0.670396,
		0.693056, -0.047443, 0.719321,
		-0.253989, -0.949917, 0.182063,
		36.284233, 35.797070, 48.878876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088413, 36.167149, 48.963367>,  <36.462029, 36.462013, 48.751431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088413, 36.167149, 48.963367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857483, 35.860176, 48.851841>,  <36.718925, 35.675991, 48.784924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857483, 35.860176, 48.851841>,  <37.088413, 36.167149, 48.963367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857483, 35.860176, 48.851841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766291, -0.391332, -0.509566,
		0.281948, -0.507841, 0.814004,
		-0.577325, -0.767435, -0.278819,
		36.684284, 35.629944, 48.768196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567078, 35.604652, 48.814381>,  <37.088413, 36.167149, 48.963367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567078, 35.604652, 48.814381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228809, 35.484066, 48.638222>,  <37.025848, 35.411713, 48.532524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228809, 35.484066, 48.638222>,  <37.567078, 35.604652, 48.814381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228809, 35.484066, 48.638222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533327, -0.508173, -0.676257,
		-0.019928, -0.806770, 0.590530,
		-0.845675, -0.301469, -0.440399,
		36.975105, 35.393627, 48.506104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637180, 34.914761, 48.707024>,  <37.567078, 35.604652, 48.814381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637180, 34.914761, 48.707024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347050, 35.011810, 48.449329>,  <37.172970, 35.070042, 48.294712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347050, 35.011810, 48.449329>,  <37.637180, 34.914761, 48.707024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347050, 35.011810, 48.449329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469233, -0.510502, -0.720561,
		-0.503682, -0.824946, 0.256456,
		-0.725345, 0.242596, -0.644222,
		37.129452, 35.084599, 48.256062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414146, 34.282314, 48.316441>,  <37.637180, 34.914761, 48.707024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414146, 34.282314, 48.316441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252731, 34.564594, 48.083496>,  <37.155884, 34.733963, 47.943729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252731, 34.564594, 48.083496>,  <37.414146, 34.282314, 48.316441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252731, 34.564594, 48.083496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322660, -0.485836, -0.812314,
		-0.856184, -0.515701, -0.031650,
		-0.403534, 0.705702, -0.582361,
		37.131672, 34.776306, 47.908787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059296, 33.918423, 47.683651>,  <37.414146, 34.282314, 48.316441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059296, 33.918423, 47.683651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141548, 34.306259, 47.630566>,  <37.190899, 34.538960, 47.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141548, 34.306259, 47.630566>,  <37.059296, 33.918423, 47.683651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141548, 34.306259, 47.630566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321076, -0.194945, -0.926772,
		-0.924460, 0.147964, -0.351399,
		0.205632, 0.969589, -0.132711,
		37.203239, 34.597137, 47.590752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701908, 34.027523, 47.006180>,  <37.059296, 33.918423, 47.683651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701908, 34.027523, 47.006180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971077, 34.317692, 47.064056>,  <37.132580, 34.491795, 47.098782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971077, 34.317692, 47.064056>,  <36.701908, 34.027523, 47.006180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971077, 34.317692, 47.064056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373289, -0.164150, -0.913077,
		-0.638618, 0.668441, -0.381253,
		0.672921, 0.725425, 0.144693,
		37.172955, 34.535320, 47.107464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637943, 34.462624, 46.405930>,  <36.701908, 34.027523, 47.006180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637943, 34.462624, 46.405930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000927, 34.570930, 46.534428>,  <37.218719, 34.635914, 46.611526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000927, 34.570930, 46.534428>,  <36.637943, 34.462624, 46.405930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000927, 34.570930, 46.534428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316409, 0.062586, -0.946556,
		-0.276404, 0.960607, -0.028879,
		0.907461, 0.270770, 0.321244,
		37.273167, 34.652161, 46.630802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821507, 35.051579, 45.958721>,  <36.637943, 34.462624, 46.405930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821507, 35.051579, 45.958721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126263, 34.839417, 46.107422>,  <37.309116, 34.712120, 46.196644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126263, 34.839417, 46.107422>,  <36.821507, 35.051579, 45.958721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126263, 34.839417, 46.107422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452169, 0.024606, -0.891593,
		0.463754, 0.847390, 0.258577,
		0.761889, -0.530401, 0.371752,
		37.354828, 34.680298, 46.218948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318718, 35.385609, 45.601177>,  <36.821507, 35.051579, 45.958721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318718, 35.385609, 45.601177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499123, 35.059593, 45.746670>,  <37.607365, 34.863983, 45.833965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499123, 35.059593, 45.746670>,  <37.318718, 35.385609, 45.601177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499123, 35.059593, 45.746670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411807, -0.171535, -0.894981,
		0.791837, 0.553434, 0.258274,
		0.451010, -0.815038, 0.363735,
		37.634426, 34.815083, 45.855789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977070, 35.484097, 45.442467>,  <37.318718, 35.385609, 45.601177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977070, 35.484097, 45.442467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902008, 35.091434, 45.455971>,  <37.856972, 34.855839, 45.464073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902008, 35.091434, 45.455971>,  <37.977070, 35.484097, 45.442467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902008, 35.091434, 45.455971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353395, -0.099544, -0.930163,
		0.916459, -0.162620, 0.365591,
		-0.187656, -0.981655, 0.033759,
		37.845711, 34.796940, 45.466099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403526, 35.303955, 44.931850>,  <37.977070, 35.484097, 45.442467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403526, 35.303955, 44.931850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209576, 34.956997, 44.976620>,  <38.093204, 34.748821, 45.003479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209576, 34.956997, 44.976620>,  <38.403526, 35.303955, 44.931850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209576, 34.956997, 44.976620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457391, -0.360573, -0.812884,
		0.745444, -0.342957, 0.571571,
		-0.484877, -0.867391, 0.111921,
		38.064114, 34.696781, 45.010197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854839, 34.790497, 44.913948>,  <38.403526, 35.303955, 44.931850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854839, 34.790497, 44.913948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509285, 34.618156, 44.809593>,  <38.301952, 34.514751, 44.746979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509285, 34.618156, 44.809593>,  <38.854839, 34.790497, 44.913948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509285, 34.618156, 44.809593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464320, -0.480479, -0.744007,
		0.195205, -0.763876, 0.615134,
		-0.863888, -0.430853, -0.260891,
		38.250118, 34.488899, 44.731327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032337, 34.111275, 44.736797>,  <38.854839, 34.790497, 44.913948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032337, 34.111275, 44.736797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674198, 34.166019, 44.567268>,  <38.459316, 34.198868, 44.465549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674198, 34.166019, 44.567268>,  <39.032337, 34.111275, 44.736797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674198, 34.166019, 44.567268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341214, -0.400794, -0.850257,
		-0.286231, -0.905888, 0.312151,
		-0.895346, 0.136860, -0.423821,
		38.405594, 34.207077, 44.440121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834854, 33.471745, 44.376968>,  <39.032337, 34.111275, 44.736797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834854, 33.471745, 44.376968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605064, 33.754498, 44.211899>,  <38.467190, 33.924149, 44.112858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605064, 33.754498, 44.211899>,  <38.834854, 33.471745, 44.376968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605064, 33.754498, 44.211899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087136, -0.448493, -0.889529,
		-0.813873, -0.546969, 0.196052,
		-0.574472, 0.706880, -0.412677,
		38.432724, 33.966560, 44.088097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271282, 33.123428, 43.986824>,  <38.834854, 33.471745, 44.376968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271282, 33.123428, 43.986824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276814, 33.490032, 43.826920>,  <38.280132, 33.709995, 43.730976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276814, 33.490032, 43.826920>,  <38.271282, 33.123428, 43.986824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276814, 33.490032, 43.826920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004108, -0.399746, -0.916617,
		-0.999896, 0.014317, -0.001763,
		0.013828, 0.916514, -0.399763,
		38.280960, 33.764988, 43.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880108, 33.194706, 43.386787>,  <38.271282, 33.123428, 43.986824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880108, 33.194706, 43.386787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106171, 33.520039, 43.331520>,  <38.241810, 33.715237, 43.298359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106171, 33.520039, 43.331520>,  <37.880108, 33.194706, 43.386787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106171, 33.520039, 43.331520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074001, -0.216779, -0.973412,
		-0.821656, 0.539908, -0.182702,
		0.565159, 0.813330, -0.138164,
		38.275719, 33.764038, 43.290070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642029, 33.443829, 42.712128>,  <37.880108, 33.194706, 43.386787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642029, 33.443829, 42.712128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986458, 33.640350, 42.764553>,  <38.193115, 33.758263, 42.796009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986458, 33.640350, 42.764553>,  <37.642029, 33.443829, 42.712128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986458, 33.640350, 42.764553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143412, 0.012639, -0.989582,
		-0.487840, 0.870898, -0.059576,
		0.861072, 0.491301, 0.131063,
		38.244778, 33.787743, 42.803871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660954, 34.151649, 42.259518>,  <37.642029, 33.443829, 42.712128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660954, 34.151649, 42.259518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011631, 33.986889, 42.358910>,  <38.222038, 33.888035, 42.418545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011631, 33.986889, 42.358910>,  <37.660954, 34.151649, 42.259518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011631, 33.986889, 42.358910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285210, 0.029126, -0.958022,
		0.387370, 0.910765, 0.143012,
		0.876698, -0.411898, 0.248477,
		38.274639, 33.863319, 42.433453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011280, 34.440464, 41.775696>,  <37.660954, 34.151649, 42.259518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011280, 34.440464, 41.775696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289562, 34.181450, 41.900074>,  <38.456532, 34.026043, 41.974701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289562, 34.181450, 41.900074>,  <38.011280, 34.440464, 41.775696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289562, 34.181450, 41.900074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528483, 0.168223, -0.832110,
		0.486513, 0.743235, 0.459246,
		0.695710, -0.647535, 0.310944,
		38.498276, 33.987190, 41.993359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628334, 34.723942, 41.648155>,  <38.011280, 34.440464, 41.775696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628334, 34.723942, 41.648155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710735, 34.333961, 41.681705>,  <38.760178, 34.099972, 41.701836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710735, 34.333961, 41.681705>,  <38.628334, 34.723942, 41.648155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710735, 34.333961, 41.681705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602159, 0.058733, -0.796213,
		0.771341, 0.214530, 0.599174,
		0.206003, -0.974950, 0.083878,
		38.772537, 34.041477, 41.706867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309292, 34.668957, 41.465946>,  <38.628334, 34.723942, 41.648155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309292, 34.668957, 41.465946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184467, 34.289833, 41.439796>,  <39.109573, 34.062359, 41.424107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184467, 34.289833, 41.439796>,  <39.309292, 34.668957, 41.465946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184467, 34.289833, 41.439796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565515, -0.130023, -0.814424,
		0.763419, -0.291121, 0.576576,
		-0.312064, -0.947809, -0.065371,
		39.090847, 34.005489, 41.420185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934452, 34.231117, 41.418175>,  <39.309292, 34.668957, 41.465946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934452, 34.231117, 41.418175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639252, 34.011143, 41.261757>,  <39.462132, 33.879158, 41.167904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639252, 34.011143, 41.261757>,  <39.934452, 34.231117, 41.418175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639252, 34.011143, 41.261757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531183, -0.116044, -0.839273,
		0.416172, -0.827102, 0.377759,
		-0.738001, -0.549941, -0.391049,
		39.417850, 33.846161, 41.144444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310074, 33.663685, 41.076397>,  <39.934452, 34.231117, 41.418175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310074, 33.663685, 41.076397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936852, 33.682888, 40.933792>,  <39.712917, 33.694408, 40.848228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936852, 33.682888, 40.933792>,  <40.310074, 33.663685, 41.076397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936852, 33.682888, 40.933792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340640, -0.200640, -0.918536,
		-0.115624, -0.978488, 0.170857,
		-0.933057, 0.048004, -0.356511,
		39.656933, 33.697289, 40.826839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176109, 33.088867, 40.744644>,  <40.310074, 33.663685, 41.076397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176109, 33.088867, 40.744644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921726, 33.357674, 40.592880>,  <39.769096, 33.518955, 40.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921726, 33.357674, 40.592880>,  <40.176109, 33.088867, 40.744644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921726, 33.357674, 40.592880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300460, -0.237236, -0.923820,
		-0.710830, -0.701510, -0.051040,
		-0.635960, 0.672014, -0.379410,
		39.730938, 33.559277, 40.479057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899837, 32.683590, 40.255726>,  <40.176109, 33.088867, 40.744644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899837, 32.683590, 40.255726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814861, 33.063660, 40.164482>,  <39.763874, 33.291702, 40.109734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.814861, 33.063660, 40.164482>,  <39.899837, 32.683590, 40.255726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814861, 33.063660, 40.164482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639285, -0.041407, -0.767854,
		-0.739041, -0.308955, -0.598636,
		-0.212444, 0.950175, -0.228112,
		39.751129, 33.348713, 40.096050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629242, 32.723492, 39.465218>,  <39.899837, 32.683590, 40.255726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629242, 32.723492, 39.465218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770466, 33.083710, 39.566696>,  <39.855202, 33.299843, 39.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770466, 33.083710, 39.566696>,  <39.629242, 32.723492, 39.465218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770466, 33.083710, 39.566696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446637, 0.076038, -0.891478,
		-0.822110, 0.428056, -0.375372,
		0.353060, 0.900548, 0.253697,
		39.876385, 33.353874, 39.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431744, 33.111134, 38.887394>,  <39.629242, 32.723492, 39.465218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431744, 33.111134, 38.887394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728497, 33.304237, 39.073532>,  <39.906548, 33.420101, 39.185215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728497, 33.304237, 39.073532>,  <39.431744, 33.111134, 38.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728497, 33.304237, 39.073532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481651, 0.099149, -0.870736,
		-0.466497, 0.870121, -0.158965,
		0.741885, 0.482762, 0.465347,
		39.951061, 33.449066, 39.213135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654232, 33.520561, 38.414139>,  <39.431744, 33.111134, 38.887394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654232, 33.520561, 38.414139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960224, 33.522606, 38.671753>,  <40.143818, 33.523830, 38.826321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960224, 33.522606, 38.671753>,  <39.654232, 33.520561, 38.414139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960224, 33.522606, 38.671753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642721, -0.070363, -0.762862,
		0.041418, 0.997508, -0.057111,
		0.764980, 0.005110, 0.644034,
		40.189716, 33.524139, 38.864964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124287, 34.093708, 38.235947>,  <39.654232, 33.520561, 38.414139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124287, 34.093708, 38.235947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330017, 33.808422, 38.426437>,  <40.453453, 33.637249, 38.540733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330017, 33.808422, 38.426437>,  <40.124287, 34.093708, 38.235947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330017, 33.808422, 38.426437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677821, -0.002126, -0.735224,
		0.525387, 0.700939, 0.482340,
		0.514322, -0.713218, 0.476228,
		40.484314, 33.594456, 38.569305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810177, 34.329807, 38.173096>,  <40.124287, 34.093708, 38.235947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810177, 34.329807, 38.173096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863503, 33.949612, 38.285385>,  <40.895496, 33.721497, 38.352757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863503, 33.949612, 38.285385>,  <40.810177, 34.329807, 38.173096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863503, 33.949612, 38.285385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781895, -0.073179, -0.619100,
		0.608989, 0.302028, 0.733424,
		0.133314, -0.950486, 0.280719,
		40.903496, 33.664467, 38.369602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459751, 34.258331, 38.176846>,  <40.810177, 34.329807, 38.173096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459751, 34.258331, 38.176846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333511, 33.878777, 38.177689>,  <41.257767, 33.651043, 38.178196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333511, 33.878777, 38.177689>,  <41.459751, 34.258331, 38.176846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333511, 33.878777, 38.177689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762007, -0.254766, -0.595349,
		0.565458, -0.186283, 0.803465,
		-0.315598, -0.948891, 0.002111,
		41.238831, 33.594109, 38.178322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124470, 33.807453, 38.089703>,  <41.459751, 34.258331, 38.176846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124470, 33.807453, 38.089703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820839, 33.574299, 37.973743>,  <41.638660, 33.434406, 37.904167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820839, 33.574299, 37.973743>,  <42.124470, 33.807453, 38.089703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820839, 33.574299, 37.973743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571169, -0.382640, -0.726190,
		0.312360, -0.716817, 0.623381,
		-0.759077, -0.582889, -0.289902,
		41.593117, 33.399433, 37.886772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404266, 33.168869, 37.985958>,  <42.124470, 33.807453, 38.089703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404266, 33.168869, 37.985958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072418, 33.139629, 37.764549>,  <41.873310, 33.122086, 37.631702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072418, 33.139629, 37.764549>,  <42.404266, 33.168869, 37.985958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072418, 33.139629, 37.764549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534487, -0.390606, -0.749501,
		-0.161420, -0.917651, 0.363126,
		-0.829619, -0.073102, -0.553523,
		41.823532, 33.117699, 37.598492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396400, 32.517189, 37.629612>,  <42.404266, 33.168869, 37.985958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396400, 32.517189, 37.629612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147350, 32.750454, 37.420895>,  <41.997921, 32.890411, 37.295666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147350, 32.750454, 37.420895>,  <42.396400, 32.517189, 37.629612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147350, 32.750454, 37.420895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518031, -0.192610, -0.833394,
		-0.586504, -0.789193, -0.182172,
		-0.622621, 0.583160, -0.521793,
		41.960564, 32.925400, 37.264359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285614, 32.130943, 36.945602>,  <42.396400, 32.517189, 37.629612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285614, 32.130943, 36.945602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186047, 32.512417, 36.878048>,  <42.126305, 32.741302, 36.837517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186047, 32.512417, 36.878048>,  <42.285614, 32.130943, 36.945602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186047, 32.512417, 36.878048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428243, -0.048027, -0.902387,
		-0.868705, -0.296944, -0.396455,
		-0.248918, 0.953686, -0.168886,
		42.111370, 32.798523, 36.827381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735882, 32.056599, 36.483768>,  <42.285614, 32.130943, 36.945602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735882, 32.056599, 36.483768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785931, 32.388203, 36.701790>,  <42.815960, 32.587166, 36.832603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785931, 32.388203, 36.701790>,  <42.735882, 32.056599, 36.483768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785931, 32.388203, 36.701790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349257, 0.477401, -0.806292,
		-0.928635, 0.291252, -0.229803,
		0.125126, 0.829012, 0.545053,
		42.823467, 32.636906, 36.865307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475578, 32.692902, 36.228386>,  <42.735882, 32.056599, 36.483768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475578, 32.692902, 36.228386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787651, 32.808826, 36.450130>,  <42.974895, 32.878384, 36.583176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787651, 32.808826, 36.450130>,  <42.475578, 32.692902, 36.228386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787651, 32.808826, 36.450130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382428, 0.480326, -0.789326,
		-0.495033, 0.827824, 0.263910,
		0.780186, 0.289816, 0.554361,
		43.021706, 32.895771, 36.616440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549500, 33.518501, 36.507404>,  <42.475578, 32.692902, 36.228386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549500, 33.518501, 36.507404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888603, 33.323925, 36.422852>,  <43.092064, 33.207180, 36.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.888603, 33.323925, 36.422852>,  <42.549500, 33.518501, 36.507404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888603, 33.323925, 36.422852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066895, 0.493429, -0.867210,
		0.526145, 0.721045, 0.450850,
		0.847760, -0.486438, -0.211380,
		43.142933, 33.177994, 36.359436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090405, 33.955391, 36.450459>,  <42.549500, 33.518501, 36.507404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090405, 33.955391, 36.450459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114048, 33.658108, 36.183884>,  <43.128235, 33.479736, 36.023937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114048, 33.658108, 36.183884>,  <43.090405, 33.955391, 36.450459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114048, 33.658108, 36.183884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023699, 0.666374, -0.745241,
		0.997970, 0.059843, 0.021775,
		0.059107, -0.743212, -0.666440,
		43.131779, 33.435143, 35.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591560, 34.484333, 36.784336>,  <43.090405, 33.955391, 36.450459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591560, 34.484333, 36.784336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668217, 34.152313, 36.993832>,  <43.714211, 33.953102, 37.119530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668217, 34.152313, 36.993832>,  <43.591560, 34.484333, 36.784336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668217, 34.152313, 36.993832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539638, -0.356615, -0.762637,
		0.819796, 0.428778, 0.379583,
		0.191637, -0.830045, 0.523737,
		43.725708, 33.903301, 37.150951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127953, 35.066589, 36.796074>,  <43.591560, 34.484333, 36.784336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127953, 35.066589, 36.796074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426140, 35.267113, 36.971790>,  <44.605053, 35.387424, 37.077221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426140, 35.267113, 36.971790>,  <44.127953, 35.066589, 36.796074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426140, 35.267113, 36.971790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143974, 0.764600, -0.628219,
		-0.650809, 0.405070, 0.642157,
		0.745466, 0.501304, 0.439289,
		44.649780, 35.417503, 37.103577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961170, 35.654133, 37.133274>,  <44.127953, 35.066589, 36.796074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961170, 35.654133, 37.133274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337852, 35.728638, 37.021198>,  <44.563862, 35.773338, 36.953953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.337852, 35.728638, 37.021198>,  <43.961170, 35.654133, 37.133274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337852, 35.728638, 37.021198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318013, 0.764638, -0.560533,
		0.109836, 0.616958, 0.779294,
		0.941703, 0.186259, -0.280186,
		44.620361, 35.784515, 36.937141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156372, 36.379906, 37.163834>,  <43.961170, 35.654133, 37.133274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156372, 36.379906, 37.163834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373131, 36.204777, 36.876873>,  <44.503185, 36.099701, 36.704697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.373131, 36.204777, 36.876873>,  <44.156372, 36.379906, 37.163834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373131, 36.204777, 36.876873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491975, 0.526815, -0.693128,
		0.681401, 0.728547, 0.070084,
		0.541898, -0.437818, -0.717399,
		44.535702, 36.073433, 36.661652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491596, 37.002369, 36.787903>,  <44.156372, 36.379906, 37.163834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491596, 37.002369, 36.787903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485695, 36.686035, 36.543163>,  <44.482155, 36.496235, 36.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485695, 36.686035, 36.543163>,  <44.491596, 37.002369, 36.787903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485695, 36.686035, 36.543163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416007, 0.561299, -0.715459,
		0.909242, 0.243979, -0.337275,
		-0.014755, -0.790833, -0.611854,
		44.481270, 36.448784, 36.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554111, 37.304497, 36.024612>,  <44.491596, 37.002369, 36.787903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554111, 37.304497, 36.024612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424194, 36.929123, 35.977547>,  <44.346245, 36.703899, 35.949306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424194, 36.929123, 35.977547>,  <44.554111, 37.304497, 36.024612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424194, 36.929123, 35.977547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544448, 0.287240, -0.788080,
		0.773362, -0.191900, -0.604224,
		-0.324790, -0.938439, -0.117661,
		44.326756, 36.647591, 35.942249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488792, 37.220627, 35.326008>,  <44.554111, 37.304497, 36.024612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488792, 37.220627, 35.326008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268364, 36.918415, 35.467716>,  <44.136108, 36.737087, 35.552742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.268364, 36.918415, 35.467716>,  <44.488792, 37.220627, 35.326008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268364, 36.918415, 35.467716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498592, -0.042316, -0.865803,
		0.669127, -0.653751, -0.353380,
		-0.551067, -0.755526, 0.354270,
		44.103043, 36.691757, 35.573997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379639, 36.629959, 34.734337>,  <44.488792, 37.220627, 35.326008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379639, 36.629959, 34.734337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084831, 36.574352, 34.998905>,  <43.907948, 36.540989, 35.157646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084831, 36.574352, 34.998905>,  <44.379639, 36.629959, 34.734337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084831, 36.574352, 34.998905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620125, -0.250101, -0.743569,
		0.268794, -0.958187, 0.098118,
		-0.737018, -0.139022, 0.661421,
		43.863728, 36.532646, 35.197330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022888, 35.922794, 34.662903>,  <44.379639, 36.629959, 34.734337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022888, 35.922794, 34.662903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754326, 36.155388, 34.846684>,  <43.593189, 36.294945, 34.956951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754326, 36.155388, 34.846684>,  <44.022888, 35.922794, 34.662903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754326, 36.155388, 34.846684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667845, -0.205988, -0.715229,
		-0.321252, -0.787049, 0.526641,
		-0.671402, 0.581484, 0.459453,
		43.552906, 36.329834, 34.984520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460117, 35.631382, 34.608776>,  <44.022888, 35.922794, 34.662903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460117, 35.631382, 34.608776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292732, 35.979469, 34.712788>,  <43.192303, 36.188320, 34.775192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292732, 35.979469, 34.712788>,  <43.460117, 35.631382, 34.608776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292732, 35.979469, 34.712788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472958, 0.035628, -0.880364,
		-0.775373, -0.491378, 0.396667,
		-0.418459, 0.870218, 0.260026,
		43.167194, 36.240536, 34.790794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646664, 35.488087, 34.663578>,  <43.460117, 35.631382, 34.608776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646664, 35.488087, 34.663578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733166, 35.874077, 34.604160>,  <42.785065, 36.105671, 34.568508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.733166, 35.874077, 34.604160>,  <42.646664, 35.488087, 34.663578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733166, 35.874077, 34.604160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611933, 0.015407, -0.790760,
		-0.760771, 0.261905, 0.593829,
		0.216253, 0.964971, -0.148547,
		42.798042, 36.163567, 34.559597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996227, 35.817711, 34.428814>,  <42.646664, 35.488087, 34.663578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996227, 35.817711, 34.428814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276279, 36.079235, 34.314026>,  <42.444309, 36.236149, 34.245152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276279, 36.079235, 34.314026>,  <41.996227, 35.817711, 34.428814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276279, 36.079235, 34.314026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571244, 0.271785, -0.774476,
		-0.428365, 0.706164, 0.563769,
		0.700131, 0.653808, -0.286969,
		42.486320, 36.275379, 34.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609116, 36.463783, 34.315769>,  <41.996227, 35.817711, 34.428814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609116, 36.463783, 34.315769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929043, 36.455025, 34.075836>,  <42.121002, 36.449772, 33.931877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929043, 36.455025, 34.075836>,  <41.609116, 36.463783, 34.315769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929043, 36.455025, 34.075836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564800, 0.310833, -0.764450,
		0.203186, 0.950212, 0.236245,
		0.799823, -0.021895, -0.599837,
		42.168991, 36.448456, 33.895885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516884, 36.956909, 33.933968>,  <41.609116, 36.463783, 34.315769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516884, 36.956909, 33.933968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784962, 36.766064, 33.706562>,  <41.945808, 36.651558, 33.570118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784962, 36.766064, 33.706562>,  <41.516884, 36.956909, 33.933968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784962, 36.766064, 33.706562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516011, 0.251035, -0.818971,
		0.533459, 0.842226, -0.077954,
		0.670190, -0.477112, -0.568515,
		41.986019, 36.622929, 33.536007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499142, 37.319778, 33.309006>,  <41.516884, 36.956909, 33.933968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499142, 37.319778, 33.309006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707432, 37.003719, 33.179688>,  <41.832405, 36.814083, 33.102097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707432, 37.003719, 33.179688>,  <41.499142, 37.319778, 33.309006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707432, 37.003719, 33.179688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463087, 0.056721, -0.884496,
		0.717217, 0.610292, -0.336369,
		0.520721, -0.790143, -0.323300,
		41.863647, 36.766678, 33.082699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822369, 37.534851, 32.650478>,  <41.499142, 37.319778, 33.309006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822369, 37.534851, 32.650478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793221, 37.135941, 32.645988>,  <41.775730, 36.896595, 32.643295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793221, 37.135941, 32.645988>,  <41.822369, 37.534851, 32.650478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793221, 37.135941, 32.645988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410665, 0.040263, -0.910897,
		0.908870, -0.061767, -0.412481,
		-0.072871, -0.997278, -0.011228,
		41.771358, 36.836758, 32.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189484, 37.317280, 32.027344>,  <41.822369, 37.534851, 32.650478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189484, 37.317280, 32.027344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906918, 37.062592, 32.150993>,  <41.737377, 36.909779, 32.225185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906918, 37.062592, 32.150993>,  <42.189484, 37.317280, 32.027344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906918, 37.062592, 32.150993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311937, -0.111976, -0.943481,
		0.635351, -0.762919, -0.119516,
		-0.706417, -0.636723, 0.309126,
		41.694992, 36.871574, 32.243732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080807, 37.010612, 31.454411>,  <42.189484, 37.317280, 32.027344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080807, 37.010612, 31.454411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775043, 36.879425, 31.676445>,  <41.591587, 36.800713, 31.809666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775043, 36.879425, 31.676445>,  <42.080807, 37.010612, 31.454411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775043, 36.879425, 31.676445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471066, -0.303730, -0.828158,
		0.440202, -0.894532, 0.077680,
		-0.764408, -0.327965, 0.555086,
		41.545723, 36.781036, 31.842970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979759, 36.303482, 31.216129>,  <42.080807, 37.010612, 31.454411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979759, 36.303482, 31.216129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624390, 36.401802, 31.371201>,  <41.411167, 36.460793, 31.464243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624390, 36.401802, 31.371201>,  <41.979759, 36.303482, 31.216129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624390, 36.401802, 31.371201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451350, -0.313909, -0.835311,
		-0.083622, -0.917085, 0.389824,
		-0.888420, 0.245798, 0.387677,
		41.357864, 36.475540, 31.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540127, 35.636883, 31.174873>,  <41.979759, 36.303482, 31.216129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540127, 35.636883, 31.174873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301548, 35.954388, 31.222534>,  <41.158401, 36.144890, 31.251131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301548, 35.954388, 31.222534>,  <41.540127, 35.636883, 31.174873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301548, 35.954388, 31.222534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504440, -0.255221, -0.824865,
		-0.624336, -0.552090, 0.552631,
		-0.596443, 0.793762, 0.119153,
		41.122616, 36.192516, 31.258280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892017, 35.368179, 31.007551>,  <41.540127, 35.636883, 31.174873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892017, 35.368179, 31.007551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894524, 35.763725, 30.948071>,  <40.896027, 36.001053, 30.912382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894524, 35.763725, 30.948071>,  <40.892017, 35.368179, 31.007551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894524, 35.763725, 30.948071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492923, -0.126329, -0.860853,
		-0.870050, 0.078696, 0.486641,
		0.006269, 0.988862, -0.148704,
		40.896404, 36.060383, 30.903460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200478, 35.667740, 30.918018>,  <40.892017, 35.368179, 31.007551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200478, 35.667740, 30.918018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473145, 35.900745, 30.740929>,  <40.636745, 36.040546, 30.634674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473145, 35.900745, 30.740929>,  <40.200478, 35.667740, 30.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473145, 35.900745, 30.740929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381841, -0.232927, -0.894395,
		-0.624118, 0.778733, 0.063648,
		0.681670, 0.582512, -0.442726,
		40.677647, 36.075500, 30.608110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740265, 35.879314, 30.332438>,  <40.200478, 35.667740, 30.918018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740265, 35.879314, 30.332438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119770, 35.987770, 30.267523>,  <40.347473, 36.052845, 30.228575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119770, 35.987770, 30.267523>,  <39.740265, 35.879314, 30.332438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119770, 35.987770, 30.267523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115332, -0.181012, -0.976695,
		-0.294200, 0.945365, -0.140465,
		0.948759, 0.271144, -0.162285,
		40.404396, 36.069115, 30.218838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830795, 36.435905, 29.873493>,  <39.740265, 35.879314, 30.332438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830795, 36.435905, 29.873493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129379, 36.171173, 29.845850>,  <40.308529, 36.012333, 29.829264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129379, 36.171173, 29.845850>,  <39.830795, 36.435905, 29.873493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129379, 36.171173, 29.845850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194755, -0.117986, -0.973730,
		0.636291, 0.740310, -0.216967,
		0.746461, -0.661831, -0.069106,
		40.353317, 35.972626, 29.825119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926849, 36.313416, 29.160433>,  <39.830795, 36.435905, 29.873493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926849, 36.313416, 29.160433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106087, 35.973629, 29.271879>,  <40.213631, 35.769756, 29.338747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106087, 35.973629, 29.271879>,  <39.926849, 36.313416, 29.160433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106087, 35.973629, 29.271879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085326, -0.269594, -0.959187,
		0.889905, 0.453579, -0.048322,
		0.448094, -0.849462, 0.278615,
		40.240517, 35.718792, 29.355463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590889, 36.291985, 28.955338>,  <39.926849, 36.313416, 29.160433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590889, 36.291985, 28.955338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451488, 35.917416, 28.971624>,  <40.367847, 35.692673, 28.981396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451488, 35.917416, 28.971624>,  <40.590889, 36.291985, 28.955338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451488, 35.917416, 28.971624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170844, -0.106173, -0.979561,
		0.921608, -0.334420, 0.196984,
		-0.348499, -0.936424, 0.040717,
		40.346939, 35.636490, 28.983839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050938, 35.848209, 28.508560>,  <40.590889, 36.291985, 28.955338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050938, 35.848209, 28.508560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675793, 35.722946, 28.568348>,  <40.450706, 35.647789, 28.604221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675793, 35.722946, 28.568348>,  <41.050938, 35.848209, 28.508560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675793, 35.722946, 28.568348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096938, -0.177152, -0.979398,
		0.333182, -0.933033, 0.135789,
		-0.937866, -0.313155, 0.149470,
		40.394432, 35.629002, 28.613190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850792, 36.156792, 27.817015>,  <41.050938, 35.848209, 28.508560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850792, 36.156792, 27.817015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838829, 36.384716, 28.145508>,  <40.831650, 36.521469, 28.342604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838829, 36.384716, 28.145508>,  <40.850792, 36.156792, 27.817015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838829, 36.384716, 28.145508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600776, 0.666883, -0.440834,
		-0.798858, 0.480193, -0.362272,
		-0.029907, 0.569808, 0.821234,
		40.829857, 36.555660, 28.391878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478840, 36.814548, 27.592579>,  <40.850792, 36.156792, 27.817015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478840, 36.814548, 27.592579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750927, 36.879509, 27.878498>,  <40.914177, 36.918484, 28.050049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750927, 36.879509, 27.878498>,  <40.478840, 36.814548, 27.592579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750927, 36.879509, 27.878498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370077, 0.765658, -0.526127,
		-0.632734, 0.622409, 0.460710,
		0.680213, 0.162400, 0.714798,
		40.954990, 36.928230, 28.092937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343513, 37.490425, 27.834370>,  <40.478840, 36.814548, 27.592579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343513, 37.490425, 27.834370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724091, 37.379139, 27.887053>,  <40.952438, 37.312366, 27.918661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724091, 37.379139, 27.887053>,  <40.343513, 37.490425, 27.834370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724091, 37.379139, 27.887053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286635, 0.644809, -0.708563,
		0.112209, 0.711911, 0.693247,
		0.951446, -0.278216, 0.131705,
		41.009525, 37.295673, 27.926563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833752, 38.127052, 27.981260>,  <40.343513, 37.490425, 27.834370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833752, 38.127052, 27.981260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041103, 37.832333, 27.807636>,  <41.165512, 37.655499, 27.703463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.041103, 37.832333, 27.807636>,  <40.833752, 38.127052, 27.981260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041103, 37.832333, 27.807636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451176, 0.666831, -0.593107,
		0.726448, 0.111615, 0.678097,
		0.518376, -0.736803, -0.434061,
		41.196617, 37.611290, 27.677418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544453, 38.164467, 27.950037>,  <40.833752, 38.127052, 27.981260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544453, 38.164467, 27.950037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445316, 37.946659, 27.629519>,  <41.385834, 37.815975, 27.437208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445316, 37.946659, 27.629519>,  <41.544453, 38.164467, 27.950037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445316, 37.946659, 27.629519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304284, 0.741494, -0.597995,
		0.919775, -0.392029, -0.018083,
		-0.247840, -0.544519, -0.801295,
		41.370964, 37.783302, 27.389130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722103, 38.906242, 27.760342>,  <41.544453, 38.164467, 27.950037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722103, 38.906242, 27.760342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592991, 38.912212, 28.138884>,  <41.515522, 38.915794, 28.366009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592991, 38.912212, 28.138884>,  <41.722103, 38.906242, 27.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592991, 38.912212, 28.138884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906869, -0.281332, 0.313753,
		0.270922, 0.959494, 0.077276,
		-0.322785, 0.014923, 0.946355,
		41.496155, 38.916691, 28.422791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249763, 39.335629, 28.047510>,  <41.722103, 38.906242, 27.760342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249763, 39.335629, 28.047510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042286, 39.115280, 28.309046>,  <41.917801, 38.983070, 28.465967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042286, 39.115280, 28.309046>,  <42.249763, 39.335629, 28.047510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042286, 39.115280, 28.309046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820166, -0.104650, 0.562473,
		-0.241424, 0.828006, 0.506084,
		-0.518693, -0.550867, 0.653837,
		41.886677, 38.950020, 28.505198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367306, 39.649643, 28.635721>,  <42.249763, 39.335629, 28.047510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367306, 39.649643, 28.635721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238403, 39.288315, 28.748976>,  <42.161064, 39.071518, 28.816929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238403, 39.288315, 28.748976>,  <42.367306, 39.649643, 28.635721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238403, 39.288315, 28.748976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810874, -0.109055, 0.574970,
		-0.488505, 0.414873, 0.767622,
		-0.322253, -0.903320, 0.283136,
		42.141727, 39.017319, 28.833916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714817, 39.584362, 29.251028>,  <42.367306, 39.649643, 28.635721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714817, 39.584362, 29.251028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567436, 39.214008, 29.217630>,  <42.479008, 38.991795, 29.197592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567436, 39.214008, 29.217630>,  <42.714817, 39.584362, 29.251028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567436, 39.214008, 29.217630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665029, -0.325271, 0.672262,
		-0.649598, 0.192171, 0.735590,
		-0.368455, -0.925888, -0.083496,
		42.456902, 38.936241, 29.192581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614765, 39.426460, 29.911982>,  <42.714817, 39.584362, 29.251028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614765, 39.426460, 29.911982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684059, 39.087440, 29.711325>,  <42.725636, 38.884029, 29.590931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684059, 39.087440, 29.711325>,  <42.614765, 39.426460, 29.911982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684059, 39.087440, 29.711325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772119, -0.199320, 0.603410,
		-0.611408, -0.491860, 0.619882,
		0.173238, -0.847552, -0.501641,
		42.736031, 38.833176, 29.560833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588917, 38.914848, 30.483988>,  <42.614765, 39.426460, 29.911982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588917, 38.914848, 30.483988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759811, 38.752914, 30.160610>,  <42.862347, 38.655754, 29.966583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759811, 38.752914, 30.160610>,  <42.588917, 38.914848, 30.483988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759811, 38.752914, 30.160610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697241, -0.421729, 0.579654,
		-0.575609, -0.811327, 0.102091,
		0.427234, -0.404837, -0.808442,
		42.887981, 38.631462, 29.918077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586826, 38.216396, 30.647581>,  <42.588917, 38.914848, 30.483988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586826, 38.216396, 30.647581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875694, 38.284882, 30.379505>,  <43.049015, 38.325974, 30.218660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875694, 38.284882, 30.379505>,  <42.586826, 38.216396, 30.647581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875694, 38.284882, 30.379505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615599, -0.600923, 0.509833,
		-0.315444, -0.780755, -0.539367,
		0.722173, 0.171210, -0.670189,
		43.092346, 38.336243, 30.178448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876263, 37.531609, 30.606735>,  <42.586826, 38.216396, 30.647581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876263, 37.531609, 30.606735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168827, 37.752270, 30.446379>,  <43.344368, 37.884666, 30.350164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168827, 37.752270, 30.446379>,  <42.876263, 37.531609, 30.606735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168827, 37.752270, 30.446379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677380, -0.519905, 0.520437,
		0.078676, -0.652210, -0.753945,
		0.731414, 0.551653, -0.400890,
		43.388252, 37.917767, 30.326113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.345413, 37.045979, 30.458780>,  <42.876263, 37.531609, 30.606735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.345413, 37.045979, 30.458780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541290, 37.393204, 30.491438>,  <43.658817, 37.601540, 30.511032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541290, 37.393204, 30.491438>,  <43.345413, 37.045979, 30.458780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541290, 37.393204, 30.491438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730103, -0.459443, 0.505827,
		0.476601, -0.188093, -0.858762,
		0.489695, 0.868063, 0.081644,
		43.688198, 37.653622, 30.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083771, 36.889366, 30.323986>,  <43.345413, 37.045979, 30.458780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083771, 36.889366, 30.323986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067959, 37.232922, 30.528242>,  <44.058472, 37.439053, 30.650795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067959, 37.232922, 30.528242>,  <44.083771, 36.889366, 30.323986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067959, 37.232922, 30.528242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749557, -0.312453, 0.583555,
		0.660758, 0.405820, -0.631434,
		-0.039525, 0.858885, 0.510641,
		44.056103, 37.490585, 30.681435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749847, 36.925941, 30.529991>,  <44.083771, 36.889366, 30.323986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749847, 36.925941, 30.529991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580486, 37.193493, 30.774395>,  <44.478870, 37.354023, 30.921038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580486, 37.193493, 30.774395>,  <44.749847, 36.925941, 30.529991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580486, 37.193493, 30.774395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615736, -0.282258, 0.735663,
		0.664532, 0.687700, -0.292345,
		-0.423399, 0.668879, 0.611011,
		44.453468, 37.394157, 30.957699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266369, 37.281441, 30.879900>,  <44.749847, 36.925941, 30.529991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266369, 37.281441, 30.879900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935257, 37.327282, 31.099592>,  <44.736591, 37.354786, 31.231407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935257, 37.327282, 31.099592>,  <45.266369, 37.281441, 30.879900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935257, 37.327282, 31.099592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519089, -0.215067, 0.827220,
		0.212920, 0.969852, 0.118540,
		-0.827775, 0.114599, 0.549231,
		44.686924, 37.361660, 31.264362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554344, 37.589569, 31.506699>,  <45.266369, 37.281441, 30.879900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554344, 37.589569, 31.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194641, 37.436390, 31.591257>,  <44.978821, 37.344482, 31.641993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194641, 37.436390, 31.591257>,  <45.554344, 37.589569, 31.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194641, 37.436390, 31.591257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367438, -0.399096, 0.840067,
		-0.237333, 0.833112, 0.499598,
		-0.899257, -0.382946, 0.211398,
		44.924866, 37.321507, 31.654676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579094, 37.544617, 32.194881>,  <45.554344, 37.589569, 31.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579094, 37.544617, 32.194881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256657, 37.324791, 32.107075>,  <45.063194, 37.192894, 32.054390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256657, 37.324791, 32.107075>,  <45.579094, 37.544617, 32.194881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256657, 37.324791, 32.107075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167456, -0.567602, 0.806093,
		-0.567602, 0.613026, 0.549569,
		-0.806093, -0.549569, -0.219517,
		45.014828, 37.159920, 32.041218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283024, 37.371105, 32.789516>,  <45.579094, 37.544617, 32.194881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283024, 37.371105, 32.789516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131470, 37.101372, 32.535992>,  <45.040535, 36.939529, 32.383877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131470, 37.101372, 32.535992>,  <45.283024, 37.371105, 32.789516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131470, 37.101372, 32.535992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049592, -0.669092, 0.741523,
		-0.924113, 0.312386, 0.220069,
		-0.378887, -0.674337, -0.633809,
		45.017803, 36.899071, 32.345848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588409, 37.205738, 33.052250>,  <45.283024, 37.371105, 32.789516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588409, 37.205738, 33.052250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758278, 36.914909, 32.836460>,  <44.860199, 36.740414, 32.706985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758278, 36.914909, 32.836460>,  <44.588409, 37.205738, 33.052250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758278, 36.914909, 32.836460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150371, -0.644240, 0.749896,
		-0.892774, -0.237336, -0.382917,
		0.424668, -0.727068, -0.539472,
		44.885677, 36.696789, 32.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374672, 36.490475, 33.361366>,  <44.588409, 37.205738, 33.052250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374672, 36.490475, 33.361366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693943, 36.414295, 33.132755>,  <44.885506, 36.368587, 32.995590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693943, 36.414295, 33.132755>,  <44.374672, 36.490475, 33.361366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693943, 36.414295, 33.132755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246314, -0.762616, 0.598119,
		-0.549768, -0.618179, -0.561792,
		0.798176, -0.190450, -0.571528,
		44.933395, 36.357159, 32.961296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447262, 35.773468, 33.393372>,  <44.374672, 36.490475, 33.361366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447262, 35.773468, 33.393372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802952, 35.908566, 33.269947>,  <45.016365, 35.989624, 33.195892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802952, 35.908566, 33.269947>,  <44.447262, 35.773468, 33.393372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802952, 35.908566, 33.269947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451588, -0.540167, 0.710133,
		0.073170, -0.770809, -0.632851,
		0.889221, 0.337748, -0.308564,
		45.069717, 36.009892, 33.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868916, 35.175613, 33.522018>,  <44.447262, 35.773468, 33.393372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868916, 35.175613, 33.522018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136925, 35.468735, 33.474571>,  <45.297729, 35.644608, 33.446102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.136925, 35.468735, 33.474571>,  <44.868916, 35.175613, 33.522018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136925, 35.468735, 33.474571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537409, -0.368592, 0.758506,
		0.512117, -0.571959, -0.640781,
		0.670020, 0.732805, -0.118614,
		45.337933, 35.688576, 33.438988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478634, 34.901318, 33.570858>,  <44.868916, 35.175613, 33.522018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478634, 34.901318, 33.570858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571568, 35.280426, 33.658260>,  <45.627327, 35.507893, 33.710701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571568, 35.280426, 33.658260>,  <45.478634, 34.901318, 33.570858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571568, 35.280426, 33.658260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635290, -0.317983, 0.703771,
		0.736496, -0.024699, -0.675991,
		0.232336, 0.947775, 0.218503,
		45.641270, 35.564758, 33.723812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152493, 34.974541, 33.457279>,  <45.478634, 34.901318, 33.570858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152493, 34.974541, 33.457279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049614, 35.257332, 33.720802>,  <45.987888, 35.427006, 33.878918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049614, 35.257332, 33.720802>,  <46.152493, 34.974541, 33.457279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049614, 35.257332, 33.720802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761989, -0.270918, 0.588197,
		0.594327, 0.653287, -0.469032,
		-0.257193, 0.706979, 0.658812,
		45.972458, 35.469425, 33.918446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.667679, 35.206806, 33.641602>,  <46.152493, 34.974541, 33.457279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.667679, 35.206806, 33.641602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422634, 35.325298, 33.934708>,  <46.275608, 35.396393, 34.110573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422634, 35.325298, 33.934708>,  <46.667679, 35.206806, 33.641602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422634, 35.325298, 33.934708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711579, -0.196827, 0.674474,
		0.344031, 0.934614, -0.090215,
		-0.612616, 0.296235, 0.732766,
		46.238850, 35.414169, 34.154537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976402, 35.750038, 33.971508>,  <46.667679, 35.206806, 33.641602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976402, 35.750038, 33.971508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739994, 35.530678, 34.208134>,  <46.598148, 35.399063, 34.350109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.739994, 35.530678, 34.208134>,  <46.976402, 35.750038, 33.971508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.739994, 35.530678, 34.208134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764180, -0.145818, 0.628304,
		-0.258300, 0.823405, 0.505257,
		-0.591024, -0.548399, 0.591565,
		46.562687, 35.366158, 34.385605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.989357, 36.024223, 34.703060>,  <46.976402, 35.750038, 33.971508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.989357, 36.024223, 34.703060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.909904, 35.636684, 34.643883>,  <46.862232, 35.404163, 34.608376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.909904, 35.636684, 34.643883>,  <46.989357, 36.024223, 34.703060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909904, 35.636684, 34.643883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853782, -0.245174, 0.459289,
		-0.481251, -0.035085, 0.875880,
		-0.198629, -0.968844, -0.147945,
		46.850315, 35.346031, 34.599499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.002342, 35.743931, 35.363266>,  <46.989357, 36.024223, 34.703060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.002342, 35.743931, 35.363266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121513, 35.535435, 35.043381>,  <47.193016, 35.410339, 34.851448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.121513, 35.535435, 35.043381>,  <47.002342, 35.743931, 35.363266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.121513, 35.535435, 35.043381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925684, -0.046838, 0.375386,
		-0.233123, -0.852125, 0.468547,
		0.297930, -0.521238, -0.799718,
		47.210892, 35.379063, 34.803467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380611, 35.074688, 35.518467>,  <47.002342, 35.743931, 35.363266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380611, 35.074688, 35.518467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464565, 35.293335, 35.194206>,  <47.514938, 35.424522, 34.999649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.464565, 35.293335, 35.194206>,  <47.380611, 35.074688, 35.518467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.464565, 35.293335, 35.194206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960092, 0.041534, 0.276584,
		0.184856, -0.836349, -0.516089,
		0.209886, 0.546621, -0.810650,
		47.527531, 35.457321, 34.951012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.718807, 34.648388, 35.038937>,  <47.380611, 35.074688, 35.518467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.718807, 34.648388, 35.038937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814774, 35.035110, 35.074089>,  <47.872353, 35.267143, 35.095181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814774, 35.035110, 35.074089>,  <47.718807, 34.648388, 35.038937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.814774, 35.035110, 35.074089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949266, -0.252592, 0.187328,
		0.203309, 0.038481, -0.978358,
		0.239916, 0.966807, 0.087883,
		47.886749, 35.325153, 35.100452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.198471, 37.750122, 43.093861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.829498, 37.799862, 42.947620>,  <34.608116, 37.829704, 42.859879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.829498, 37.799862, 42.947620>,  <35.198471, 37.750122, 43.093861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829498, 37.799862, 42.947620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356573, -0.089204, -0.929999,
		-0.148259, -0.988220, 0.037945,
		-0.922429, 0.124350, -0.365598,
		34.552769, 37.837166, 42.837940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139385, 37.185078, 42.606262>,  <35.198471, 37.750122, 43.093861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139385, 37.185078, 42.606262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846527, 37.438587, 42.506420>,  <34.670815, 37.590691, 42.446514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846527, 37.438587, 42.506420>,  <35.139385, 37.185078, 42.606262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846527, 37.438587, 42.506420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259766, -0.078959, -0.962438,
		-0.629675, -0.769479, -0.106823,
		-0.732142, 0.633772, -0.249603,
		34.626884, 37.628719, 42.431538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766392, 36.873016, 41.920635>,  <35.139385, 37.185078, 42.606262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766392, 36.873016, 41.920635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694920, 37.266415, 41.931957>,  <34.652039, 37.502453, 41.938751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694920, 37.266415, 41.931957>,  <34.766392, 36.873016, 41.920635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694920, 37.266415, 41.931957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278298, 0.078113, -0.957313,
		-0.943729, -0.163173, -0.287663,
		-0.178678, 0.983500, 0.028306,
		34.641315, 37.561466, 41.940449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268711, 36.946949, 41.449448>,  <34.766392, 36.873016, 41.920635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268711, 36.946949, 41.449448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477238, 37.285412, 41.493710>,  <34.602356, 37.488491, 41.520267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.477238, 37.285412, 41.493710>,  <34.268711, 36.946949, 41.449448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477238, 37.285412, 41.493710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304482, -0.063303, -0.950412,
		-0.797193, 0.529161, -0.290641,
		0.521319, 0.846157, 0.110656,
		34.633633, 37.539257, 41.526905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040279, 37.327652, 40.864082>,  <34.268711, 36.946949, 41.449448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040279, 37.327652, 40.864082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378387, 37.493446, 40.998974>,  <34.581253, 37.592922, 41.079906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.378387, 37.493446, 40.998974>,  <34.040279, 37.327652, 40.864082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378387, 37.493446, 40.998974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249356, 0.252195, -0.934997,
		-0.472590, 0.874413, 0.109818,
		0.845270, 0.414486, 0.337225,
		34.631969, 37.617794, 41.100140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119267, 37.937538, 40.524372>,  <34.040279, 37.327652, 40.864082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119267, 37.937538, 40.524372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494068, 37.867275, 40.645153>,  <34.718948, 37.825119, 40.717621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.494068, 37.867275, 40.645153>,  <34.119267, 37.937538, 40.524372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494068, 37.867275, 40.645153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297351, -0.052578, -0.953319,
		0.183331, 0.983047, 0.002966,
		0.937002, -0.175655, 0.301949,
		34.775169, 37.814579, 40.735737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492790, 38.370449, 40.039742>,  <34.119267, 37.937538, 40.524372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492790, 38.370449, 40.039742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763172, 38.110741, 40.179188>,  <34.925400, 37.954914, 40.262856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763172, 38.110741, 40.179188>,  <34.492790, 38.370449, 40.039742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763172, 38.110741, 40.179188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271899, -0.219949, -0.936853,
		0.684949, 0.728058, 0.027860,
		0.675956, -0.649271, 0.348612,
		34.965958, 37.915958, 40.283772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035950, 38.406647, 39.630489>,  <34.492790, 38.370449, 40.039742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035950, 38.406647, 39.630489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109287, 38.049568, 39.795155>,  <35.153290, 37.835320, 39.893955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.109287, 38.049568, 39.795155>,  <35.035950, 38.406647, 39.630489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109287, 38.049568, 39.795155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380625, -0.321636, -0.866992,
		0.906371, 0.315652, 0.280812,
		0.183349, -0.892700, 0.411666,
		35.164291, 37.781757, 39.918655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717621, 38.167549, 39.351505>,  <35.035950, 38.406647, 39.630489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717621, 38.167549, 39.351505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577827, 37.823242, 39.499527>,  <35.493954, 37.616657, 39.588341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.577827, 37.823242, 39.499527>,  <35.717621, 38.167549, 39.351505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577827, 37.823242, 39.499527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430053, -0.498263, -0.752854,
		0.832418, -0.103965, 0.544309,
		-0.349479, -0.860770, 0.370052,
		35.472984, 37.565010, 39.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264305, 37.669628, 39.582180>,  <35.717621, 38.167549, 39.351505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264305, 37.669628, 39.582180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.938210, 37.460407, 39.482735>,  <35.742554, 37.334877, 39.423065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.938210, 37.460407, 39.482735>,  <36.264305, 37.669628, 39.582180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938210, 37.460407, 39.482735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531661, -0.505726, -0.679395,
		0.229626, -0.686047, 0.690371,
		-0.815235, -0.523050, -0.248617,
		35.693638, 37.303493, 39.408150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452488, 37.030785, 39.672184>,  <36.264305, 37.669628, 39.582180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452488, 37.030785, 39.672184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140949, 37.026829, 39.421329>,  <35.954025, 37.024456, 39.270817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140949, 37.026829, 39.421329>,  <36.452488, 37.030785, 39.672184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140949, 37.026829, 39.421329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557124, -0.470203, -0.684487,
		-0.288115, -0.882503, 0.371723,
		-0.778847, -0.009885, -0.627136,
		35.907295, 37.023865, 39.233189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362614, 36.346729, 39.498405>,  <36.452488, 37.030785, 39.672184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362614, 36.346729, 39.498405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186081, 36.556419, 39.207088>,  <36.080162, 36.682236, 39.032299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.186081, 36.556419, 39.207088>,  <36.362614, 36.346729, 39.498405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186081, 36.556419, 39.207088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481297, -0.546700, -0.685180,
		-0.757348, -0.652919, -0.011031,
		-0.441336, 0.524229, -0.728290,
		36.053680, 36.713688, 38.988602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330616, 35.759689, 39.010517>,  <36.362614, 36.346729, 39.498405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330616, 35.759689, 39.010517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220436, 36.084377, 38.804516>,  <36.154327, 36.279190, 38.680916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.220436, 36.084377, 38.804516>,  <36.330616, 35.759689, 39.010517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220436, 36.084377, 38.804516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448715, -0.365224, -0.815639,
		-0.850166, -0.455758, -0.263631,
		-0.275450, 0.811724, -0.515006,
		36.137802, 36.327896, 38.650013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986897, 35.565983, 38.317867>,  <36.330616, 35.759689, 39.010517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986897, 35.565983, 38.317867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122463, 35.938187, 38.262314>,  <36.203804, 36.161507, 38.228981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122463, 35.938187, 38.262314>,  <35.986897, 35.565983, 38.317867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122463, 35.938187, 38.262314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566250, -0.319638, -0.759732,
		-0.751328, 0.178848, -0.635232,
		0.338921, 0.930508, -0.138880,
		36.224140, 36.217339, 38.220650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921295, 35.649792, 37.637318>,  <35.986897, 35.565983, 38.317867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921295, 35.649792, 37.637318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204823, 35.908268, 37.750465>,  <36.374939, 36.063354, 37.818356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204823, 35.908268, 37.750465>,  <35.921295, 35.649792, 37.637318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204823, 35.908268, 37.750465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598189, -0.338126, -0.726526,
		-0.373825, 0.684188, -0.626212,
		0.708819, 0.646187, 0.282873,
		36.417469, 36.102123, 37.835327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205196, 35.756836, 37.012390>,  <35.921295, 35.649792, 37.637318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205196, 35.756836, 37.012390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469402, 35.874153, 37.288853>,  <36.627926, 35.944542, 37.454731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469402, 35.874153, 37.288853>,  <36.205196, 35.756836, 37.012390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469402, 35.874153, 37.288853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749612, -0.205532, -0.629157,
		-0.042472, 0.933668, -0.355613,
		0.660513, 0.293293, 0.691159,
		36.667557, 35.962143, 37.496201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554188, 36.299828, 36.730057>,  <36.205196, 35.756836, 37.012390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554188, 36.299828, 36.730057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796772, 36.144508, 37.007595>,  <36.942322, 36.051315, 37.174118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.796772, 36.144508, 37.007595>,  <36.554188, 36.299828, 36.730057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796772, 36.144508, 37.007595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693331, -0.168917, -0.700541,
		0.389223, 0.905920, 0.166778,
		0.606463, -0.388299, 0.693849,
		36.978710, 36.028019, 37.215752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119961, 36.643589, 36.594543>,  <36.554188, 36.299828, 36.730057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119961, 36.643589, 36.594543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233654, 36.316536, 36.794819>,  <37.301868, 36.120304, 36.914986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.233654, 36.316536, 36.794819>,  <37.119961, 36.643589, 36.594543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233654, 36.316536, 36.794819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693514, -0.185255, -0.696218,
		0.662004, 0.545125, 0.514382,
		0.284234, -0.817630, 0.500691,
		37.318924, 36.071247, 36.945026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881393, 36.626274, 36.628899>,  <37.119961, 36.643589, 36.594543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881393, 36.626274, 36.628899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770126, 36.246593, 36.687733>,  <37.703365, 36.018784, 36.723034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.770126, 36.246593, 36.687733>,  <37.881393, 36.626274, 36.628899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770126, 36.246593, 36.687733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658416, -0.299916, -0.690318,
		0.699365, -0.095183, 0.708398,
		-0.278167, -0.949205, 0.147081,
		37.686676, 35.961830, 36.731857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518368, 36.343925, 36.590187>,  <37.881393, 36.626274, 36.628899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518368, 36.343925, 36.590187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271915, 36.032513, 36.542416>,  <38.124043, 35.845665, 36.513752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.271915, 36.032513, 36.542416>,  <38.518368, 36.343925, 36.590187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271915, 36.032513, 36.542416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671544, -0.440003, -0.596176,
		0.411594, -0.447526, 0.793921,
		-0.616132, -0.778535, -0.119431,
		38.087074, 35.798950, 36.506588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903988, 35.742031, 36.650673>,  <38.518368, 36.343925, 36.590187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903988, 35.742031, 36.650673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572445, 35.619476, 36.463428>,  <38.373520, 35.545944, 36.351082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.572445, 35.619476, 36.463428>,  <38.903988, 35.742031, 36.650673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572445, 35.619476, 36.463428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559443, -0.447066, -0.697965,
		0.004570, -0.840393, 0.541957,
		-0.828856, -0.306384, -0.468110,
		38.323788, 35.527561, 36.322994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030090, 35.106571, 36.915100>,  <38.903988, 35.742031, 36.650673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030090, 35.106571, 36.915100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754871, 35.391197, 36.972042>,  <38.589741, 35.561974, 37.006207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754871, 35.391197, 36.972042>,  <39.030090, 35.106571, 36.915100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754871, 35.391197, 36.972042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386865, 0.193719, 0.901559,
		0.613940, 0.675389, -0.408567,
		-0.688050, 0.711564, 0.142352,
		38.548458, 35.604668, 37.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565151, 35.027096, 36.327686>,  <39.030090, 35.106571, 36.915100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565151, 35.027096, 36.327686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.920635, 35.144714, 36.468391>,  <40.133926, 35.215286, 36.552814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.920635, 35.144714, 36.468391>,  <39.565151, 35.027096, 36.327686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920635, 35.144714, 36.468391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396616, 0.108207, 0.911585,
		0.229990, -0.949645, 0.212789,
		0.888707, 0.294051, 0.351757,
		40.187248, 35.232929, 36.573917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703892, 34.701447, 37.029789>,  <39.565151, 35.027096, 36.327686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703892, 34.701447, 37.029789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910053, 35.043442, 37.006634>,  <40.033752, 35.248638, 36.992741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910053, 35.043442, 37.006634>,  <39.703892, 34.701447, 37.029789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910053, 35.043442, 37.006634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461806, 0.334023, 0.821684,
		0.721866, -0.396769, 0.566996,
		0.515408, 0.854987, -0.057890,
		40.064674, 35.299938, 36.989265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863808, 34.774357, 37.661850>,  <39.703892, 34.701447, 37.029789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863808, 34.774357, 37.661850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940826, 35.148849, 37.544281>,  <39.987038, 35.373547, 37.473740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940826, 35.148849, 37.544281>,  <39.863808, 34.774357, 37.661850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940826, 35.148849, 37.544281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273728, 0.338882, 0.900129,
		0.942337, -0.092859, 0.321524,
		0.192544, 0.936235, -0.293923,
		39.998589, 35.429722, 37.456104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982483, 35.101841, 38.289787>,  <39.863808, 34.774357, 37.661850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982483, 35.101841, 38.289787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963207, 35.425579, 38.055649>,  <39.951641, 35.619823, 37.915165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963207, 35.425579, 38.055649>,  <39.982483, 35.101841, 38.289787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963207, 35.425579, 38.055649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204284, 0.565657, 0.798937,
		0.977725, 0.158081, 0.138076,
		-0.048193, 0.809347, -0.585350,
		39.948750, 35.668385, 37.880043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481060, 35.514591, 38.558258>,  <39.982483, 35.101841, 38.289787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481060, 35.514591, 38.558258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183918, 35.720711, 38.387314>,  <40.005634, 35.844383, 38.284748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.183918, 35.720711, 38.387314>,  <40.481060, 35.514591, 38.558258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183918, 35.720711, 38.387314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178587, 0.462709, 0.868336,
		0.645196, 0.721367, -0.251699,
		-0.742852, 0.515296, -0.427365,
		39.961063, 35.875301, 38.259106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571068, 36.129196, 38.830635>,  <40.481060, 35.514591, 38.558258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571068, 36.129196, 38.830635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.190651, 36.107857, 38.708866>,  <39.962402, 36.095055, 38.635803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.190651, 36.107857, 38.708866>,  <40.571068, 36.129196, 38.830635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190651, 36.107857, 38.708866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288940, 0.503097, 0.814498,
		0.109706, 0.862582, -0.493879,
		-0.951041, -0.053346, -0.304427,
		39.905338, 36.091854, 38.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217819, 36.778076, 38.813957>,  <40.571068, 36.129196, 38.830635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217819, 36.778076, 38.813957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.903179, 36.533318, 38.847054>,  <39.714397, 36.386463, 38.866913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.903179, 36.533318, 38.847054>,  <40.217819, 36.778076, 38.813957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903179, 36.533318, 38.847054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367407, 0.571517, 0.733744,
		-0.496265, 0.546760, -0.674369,
		-0.786596, -0.611900, 0.082740,
		39.667202, 36.349747, 38.871876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652534, 37.258896, 39.005154>,  <40.217819, 36.778076, 38.813957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652534, 37.258896, 39.005154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.559566, 36.878647, 39.087421>,  <39.503784, 36.650497, 39.136784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.559566, 36.878647, 39.087421>,  <39.652534, 37.258896, 39.005154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559566, 36.878647, 39.087421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249288, 0.262621, 0.932140,
		-0.940125, 0.165379, -0.298017,
		-0.232422, -0.950621, 0.205670,
		39.489841, 36.593460, 39.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042099, 37.317722, 39.263790>,  <39.652534, 37.258896, 39.005154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042099, 37.317722, 39.263790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113792, 36.952049, 39.409195>,  <39.156807, 36.732647, 39.496437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113792, 36.952049, 39.409195>,  <39.042099, 37.317722, 39.263790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113792, 36.952049, 39.409195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523628, 0.224169, 0.821926,
		-0.832881, -0.337662, -0.438513,
		0.179232, -0.914184, 0.363515,
		39.167561, 36.677795, 39.518250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411152, 37.102009, 39.519085>,  <39.042099, 37.317722, 39.263790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411152, 37.102009, 39.519085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692490, 36.892715, 39.711559>,  <38.861290, 36.767139, 39.827042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.692490, 36.892715, 39.711559>,  <38.411152, 37.102009, 39.519085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692490, 36.892715, 39.711559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355732, 0.326976, 0.875523,
		-0.615439, -0.786964, 0.043845,
		0.703341, -0.523234, 0.481182,
		38.903492, 36.735744, 39.855915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124641, 36.958302, 40.107319>,  <38.411152, 37.102009, 39.519085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124641, 36.958302, 40.107319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489902, 36.823830, 40.199528>,  <38.709057, 36.743149, 40.254852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.489902, 36.823830, 40.199528>,  <38.124641, 36.958302, 40.107319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489902, 36.823830, 40.199528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258355, -0.039884, 0.965226,
		-0.315292, -0.940954, -0.123273,
		0.913151, -0.336177, 0.230525,
		38.763847, 36.722977, 40.268684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044994, 36.400578, 40.493645>,  <38.124641, 36.958302, 40.107319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044994, 36.400578, 40.493645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397823, 36.542152, 40.618015>,  <38.609520, 36.627098, 40.692638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.397823, 36.542152, 40.618015>,  <38.044994, 36.400578, 40.493645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397823, 36.542152, 40.618015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257294, -0.190953, 0.947279,
		0.394653, -0.915567, -0.077368,
		0.882071, 0.353941, 0.310930,
		38.662445, 36.648335, 40.711296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348473, 35.876614, 41.060581>,  <38.044994, 36.400578, 40.493645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348473, 35.876614, 41.060581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495735, 36.247498, 41.088112>,  <38.584091, 36.470028, 41.104630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495735, 36.247498, 41.088112>,  <38.348473, 35.876614, 41.060581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495735, 36.247498, 41.088112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114919, -0.028082, 0.992978,
		0.922634, -0.373482, 0.096215,
		0.368158, 0.927212, 0.068830,
		38.606182, 36.525661, 41.108761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766949, 35.862072, 41.720528>,  <38.348473, 35.876614, 41.060581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766949, 35.862072, 41.720528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660347, 36.239788, 41.643291>,  <38.596386, 36.466419, 41.596951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.660347, 36.239788, 41.643291>,  <38.766949, 35.862072, 41.720528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660347, 36.239788, 41.643291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374507, 0.083145, 0.923489,
		0.888100, 0.318428, 0.331486,
		-0.266504, 0.944294, -0.193094,
		38.580395, 36.523075, 41.585361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061977, 36.312874, 42.305550>,  <38.766949, 35.862072, 41.720528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061977, 36.312874, 42.305550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743767, 36.490620, 42.140781>,  <38.552841, 36.597267, 42.041920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743767, 36.490620, 42.140781>,  <39.061977, 36.312874, 42.305550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743767, 36.490620, 42.140781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380816, 0.162099, 0.910331,
		0.471293, 0.881057, 0.040268,
		-0.795527, 0.444367, -0.411917,
		38.505108, 36.623928, 42.017208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931549, 36.894642, 42.776405>,  <39.061977, 36.312874, 42.305550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931549, 36.894642, 42.776405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601429, 36.903004, 42.550682>,  <38.403358, 36.908020, 42.415249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601429, 36.903004, 42.550682>,  <38.931549, 36.894642, 42.776405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601429, 36.903004, 42.550682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499180, 0.440199, 0.746354,
		0.264014, 0.897656, -0.352858,
		-0.825297, 0.020908, -0.564311,
		38.353840, 36.909275, 42.381390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621632, 37.470337, 42.996391>,  <38.931549, 36.894642, 42.776405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621632, 37.470337, 42.996391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335159, 37.250313, 42.824570>,  <38.163277, 37.118298, 42.721478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335159, 37.250313, 42.824570>,  <38.621632, 37.470337, 42.996391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335159, 37.250313, 42.824570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592200, 0.153274, 0.791079,
		-0.369304, 0.820937, -0.435519,
		-0.716180, -0.550064, -0.429554,
		38.120304, 37.085293, 42.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991291, 37.744003, 43.160713>,  <38.621632, 37.470337, 42.996391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991291, 37.744003, 43.160713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861614, 37.375088, 43.076534>,  <37.783810, 37.153740, 43.026028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861614, 37.375088, 43.076534>,  <37.991291, 37.744003, 43.160713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861614, 37.375088, 43.076534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729492, 0.102095, 0.676327,
		-0.602281, 0.372782, -0.705898,
		-0.324191, -0.922286, -0.210452,
		37.764359, 37.098404, 43.013397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.297802, 37.782948, 42.880798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323601, 37.406555, 43.013706>,  <37.339081, 37.180721, 43.093452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323601, 37.406555, 43.013706>,  <37.297802, 37.782948, 42.880798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323601, 37.406555, 43.013706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708167, 0.191438, 0.679597,
		-0.703094, -0.279133, -0.654022,
		0.064494, -0.940977, 0.332271,
		37.342949, 37.124264, 43.113388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637630, 37.573906, 43.083336>,  <37.297802, 37.782948, 42.880798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637630, 37.573906, 43.083336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852459, 37.290981, 43.267189>,  <36.981358, 37.121227, 43.377502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.852459, 37.290981, 43.267189>,  <36.637630, 37.573906, 43.083336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852459, 37.290981, 43.267189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630018, 0.025979, 0.776146,
		-0.560916, -0.706426, -0.431665,
		0.537076, -0.707310, 0.459634,
		37.013580, 37.078789, 43.405079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141228, 37.115623, 43.237041>,  <36.637630, 37.573906, 43.083336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141228, 37.115623, 43.237041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448139, 37.054985, 43.486298>,  <36.632286, 37.018604, 43.635853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.448139, 37.054985, 43.486298>,  <36.141228, 37.115623, 43.237041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448139, 37.054985, 43.486298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630535, -0.000887, 0.776160,
		-0.117109, -0.988442, -0.096266,
		0.767275, -0.151594, 0.623144,
		36.678322, 37.009506, 43.673241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084690, 36.443901, 43.640797>,  <36.141228, 37.115623, 43.237041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084690, 36.443901, 43.640797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296360, 36.707298, 43.854847>,  <36.423363, 36.865337, 43.983276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296360, 36.707298, 43.854847>,  <36.084690, 36.443901, 43.640797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296360, 36.707298, 43.854847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549230, -0.214904, 0.807566,
		0.646776, -0.721253, 0.247941,
		0.529176, 0.658491, 0.535128,
		36.455112, 36.904846, 44.015385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908871, 36.192429, 44.330582>,  <36.084690, 36.443901, 43.640797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908871, 36.192429, 44.330582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126461, 36.520222, 44.402725>,  <36.257015, 36.716900, 44.446011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126461, 36.520222, 44.402725>,  <35.908871, 36.192429, 44.330582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126461, 36.520222, 44.402725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414937, 0.075891, 0.906680,
		0.729324, -0.568052, 0.381318,
		0.543980, 0.819486, 0.180357,
		36.289654, 36.766068, 44.456833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121365, 36.193192, 45.008156>,  <35.908871, 36.192429, 44.330582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121365, 36.193192, 45.008156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143990, 36.586990, 44.941753>,  <36.157566, 36.823269, 44.901913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143990, 36.586990, 44.941753>,  <36.121365, 36.193192, 45.008156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143990, 36.586990, 44.941753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444266, 0.173726, 0.878890,
		0.894108, 0.024041, 0.447206,
		0.056562, 0.984501, -0.166010,
		36.160957, 36.882339, 44.891949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396244, 36.493347, 45.639805>,  <36.121365, 36.193192, 45.008156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396244, 36.493347, 45.639805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226315, 36.792450, 45.435696>,  <36.124355, 36.971912, 45.313229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.226315, 36.792450, 45.435696>,  <36.396244, 36.493347, 45.639805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226315, 36.792450, 45.435696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373843, 0.368446, 0.851169,
		0.824479, 0.552359, 0.123020,
		-0.424825, 0.747761, -0.510272,
		36.098866, 37.016777, 45.282616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583721, 37.074650, 46.069462>,  <36.396244, 36.493347, 45.639805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583721, 37.074650, 46.069462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270920, 37.167454, 45.838070>,  <36.083241, 37.223137, 45.699234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270920, 37.167454, 45.838070>,  <36.583721, 37.074650, 46.069462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270920, 37.167454, 45.838070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421898, 0.486129, 0.765298,
		0.458771, 0.842527, -0.282272,
		-0.782005, 0.232006, -0.578483,
		36.036320, 37.237057, 45.664524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501266, 37.958893, 46.094166>,  <36.583721, 37.074650, 46.069462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501266, 37.958893, 46.094166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160992, 37.761421, 46.021919>,  <35.956829, 37.642941, 45.978569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.160992, 37.761421, 46.021919>,  <36.501266, 37.958893, 46.094166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160992, 37.761421, 46.021919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461370, 0.536483, 0.706628,
		-0.251946, 0.684449, -0.684144,
		-0.850682, -0.493676, -0.180620,
		35.905788, 37.613319, 45.967731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037552, 38.455887, 46.286423>,  <36.501266, 37.958893, 46.094166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037552, 38.455887, 46.286423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806015, 38.129711, 46.285656>,  <35.667095, 37.934006, 46.285198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806015, 38.129711, 46.285656>,  <36.037552, 38.455887, 46.286423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806015, 38.129711, 46.285656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634333, 0.448805, 0.629441,
		-0.512411, 0.365559, -0.777046,
		-0.578840, -0.815439, -0.001914,
		35.632362, 37.885078, 46.285080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401436, 38.686764, 46.500107>,  <36.037552, 38.455887, 46.286423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401436, 38.686764, 46.500107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375912, 38.291363, 46.554928>,  <35.360596, 38.054123, 46.587822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375912, 38.291363, 46.554928>,  <35.401436, 38.686764, 46.500107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375912, 38.291363, 46.554928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431845, 0.151160, 0.889191,
		-0.899688, -0.002446, -0.436527,
		-0.063810, -0.988506, 0.137053,
		35.356770, 37.994812, 46.596043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852081, 38.657471, 46.845074>,  <35.401436, 38.686764, 46.500107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852081, 38.657471, 46.845074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980602, 38.288681, 46.931541>,  <35.057716, 38.067406, 46.983421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980602, 38.288681, 46.931541>,  <34.852081, 38.657471, 46.845074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980602, 38.288681, 46.931541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460903, 0.047157, 0.886197,
		-0.827244, -0.384370, -0.409789,
		0.321303, -0.921974, 0.216167,
		35.076992, 38.012089, 46.996391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185738, 38.329628, 47.014343>,  <34.852081, 38.657471, 46.845074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185738, 38.329628, 47.014343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497047, 38.130680, 47.167660>,  <34.683834, 38.011311, 47.259651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.497047, 38.130680, 47.167660>,  <34.185738, 38.329628, 47.014343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497047, 38.130680, 47.167660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517200, -0.161601, 0.840470,
		-0.356084, -0.852354, -0.383009,
		0.778273, -0.497371, 0.383294,
		34.730530, 37.981468, 47.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886688, 37.729061, 47.286156>,  <34.185738, 38.329628, 47.014343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886688, 37.729061, 47.286156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237217, 37.787361, 47.469810>,  <34.447536, 37.822342, 47.580006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237217, 37.787361, 47.469810>,  <33.886688, 37.729061, 47.286156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237217, 37.787361, 47.469810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451391, -0.084402, 0.888326,
		0.168230, -0.985714, -0.008171,
		0.876325, 0.145755, 0.459141,
		34.500114, 37.831089, 47.607552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869099, 37.319653, 47.820541>,  <33.886688, 37.729061, 47.286156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869099, 37.319653, 47.820541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174686, 37.542660, 47.950474>,  <34.358040, 37.676464, 48.028435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.174686, 37.542660, 47.950474>,  <33.869099, 37.319653, 47.820541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174686, 37.542660, 47.950474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384040, -0.011663, 0.923243,
		0.518516, -0.830081, 0.205200,
		0.763973, 0.557521, 0.324832,
		34.403877, 37.709915, 48.047924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158890, 36.990349, 48.373554>,  <33.869099, 37.319653, 47.820541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158890, 36.990349, 48.373554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277508, 37.370651, 48.409599>,  <34.348679, 37.598831, 48.431225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277508, 37.370651, 48.409599>,  <34.158890, 36.990349, 48.373554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277508, 37.370651, 48.409599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249658, -0.013898, 0.968234,
		0.921808, -0.309625, 0.233242,
		0.296548, 0.950757, 0.090112,
		34.366470, 37.655880, 48.436634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741459, 37.085522, 48.850651>,  <34.158890, 36.990349, 48.373554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741459, 37.085522, 48.850651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560661, 37.441692, 48.829346>,  <34.452183, 37.655396, 48.816563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560661, 37.441692, 48.829346>,  <34.741459, 37.085522, 48.850651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560661, 37.441692, 48.829346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291723, -0.091131, 0.952152,
		0.842970, 0.445905, 0.300950,
		-0.451995, 0.890429, -0.053261,
		34.425064, 37.708820, 48.813366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895237, 37.320660, 49.457535>,  <34.741459, 37.085522, 48.850651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895237, 37.320660, 49.457535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608467, 37.583698, 49.364948>,  <34.436405, 37.741524, 49.309399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608467, 37.583698, 49.364948>,  <34.895237, 37.320660, 49.457535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608467, 37.583698, 49.364948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292121, 0.018093, 0.956210,
		0.632992, 0.753150, 0.179127,
		-0.716929, 0.657600, -0.231464,
		34.393387, 37.780979, 49.295509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852806, 37.770264, 50.037884>,  <34.895237, 37.320660, 49.457535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852806, 37.770264, 50.037884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502846, 37.871380, 49.872646>,  <34.292870, 37.932049, 49.773502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502846, 37.871380, 49.872646>,  <34.852806, 37.770264, 50.037884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502846, 37.871380, 49.872646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392642, 0.129109, 0.910584,
		0.283520, 0.958868, -0.013702,
		-0.874899, 0.252789, -0.413097,
		34.240376, 37.947216, 49.748718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589127, 38.460861, 50.352486>,  <34.852806, 37.770264, 50.037884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589127, 38.460861, 50.352486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280815, 38.239090, 50.226940>,  <34.095829, 38.106026, 50.151611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280815, 38.239090, 50.226940>,  <34.589127, 38.460861, 50.352486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280815, 38.239090, 50.226940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385197, 0.013142, 0.922741,
		-0.507469, 0.832128, -0.223694,
		-0.770778, -0.554428, -0.313864,
		34.049583, 38.072762, 50.132782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983494, 38.820629, 50.547535>,  <34.589127, 38.460861, 50.352486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983494, 38.820629, 50.547535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855526, 38.446766, 50.485474>,  <33.778744, 38.222450, 50.448238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855526, 38.446766, 50.485474>,  <33.983494, 38.820629, 50.547535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855526, 38.446766, 50.485474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357123, -0.032719, 0.933484,
		-0.877562, 0.354049, -0.323319,
		-0.319921, -0.934655, -0.155152,
		33.759548, 38.166370, 50.438927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331913, 38.704891, 50.828751>,  <33.983494, 38.820629, 50.547535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331913, 38.704891, 50.828751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531448, 38.358242, 50.833164>,  <33.651169, 38.150253, 50.835812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531448, 38.358242, 50.833164>,  <33.331913, 38.704891, 50.828751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531448, 38.358242, 50.833164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075193, -0.030594, 0.996700,
		-0.863427, -0.498021, -0.080426,
		0.498838, -0.866625, 0.011032,
		33.681099, 38.098255, 50.836475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858219, 38.258018, 50.371479>,  <33.331913, 38.704891, 50.828751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858219, 38.258018, 50.371479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796833, 38.413635, 50.734818>,  <32.760002, 38.507004, 50.952820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.796833, 38.413635, 50.734818>,  <32.858219, 38.258018, 50.371479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796833, 38.413635, 50.734818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300232, 0.857423, -0.417955,
		-0.941440, -0.336858, -0.014784,
		-0.153467, 0.389040, 0.908348,
		32.750793, 38.530346, 51.007320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179783, 38.539623, 50.392323>,  <32.858219, 38.258018, 50.371479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179783, 38.539623, 50.392323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446957, 38.730461, 50.620792>,  <32.607262, 38.844963, 50.757874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.446957, 38.730461, 50.620792>,  <32.179783, 38.539623, 50.392323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446957, 38.730461, 50.620792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235858, 0.863626, -0.445557,
		-0.705855, 0.162887, 0.689374,
		0.667937, 0.477093, 0.571177,
		32.647339, 38.873589, 50.792145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947521, 37.880875, 50.027657>,  <32.179783, 38.539623, 50.392323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947521, 37.880875, 50.027657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.583687, 38.045189, 50.002632>,  <31.365387, 38.143776, 49.987617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.583687, 38.045189, 50.002632>,  <31.947521, 37.880875, 50.027657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583687, 38.045189, 50.002632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086707, -0.334892, -0.938259,
		-0.406375, -0.847999, 0.340230,
		-0.909583, 0.410785, -0.062565,
		31.310812, 38.168423, 49.983864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517870, 37.381947, 49.651642>,  <31.947521, 37.880875, 50.027657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517870, 37.381947, 49.651642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320803, 37.728458, 49.618549>,  <31.202562, 37.936363, 49.598694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.320803, 37.728458, 49.618549>,  <31.517870, 37.381947, 49.651642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320803, 37.728458, 49.618549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162998, -0.185246, -0.969079,
		-0.854817, -0.463948, 0.232467,
		-0.492666, 0.866277, -0.082729,
		31.173002, 37.988342, 49.593731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892206, 37.205154, 49.123173>,  <31.517870, 37.381947, 49.651642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892206, 37.205154, 49.123173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.949673, 37.600960, 49.117115>,  <30.984154, 37.838444, 49.113480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.949673, 37.600960, 49.117115>,  <30.892206, 37.205154, 49.123173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949673, 37.600960, 49.117115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062356, -0.006219, -0.998035,
		-0.987660, 0.144331, 0.060808,
		0.143669, 0.989510, -0.015142,
		30.992773, 37.897812, 49.112572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410822, 37.555817, 48.554497>,  <30.892206, 37.205154, 49.123173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410822, 37.555817, 48.554497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720684, 37.799995, 48.620541>,  <30.906601, 37.946503, 48.660168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720684, 37.799995, 48.620541>,  <30.410822, 37.555817, 48.554497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720684, 37.799995, 48.620541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082239, 0.161623, -0.983420,
		-0.627015, 0.775388, 0.074999,
		0.774654, 0.610451, 0.165107,
		30.953081, 37.983131, 48.670074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302229, 38.150810, 48.095829>,  <30.410822, 37.555817, 48.554497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302229, 38.150810, 48.095829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689238, 38.149006, 48.196926>,  <30.921444, 38.147923, 48.257584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.689238, 38.149006, 48.196926>,  <30.302229, 38.150810, 48.095829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689238, 38.149006, 48.196926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252756, 0.003483, -0.967524,
		0.003483, 0.999984, 0.004510,
		0.967524, -0.004510, 0.252740,
		30.979494, 38.147652, 48.272747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595997, 38.672100, 47.669155>,  <30.302229, 38.150810, 48.095829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595997, 38.672100, 47.669155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899551, 38.441990, 47.791237>,  <31.081684, 38.303925, 47.864487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899551, 38.441990, 47.791237>,  <30.595997, 38.672100, 47.669155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899551, 38.441990, 47.791237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385244, 0.018717, -0.922625,
		0.525049, 0.817747, 0.235824,
		0.758888, -0.575273, 0.305205,
		31.127218, 38.269409, 47.882797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111357, 38.882767, 47.168674>,  <30.595997, 38.672100, 47.669155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111357, 38.882767, 47.168674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.267427, 38.552235, 47.331127>,  <31.361071, 38.353916, 47.428596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.267427, 38.552235, 47.331127>,  <31.111357, 38.882767, 47.168674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267427, 38.552235, 47.331127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647213, -0.067586, -0.759307,
		0.654887, 0.559116, 0.508441,
		0.390177, -0.826330, 0.406129,
		31.384481, 38.304337, 47.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832285, 39.030109, 47.167950>,  <31.111357, 38.882767, 47.168674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832285, 39.030109, 47.167950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806454, 38.632088, 47.198147>,  <31.790955, 38.393276, 47.216267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806454, 38.632088, 47.198147>,  <31.832285, 39.030109, 47.167950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806454, 38.632088, 47.198147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716253, -0.098896, -0.690798,
		0.694847, 0.009462, 0.719096,
		-0.064580, -0.995053, 0.075495,
		31.787081, 38.333572, 47.220795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517731, 38.777222, 47.359570>,  <31.832285, 39.030109, 47.167950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517731, 38.777222, 47.359570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332542, 38.467106, 47.187714>,  <32.221428, 38.281036, 47.084602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332542, 38.467106, 47.187714>,  <32.517731, 38.777222, 47.359570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332542, 38.467106, 47.187714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855409, -0.263804, -0.445739,
		0.232236, -0.573880, 0.785321,
		-0.462971, -0.775287, -0.429637,
		32.193649, 38.234520, 47.058823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058765, 38.290054, 47.249313>,  <32.517731, 38.777222, 47.359570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058765, 38.290054, 47.249313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751019, 38.164524, 47.026749>,  <32.566372, 38.089207, 46.893211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.751019, 38.164524, 47.026749>,  <33.058765, 38.290054, 47.249313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751019, 38.164524, 47.026749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632163, -0.248744, -0.733823,
		0.091887, -0.916320, 0.389763,
		-0.769367, -0.313823, -0.556408,
		32.520206, 38.070377, 46.859825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229637, 37.588497, 47.029236>,  <33.058765, 38.290054, 47.249313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229637, 37.588497, 47.029236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958160, 37.738659, 46.776741>,  <32.795277, 37.828754, 46.625244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958160, 37.738659, 46.776741>,  <33.229637, 37.588497, 47.029236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958160, 37.738659, 46.776741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487484, -0.412587, -0.769501,
		-0.549312, -0.829967, 0.097014,
		-0.678687, 0.375403, -0.631234,
		32.754555, 37.851280, 46.587372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207821, 37.014297, 46.504669>,  <33.229637, 37.588497, 47.029236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207821, 37.014297, 46.504669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047047, 37.337170, 46.331738>,  <32.950584, 37.530895, 46.227978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.047047, 37.337170, 46.331738>,  <33.207821, 37.014297, 46.504669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047047, 37.337170, 46.331738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463389, -0.227914, -0.856345,
		-0.789760, -0.544528, -0.282433,
		-0.401933, 0.807183, -0.432325,
		32.926468, 37.579323, 46.202042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952106, 36.761356, 45.785480>,  <33.207821, 37.014297, 46.504669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952106, 36.761356, 45.785480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988075, 37.159611, 45.775433>,  <33.009659, 37.398563, 45.769402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.988075, 37.159611, 45.775433>,  <32.952106, 36.761356, 45.785480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988075, 37.159611, 45.775433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245773, -0.046630, -0.968205,
		-0.965147, 0.080891, -0.248892,
		0.089925, 0.995632, -0.025124,
		33.015053, 37.458302, 45.767895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640224, 36.972523, 45.095291>,  <32.952106, 36.761356, 45.785480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640224, 36.972523, 45.095291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873417, 37.282936, 45.191547>,  <33.013332, 37.469185, 45.249302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873417, 37.282936, 45.191547>,  <32.640224, 36.972523, 45.095291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873417, 37.282936, 45.191547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265121, 0.098271, -0.959194,
		-0.768016, 0.622987, -0.148454,
		0.582977, 0.776035, 0.240641,
		33.048309, 37.515747, 45.263741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598011, 37.294769, 44.580441>,  <32.640224, 36.972523, 45.095291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598011, 37.294769, 44.580441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909908, 37.482269, 44.746468>,  <33.097046, 37.594769, 44.846085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909908, 37.482269, 44.746468>,  <32.598011, 37.294769, 44.580441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909908, 37.482269, 44.746468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320569, 0.270563, -0.907762,
		-0.537814, 0.840876, 0.060702,
		0.779738, 0.468747, 0.415071,
		33.143829, 37.622894, 44.870987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595325, 37.991707, 44.320915>,  <32.598011, 37.294769, 44.580441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595325, 37.991707, 44.320915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966145, 37.890167, 44.431286>,  <33.188637, 37.829243, 44.497509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966145, 37.890167, 44.431286>,  <32.595325, 37.991707, 44.320915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966145, 37.890167, 44.431286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343845, 0.282168, -0.895629,
		0.149498, 0.925170, 0.348870,
		0.927050, -0.253852, 0.275931,
		33.244259, 37.814011, 44.514065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994648, 38.550781, 44.060181>,  <32.595325, 37.991707, 44.320915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994648, 38.550781, 44.060181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285732, 38.283432, 44.121784>,  <33.460381, 38.123024, 44.158745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285732, 38.283432, 44.121784>,  <32.994648, 38.550781, 44.060181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285732, 38.283432, 44.121784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475869, 0.330287, -0.815144,
		0.493954, 0.666474, 0.558410,
		0.727707, -0.668374, 0.154008,
		33.504044, 38.082920, 44.167988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714359, 38.890522, 43.982727>,  <32.994648, 38.550781, 44.060181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714359, 38.890522, 43.982727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771389, 38.502632, 43.903416>,  <33.805607, 38.269897, 43.855827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771389, 38.502632, 43.903416>,  <33.714359, 38.890522, 43.982727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771389, 38.502632, 43.903416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588054, 0.244127, -0.771100,
		0.796157, -0.006661, 0.605054,
		0.142574, -0.969720, -0.198281,
		33.814159, 38.211716, 43.843933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408268, 38.814674, 43.778381>,  <33.714359, 38.890522, 43.982727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408268, 38.814674, 43.778381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251179, 38.465546, 43.662483>,  <34.156925, 38.256069, 43.592945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251179, 38.465546, 43.662483>,  <34.408268, 38.814674, 43.778381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251179, 38.465546, 43.662483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529164, 0.043223, -0.847418,
		0.752168, -0.486124, 0.444890,
		-0.392720, -0.872820, -0.289750,
		34.133362, 38.203701, 43.575558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950489, 38.448460, 43.428871>,  <34.408268, 38.814674, 43.778381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950489, 38.448460, 43.428871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634880, 38.238056, 43.301903>,  <34.445515, 38.111813, 43.225723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.634880, 38.238056, 43.301903>,  <34.950489, 38.448460, 43.428871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634880, 38.238056, 43.301903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465988, -0.175703, -0.867170,
		0.400369, -0.832131, 0.383749,
		-0.789025, -0.526010, -0.317417,
		34.398174, 38.080254, 43.206676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.384933, 36.019623, 29.432270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020100, 36.149956, 29.531816>,  <40.801201, 36.228157, 29.591545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.020100, 36.149956, 29.531816>,  <41.384933, 36.019623, 29.432270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020100, 36.149956, 29.531816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387855, 0.488908, 0.781369,
		0.132922, 0.809199, -0.572301,
		-0.912086, 0.325831, 0.248866,
		40.746475, 36.247704, 29.606476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538788, 36.524311, 29.843824>,  <41.384933, 36.019623, 29.432270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538788, 36.524311, 29.843824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157597, 36.441406, 29.932257>,  <40.928883, 36.391663, 29.985317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157597, 36.441406, 29.932257>,  <41.538788, 36.524311, 29.843824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157597, 36.441406, 29.932257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140691, 0.343561, 0.928532,
		-0.268405, 0.915974, -0.298246,
		-0.952977, -0.207262, 0.221082,
		40.871704, 36.379227, 29.998581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177795, 37.141994, 30.169214>,  <41.538788, 36.524311, 29.843824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177795, 37.141994, 30.169214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007927, 36.797859, 30.281982>,  <40.906006, 36.591377, 30.349644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007927, 36.797859, 30.281982>,  <41.177795, 37.141994, 30.169214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007927, 36.797859, 30.281982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108569, 0.260753, 0.959281,
		-0.898814, 0.437987, -0.017328,
		-0.424671, -0.860334, 0.281921,
		40.880524, 36.539761, 30.366558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745998, 37.308437, 30.699081>,  <41.177795, 37.141994, 30.169214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745998, 37.308437, 30.699081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.779545, 36.917160, 30.775080>,  <40.799675, 36.682392, 30.820679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.779545, 36.917160, 30.775080>,  <40.745998, 37.308437, 30.699081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779545, 36.917160, 30.775080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224909, 0.204331, 0.952714,
		-0.970763, -0.037172, 0.237143,
		0.083870, -0.978196, 0.189996,
		40.804707, 36.623703, 30.832079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373283, 37.203651, 31.370224>,  <40.745998, 37.308437, 30.699081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373283, 37.203651, 31.370224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602177, 36.878231, 31.328884>,  <40.739513, 36.682980, 31.304081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.602177, 36.878231, 31.328884>,  <40.373283, 37.203651, 31.370224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602177, 36.878231, 31.328884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358158, 0.134552, 0.923915,
		-0.737746, -0.565712, 0.368375,
		0.572235, -0.813551, -0.103350,
		40.773846, 36.634167, 31.297878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201141, 36.783813, 31.960474>,  <40.373283, 37.203651, 31.370224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201141, 36.783813, 31.960474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.559483, 36.677761, 31.817839>,  <40.774487, 36.614132, 31.732258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.559483, 36.677761, 31.817839>,  <40.201141, 36.783813, 31.960474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559483, 36.677761, 31.817839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359662, -0.038613, 0.932283,
		-0.260944, -0.963440, 0.060765,
		0.895852, -0.265129, -0.356589,
		40.828239, 36.598221, 31.710861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571278, 36.223125, 32.439117>,  <40.201141, 36.783813, 31.960474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571278, 36.223125, 32.439117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879547, 36.397442, 32.253147>,  <41.064507, 36.502033, 32.141567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879547, 36.397442, 32.253147>,  <40.571278, 36.223125, 32.439117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879547, 36.397442, 32.253147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530983, -0.035788, 0.846626,
		0.352314, -0.899336, -0.258979,
		0.770669, 0.435792, -0.464923,
		41.110748, 36.528179, 32.113670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111809, 35.806767, 32.624107>,  <40.571278, 36.223125, 32.439117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111809, 35.806767, 32.624107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295803, 36.135082, 32.488625>,  <41.406200, 36.332069, 32.407333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295803, 36.135082, 32.488625>,  <41.111809, 35.806767, 32.624107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295803, 36.135082, 32.488625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685980, -0.086288, 0.722486,
		0.563781, -0.564679, -0.602734,
		0.459981, 0.820787, -0.338711,
		41.433796, 36.381317, 32.387012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849628, 35.561909, 32.553413>,  <41.111809, 35.806767, 32.624107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849628, 35.561909, 32.553413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826126, 35.960606, 32.575546>,  <41.812027, 36.199821, 32.588825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826126, 35.960606, 32.575546>,  <41.849628, 35.561909, 32.553413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826126, 35.960606, 32.575546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738973, 0.006160, 0.673707,
		0.671169, 0.080468, -0.736924,
		-0.058752, 0.996738, 0.055329,
		41.808502, 36.259628, 32.592144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540493, 35.721516, 32.687187>,  <41.849628, 35.561909, 32.553413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540493, 35.721516, 32.687187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313774, 36.027576, 32.809357>,  <42.177742, 36.211212, 32.882660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.313774, 36.027576, 32.809357>,  <42.540493, 35.721516, 32.687187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313774, 36.027576, 32.809357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571400, 0.098033, 0.814796,
		0.593502, 0.636341, -0.492773,
		-0.566796, 0.765153, 0.305423,
		42.143734, 36.257122, 32.900982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000721, 36.186359, 32.868340>,  <42.540493, 35.721516, 32.687187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000721, 36.186359, 32.868340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.689472, 36.307446, 33.088482>,  <42.502724, 36.380096, 33.220566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.689472, 36.307446, 33.088482>,  <43.000721, 36.186359, 32.868340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689472, 36.307446, 33.088482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605842, 0.130469, 0.784814,
		0.165771, 0.944109, -0.284919,
		-0.778123, 0.302716, 0.550353,
		42.456036, 36.398262, 33.253590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287373, 36.710243, 33.226891>,  <43.000721, 36.186359, 32.868340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287373, 36.710243, 33.226891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958786, 36.621403, 33.436985>,  <42.761635, 36.568100, 33.563042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.958786, 36.621403, 33.436985>,  <43.287373, 36.710243, 33.226891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958786, 36.621403, 33.436985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509119, 0.129285, 0.850931,
		-0.256895, 0.966415, 0.006871,
		-0.821464, -0.222098, 0.525233,
		42.712345, 36.554775, 33.594555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305321, 37.149582, 33.875458>,  <43.287373, 36.710243, 33.226891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305321, 37.149582, 33.875458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017555, 36.907410, 34.011635>,  <42.844894, 36.762108, 34.093342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017555, 36.907410, 34.011635>,  <43.305321, 37.149582, 33.875458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017555, 36.907410, 34.011635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475757, -0.072415, 0.876591,
		-0.506058, 0.792600, 0.340132,
		-0.719417, -0.605426, 0.340439,
		42.801731, 36.725780, 34.113766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096992, 37.424416, 34.453449>,  <43.305321, 37.149582, 33.875458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096992, 37.424416, 34.453449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985455, 37.041176, 34.479645>,  <42.918530, 36.811234, 34.495361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.985455, 37.041176, 34.479645>,  <43.096992, 37.424416, 34.453449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985455, 37.041176, 34.479645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262329, -0.010397, 0.964922,
		-0.923811, 0.286246, 0.254237,
		-0.278848, -0.958100, 0.065486,
		42.901798, 36.753746, 34.499290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.637619, 37.379707, 35.055534>,  <43.096992, 37.424416, 34.453449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.637619, 37.379707, 35.055534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811329, 37.029030, 34.972759>,  <42.915554, 36.818623, 34.923096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811329, 37.029030, 34.972759>,  <42.637619, 37.379707, 35.055534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811329, 37.029030, 34.972759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447205, 0.010415, 0.894371,
		-0.781930, -0.480944, 0.396583,
		0.434272, -0.876690, -0.206937,
		42.941612, 36.766022, 34.910679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705757, 37.065620, 35.704315>,  <42.637619, 37.379707, 35.055534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705757, 37.065620, 35.704315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962498, 36.861176, 35.475655>,  <43.116543, 36.738506, 35.338459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.962498, 36.861176, 35.475655>,  <42.705757, 37.065620, 35.704315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962498, 36.861176, 35.475655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654643, -0.022996, 0.755588,
		-0.399339, -0.859204, 0.319838,
		0.641850, -0.511116, -0.571655,
		43.155052, 36.707840, 35.304157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910706, 36.547699, 36.084183>,  <42.705757, 37.065620, 35.704315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910706, 36.547699, 36.084183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197968, 36.525314, 35.806732>,  <43.370323, 36.511883, 35.640263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197968, 36.525314, 35.806732>,  <42.910706, 36.547699, 36.084183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197968, 36.525314, 35.806732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691097, -0.059368, 0.720320,
		-0.081497, -0.996666, -0.003953,
		0.718153, -0.055972, -0.693631,
		43.413414, 36.508526, 35.598644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297596, 35.821350, 36.128891>,  <42.910706, 36.547699, 36.084183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297596, 35.821350, 36.128891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526714, 36.089218, 35.939812>,  <43.664185, 36.249939, 35.826363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526714, 36.089218, 35.939812>,  <43.297596, 35.821350, 36.128891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526714, 36.089218, 35.939812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783265, -0.277149, 0.556493,
		0.241660, -0.689005, -0.683281,
		0.572797, 0.669672, -0.472697,
		43.698555, 36.290119, 35.798004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833309, 35.449654, 35.819782>,  <43.297596, 35.821350, 36.128891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833309, 35.449654, 35.819782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963840, 35.823746, 35.874699>,  <44.042160, 36.048203, 35.907646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963840, 35.823746, 35.874699>,  <43.833309, 35.449654, 35.819782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963840, 35.823746, 35.874699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759447, -0.345879, 0.551006,
		0.562804, -0.075546, -0.823131,
		0.326330, 0.935233, 0.137289,
		44.061741, 36.104317, 35.915886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473465, 35.312283, 35.666973>,  <43.833309, 35.449654, 35.819782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473465, 35.312283, 35.666973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.481274, 35.665337, 35.854839>,  <44.485958, 35.877167, 35.967560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.481274, 35.665337, 35.854839>,  <44.473465, 35.312283, 35.666973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481274, 35.665337, 35.854839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649440, -0.368349, 0.665242,
		0.760162, 0.292030, -0.580407,
		0.019521, 0.882631, 0.469661,
		44.487129, 35.930126, 35.995739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.218479, 35.608955, 35.675003>,  <44.473465, 35.312283, 35.666973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.218479, 35.608955, 35.675003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999432, 35.731236, 35.986557>,  <44.868004, 35.804604, 36.173489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999432, 35.731236, 35.986557>,  <45.218479, 35.608955, 35.675003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999432, 35.731236, 35.986557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672684, -0.392739, 0.627098,
		0.497605, 0.867353, 0.009428,
		-0.547618, 0.305705, 0.778883,
		44.835148, 35.822948, 36.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613342, 35.134670, 35.142803>,  <45.218479, 35.608955, 35.675003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613342, 35.134670, 35.142803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.889938, 35.375591, 34.983269>,  <46.055897, 35.520145, 34.887550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.889938, 35.375591, 34.983269>,  <45.613342, 35.134670, 35.142803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889938, 35.375591, 34.983269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674121, 0.339604, -0.655918,
		-0.259618, 0.722423, 0.640861,
		0.691490, 0.602306, -0.398834,
		46.097385, 35.556282, 34.863617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.459316, 35.948212, 35.071232>,  <45.613342, 35.134670, 35.142803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.459316, 35.948212, 35.071232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.714527, 35.809067, 34.796448>,  <45.867653, 35.725578, 34.631577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.714527, 35.809067, 34.796448>,  <45.459316, 35.948212, 35.071232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714527, 35.809067, 34.796448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624658, 0.287830, -0.725917,
		0.450249, 0.892269, -0.033654,
		0.638027, -0.347866, -0.686958,
		45.905933, 35.704708, 34.590359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574078, 36.502140, 34.612247>,  <45.459316, 35.948212, 35.071232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574078, 36.502140, 34.612247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.720646, 36.192745, 34.405384>,  <45.808586, 36.007107, 34.281265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.720646, 36.192745, 34.405384>,  <45.574078, 36.502140, 34.612247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720646, 36.192745, 34.405384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490750, 0.311562, -0.813691,
		0.790507, 0.551948, -0.265426,
		0.366419, -0.773487, -0.517161,
		45.830570, 35.960701, 34.250237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875717, 36.823086, 34.015656>,  <45.574078, 36.502140, 34.612247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875717, 36.823086, 34.015656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.823383, 36.442474, 33.904312>,  <45.791985, 36.214108, 33.837505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.823383, 36.442474, 33.904312>,  <45.875717, 36.823086, 34.015656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823383, 36.442474, 33.904312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334373, 0.306670, -0.891150,
		0.933316, -0.023514, -0.358286,
		-0.130830, -0.951525, -0.278358,
		45.784134, 36.157017, 33.820805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214413, 36.677891, 33.338211>,  <45.875717, 36.823086, 34.015656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214413, 36.677891, 33.338211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.957394, 36.371811, 33.354210>,  <45.803185, 36.188164, 33.363808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.957394, 36.371811, 33.354210>,  <46.214413, 36.677891, 33.338211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957394, 36.371811, 33.354210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392821, 0.284138, -0.874618,
		0.657896, -0.577693, -0.483160,
		-0.642545, -0.765203, 0.039997,
		45.764629, 36.142250, 33.366207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206112, 36.335884, 32.688469>,  <46.214413, 36.677891, 33.338211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206112, 36.335884, 32.688469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851921, 36.253574, 32.855122>,  <45.639404, 36.204189, 32.955112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.851921, 36.253574, 32.855122>,  <46.206112, 36.335884, 32.688469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851921, 36.253574, 32.855122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458105, 0.236324, -0.856908,
		0.077871, -0.949636, -0.303527,
		-0.885481, -0.205775, 0.416630,
		45.586277, 36.191841, 32.980110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856968, 35.869034, 32.267094>,  <46.206112, 36.335884, 32.688469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856968, 35.869034, 32.267094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559452, 36.029125, 32.481232>,  <45.380943, 36.125179, 32.609715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559452, 36.029125, 32.481232>,  <45.856968, 35.869034, 32.267094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559452, 36.029125, 32.481232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436550, 0.315635, -0.842495,
		-0.506162, -0.860345, -0.060048,
		-0.743790, 0.400225, 0.535346,
		45.336315, 36.149193, 32.641834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279518, 35.700836, 31.916063>,  <45.856968, 35.869034, 32.267094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279518, 35.700836, 31.916063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.146721, 35.986065, 32.163067>,  <45.067043, 36.157200, 32.311268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.146721, 35.986065, 32.163067>,  <45.279518, 35.700836, 31.916063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146721, 35.986065, 32.163067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522206, 0.406232, -0.749851,
		-0.785546, -0.571411, 0.237502,
		-0.331992, 0.713067, 0.617508,
		45.047123, 36.199986, 32.348320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620819, 35.885452, 31.686419>,  <45.279518, 35.700836, 31.916063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620819, 35.885452, 31.686419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718792, 36.207199, 31.902935>,  <44.777576, 36.400249, 32.032845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718792, 36.207199, 31.902935>,  <44.620819, 35.885452, 31.686419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718792, 36.207199, 31.902935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447362, 0.589075, -0.672947,
		-0.860160, -0.077327, 0.504129,
		0.244933, 0.804370, 0.541292,
		44.792271, 36.448509, 32.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062931, 36.330788, 31.950863>,  <44.620819, 35.885452, 31.686419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062931, 36.330788, 31.950863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.361507, 36.596954, 31.953648>,  <44.540653, 36.756653, 31.955318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.361507, 36.596954, 31.953648>,  <44.062931, 36.330788, 31.950863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361507, 36.596954, 31.953648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529326, 0.600058, -0.599787,
		-0.403283, 0.444023, 0.800129,
		0.746443, 0.665413, 0.006960,
		44.585442, 36.796577, 31.955736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755722, 36.969398, 32.132301>,  <44.062931, 36.330788, 31.950863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755722, 36.969398, 32.132301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101280, 37.067513, 31.956339>,  <44.308617, 37.126381, 31.850761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101280, 37.067513, 31.956339>,  <43.755722, 36.969398, 32.132301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101280, 37.067513, 31.956339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478795, 0.671026, -0.566108,
		0.156329, 0.699684, 0.697140,
		0.863896, 0.245288, -0.439906,
		44.360451, 37.141098, 31.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636402, 37.653961, 31.992096>,  <43.755722, 36.969398, 32.132301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636402, 37.653961, 31.992096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963722, 37.566772, 31.779356>,  <44.160114, 37.514458, 31.651712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963722, 37.566772, 31.779356>,  <43.636402, 37.653961, 31.992096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963722, 37.566772, 31.779356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337174, 0.567337, -0.751294,
		0.465502, 0.794113, 0.390759,
		0.818304, -0.217975, -0.531851,
		44.209213, 37.501381, 31.619801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856163, 38.249187, 31.768593>,  <43.636402, 37.653961, 31.992096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856163, 38.249187, 31.768593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.021782, 37.985882, 31.517117>,  <44.121155, 37.827896, 31.366230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.021782, 37.985882, 31.517117>,  <43.856163, 38.249187, 31.768593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021782, 37.985882, 31.517117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334351, 0.532410, -0.777656,
		0.846625, 0.532189, 0.000350,
		0.414046, -0.658266, -0.628690,
		44.145996, 37.788403, 31.328510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.269424, 38.630501, 31.274858>,  <43.856163, 38.249187, 31.768593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.269424, 38.630501, 31.274858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163532, 38.283096, 31.107239>,  <44.099998, 38.074654, 31.006666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163532, 38.283096, 31.107239>,  <44.269424, 38.630501, 31.274858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163532, 38.283096, 31.107239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203647, 0.475104, -0.856040,
		0.942575, -0.141277, -0.302642,
		-0.264726, -0.868514, -0.419051,
		44.084114, 38.022541, 30.981524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393116, 38.724037, 30.561512>,  <44.269424, 38.630501, 31.274858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393116, 38.724037, 30.561512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161785, 38.397747, 30.556980>,  <44.022987, 38.201973, 30.554260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161785, 38.397747, 30.556980>,  <44.393116, 38.724037, 30.561512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161785, 38.397747, 30.556980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294716, 0.221858, -0.929474,
		0.760708, -0.534204, -0.368714,
		-0.578331, -0.815724, -0.011330,
		43.988285, 38.153030, 30.553581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385639, 38.581974, 29.907310>,  <44.393116, 38.724037, 30.561512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385639, 38.581974, 29.907310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.060822, 38.391647, 30.042477>,  <43.865932, 38.277451, 30.123577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.060822, 38.391647, 30.042477>,  <44.385639, 38.581974, 29.907310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060822, 38.391647, 30.042477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453514, 0.150069, -0.878524,
		0.367304, -0.866649, -0.337651,
		-0.812043, -0.475815, 0.337916,
		43.817207, 38.248901, 30.143852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028809, 38.428139, 29.203617>,  <44.385639, 38.581974, 29.907310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028809, 38.428139, 29.203617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744961, 38.386913, 29.482420>,  <43.574654, 38.362179, 29.649702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744961, 38.386913, 29.482420>,  <44.028809, 38.428139, 29.203617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744961, 38.386913, 29.482420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704100, 0.140518, -0.696059,
		-0.026203, -0.984699, -0.172282,
		-0.709617, -0.103065, 0.697008,
		43.532074, 38.355995, 29.691523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533123, 38.023445, 28.952042>,  <44.028809, 38.428139, 29.203617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533123, 38.023445, 28.952042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340343, 38.213760, 29.246349>,  <43.224678, 38.327950, 29.422934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.340343, 38.213760, 29.246349>,  <43.533123, 38.023445, 28.952042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340343, 38.213760, 29.246349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721380, 0.261169, -0.641405,
		-0.497332, -0.839892, 0.217354,
		-0.481945, 0.475786, 0.735769,
		43.195759, 38.356495, 29.467081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893650, 37.791885, 28.917002>,  <43.533123, 38.023445, 28.952042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893650, 37.791885, 28.917002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.806667, 38.099998, 29.156792>,  <42.754478, 38.284866, 29.300667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.806667, 38.099998, 29.156792>,  <42.893650, 37.791885, 28.917002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806667, 38.099998, 29.156792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808885, 0.201516, -0.552355,
		-0.546276, -0.605021, 0.579252,
		-0.217458, 0.770286, 0.599476,
		42.741428, 38.331085, 29.336634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155380, 37.726868, 28.910967>,  <42.893650, 37.791885, 28.917002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155380, 37.726868, 28.910967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223915, 38.101669, 29.032728>,  <42.265034, 38.326550, 29.105785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223915, 38.101669, 29.032728>,  <42.155380, 37.726868, 28.910967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223915, 38.101669, 29.032728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842419, 0.299542, -0.447889,
		-0.510857, -0.179697, 0.840675,
		0.171333, 0.937008, 0.304403,
		42.275314, 38.382771, 29.124048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650608, 37.909008, 29.285761>,  <42.155380, 37.726868, 28.910967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650608, 37.909008, 29.285761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811852, 38.238171, 29.125597>,  <41.908596, 38.435669, 29.029499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.811852, 38.238171, 29.125597>,  <41.650608, 37.909008, 29.285761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811852, 38.238171, 29.125597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798264, 0.102218, -0.593570,
		-0.447525, 0.558904, 0.698103,
		0.403107, 0.822908, -0.400408,
		41.932785, 38.485043, 29.005474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.724720, 37.279469, 41.154224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398022, 37.091682, 41.020042>,  <39.202003, 36.979012, 40.939533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398022, 37.091682, 41.020042>,  <39.724720, 37.279469, 41.154224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398022, 37.091682, 41.020042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439789, -0.130147, -0.888621,
		0.373517, -0.873307, 0.312762,
		-0.816744, -0.469464, -0.335459,
		39.153000, 36.950844, 40.919403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943279, 36.554588, 40.738438>,  <39.724720, 37.279469, 41.154224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943279, 36.554588, 40.738438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573841, 36.595352, 40.590607>,  <39.352180, 36.619812, 40.501907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573841, 36.595352, 40.590607>,  <39.943279, 36.554588, 40.738438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573841, 36.595352, 40.590607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313623, -0.353599, -0.881254,
		-0.220494, -0.929829, 0.294619,
		-0.923593, 0.101912, -0.369582,
		39.296764, 36.625927, 40.479733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731762, 35.925278, 40.465515>,  <39.943279, 36.554588, 40.738438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731762, 35.925278, 40.465515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490040, 36.179092, 40.272778>,  <39.345005, 36.331383, 40.157135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490040, 36.179092, 40.272778>,  <39.731762, 35.925278, 40.465515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490040, 36.179092, 40.272778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190430, -0.472207, -0.860673,
		-0.773658, -0.611870, 0.164524,
		-0.604309, 0.634536, -0.481845,
		39.308746, 36.369453, 40.128223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464951, 35.512978, 39.972378>,  <39.731762, 35.925278, 40.465515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464951, 35.512978, 39.972378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366955, 35.872295, 39.826477>,  <39.308159, 36.087887, 39.738937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366955, 35.872295, 39.826477>,  <39.464951, 35.512978, 39.972378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366955, 35.872295, 39.826477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213391, -0.317027, -0.924099,
		-0.945751, -0.304227, -0.114021,
		-0.244988, 0.898299, -0.364748,
		39.293457, 36.141785, 39.717052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118912, 35.384361, 39.395493>,  <39.464951, 35.512978, 39.972378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118912, 35.384361, 39.395493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230957, 35.760731, 39.319389>,  <39.298183, 35.986553, 39.273727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230957, 35.760731, 39.319389>,  <39.118912, 35.384361, 39.395493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230957, 35.760731, 39.319389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137025, -0.235350, -0.962203,
		-0.950137, 0.243455, -0.194855,
		0.280112, 0.940925, -0.190255,
		39.314991, 36.043007, 39.262314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645599, 35.613430, 38.870258>,  <39.118912, 35.384361, 39.395493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645599, 35.613430, 38.870258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983295, 35.827751, 38.875584>,  <39.185913, 35.956345, 38.878777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983295, 35.827751, 38.875584>,  <38.645599, 35.613430, 38.870258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983295, 35.827751, 38.875584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073673, -0.091413, -0.993084,
		-0.530881, 0.839380, -0.116649,
		0.844238, 0.535804, 0.013310,
		39.236568, 35.988491, 38.879578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623249, 35.929386, 38.263981>,  <38.645599, 35.613430, 38.870258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623249, 35.929386, 38.263981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005341, 35.969265, 38.375408>,  <39.234596, 35.993191, 38.442265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005341, 35.969265, 38.375408>,  <38.623249, 35.929386, 38.263981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005341, 35.969265, 38.375408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291167, -0.149478, -0.944922,
		-0.052567, 0.983726, -0.171815,
		0.955227, 0.099698, 0.278571,
		39.291908, 35.999176, 38.458981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949638, 36.406223, 37.694069>,  <38.623249, 35.929386, 38.263981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949638, 36.406223, 37.694069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269249, 36.250370, 37.877262>,  <39.461014, 36.156857, 37.987179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269249, 36.250370, 37.877262>,  <38.949638, 36.406223, 37.694069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269249, 36.250370, 37.877262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471827, -0.065887, -0.879226,
		0.372750, 0.918611, 0.131194,
		0.799023, -0.389632, 0.457985,
		39.508957, 36.133480, 38.014656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574638, 36.706612, 37.366810>,  <38.949638, 36.406223, 37.694069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574638, 36.706612, 37.366810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730755, 36.365383, 37.505337>,  <39.824425, 36.160645, 37.588455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730755, 36.365383, 37.505337>,  <39.574638, 36.706612, 37.366810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730755, 36.365383, 37.505337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369377, -0.199468, -0.907619,
		0.843346, 0.482160, 0.237255,
		0.390293, -0.853073, 0.346320,
		39.847843, 36.109463, 37.609234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230026, 36.651871, 37.031677>,  <39.574638, 36.706612, 37.366810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230026, 36.651871, 37.031677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156658, 36.276630, 37.149200>,  <40.112637, 36.051487, 37.219715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156658, 36.276630, 37.149200>,  <40.230026, 36.651871, 37.031677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156658, 36.276630, 37.149200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493746, -0.346355, -0.797655,
		0.850042, -0.001241, 0.526713,
		-0.183419, -0.938103, 0.293804,
		40.101631, 35.995201, 37.237343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824108, 36.297874, 37.086956>,  <40.230026, 36.651871, 37.031677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824108, 36.297874, 37.086956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553699, 36.009827, 37.024445>,  <40.391453, 35.836998, 36.986938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553699, 36.009827, 37.024445>,  <40.824108, 36.297874, 37.086956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553699, 36.009827, 37.024445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611306, -0.429641, -0.664615,
		0.411460, -0.544826, 0.730661,
		-0.676022, -0.720120, -0.156275,
		40.350891, 35.793789, 36.977562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260899, 35.702274, 37.102997>,  <40.824108, 36.297874, 37.086956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260899, 35.702274, 37.102997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931602, 35.540573, 36.943573>,  <40.734024, 35.443550, 36.847919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931602, 35.540573, 36.943573>,  <41.260899, 35.702274, 37.102997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931602, 35.540573, 36.943573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526584, -0.281508, -0.802161,
		0.212082, -0.870247, 0.444625,
		-0.823244, -0.404256, -0.398556,
		40.684628, 35.419296, 36.824005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322178, 35.011425, 36.866402>,  <41.260899, 35.702274, 37.102997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322178, 35.011425, 36.866402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060032, 35.170223, 36.609375>,  <40.902744, 35.265503, 36.455158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060032, 35.170223, 36.609375>,  <41.322178, 35.011425, 36.866402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060032, 35.170223, 36.609375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589273, -0.263439, -0.763779,
		-0.472496, -0.879199, -0.061293,
		-0.655366, 0.397001, -0.642562,
		40.863422, 35.289322, 36.416607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344589, 34.480545, 36.341080>,  <41.322178, 35.011425, 36.866402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344589, 34.480545, 36.341080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176598, 34.804153, 36.176594>,  <41.075802, 34.998318, 36.077904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176598, 34.804153, 36.176594>,  <41.344589, 34.480545, 36.341080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176598, 34.804153, 36.176594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525865, -0.152348, -0.836813,
		-0.739649, -0.567690, -0.361453,
		-0.419984, 0.809023, -0.411212,
		41.050602, 35.046860, 36.053230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726284, 34.082542, 36.735886>,  <41.344589, 34.480545, 36.341080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726284, 34.082542, 36.735886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819618, 33.693611, 36.740494>,  <41.875618, 33.460251, 36.743259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819618, 33.693611, 36.740494>,  <41.726284, 34.082542, 36.735886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819618, 33.693611, 36.740494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775220, -0.178860, 0.605841,
		-0.587015, -0.150295, -0.795503,
		0.233338, -0.972327, 0.011518,
		41.889618, 33.401913, 36.743950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059067, 33.699776, 36.689957>,  <41.726284, 34.082542, 36.735886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059067, 33.699776, 36.689957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337616, 33.457710, 36.844276>,  <41.504745, 33.312469, 36.936871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337616, 33.457710, 36.844276>,  <41.059067, 33.699776, 36.689957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337616, 33.457710, 36.844276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565347, -0.131407, 0.814319,
		-0.442100, -0.785180, -0.433636,
		0.696369, -0.605165, 0.385804,
		41.546528, 33.276161, 36.960018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700977, 33.134846, 36.979893>,  <41.059067, 33.699776, 36.689957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700977, 33.134846, 36.979893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051983, 33.124016, 37.171406>,  <41.262589, 33.117519, 37.286312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051983, 33.124016, 37.171406>,  <40.700977, 33.134846, 36.979893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051983, 33.124016, 37.171406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476203, 0.068524, 0.876661,
		-0.056544, -0.997282, 0.047238,
		0.877516, -0.027075, 0.478783,
		41.315239, 33.115894, 37.315041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.608639, 32.665344, 37.460449>,  <40.700977, 33.134846, 36.979893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.608639, 32.665344, 37.460449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900280, 32.902233, 37.597668>,  <41.075264, 33.044365, 37.680000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900280, 32.902233, 37.597668>,  <40.608639, 32.665344, 37.460449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900280, 32.902233, 37.597668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474585, 0.076328, 0.876894,
		0.493130, -0.802153, 0.336710,
		0.729103, 0.592220, 0.343051,
		41.119011, 33.079899, 37.700584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763371, 32.385273, 38.086369>,  <40.608639, 32.665344, 37.460449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763371, 32.385273, 38.086369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890644, 32.764221, 38.100510>,  <40.967007, 32.991589, 38.108994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890644, 32.764221, 38.100510>,  <40.763371, 32.385273, 38.086369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890644, 32.764221, 38.100510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490546, 0.132613, 0.861266,
		0.811248, -0.291386, 0.506924,
		0.318185, 0.947369, 0.035356,
		40.986099, 33.048431, 38.111118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017242, 32.414516, 38.763500>,  <40.763371, 32.385273, 38.086369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017242, 32.414516, 38.763500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948814, 32.778240, 38.611771>,  <40.907757, 32.996475, 38.520733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948814, 32.778240, 38.611771>,  <41.017242, 32.414516, 38.763500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948814, 32.778240, 38.611771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635568, 0.192338, 0.747703,
		0.752853, 0.368996, 0.545026,
		-0.171070, 0.909312, -0.379325,
		40.897495, 33.051033, 38.497974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291344, 32.890411, 39.358429>,  <41.017242, 32.414516, 38.763500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291344, 32.890411, 39.358429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060497, 33.110004, 39.116585>,  <40.921989, 33.241760, 38.971478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060497, 33.110004, 39.116585>,  <41.291344, 32.890411, 39.358429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060497, 33.110004, 39.116585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540721, 0.297956, 0.786666,
		0.612012, 0.780925, 0.124889,
		-0.577115, 0.548979, -0.604615,
		40.887363, 33.274700, 38.935200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110573, 33.491272, 39.760967>,  <41.291344, 32.890411, 39.358429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110573, 33.491272, 39.760967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835983, 33.517151, 39.471260>,  <40.671230, 33.532681, 39.297436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835983, 33.517151, 39.471260>,  <41.110573, 33.491272, 39.760967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835983, 33.517151, 39.471260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672014, 0.324024, 0.665888,
		0.277765, 0.943834, -0.178953,
		-0.686472, 0.064702, -0.724272,
		40.630043, 33.536560, 39.253979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795422, 34.110489, 39.933277>,  <41.110573, 33.491272, 39.760967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795422, 34.110489, 39.933277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540970, 33.887482, 39.719921>,  <40.388298, 33.753677, 39.591908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540970, 33.887482, 39.719921>,  <40.795422, 34.110489, 39.933277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540970, 33.887482, 39.719921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724027, 0.192381, 0.662401,
		-0.266687, 0.807564, -0.526039,
		-0.636131, -0.557520, -0.533393,
		40.350132, 33.720226, 39.559902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167233, 34.572170, 39.811275>,  <40.795422, 34.110489, 39.933277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167233, 34.572170, 39.811275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062481, 34.189899, 39.757458>,  <39.999630, 33.960537, 39.725166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062481, 34.189899, 39.757458>,  <40.167233, 34.572170, 39.811275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062481, 34.189899, 39.757458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784304, 0.129507, 0.606709,
		-0.562393, 0.264408, -0.783456,
		-0.261881, -0.955676, -0.134542,
		39.983917, 33.903198, 39.717094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488129, 34.556499, 39.733902>,  <40.167233, 34.572170, 39.811275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488129, 34.556499, 39.733902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541622, 34.173992, 39.837952>,  <39.573719, 33.944489, 39.900383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541622, 34.173992, 39.837952>,  <39.488129, 34.556499, 39.733902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541622, 34.173992, 39.837952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638291, 0.117676, 0.760747,
		-0.758090, -0.267768, -0.594642,
		0.133729, -0.956270, 0.260123,
		39.581741, 33.887112, 39.915989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842613, 34.309223, 39.989334>,  <39.488129, 34.556499, 39.733902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842613, 34.309223, 39.989334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112553, 34.045506, 40.121944>,  <39.274517, 33.887276, 40.201511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112553, 34.045506, 40.121944>,  <38.842613, 34.309223, 39.989334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112553, 34.045506, 40.121944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498224, -0.075639, 0.863743,
		-0.544385, -0.748069, -0.379522,
		0.674846, -0.659296, 0.331529,
		39.315006, 33.847717, 40.221405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450138, 33.739349, 40.297363>,  <38.842613, 34.309223, 39.989334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450138, 33.739349, 40.297363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809483, 33.750446, 40.472721>,  <39.025089, 33.757107, 40.577934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809483, 33.750446, 40.472721>,  <38.450138, 33.739349, 40.297363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809483, 33.750446, 40.472721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436701, -0.051299, 0.898143,
		0.047412, -0.998298, -0.033967,
		0.898356, 0.027749, 0.438390,
		39.078991, 33.758770, 40.604237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400948, 33.125706, 40.670753>,  <38.450138, 33.739349, 40.297363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400948, 33.125706, 40.670753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705128, 33.337276, 40.821457>,  <38.887638, 33.464218, 40.911877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705128, 33.337276, 40.821457>,  <38.400948, 33.125706, 40.670753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705128, 33.337276, 40.821457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385615, -0.099004, 0.917333,
		0.522506, -0.842870, 0.128676,
		0.760453, 0.528931, 0.376754,
		38.933262, 33.495956, 40.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529819, 32.455608, 40.353832>,  <38.400948, 33.125706, 40.670753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529819, 32.455608, 40.353832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130852, 32.478664, 40.370930>,  <37.891472, 32.492496, 40.381187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130852, 32.478664, 40.370930>,  <38.529819, 32.455608, 40.353832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130852, 32.478664, 40.370930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036133, 0.111211, -0.993140,
		-0.061998, -0.992124, -0.108841,
		-0.997422, 0.057639, 0.042743,
		37.831627, 32.495956, 40.383751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201099, 31.905657, 39.916050>,  <38.529819, 32.455608, 40.353832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201099, 31.905657, 39.916050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939106, 32.202423, 39.973404>,  <37.781910, 32.380482, 40.007816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939106, 32.202423, 39.973404>,  <38.201099, 31.905657, 39.916050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939106, 32.202423, 39.973404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216752, -0.002690, -0.976223,
		-0.723891, -0.670486, 0.162574,
		-0.654981, 0.741917, 0.143382,
		37.742611, 32.424999, 40.016418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625404, 31.739065, 39.522053>,  <38.201099, 31.905657, 39.916050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625404, 31.739065, 39.522053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562588, 32.129017, 39.585232>,  <37.524899, 32.362988, 39.623138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562588, 32.129017, 39.585232>,  <37.625404, 31.739065, 39.522053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562588, 32.129017, 39.585232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129001, 0.138308, -0.981952,
		-0.979130, -0.174583, 0.104041,
		-0.157042, 0.974880, 0.157943,
		37.515476, 32.421482, 39.632614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925106, 31.896761, 39.173294>,  <37.625404, 31.739065, 39.522053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925106, 31.896761, 39.173294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143848, 32.229389, 39.212158>,  <37.275093, 32.428967, 39.235477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143848, 32.229389, 39.212158>,  <36.925106, 31.896761, 39.173294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143848, 32.229389, 39.212158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008063, 0.110819, -0.993808,
		-0.837190, 0.544250, 0.053897,
		0.546853, 0.831572, 0.097165,
		37.307903, 32.478859, 39.241306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531998, 32.444683, 38.915043>,  <36.925106, 31.896761, 39.173294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531998, 32.444683, 38.915043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916351, 32.552364, 38.889038>,  <37.146965, 32.616974, 38.873436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916351, 32.552364, 38.889038>,  <36.531998, 32.444683, 38.915043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916351, 32.552364, 38.889038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063343, -0.014893, -0.997881,
		-0.269599, 0.962969, 0.002742,
		0.960887, 0.269202, -0.065012,
		37.204617, 32.633125, 38.869534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552235, 33.129013, 38.582951>,  <36.531998, 32.444683, 38.915043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552235, 33.129013, 38.582951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899292, 32.937031, 38.531048>,  <37.107529, 32.821842, 38.499908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899292, 32.937031, 38.531048>,  <36.552235, 33.129013, 38.582951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899292, 32.937031, 38.531048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076584, 0.128850, -0.988703,
		0.491248, 0.867782, 0.075040,
		0.867647, -0.479951, -0.129755,
		37.159588, 32.793045, 38.492123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891121, 33.415619, 37.963497>,  <36.552235, 33.129013, 38.582951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891121, 33.415619, 37.963497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105129, 33.079201, 37.995468>,  <37.233536, 32.877350, 38.014652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105129, 33.079201, 37.995468>,  <36.891121, 33.415619, 37.963497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105129, 33.079201, 37.995468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012963, -0.102770, -0.994621,
		0.844739, 0.531107, -0.065887,
		0.535021, -0.841049, 0.079929,
		37.265636, 32.826885, 38.019447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288746, 33.505817, 37.433327>,  <36.891121, 33.415619, 37.963497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288746, 33.505817, 37.433327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340099, 33.120461, 37.527470>,  <37.370911, 32.889248, 37.583954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340099, 33.120461, 37.527470>,  <37.288746, 33.505817, 37.433327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340099, 33.120461, 37.527470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258681, -0.196571, -0.945750,
		0.957393, 0.182300, 0.223975,
		0.128383, -0.963393, 0.235353,
		37.378613, 32.831444, 37.598076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988247, 33.307808, 37.209759>,  <37.288746, 33.505817, 37.433327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988247, 33.307808, 37.209759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736309, 32.997757, 37.229649>,  <37.585148, 32.811726, 37.241581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736309, 32.997757, 37.229649>,  <37.988247, 33.307808, 37.209759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736309, 32.997757, 37.229649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066362, -0.117485, -0.990855,
		0.773883, -0.620782, 0.125436,
		-0.629842, -0.775130, 0.049723,
		37.547356, 32.765217, 37.244564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261909, 32.832882, 36.839825>,  <37.988247, 33.307808, 37.209759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261909, 32.832882, 36.839825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877296, 32.725746, 36.864216>,  <37.646530, 32.661465, 36.878849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877296, 32.725746, 36.864216>,  <38.261909, 32.832882, 36.839825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877296, 32.725746, 36.864216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028060, -0.125040, -0.991755,
		0.273253, -0.955316, 0.112715,
		-0.961533, -0.267837, 0.060973,
		37.588837, 32.645393, 36.882507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192760, 32.146053, 36.514244>,  <38.261909, 32.832882, 36.839825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192760, 32.146053, 36.514244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817265, 32.282661, 36.532745>,  <37.591969, 32.364628, 36.543846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817265, 32.282661, 36.532745>,  <38.192760, 32.146053, 36.514244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817265, 32.282661, 36.532745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160454, -0.314330, -0.935655,
		-0.304986, -0.885762, 0.349870,
		-0.938743, 0.341500, 0.046258,
		37.535645, 32.385117, 36.546619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747189, 31.616814, 36.253529>,  <38.192760, 32.146053, 36.514244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747189, 31.616814, 36.253529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554657, 31.966087, 36.222870>,  <37.439140, 32.175652, 36.204475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554657, 31.966087, 36.222870>,  <37.747189, 31.616814, 36.253529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554657, 31.966087, 36.222870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140739, -0.163296, -0.976487,
		-0.865170, -0.459220, 0.201490,
		-0.481325, 0.873184, -0.076648,
		37.410259, 32.228043, 36.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.960960, 31.738340, 44.142437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670307, 31.948130, 43.964931>,  <36.495914, 32.074005, 43.858429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670307, 31.948130, 43.964931>,  <36.960960, 31.738340, 44.142437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670307, 31.948130, 43.964931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339634, -0.287248, -0.895621,
		-0.597200, -0.801509, 0.030596,
		-0.726637, 0.524474, -0.443764,
		36.452316, 32.105473, 43.831802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660351, 31.337067, 43.579208>,  <36.960960, 31.738340, 44.142437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660351, 31.337067, 43.579208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548122, 31.710430, 43.489742>,  <36.480785, 31.934448, 43.436062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548122, 31.710430, 43.489742>,  <36.660351, 31.337067, 43.579208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548122, 31.710430, 43.489742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197634, -0.171853, -0.965094,
		-0.939266, -0.314980, -0.136257,
		-0.280570, 0.933410, -0.223666,
		36.463951, 31.990454, 43.422642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337242, 31.249329, 42.941437>,  <36.660351, 31.337067, 43.579208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337242, 31.249329, 42.941437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431301, 31.636976, 42.971134>,  <36.487736, 31.869566, 42.988953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.431301, 31.636976, 42.971134>,  <36.337242, 31.249329, 42.941437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431301, 31.636976, 42.971134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025412, 0.070233, -0.997207,
		-0.971628, 0.236377, -0.008112,
		0.235147, 0.969120, 0.074247,
		36.501846, 31.927711, 42.993408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970673, 31.577497, 42.413883>,  <36.337242, 31.249329, 42.941437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970673, 31.577497, 42.413883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276955, 31.811926, 42.519882>,  <36.460724, 31.952583, 42.583481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276955, 31.811926, 42.519882>,  <35.970673, 31.577497, 42.413883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276955, 31.811926, 42.519882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274555, 0.074760, -0.958661,
		-0.581655, 0.806803, -0.103665,
		0.765700, 0.586071, 0.264997,
		36.506664, 31.987747, 42.599380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935616, 32.179714, 41.905483>,  <35.970673, 31.577497, 42.413883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935616, 32.179714, 41.905483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304642, 32.204643, 42.057793>,  <36.526058, 32.219601, 42.149178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.304642, 32.204643, 42.057793>,  <35.935616, 32.179714, 41.905483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304642, 32.204643, 42.057793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346131, 0.302382, -0.888120,
		-0.170491, 0.951147, 0.257395,
		0.922565, 0.062324, 0.380775,
		36.581409, 32.223339, 42.172024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216606, 32.924961, 41.886490>,  <35.935616, 32.179714, 41.905483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216606, 32.924961, 41.886490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533009, 32.680363, 41.878727>,  <36.722851, 32.533604, 41.874069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.533009, 32.680363, 41.878727>,  <36.216606, 32.924961, 41.886490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533009, 32.680363, 41.878727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269781, 0.377092, -0.886014,
		0.549113, 0.695609, 0.463253,
		0.791008, -0.611498, -0.019404,
		36.770309, 32.496914, 41.872906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690918, 33.308422, 41.611542>,  <36.216606, 32.924961, 41.886490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690918, 33.308422, 41.611542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857834, 32.944923, 41.614269>,  <36.957985, 32.726822, 41.615906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857834, 32.944923, 41.614269>,  <36.690918, 33.308422, 41.611542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857834, 32.944923, 41.614269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491079, 0.219173, -0.843092,
		0.764664, 0.355162, 0.537726,
		0.417289, -0.908748, 0.006819,
		36.983021, 32.672298, 41.616314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465256, 33.332611, 41.662514>,  <36.690918, 33.308422, 41.611542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465256, 33.332611, 41.662514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328213, 33.007782, 41.473553>,  <37.245987, 32.812885, 41.360176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328213, 33.007782, 41.473553>,  <37.465256, 33.332611, 41.662514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328213, 33.007782, 41.473553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568405, 0.221184, -0.792460,
		0.748021, -0.540018, 0.385804,
		-0.342609, -0.812070, -0.472399,
		37.225430, 32.764160, 41.331833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030987, 33.204689, 41.321949>,  <37.465256, 33.332611, 41.662514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030987, 33.204689, 41.321949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723969, 33.033955, 41.130665>,  <37.539757, 32.931515, 41.015892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.723969, 33.033955, 41.130665>,  <38.030987, 33.204689, 41.321949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723969, 33.033955, 41.130665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373843, 0.307938, -0.874880,
		0.520690, -0.850286, -0.076786,
		-0.767544, -0.426836, -0.478214,
		37.493706, 32.905903, 40.987202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595604, 32.770390, 41.254173>,  <38.030987, 33.204689, 41.321949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595604, 32.770390, 41.254173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745071, 33.136459, 41.314606>,  <38.834751, 33.356102, 41.350864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.745071, 33.136459, 41.314606>,  <38.595604, 32.770390, 41.254173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745071, 33.136459, 41.314606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175896, -0.090012, 0.980285,
		0.910730, -0.392880, 0.127341,
		0.373672, 0.915174, 0.151083,
		38.857174, 33.411011, 41.359932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983910, 32.784515, 41.788895>,  <38.595604, 32.770390, 41.254173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983910, 32.784515, 41.788895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.882889, 33.170986, 41.768055>,  <38.822277, 33.402870, 41.755550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.882889, 33.170986, 41.768055>,  <38.983910, 32.784515, 41.788895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882889, 33.170986, 41.768055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101138, 0.027194, 0.994500,
		0.962284, 0.256428, 0.090850,
		-0.252547, 0.966181, -0.052103,
		38.807125, 33.460842, 41.752422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340412, 33.061516, 42.417110>,  <38.983910, 32.784515, 41.788895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340412, 33.061516, 42.417110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081219, 33.347809, 42.312916>,  <38.925705, 33.519585, 42.250401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081219, 33.347809, 42.312916>,  <39.340412, 33.061516, 42.417110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081219, 33.347809, 42.312916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242593, 0.130244, 0.961345,
		0.721991, 0.686124, 0.089236,
		-0.647980, 0.715731, -0.260484,
		38.886826, 33.562527, 42.234772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542149, 33.541401, 42.801907>,  <39.340412, 33.061516, 42.417110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542149, 33.541401, 42.801907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173771, 33.658253, 42.698742>,  <38.952744, 33.728363, 42.636841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173771, 33.658253, 42.698742>,  <39.542149, 33.541401, 42.801907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173771, 33.658253, 42.698742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231352, 0.122724, 0.965098,
		0.313584, 0.948473, -0.045438,
		-0.920946, 0.292127, -0.257915,
		38.897488, 33.745892, 42.621368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389034, 34.234814, 42.975143>,  <39.542149, 33.541401, 42.801907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389034, 34.234814, 42.975143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016224, 34.096130, 42.932968>,  <38.792538, 34.012920, 42.907661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016224, 34.096130, 42.932968>,  <39.389034, 34.234814, 42.975143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016224, 34.096130, 42.932968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244444, 0.386688, 0.889224,
		-0.267525, 0.854557, -0.445155,
		-0.932029, -0.346705, -0.105442,
		38.736614, 33.992119, 42.901337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903481, 34.805096, 43.095150>,  <39.389034, 34.234814, 42.975143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903481, 34.805096, 43.095150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679726, 34.477348, 43.145290>,  <38.545471, 34.280701, 43.175373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679726, 34.477348, 43.145290>,  <38.903481, 34.805096, 43.095150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679726, 34.477348, 43.145290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237924, 0.303580, 0.922622,
		-0.794024, 0.486282, -0.364768,
		-0.559390, -0.819371, 0.125351,
		38.511909, 34.231537, 43.182896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285355, 35.001831, 43.262505>,  <38.903481, 34.805096, 43.095150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285355, 35.001831, 43.262505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.277931, 34.625286, 43.397255>,  <38.273476, 34.399357, 43.478107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.277931, 34.625286, 43.397255>,  <38.285355, 35.001831, 43.262505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277931, 34.625286, 43.397255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363370, 0.320248, 0.874873,
		-0.931460, -0.106172, -0.348009,
		-0.018562, -0.941365, 0.336878,
		38.272362, 34.342876, 43.498318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568195, 34.773701, 43.455460>,  <38.285355, 35.001831, 43.262505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568195, 34.773701, 43.455460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843159, 34.570538, 43.663113>,  <38.008137, 34.448639, 43.787704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843159, 34.570538, 43.663113>,  <37.568195, 34.773701, 43.455460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843159, 34.570538, 43.663113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508135, 0.174364, 0.843442,
		-0.518906, -0.843582, -0.138224,
		0.687411, -0.507904, 0.519133,
		38.049381, 34.418167, 43.818851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207485, 34.400307, 44.015560>,  <37.568195, 34.773701, 43.455460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207485, 34.400307, 44.015560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582336, 34.324394, 44.132713>,  <37.807247, 34.278847, 44.203003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582336, 34.324394, 44.132713>,  <37.207485, 34.400307, 44.015560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582336, 34.324394, 44.132713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279269, 0.095497, 0.955452,
		-0.209298, -0.977171, 0.036492,
		0.937125, -0.189783, 0.292881,
		37.863476, 34.267460, 44.220577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142632, 33.874554, 44.504089>,  <37.207485, 34.400307, 44.015560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142632, 33.874554, 44.504089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480236, 34.080956, 44.562584>,  <37.682796, 34.204796, 44.597683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.480236, 34.080956, 44.562584>,  <37.142632, 33.874554, 44.504089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480236, 34.080956, 44.562584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239664, 0.118935, 0.963543,
		0.479803, -0.848287, 0.224051,
		0.844009, 0.516008, 0.146238,
		37.733440, 34.235756, 44.606457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373554, 33.605827, 45.105034>,  <37.142632, 33.874554, 44.504089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373554, 33.605827, 45.105034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596836, 33.937141, 45.085682>,  <37.730804, 34.135929, 45.074070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596836, 33.937141, 45.085682>,  <37.373554, 33.605827, 45.105034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596836, 33.937141, 45.085682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096825, 0.122948, 0.987678,
		0.824032, -0.546646, 0.148830,
		0.558209, 0.828289, -0.048384,
		37.764297, 34.185627, 45.071167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787868, 33.508335, 45.678795>,  <37.373554, 33.605827, 45.105034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787868, 33.508335, 45.678795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808102, 33.904160, 45.624825>,  <37.820240, 34.141655, 45.592442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808102, 33.904160, 45.624825>,  <37.787868, 33.508335, 45.678795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808102, 33.904160, 45.624825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022951, 0.133909, 0.990728,
		0.998456, -0.053206, -0.015939,
		0.050578, 0.989564, -0.134924,
		37.823277, 34.201027, 45.584347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259964, 33.660755, 46.165424>,  <37.787868, 33.508335, 45.678795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259964, 33.660755, 46.165424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060791, 33.997765, 46.083244>,  <37.941288, 34.199970, 46.033936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060791, 33.997765, 46.083244>,  <38.259964, 33.660755, 46.165424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060791, 33.997765, 46.083244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012111, 0.230132, 0.973084,
		0.867132, 0.487017, -0.104386,
		-0.497931, 0.842528, -0.205453,
		37.911411, 34.250523, 46.021610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378403, 34.099941, 46.719040>,  <38.259964, 33.660755, 46.165424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378403, 34.099941, 46.719040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064373, 34.294472, 46.565605>,  <37.875954, 34.411190, 46.473545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.064373, 34.294472, 46.565605>,  <38.378403, 34.099941, 46.719040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064373, 34.294472, 46.565605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236072, 0.337619, 0.911199,
		0.572649, 0.805915, -0.150248,
		-0.785075, 0.486328, -0.383591,
		37.828850, 34.440369, 46.450527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.341171, 37.446747, 43.189751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.627737, 37.209621, 43.336895>,  <30.799677, 37.067345, 43.425182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.627737, 37.209621, 43.336895>,  <30.341171, 37.446747, 43.189751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627737, 37.209621, 43.336895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497238, 0.063985, -0.865252,
		0.489395, 0.802794, 0.340609,
		0.716413, -0.592814, 0.367865,
		30.842661, 37.031776, 43.447254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969959, 37.572144, 42.780724>,  <30.341171, 37.446747, 43.189751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969959, 37.572144, 42.780724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101141, 37.235073, 42.951530>,  <31.179850, 37.032833, 43.054016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101141, 37.235073, 42.951530>,  <30.969959, 37.572144, 42.780724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101141, 37.235073, 42.951530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636644, -0.136810, -0.758925,
		0.697947, 0.520754, 0.491615,
		0.327955, -0.842673, 0.427021,
		31.199528, 36.982269, 43.079636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683342, 37.651428, 42.834515>,  <30.969959, 37.572144, 42.780724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683342, 37.651428, 42.834515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615412, 37.257572, 42.818317>,  <31.574654, 37.021259, 42.808601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615412, 37.257572, 42.818317>,  <31.683342, 37.651428, 42.834515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615412, 37.257572, 42.818317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432502, -0.037551, -0.900851,
		0.885495, -0.170499, 0.432237,
		-0.169825, -0.984642, -0.040490,
		31.564465, 36.962181, 42.806171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352348, 37.456505, 42.517956>,  <31.683342, 37.651428, 42.834515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352348, 37.456505, 42.517956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101173, 37.146442, 42.490166>,  <31.950468, 36.960403, 42.473492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101173, 37.146442, 42.490166>,  <32.352348, 37.456505, 42.517956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101173, 37.146442, 42.490166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466536, -0.303469, -0.830813,
		0.622925, -0.554114, 0.552198,
		-0.627940, -0.775155, -0.069475,
		31.912792, 36.913895, 42.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711842, 36.855595, 42.511150>,  <32.352348, 37.456505, 42.517956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711842, 36.855595, 42.511150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361217, 36.769951, 42.338730>,  <32.150845, 36.718567, 42.235279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.361217, 36.769951, 42.338730>,  <32.711842, 36.855595, 42.511150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361217, 36.769951, 42.338730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481225, -0.405405, -0.777219,
		-0.008342, -0.888710, 0.458395,
		-0.876557, -0.214108, -0.431051,
		32.098251, 36.705719, 42.209415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665203, 36.137291, 42.188541>,  <32.711842, 36.855595, 42.511150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665203, 36.137291, 42.188541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394249, 36.358650, 41.994675>,  <32.231678, 36.491467, 41.878353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394249, 36.358650, 41.994675>,  <32.665203, 36.137291, 42.188541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394249, 36.358650, 41.994675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409748, -0.263345, -0.873359,
		-0.610951, -0.790189, -0.048369,
		-0.677381, 0.553399, -0.484669,
		32.191036, 36.524670, 41.849274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405045, 35.676231, 41.645271>,  <32.665203, 36.137291, 42.188541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405045, 35.676231, 41.645271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291973, 36.037994, 41.517433>,  <32.224129, 36.255051, 41.440731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.291973, 36.037994, 41.517433>,  <32.405045, 35.676231, 41.645271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291973, 36.037994, 41.517433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488827, -0.150843, -0.859240,
		-0.825311, -0.399117, -0.399459,
		-0.282682, 0.904407, -0.319592,
		32.207169, 36.309315, 41.421555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128902, 35.614227, 40.982182>,  <32.405045, 35.676231, 41.645271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128902, 35.614227, 40.982182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249920, 35.995132, 40.998447>,  <32.322529, 36.223675, 41.008205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.249920, 35.995132, 40.998447>,  <32.128902, 35.614227, 40.982182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249920, 35.995132, 40.998447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370414, -0.078163, -0.925572,
		-0.878214, 0.295088, -0.376381,
		0.302545, 0.952267, 0.040661,
		32.340683, 36.280811, 41.010647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860205, 35.931953, 40.373161>,  <32.128902, 35.614227, 40.982182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860205, 35.931953, 40.373161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155827, 36.186207, 40.462395>,  <32.333199, 36.338760, 40.515934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155827, 36.186207, 40.462395>,  <31.860205, 35.931953, 40.373161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155827, 36.186207, 40.462395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383961, -0.125376, -0.914797,
		-0.553509, 0.761740, -0.336719,
		0.739054, 0.635636, 0.223082,
		32.377544, 36.376896, 40.529320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881004, 36.394360, 39.760380>,  <31.860205, 35.931953, 40.373161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881004, 36.394360, 39.760380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226685, 36.453217, 39.952839>,  <32.434093, 36.488533, 40.068314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.226685, 36.453217, 39.952839>,  <31.881004, 36.394360, 39.760380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226685, 36.453217, 39.952839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479108, 0.051389, -0.876250,
		-0.153662, 0.987779, -0.026088,
		0.864201, 0.147146, 0.481150,
		32.485947, 36.497360, 40.097183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184204, 37.042583, 39.480022>,  <31.881004, 36.394360, 39.760380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184204, 37.042583, 39.480022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488010, 36.832085, 39.632969>,  <32.670292, 36.705784, 39.724735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.488010, 36.832085, 39.632969>,  <32.184204, 37.042583, 39.480022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488010, 36.832085, 39.632969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493799, 0.083802, -0.865529,
		0.423440, 0.846192, 0.323509,
		0.759514, -0.526248, 0.382364,
		32.715866, 36.674210, 39.747677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708904, 37.340485, 39.198692>,  <32.184204, 37.042583, 39.480022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708904, 37.340485, 39.198692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893108, 37.015953, 39.342739>,  <33.003632, 36.821236, 39.429165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893108, 37.015953, 39.342739>,  <32.708904, 37.340485, 39.198692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893108, 37.015953, 39.342739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597653, -0.016564, -0.801583,
		0.656311, 0.584359, 0.477264,
		0.460507, -0.811327, 0.360115,
		33.031261, 36.772556, 39.450775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399853, 37.435493, 39.072018>,  <32.708904, 37.340485, 39.198692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399853, 37.435493, 39.072018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370014, 37.038261, 39.108315>,  <33.352112, 36.799923, 39.130093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370014, 37.038261, 39.108315>,  <33.399853, 37.435493, 39.072018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370014, 37.038261, 39.108315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436072, -0.114314, -0.892622,
		0.896815, -0.027014, 0.441580,
		-0.074592, -0.993077, 0.090738,
		33.347637, 36.740337, 39.135536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075703, 37.156834, 38.817692>,  <33.399853, 37.435493, 39.072018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075703, 37.156834, 38.817692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.808941, 36.859184, 38.802101>,  <33.648884, 36.680595, 38.792747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.808941, 36.859184, 38.802101>,  <34.075703, 37.156834, 38.817692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808941, 36.859184, 38.802101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350102, -0.266739, -0.897930,
		0.657771, -0.612483, 0.438408,
		-0.666908, -0.744120, -0.038978,
		33.608868, 36.635948, 38.790409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551254, 36.798111, 39.145603>,  <34.075703, 37.156834, 38.817692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551254, 36.798111, 39.145603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923893, 36.918407, 39.227264>,  <35.147476, 36.990585, 39.276260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923893, 36.918407, 39.227264>,  <34.551254, 36.798111, 39.145603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923893, 36.918407, 39.227264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317409, 0.399366, 0.860092,
		0.177127, -0.866063, 0.467505,
		0.931599, 0.300735, 0.204158,
		35.203373, 37.008629, 39.288513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750492, 36.583466, 39.959793>,  <34.551254, 36.798111, 39.145603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750492, 36.583466, 39.959793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990192, 36.882153, 39.844334>,  <35.134010, 37.061363, 39.775059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990192, 36.882153, 39.844334>,  <34.750492, 36.583466, 39.959793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990192, 36.882153, 39.844334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163276, 0.466972, 0.869067,
		0.783737, -0.473658, 0.401753,
		0.599248, 0.746716, -0.288647,
		35.169968, 37.106167, 39.757740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347229, 36.610291, 40.361107>,  <34.750492, 36.583466, 39.959793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347229, 36.610291, 40.361107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292801, 36.981537, 40.222500>,  <35.260143, 37.204285, 40.139336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292801, 36.981537, 40.222500>,  <35.347229, 36.610291, 40.361107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292801, 36.981537, 40.222500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053225, 0.342422, 0.938038,
		0.989268, 0.146085, 0.002805,
		-0.136072, 0.928120, -0.346522,
		35.251980, 37.259972, 40.118542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680248, 37.019505, 40.900303>,  <35.347229, 36.610291, 40.361107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680248, 37.019505, 40.900303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445950, 37.267685, 40.691708>,  <35.305370, 37.416592, 40.566551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.445950, 37.267685, 40.691708>,  <35.680248, 37.019505, 40.900303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445950, 37.267685, 40.691708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205583, 0.508639, 0.836075,
		0.783989, 0.596936, -0.170380,
		-0.585745, 0.620446, -0.521487,
		35.270226, 37.453819, 40.535263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000580, 37.624138, 41.104740>,  <35.680248, 37.019505, 40.900303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000580, 37.624138, 41.104740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.618793, 37.656864, 40.989994>,  <35.389721, 37.676498, 40.921146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.618793, 37.656864, 40.989994>,  <36.000580, 37.624138, 41.104740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618793, 37.656864, 40.989994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241679, 0.351647, 0.904398,
		0.174867, 0.932551, -0.315864,
		-0.954470, 0.081812, -0.286870,
		35.332451, 37.681408, 40.903934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705418, 38.267899, 41.426014>,  <36.000580, 37.624138, 41.104740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705418, 38.267899, 41.426014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371033, 38.067425, 41.336590>,  <35.170403, 37.947140, 41.282936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.371033, 38.067425, 41.336590>,  <35.705418, 38.267899, 41.426014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371033, 38.067425, 41.336590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363285, 0.200057, 0.909945,
		-0.411321, 0.841900, -0.349312,
		-0.835966, -0.501180, -0.223562,
		35.120243, 37.917072, 41.269520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149529, 38.712650, 41.600040>,  <35.705418, 38.267899, 41.426014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149529, 38.712650, 41.600040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976147, 38.352268, 41.592106>,  <34.872116, 38.136040, 41.587345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976147, 38.352268, 41.592106>,  <35.149529, 38.712650, 41.600040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976147, 38.352268, 41.592106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487073, 0.215701, 0.846305,
		-0.758207, 0.376495, -0.532329,
		-0.433454, -0.900958, -0.019834,
		34.846111, 38.081982, 41.586155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436592, 38.882812, 41.947674>,  <35.149529, 38.712650, 41.600040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436592, 38.882812, 41.947674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522545, 38.492172, 41.951046>,  <34.574116, 38.257786, 41.953068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.522545, 38.492172, 41.951046>,  <34.436592, 38.882812, 41.947674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522545, 38.492172, 41.951046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499394, -0.102457, 0.860295,
		-0.839305, -0.189068, -0.509726,
		0.214879, -0.976604, 0.008427,
		34.587009, 38.199192, 41.953575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750446, 38.527023, 42.115208>,  <34.436592, 38.882812, 41.947674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750446, 38.527023, 42.115208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029613, 38.259789, 42.218403>,  <34.197113, 38.099445, 42.280319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029613, 38.259789, 42.218403>,  <33.750446, 38.527023, 42.115208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029613, 38.259789, 42.218403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516030, -0.219322, 0.828016,
		-0.496607, -0.711022, -0.497824,
		0.697921, -0.668091, 0.257992,
		34.238991, 38.059361, 42.295799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360451, 37.938801, 42.415684>,  <33.750446, 38.527023, 42.115208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360451, 37.938801, 42.415684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739948, 37.936123, 42.542072>,  <33.967648, 37.934517, 42.617905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739948, 37.936123, 42.542072>,  <33.360451, 37.938801, 42.415684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739948, 37.936123, 42.542072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305670, -0.273474, 0.912019,
		0.080309, -0.961856, -0.261502,
		0.948745, -0.006690, 0.315973,
		34.024570, 37.934116, 42.636864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294731, 37.413559, 42.844746>,  <33.360451, 37.938801, 42.415684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294731, 37.413559, 42.844746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639389, 37.583340, 42.956039>,  <33.846184, 37.685207, 43.022816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639389, 37.583340, 42.956039>,  <33.294731, 37.413559, 42.844746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639389, 37.583340, 42.956039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191670, -0.235479, 0.952792,
		0.469932, -0.874294, -0.121544,
		0.861641, 0.424452, 0.278235,
		33.897881, 37.710674, 43.039509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660629, 36.994644, 43.350388>,  <33.294731, 37.413559, 42.844746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660629, 36.994644, 43.350388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785900, 37.370392, 43.406258>,  <33.861065, 37.595840, 43.439781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785900, 37.370392, 43.406258>,  <33.660629, 36.994644, 43.350388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785900, 37.370392, 43.406258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277975, -0.049964, 0.959288,
		0.908101, -0.339258, 0.245473,
		0.313181, 0.939366, 0.139678,
		33.879856, 37.652203, 43.448162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270798, 37.010208, 43.849113>,  <33.660629, 36.994644, 43.350388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270798, 37.010208, 43.849113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091511, 37.367775, 43.848595>,  <33.983936, 37.582317, 43.848282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091511, 37.367775, 43.848595>,  <34.270798, 37.010208, 43.849113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091511, 37.367775, 43.848595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266818, -0.132400, 0.954609,
		0.853174, 0.428223, 0.297859,
		-0.448222, 0.893921, -0.001298,
		33.957043, 37.635952, 43.848206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469711, 37.228218, 44.413948>,  <34.270798, 37.010208, 43.849113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469711, 37.228218, 44.413948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169128, 37.479424, 44.333046>,  <33.988777, 37.630146, 44.284504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169128, 37.479424, 44.333046>,  <34.469711, 37.228218, 44.413948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169128, 37.479424, 44.333046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354604, -0.125922, 0.926499,
		0.556390, 0.767943, 0.317323,
		-0.751456, 0.628018, -0.202254,
		33.943691, 37.667828, 44.272369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023582, 37.545437, 44.886677>,  <34.469711, 37.228218, 44.413948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023582, 37.545437, 44.886677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334019, 37.488911, 45.132511>,  <35.520279, 37.454994, 45.280010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.334019, 37.488911, 45.132511>,  <35.023582, 37.545437, 44.886677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334019, 37.488911, 45.132511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589652, -0.182924, -0.786670,
		0.223593, 0.972917, -0.058637,
		0.776091, -0.141319, 0.614583,
		35.566845, 37.446514, 45.316887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514565, 37.922596, 44.524357>,  <35.023582, 37.545437, 44.886677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514565, 37.922596, 44.524357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701870, 37.667461, 44.768944>,  <35.814255, 37.514381, 44.915695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701870, 37.667461, 44.768944>,  <35.514565, 37.922596, 44.524357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701870, 37.667461, 44.768944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664597, -0.201781, -0.719441,
		0.582270, 0.743266, 0.329420,
		0.468265, -0.637840, 0.611464,
		35.842350, 37.476109, 44.952381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251369, 38.167736, 44.579193>,  <35.514565, 37.922596, 44.524357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251369, 38.167736, 44.579193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.244740, 37.781761, 44.683971>,  <36.240761, 37.550175, 44.746838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.244740, 37.781761, 44.683971>,  <36.251369, 38.167736, 44.579193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244740, 37.781761, 44.683971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791919, -0.172606, -0.585722,
		0.610401, 0.197737, 0.767015,
		-0.016573, -0.964939, 0.261950,
		36.239769, 37.492279, 44.762558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988903, 37.863846, 44.718147>,  <36.251369, 38.167736, 44.579193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988903, 37.863846, 44.718147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758995, 37.550034, 44.625057>,  <36.621052, 37.361748, 44.569202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.758995, 37.550034, 44.625057>,  <36.988903, 37.863846, 44.718147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758995, 37.550034, 44.625057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684652, -0.305262, -0.661865,
		0.448210, -0.539752, 0.712583,
		-0.574768, -0.784527, -0.232721,
		36.586563, 37.314674, 44.555241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443737, 37.275059, 44.790855>,  <36.988903, 37.863846, 44.718147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443737, 37.275059, 44.790855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134201, 37.195553, 44.550301>,  <36.948479, 37.147850, 44.405968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134201, 37.195553, 44.550301>,  <37.443737, 37.275059, 44.790855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134201, 37.195553, 44.550301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632880, -0.280400, -0.721692,
		-0.025182, -0.939078, 0.342779,
		-0.773841, -0.198764, -0.601385,
		36.902050, 37.135925, 44.369884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751194, 36.750259, 44.430737>,  <37.443737, 37.275059, 44.790855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751194, 36.750259, 44.430737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426991, 36.824257, 44.208435>,  <37.232468, 36.868656, 44.075054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.426991, 36.824257, 44.208435>,  <37.751194, 36.750259, 44.430737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426991, 36.824257, 44.208435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451363, -0.407433, -0.793895,
		-0.373294, -0.894302, 0.246729,
		-0.810508, 0.184992, -0.555748,
		37.183838, 36.879757, 44.041710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719055, 36.179173, 44.041607>,  <37.751194, 36.750259, 44.430737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719055, 36.179173, 44.041607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494705, 36.450665, 43.851978>,  <37.360096, 36.613560, 43.738201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494705, 36.450665, 43.851978>,  <37.719055, 36.179173, 44.041607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494705, 36.450665, 43.851978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353522, -0.321440, -0.878464,
		-0.748624, -0.660306, -0.059656,
		-0.560879, 0.678728, -0.474070,
		37.326443, 36.654282, 43.709759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421211, 35.852276, 43.461720>,  <37.719055, 36.179173, 44.041607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421211, 35.852276, 43.461720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440613, 36.242378, 43.375450>,  <37.452255, 36.476440, 43.323689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.440613, 36.242378, 43.375450>,  <37.421211, 35.852276, 43.461720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440613, 36.242378, 43.375450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475261, -0.212454, -0.853809,
		-0.878507, -0.061084, -0.473809,
		0.048509, 0.975260, -0.215673,
		37.455166, 36.534958, 43.310749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251034, 35.957317, 42.787846>,  <37.421211, 35.852276, 43.461720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251034, 35.957317, 42.787846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433010, 36.305748, 42.861881>,  <37.542194, 36.514805, 42.906303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.433010, 36.305748, 42.861881>,  <37.251034, 35.957317, 42.787846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433010, 36.305748, 42.861881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460312, -0.052101, -0.886227,
		-0.762329, 0.488375, -0.424670,
		0.454937, 0.871077, 0.185087,
		37.569492, 36.567070, 42.917408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144245, 36.325104, 42.157337>,  <37.251034, 35.957317, 42.787846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144245, 36.325104, 42.157337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437843, 36.539551, 42.324112>,  <37.614002, 36.668217, 42.424175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.437843, 36.539551, 42.324112>,  <37.144245, 36.325104, 42.157337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437843, 36.539551, 42.324112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486864, 0.012665, -0.873386,
		-0.473516, 0.844049, -0.251720,
		0.733993, 0.536116, 0.416934,
		37.658043, 36.700386, 42.449192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377686, 36.680992, 41.618263>,  <37.144245, 36.325104, 42.157337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377686, 36.680992, 41.618263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669926, 36.794174, 41.866833>,  <37.845268, 36.862083, 42.015972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669926, 36.794174, 41.866833>,  <37.377686, 36.680992, 41.618263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669926, 36.794174, 41.866833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635982, 0.049227, -0.770132,
		-0.248501, 0.957870, -0.143987,
		0.730598, 0.282952, 0.621421,
		37.889107, 36.879059, 42.053261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644417, 37.364059, 41.376923>,  <37.377686, 36.680992, 41.618263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644417, 37.364059, 41.376923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.902515, 37.152504, 41.597443>,  <38.057373, 37.025570, 41.729755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.902515, 37.152504, 41.597443>,  <37.644417, 37.364059, 41.376923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902515, 37.152504, 41.597443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689309, 0.091886, -0.718617,
		0.329412, 0.843701, 0.423858,
		0.645245, -0.528890, 0.551302,
		38.096088, 36.993835, 41.762833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274124, 37.704163, 41.234196>,  <37.644417, 37.364059, 41.376923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274124, 37.704163, 41.234196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374676, 37.336014, 41.354015>,  <38.435005, 37.115124, 41.425907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.374676, 37.336014, 41.354015>,  <38.274124, 37.704163, 41.234196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374676, 37.336014, 41.354015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734538, -0.020129, -0.678268,
		0.630287, 0.390534, 0.670986,
		0.251380, -0.920368, 0.299549,
		38.450089, 37.059902, 41.443882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074352, 37.670414, 41.444340>,  <38.274124, 37.704163, 41.234196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074352, 37.670414, 41.444340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932377, 37.320663, 41.311985>,  <38.847191, 37.110813, 41.232571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.932377, 37.320663, 41.311985>,  <39.074352, 37.670414, 41.444340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932377, 37.320663, 41.311985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786945, -0.088354, -0.610664,
		0.504714, -0.477140, 0.719445,
		-0.354938, -0.874375, -0.330889,
		38.825893, 37.058350, 41.212719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.946590, 30.236401, 32.141193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646452, 30.003986, 32.015099>,  <30.466368, 29.864538, 31.939442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.646452, 30.003986, 32.015099>,  <30.946590, 30.236401, 32.141193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646452, 30.003986, 32.015099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642706, 0.752778, 0.142317,
		0.154614, 0.309394, -0.938280,
		-0.750348, -0.581034, -0.315239,
		30.421347, 29.829676, 31.920527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581970, 30.623789, 31.594061>,  <30.946590, 30.236401, 32.141193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581970, 30.623789, 31.594061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357822, 30.370743, 31.807898>,  <30.223333, 30.218916, 31.936199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.357822, 30.370743, 31.807898>,  <30.581970, 30.623789, 31.594061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357822, 30.370743, 31.807898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711746, 0.697891, 0.079791,
		-0.423563, -0.335781, -0.841335,
		-0.560368, -0.632613, 0.534592,
		30.189713, 30.180960, 31.968275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003695, 30.681513, 31.254765>,  <30.581970, 30.623789, 31.594061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003695, 30.681513, 31.254765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932045, 30.543324, 31.623234>,  <29.889055, 30.460409, 31.844316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932045, 30.543324, 31.623234>,  <30.003695, 30.681513, 31.254765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932045, 30.543324, 31.623234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763541, 0.639276, 0.091279,
		-0.620418, -0.687004, -0.378294,
		-0.179125, -0.345474, 0.921174,
		29.878307, 30.439682, 31.899586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331509, 30.652998, 31.243544>,  <30.003695, 30.681513, 31.254765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331509, 30.652998, 31.243544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455263, 30.676012, 31.623220>,  <29.529516, 30.689819, 31.851027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.455263, 30.676012, 31.623220>,  <29.331509, 30.652998, 31.243544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455263, 30.676012, 31.623220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809838, 0.539137, 0.231287,
		-0.498439, -0.840251, 0.213395,
		0.309388, 0.057533, 0.949194,
		29.548080, 30.693272, 31.907978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706720, 30.689985, 31.614933>,  <29.331509, 30.652998, 31.243544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706720, 30.689985, 31.614933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985832, 30.827194, 31.866468>,  <29.153299, 30.909519, 32.017391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985832, 30.827194, 31.866468>,  <28.706720, 30.689985, 31.614933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985832, 30.827194, 31.866468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653631, 0.664041, 0.363064,
		-0.293035, -0.664367, 0.687566,
		0.697780, 0.343024, 0.628838,
		29.195166, 30.930101, 32.055119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314848, 30.855036, 32.208317>,  <28.706720, 30.689985, 31.614933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314848, 30.855036, 32.208317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655050, 31.064638, 32.226460>,  <28.859171, 31.190399, 32.237343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655050, 31.064638, 32.226460>,  <28.314848, 30.855036, 32.208317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655050, 31.064638, 32.226460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511611, 0.804204, 0.302505,
		0.122041, -0.280486, 0.952068,
		0.850506, 0.524007, 0.045354,
		28.910202, 31.221840, 32.240067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404270, 31.126905, 32.866634>,  <28.314848, 30.855036, 32.208317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404270, 31.126905, 32.866634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615969, 31.362736, 32.622570>,  <28.742989, 31.504234, 32.476131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615969, 31.362736, 32.622570>,  <28.404270, 31.126905, 32.866634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615969, 31.362736, 32.622570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471240, 0.802274, 0.366456,
		0.705570, 0.093586, 0.702434,
		0.529249, 0.589575, -0.610161,
		28.774744, 31.539608, 32.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518169, 31.695879, 33.180969>,  <28.404270, 31.126905, 32.866634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518169, 31.695879, 33.180969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617142, 31.839451, 32.820980>,  <28.676525, 31.925594, 32.604988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617142, 31.839451, 32.820980>,  <28.518169, 31.695879, 33.180969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617142, 31.839451, 32.820980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587375, 0.794277, 0.155290,
		0.770563, 0.490197, 0.407356,
		0.247431, 0.358931, -0.899970,
		28.691372, 31.947130, 32.550987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874445, 32.430813, 33.270702>,  <28.518169, 31.695879, 33.180969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874445, 32.430813, 33.270702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731260, 32.373554, 32.901623>,  <28.645350, 32.339199, 32.680176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731260, 32.373554, 32.901623>,  <28.874445, 32.430813, 33.270702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731260, 32.373554, 32.901623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493407, 0.867944, 0.056767,
		0.792726, 0.475587, -0.381317,
		-0.357959, -0.143144, -0.922700,
		28.623873, 32.330612, 32.624813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110909, 33.071465, 32.909775>,  <28.874445, 32.430813, 33.270702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110909, 33.071465, 32.909775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808737, 32.931282, 32.688324>,  <28.627434, 32.847172, 32.555454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808737, 32.931282, 32.688324>,  <29.110909, 33.071465, 32.909775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808737, 32.931282, 32.688324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335261, 0.932698, -0.132947,
		0.562961, 0.085179, -0.822082,
		-0.755430, -0.350456, -0.553630,
		28.582108, 32.826145, 32.522236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977449, 33.489544, 32.355751>,  <29.110909, 33.071465, 32.909775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977449, 33.489544, 32.355751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629717, 33.294090, 32.385406>,  <28.421078, 33.176819, 32.403198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.629717, 33.294090, 32.385406>,  <28.977449, 33.489544, 32.355751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629717, 33.294090, 32.385406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494222, 0.860393, -0.124376,
		-0.003013, -0.144764, -0.989461,
		-0.869331, -0.488638, 0.074138,
		28.368917, 33.147499, 32.407646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534290, 33.832520, 31.864069>,  <28.977449, 33.489544, 32.355751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534290, 33.832520, 31.864069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.315403, 33.656448, 32.148827>,  <28.184071, 33.550804, 32.319683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.315403, 33.656448, 32.148827>,  <28.534290, 33.832520, 31.864069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315403, 33.656448, 32.148827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585475, 0.809131, 0.050263,
		-0.598141, -0.389291, -0.700485,
		-0.547218, -0.440181, 0.711895,
		28.151237, 33.524395, 32.362396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855473, 33.930420, 31.620094>,  <28.534290, 33.832520, 31.864069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855473, 33.930420, 31.620094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829327, 33.856853, 32.012402>,  <27.813639, 33.812714, 32.247784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.829327, 33.856853, 32.012402>,  <27.855473, 33.930420, 31.620094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829327, 33.856853, 32.012402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672445, 0.734297, 0.092880,
		-0.737256, -0.653440, -0.171669,
		-0.065365, -0.183915, 0.980767,
		27.809717, 33.801678, 32.306633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169872, 33.956509, 31.824064>,  <27.855473, 33.930420, 31.620094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169872, 33.956509, 31.824064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354944, 33.994267, 32.176659>,  <27.465988, 34.016922, 32.388214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354944, 33.994267, 32.176659>,  <27.169872, 33.956509, 31.824064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354944, 33.994267, 32.176659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537545, 0.820549, 0.194277,
		-0.704963, -0.563727, 0.430395,
		0.462679, 0.094399, 0.881485,
		27.493748, 34.022587, 32.441105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529888, 34.264359, 32.290306>,  <27.169872, 33.956509, 31.824064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529888, 34.264359, 32.290306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870459, 34.346729, 32.483250>,  <27.074800, 34.396152, 32.599014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870459, 34.346729, 32.483250>,  <26.529888, 34.264359, 32.290306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870459, 34.346729, 32.483250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359530, 0.898762, 0.250928,
		-0.381853, -0.387069, 0.839265,
		0.851426, 0.205924, 0.482358,
		27.125887, 34.408504, 32.627956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447653, 34.438610, 33.069431>,  <26.529888, 34.264359, 32.290306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447653, 34.438610, 33.069431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781879, 34.605736, 32.926739>,  <26.982416, 34.706013, 32.841122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781879, 34.605736, 32.926739>,  <26.447653, 34.438610, 33.069431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781879, 34.605736, 32.926739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331238, 0.901163, 0.279617,
		0.438303, -0.115475, 0.891379,
		0.835567, 0.417815, -0.356733,
		27.032549, 34.731079, 32.819717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620411, 34.948250, 33.534283>,  <26.447653, 34.438610, 33.069431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620411, 34.948250, 33.534283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841583, 35.032600, 33.211842>,  <26.974287, 35.083210, 33.018379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.841583, 35.032600, 33.211842>,  <26.620411, 34.948250, 33.534283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841583, 35.032600, 33.211842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172176, 0.975481, 0.137087,
		0.815244, 0.062991, 0.575681,
		0.552930, 0.210878, -0.806101,
		27.007462, 35.095863, 32.970013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901884, 35.620914, 33.829597>,  <26.620411, 34.948250, 33.534283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901884, 35.620914, 33.829597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944363, 35.626556, 33.431900>,  <26.969849, 35.629940, 33.193279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.944363, 35.626556, 33.431900>,  <26.901884, 35.620914, 33.829597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944363, 35.626556, 33.431900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123967, 0.992286, 0.000834,
		0.986587, 0.123165, 0.107125,
		0.106196, 0.014102, -0.994245,
		26.976221, 35.630787, 33.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291922, 36.134064, 33.697895>,  <26.901884, 35.620914, 33.829597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291922, 36.134064, 33.697895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140921, 36.099506, 33.329105>,  <27.050320, 36.078770, 33.107834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.140921, 36.099506, 33.329105>,  <27.291922, 36.134064, 33.697895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140921, 36.099506, 33.329105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227334, 0.973815, 0.001829,
		0.897670, 0.210285, -0.387258,
		-0.377502, -0.086395, -0.921969,
		27.027670, 36.073589, 33.052513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660627, 36.565567, 32.998573>,  <27.291922, 36.134064, 33.697895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660627, 36.565567, 32.998573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263828, 36.522717, 32.971859>,  <27.025749, 36.497005, 32.955830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263828, 36.522717, 32.971859>,  <27.660627, 36.565567, 32.998573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263828, 36.522717, 32.971859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091441, 0.974496, -0.204932,
		0.087032, -0.197186, -0.976495,
		-0.992000, -0.107127, -0.066782,
		26.966228, 36.490578, 32.951824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391670, 36.737038, 33.116264>,  <27.660627, 36.565567, 32.998573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391670, 36.737038, 33.116264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751095, 36.905365, 33.166065>,  <28.966749, 37.006359, 33.195946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.751095, 36.905365, 33.166065>,  <28.391670, 36.737038, 33.116264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751095, 36.905365, 33.166065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428833, -0.902240, -0.045451,
		0.093205, 0.094231, -0.991178,
		0.898563, 0.420814, 0.124502,
		29.020664, 37.031609, 33.203415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859911, 36.423157, 32.568298>,  <28.391670, 36.737038, 33.116264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859911, 36.423157, 32.568298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087240, 36.568932, 32.863377>,  <29.223637, 36.656399, 33.040424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.087240, 36.568932, 32.863377>,  <28.859911, 36.423157, 32.568298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087240, 36.568932, 32.863377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641481, -0.757717, -0.119866,
		0.515280, 0.541340, -0.664408,
		0.568321, 0.364440, 0.737695,
		29.257736, 36.678265, 33.084686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534725, 36.244408, 32.353733>,  <28.859911, 36.423157, 32.568298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534725, 36.244408, 32.353733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.562407, 36.321487, 32.745258>,  <29.579016, 36.367737, 32.980175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.562407, 36.321487, 32.745258>,  <29.534725, 36.244408, 32.353733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562407, 36.321487, 32.745258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641067, -0.760355, 0.104368,
		0.764358, 0.620263, -0.176154,
		0.069204, 0.192701, 0.978814,
		29.583168, 36.379299, 33.038902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213182, 36.142120, 32.538479>,  <29.534725, 36.244408, 32.353733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213182, 36.142120, 32.538479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013771, 36.113274, 32.884026>,  <29.894125, 36.095966, 33.091354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.013771, 36.113274, 32.884026>,  <30.213182, 36.142120, 32.538479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013771, 36.113274, 32.884026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530477, -0.813539, 0.238219,
		0.685612, 0.577022, 0.443828,
		-0.498528, -0.072115, 0.863869,
		29.864212, 36.091640, 33.143185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795221, 36.072739, 33.015602>,  <30.213182, 36.142120, 32.538479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795221, 36.072739, 33.015602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463259, 35.967064, 33.212158>,  <30.264082, 35.903660, 33.330093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.463259, 35.967064, 33.212158>,  <30.795221, 36.072739, 33.015602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463259, 35.967064, 33.212158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475046, -0.796486, 0.374086,
		0.292557, 0.543889, 0.786508,
		-0.829904, -0.264186, 0.491390,
		30.214287, 35.887810, 33.359577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113665, 35.843254, 33.610146>,  <30.795221, 36.072739, 33.015602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113665, 35.843254, 33.610146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744490, 35.691013, 33.587074>,  <30.522985, 35.599667, 33.573231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.744490, 35.691013, 33.587074>,  <31.113665, 35.843254, 33.610146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744490, 35.691013, 33.587074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309408, -0.822588, 0.477090,
		-0.229026, 0.422479, 0.876960,
		-0.922938, -0.380604, -0.057676,
		30.467607, 35.576832, 33.569771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983328, 35.445057, 34.277901>,  <31.113665, 35.843254, 33.610146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983328, 35.445057, 34.277901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.725885, 35.285057, 34.016895>,  <30.571421, 35.189056, 33.860291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.725885, 35.285057, 34.016895>,  <30.983328, 35.445057, 34.277901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725885, 35.285057, 34.016895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292362, -0.916397, 0.273388,
		-0.707316, -0.014816, 0.706742,
		-0.643606, -0.399997, -0.652514,
		30.532804, 35.165058, 33.821140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729565, 34.946362, 34.618065>,  <30.983328, 35.445057, 34.277901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729565, 34.946362, 34.618065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603672, 34.861877, 34.247910>,  <30.528137, 34.811188, 34.025818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603672, 34.861877, 34.247910>,  <30.729565, 34.946362, 34.618065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603672, 34.861877, 34.247910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221833, -0.964297, 0.144642,
		-0.922895, -0.159758, 0.350346,
		-0.314730, -0.211207, -0.925384,
		30.509253, 34.798515, 33.970295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297167, 34.352432, 34.675724>,  <30.729565, 34.946362, 34.618065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297167, 34.352432, 34.675724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418049, 34.375645, 34.295135>,  <30.490578, 34.389572, 34.066780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418049, 34.375645, 34.295135>,  <30.297167, 34.352432, 34.675724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418049, 34.375645, 34.295135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270768, -0.962257, 0.027313,
		-0.913979, -0.265884, -0.306511,
		0.302204, 0.058030, -0.951475,
		30.508711, 34.393055, 34.009693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929810, 33.791656, 34.327393>,  <30.297167, 34.352432, 34.675724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929810, 33.791656, 34.327393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266356, 33.902328, 34.141682>,  <30.468283, 33.968731, 34.030254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266356, 33.902328, 34.141682>,  <29.929810, 33.791656, 34.327393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266356, 33.902328, 34.141682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332322, -0.942288, 0.040681,
		-0.426227, -0.188517, -0.884755,
		0.841363, 0.276685, -0.464277,
		30.518764, 33.985332, 34.002399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967398, 33.201359, 33.998634>,  <29.929810, 33.791656, 34.327393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967398, 33.201359, 33.998634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316652, 33.394180, 33.969620>,  <30.526205, 33.509872, 33.952213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316652, 33.394180, 33.969620>,  <29.967398, 33.201359, 33.998634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316652, 33.394180, 33.969620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482243, -0.875891, -0.016004,
		-0.071246, -0.021006, -0.997238,
		0.873135, 0.482051, -0.072534,
		30.578592, 33.538795, 33.947861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325119, 32.794273, 33.534512>,  <29.967398, 33.201359, 33.998634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325119, 32.794273, 33.534512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.623358, 33.001156, 33.702599>,  <30.802301, 33.125286, 33.803452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.623358, 33.001156, 33.702599>,  <30.325119, 32.794273, 33.534512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623358, 33.001156, 33.702599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515597, -0.847226, 0.127941,
		0.422191, 0.121271, -0.898358,
		0.745597, 0.517206, 0.420218,
		30.847036, 33.156319, 33.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875685, 32.649231, 33.096733>,  <30.325119, 32.794273, 33.534512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875685, 32.649231, 33.096733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996595, 32.757706, 33.462265>,  <31.069141, 32.822792, 33.681583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.996595, 32.757706, 33.462265>,  <30.875685, 32.649231, 33.096733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996595, 32.757706, 33.462265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745199, -0.665029, -0.049140,
		0.594397, 0.695839, -0.403113,
		0.302275, 0.271191, 0.913830,
		31.087278, 32.839062, 33.736416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516973, 32.721989, 33.059631>,  <30.875685, 32.649231, 33.096733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516973, 32.721989, 33.059631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482824, 32.667370, 33.454411>,  <31.462334, 32.634598, 33.691277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482824, 32.667370, 33.454411>,  <31.516973, 32.721989, 33.059631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482824, 32.667370, 33.454411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631424, -0.773664, -0.052417,
		0.770724, 0.618708, 0.152269,
		-0.085374, -0.136545, 0.986948,
		31.457212, 32.626408, 33.750496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250492, 32.488293, 33.302528>,  <31.516973, 32.721989, 33.059631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250492, 32.488293, 33.302528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.000305, 32.386509, 33.597565>,  <31.850193, 32.325439, 33.774586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.000305, 32.386509, 33.597565>,  <32.250492, 32.488293, 33.302528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000305, 32.386509, 33.597565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482741, -0.868878, 0.109603,
		0.612990, 0.424620, 0.666289,
		-0.625464, -0.254459, 0.737594,
		31.812666, 32.310173, 33.818844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645187, 32.103283, 33.787113>,  <32.250492, 32.488293, 33.302528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645187, 32.103283, 33.787113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256779, 32.021217, 33.836147>,  <32.023735, 31.971977, 33.865570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.256779, 32.021217, 33.836147>,  <32.645187, 32.103283, 33.787113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256779, 32.021217, 33.836147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220670, -0.966627, 0.130140,
		0.091796, 0.153420, 0.983888,
		-0.971019, -0.205168, 0.122587,
		31.965473, 31.959667, 33.872925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725182, 31.694822, 34.316353>,  <32.645187, 32.103283, 33.787113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725182, 31.694822, 34.316353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353756, 31.626127, 34.184731>,  <32.130901, 31.584909, 34.105755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.353756, 31.626127, 34.184731>,  <32.725182, 31.694822, 34.316353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353756, 31.626127, 34.184731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139016, -0.982907, 0.120703,
		-0.344163, 0.066336, 0.936563,
		-0.928561, -0.171739, -0.329058,
		32.075188, 31.574606, 34.086014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423771, 31.251986, 34.781494>,  <32.725182, 31.694822, 34.316353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423771, 31.251986, 34.781494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239090, 31.180265, 34.434006>,  <32.128281, 31.137234, 34.225513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.239090, 31.180265, 34.434006>,  <32.423771, 31.251986, 34.781494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239090, 31.180265, 34.434006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047332, -0.982942, 0.177720,
		-0.885769, 0.040936, 0.462317,
		-0.461707, -0.179301, -0.868722,
		32.100578, 31.126474, 34.173389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070782, 30.771046, 34.981422>,  <32.423771, 31.251986, 34.781494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070782, 30.771046, 34.981422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.077133, 30.719982, 34.584747>,  <32.080944, 30.689344, 34.346741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.077133, 30.719982, 34.584747>,  <32.070782, 30.771046, 34.981422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077133, 30.719982, 34.584747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022141, -0.991618, 0.127294,
		-0.999629, 0.019936, -0.018571,
		0.015878, -0.127658, -0.991691,
		32.081898, 30.681684, 34.287239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586590, 30.247246, 34.814098>,  <32.070782, 30.771046, 34.981422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586590, 30.247246, 34.814098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.788229, 30.244701, 34.468647>,  <31.909212, 30.243174, 34.261375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.788229, 30.244701, 34.468647>,  <31.586590, 30.247246, 34.814098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788229, 30.244701, 34.468647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099906, -0.993689, -0.050994,
		-0.857850, 0.111986, -0.501551,
		0.504096, -0.006363, -0.863624,
		31.939457, 30.242792, 34.209560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256027, 30.002321, 34.222527>,  <31.586590, 30.247246, 34.814098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256027, 30.002321, 34.222527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639278, 29.948961, 34.121178>,  <31.869228, 29.916946, 34.060368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.639278, 29.948961, 34.121178>,  <31.256027, 30.002321, 34.222527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639278, 29.948961, 34.121178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152835, -0.986516, -0.058550,
		-0.242147, 0.094823, -0.965595,
		0.958126, -0.133398, -0.253374,
		31.926716, 29.908941, 34.045166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209459, 29.397106, 33.840336>,  <31.256027, 30.002321, 34.222527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209459, 29.397106, 33.840336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.597012, 29.446886, 33.925922>,  <31.829544, 29.476753, 33.977272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.597012, 29.446886, 33.925922>,  <31.209459, 29.397106, 33.840336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597012, 29.446886, 33.925922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094096, -0.984703, 0.146651,
		0.228942, -0.121954, -0.965770,
		0.968881, 0.124450, 0.213964,
		31.887676, 29.484221, 33.990112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.439850, 34.986195, 46.995644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072979, 34.866753, 46.890099>,  <37.852856, 34.795090, 46.826771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.072979, 34.866753, 46.890099>,  <38.439850, 34.986195, 46.995644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072979, 34.866753, 46.890099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371368, 0.400446, 0.837693,
		-0.144473, 0.866303, -0.478170,
		-0.917177, -0.298601, -0.263864,
		37.797825, 34.777172, 46.810940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021378, 35.566536, 47.275459>,  <38.439850, 34.986195, 46.995644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021378, 35.566536, 47.275459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.785843, 35.246635, 47.228691>,  <37.644524, 35.054695, 47.200630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.785843, 35.246635, 47.228691>,  <38.021378, 35.566536, 47.275459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785843, 35.246635, 47.228691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526706, 0.269955, 0.806043,
		-0.613070, 0.536211, -0.580192,
		-0.588835, -0.799751, -0.116924,
		37.609192, 35.006710, 47.193615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367676, 35.906597, 47.306866>,  <38.021378, 35.566536, 47.275459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367676, 35.906597, 47.306866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344437, 35.517426, 47.396343>,  <37.330494, 35.283924, 47.450027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344437, 35.517426, 47.396343>,  <37.367676, 35.906597, 47.306866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344437, 35.517426, 47.396343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562393, 0.217030, 0.797880,
		-0.824826, -0.079446, -0.559777,
		-0.058100, -0.972927, 0.223692,
		37.327007, 35.225548, 47.463451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668518, 35.851257, 47.374889>,  <37.367676, 35.906597, 47.306866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668518, 35.851257, 47.374889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818630, 35.513309, 47.527393>,  <36.908695, 35.310539, 47.618896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.818630, 35.513309, 47.527393>,  <36.668518, 35.851257, 47.374889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818630, 35.513309, 47.527393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580502, 0.106441, 0.807272,
		-0.722623, -0.524272, -0.450505,
		0.375278, -0.844872, 0.381258,
		36.931213, 35.259850, 47.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149376, 35.287205, 47.421219>,  <36.668518, 35.851257, 47.374889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149376, 35.287205, 47.421219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445114, 35.262402, 47.689404>,  <36.622559, 35.247520, 47.850315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445114, 35.262402, 47.689404>,  <36.149376, 35.287205, 47.421219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445114, 35.262402, 47.689404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653540, 0.173520, 0.736733,
		-0.162023, -0.982876, 0.087767,
		0.739347, -0.062008, 0.670463,
		36.666920, 35.243797, 47.890541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964985, 34.883457, 47.895283>,  <36.149376, 35.287205, 47.421219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964985, 34.883457, 47.895283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261772, 35.060333, 48.096855>,  <36.439846, 35.166458, 48.217800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261772, 35.060333, 48.096855>,  <35.964985, 34.883457, 47.895283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261772, 35.060333, 48.096855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617007, 0.156340, 0.771272,
		0.262261, -0.883192, 0.388832,
		0.741971, 0.442187, 0.503934,
		36.484364, 35.192989, 48.248035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850845, 34.661018, 48.555824>,  <35.964985, 34.883457, 47.895283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850845, 34.661018, 48.555824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115948, 34.955482, 48.610691>,  <36.275009, 35.132160, 48.643612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115948, 34.955482, 48.610691>,  <35.850845, 34.661018, 48.555824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115948, 34.955482, 48.610691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370149, 0.162832, 0.914590,
		0.650952, -0.656925, 0.380409,
		0.662760, 0.736162, 0.137164,
		36.314777, 35.176331, 48.651840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092369, 34.553898, 49.230900>,  <35.850845, 34.661018, 48.555824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092369, 34.553898, 49.230900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173115, 34.928795, 49.117176>,  <36.221561, 35.153732, 49.048943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173115, 34.928795, 49.117176>,  <36.092369, 34.553898, 49.230900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173115, 34.928795, 49.117176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382068, 0.342646, 0.858264,
		0.901818, -0.064625, 0.427257,
		0.201863, 0.937239, -0.284314,
		36.233673, 35.209965, 49.031883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394180, 34.874165, 49.859608>,  <36.092369, 34.553898, 49.230900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394180, 34.874165, 49.859608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233608, 35.152431, 49.621311>,  <36.137264, 35.319389, 49.478333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233608, 35.152431, 49.621311>,  <36.394180, 34.874165, 49.859608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233608, 35.152431, 49.621311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426210, 0.433841, 0.793805,
		0.810678, 0.572568, 0.122341,
		-0.401431, 0.695663, -0.595740,
		36.113178, 35.361130, 49.442589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860859, 35.268650, 50.344589>,  <36.394180, 34.874165, 49.859608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860859, 35.268650, 50.344589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778824, 35.387783, 49.971657>,  <35.729603, 35.459263, 49.747898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778824, 35.387783, 49.971657>,  <35.860859, 35.268650, 50.344589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778824, 35.387783, 49.971657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766879, 0.542985, 0.342146,
		0.608143, 0.785152, 0.117044,
		-0.205083, 0.297833, -0.932329,
		35.717300, 35.477135, 49.691959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683899, 35.951580, 50.377613>,  <35.860859, 35.268650, 50.344589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683899, 35.951580, 50.377613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512650, 35.835278, 50.035343>,  <35.409901, 35.765495, 49.829983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512650, 35.835278, 50.035343>,  <35.683899, 35.951580, 50.377613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512650, 35.835278, 50.035343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850790, 0.448956, 0.273120,
		0.304746, 0.844924, -0.439583,
		-0.428120, -0.290761, -0.855670,
		35.384212, 35.748051, 49.778641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293457, 36.530422, 49.996384>,  <35.683899, 35.951580, 50.377613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293457, 36.530422, 49.996384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121700, 36.174774, 49.933029>,  <35.018646, 35.961384, 49.895016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121700, 36.174774, 49.933029>,  <35.293457, 36.530422, 49.996384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121700, 36.174774, 49.933029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889479, 0.385991, 0.244617,
		-0.156360, 0.245914, -0.956597,
		-0.429392, -0.889122, -0.158382,
		34.992882, 35.908039, 49.885513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664642, 36.599125, 49.658062>,  <35.293457, 36.530422, 49.996384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664642, 36.599125, 49.658062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645718, 36.260170, 49.869610>,  <34.634361, 36.056797, 49.996536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645718, 36.260170, 49.869610>,  <34.664642, 36.599125, 49.658062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645718, 36.260170, 49.869610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782927, 0.360259, 0.507187,
		-0.620312, -0.390068, -0.680485,
		-0.047314, -0.847385, 0.528867,
		34.631523, 36.005955, 50.028271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048878, 36.745335, 50.028149>,  <34.664642, 36.599125, 49.658062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048878, 36.745335, 50.028149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157814, 36.386875, 50.168293>,  <34.223175, 36.171799, 50.252380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157814, 36.386875, 50.168293>,  <34.048878, 36.745335, 50.028149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157814, 36.386875, 50.168293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712199, 0.057100, 0.699652,
		-0.646997, -0.440067, -0.622685,
		0.272339, -0.896147, 0.350359,
		34.239517, 36.118031, 50.273399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752800, 36.863895, 50.732441>,  <34.048878, 36.745335, 50.028149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752800, 36.863895, 50.732441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588013, 37.226913, 50.699837>,  <33.489140, 37.444725, 50.680275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588013, 37.226913, 50.699837>,  <33.752800, 36.863895, 50.732441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588013, 37.226913, 50.699837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219071, 0.011814, -0.975637,
		-0.884473, -0.419786, -0.203684,
		-0.411965, 0.907546, -0.081513,
		33.464424, 37.499176, 50.675385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316212, 36.987026, 50.172680>,  <33.752800, 36.863895, 50.732441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316212, 36.987026, 50.172680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441681, 37.359478, 50.247089>,  <33.516964, 37.582951, 50.291733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441681, 37.359478, 50.247089>,  <33.316212, 36.987026, 50.172680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441681, 37.359478, 50.247089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180771, 0.133765, -0.974386,
		-0.932164, 0.339268, -0.126363,
		0.313675, 0.931131, 0.186021,
		33.535782, 37.638817, 50.302895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943420, 37.476410, 49.758755>,  <33.316212, 36.987026, 50.172680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943420, 37.476410, 49.758755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292683, 37.639824, 49.865112>,  <33.502239, 37.737873, 49.928928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292683, 37.639824, 49.865112>,  <32.943420, 37.476410, 49.758755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292683, 37.639824, 49.865112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213859, 0.169119, -0.962114,
		-0.438027, 0.896937, 0.060298,
		0.873154, 0.408536, 0.265897,
		33.554630, 37.762386, 49.944881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048965, 38.064705, 49.327599>,  <32.943420, 37.476410, 49.758755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048965, 38.064705, 49.327599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429871, 38.029629, 49.444561>,  <33.658413, 38.008583, 49.514740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429871, 38.029629, 49.444561>,  <33.048965, 38.064705, 49.327599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429871, 38.029629, 49.444561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295000, 0.017903, -0.955329,
		0.078535, 0.995987, 0.042916,
		0.952264, -0.087687, 0.292410,
		33.715549, 38.003323, 49.532284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402443, 38.547962, 48.972416>,  <33.048965, 38.064705, 49.327599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402443, 38.547962, 48.972416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713356, 38.317635, 49.073818>,  <33.899902, 38.179436, 49.134659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713356, 38.317635, 49.073818>,  <33.402443, 38.547962, 48.972416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713356, 38.317635, 49.073818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441734, 0.212558, -0.871602,
		0.448005, 0.789460, 0.419578,
		0.777279, -0.575824, 0.253505,
		33.946541, 38.144886, 49.149868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979507, 38.934021, 48.752975>,  <33.402443, 38.547962, 48.972416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979507, 38.934021, 48.752975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106380, 38.554893, 48.765862>,  <34.182507, 38.327419, 48.773594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106380, 38.554893, 48.765862>,  <33.979507, 38.934021, 48.752975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106380, 38.554893, 48.765862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410309, 0.106522, -0.905704,
		0.855009, 0.300495, 0.422685,
		0.317185, -0.947816, 0.032219,
		34.201534, 38.270550, 48.775528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765125, 38.905132, 48.621872>,  <33.979507, 38.934021, 48.752975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765125, 38.905132, 48.621872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647034, 38.525650, 48.576630>,  <34.576180, 38.297958, 48.549484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647034, 38.525650, 48.576630>,  <34.765125, 38.905132, 48.621872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647034, 38.525650, 48.576630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543852, -0.069532, -0.836295,
		0.785536, -0.308410, 0.536485,
		-0.295225, -0.948709, -0.113110,
		34.558468, 38.241035, 48.542698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364216, 38.424408, 48.450073>,  <34.765125, 38.905132, 48.621872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364216, 38.424408, 48.450073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061253, 38.201256, 48.314373>,  <34.879475, 38.067364, 48.232952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061253, 38.201256, 48.314373>,  <35.364216, 38.424408, 48.450073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061253, 38.201256, 48.314373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499961, -0.161344, -0.850886,
		0.419960, -0.814084, 0.401125,
		-0.757412, -0.557885, -0.339252,
		34.834030, 38.033890, 48.212597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663555, 37.920742, 48.180321>,  <35.364216, 38.424408, 48.450073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663555, 37.920742, 48.180321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304958, 37.890846, 48.005638>,  <35.089798, 37.872910, 47.900829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.304958, 37.890846, 48.005638>,  <35.663555, 37.920742, 48.180321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304958, 37.890846, 48.005638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442986, -0.133858, -0.886479,
		0.007796, -0.988178, 0.153110,
		-0.896495, -0.074736, -0.436705,
		35.036011, 37.868427, 47.874626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780045, 37.363621, 47.770054>,  <35.663555, 37.920742, 48.180321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780045, 37.363621, 47.770054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467499, 37.574059, 47.635773>,  <35.279972, 37.700321, 47.555206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467499, 37.574059, 47.635773>,  <35.780045, 37.363621, 47.770054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467499, 37.574059, 47.635773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313161, -0.134759, -0.940090,
		-0.539818, -0.839679, -0.059458,
		-0.781362, 0.526097, -0.335700,
		35.233089, 37.731888, 47.535061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728680, 36.910275, 47.180771>,  <35.780045, 37.363621, 47.770054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728680, 36.910275, 47.180771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509766, 37.242817, 47.142136>,  <35.378418, 37.442341, 47.118954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.509766, 37.242817, 47.142136>,  <35.728680, 36.910275, 47.180771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509766, 37.242817, 47.142136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045799, -0.144977, -0.988374,
		-0.835692, -0.536499, 0.117418,
		-0.547285, 0.831354, -0.096585,
		35.345581, 37.492222, 47.113159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105877, 36.748386, 46.770515>,  <35.728680, 36.910275, 47.180771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105877, 36.748386, 46.770515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207458, 37.132469, 46.724010>,  <35.268406, 37.362919, 46.696110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207458, 37.132469, 46.724010>,  <35.105877, 36.748386, 46.770515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207458, 37.132469, 46.724010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258831, -0.183282, -0.948375,
		-0.931941, 0.210752, -0.295076,
		0.253954, 0.960204, -0.116259,
		35.283646, 37.420528, 46.689133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778744, 36.857922, 46.262417>,  <35.105877, 36.748386, 46.770515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778744, 36.857922, 46.262417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035198, 37.164707, 46.251751>,  <35.189072, 37.348778, 46.245354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035198, 37.164707, 46.251751>,  <34.778744, 36.857922, 46.262417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035198, 37.164707, 46.251751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208874, -0.207826, -0.955605,
		-0.738458, 0.607100, -0.293443,
		0.641132, 0.766967, -0.026663,
		35.227539, 37.394798, 46.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808697, 37.028221, 45.485268>,  <34.778744, 36.857922, 46.262417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808697, 37.028221, 45.485268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126480, 37.217041, 45.638107>,  <35.317150, 37.330334, 45.729813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126480, 37.217041, 45.638107>,  <34.808697, 37.028221, 45.485268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126480, 37.217041, 45.638107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495597, -0.140270, -0.857151,
		-0.351022, 0.870340, -0.345387,
		0.794460, 0.472052, 0.382100,
		35.364819, 37.358658, 45.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359943, 37.392387, 45.132927>,  <34.808697, 37.028221, 45.485268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359943, 37.392387, 45.132927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041058, 37.523552, 44.930180>,  <33.849724, 37.602249, 44.808529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041058, 37.523552, 44.930180>,  <34.359943, 37.392387, 45.132927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041058, 37.523552, 44.930180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476500, 0.173728, 0.861839,
		0.370661, 0.928599, 0.017749,
		-0.797219, 0.327907, -0.506872,
		33.801891, 37.621925, 44.778118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202961, 38.067112, 45.357731>,  <34.359943, 37.392387, 45.132927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202961, 38.067112, 45.357731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867622, 37.910843, 45.205658>,  <33.666420, 37.817081, 45.114414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867622, 37.910843, 45.205658>,  <34.202961, 38.067112, 45.357731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867622, 37.910843, 45.205658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503719, 0.288535, 0.814257,
		-0.208414, 0.874139, -0.438684,
		-0.838350, -0.390676, -0.380186,
		33.616116, 37.793640, 45.091602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792870, 38.347897, 45.777679>,  <34.202961, 38.067112, 45.357731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792870, 38.347897, 45.777679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533260, 38.117062, 45.579391>,  <33.377495, 37.978561, 45.460419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.533260, 38.117062, 45.579391>,  <33.792870, 38.347897, 45.777679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533260, 38.117062, 45.579391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685160, 0.160202, 0.710557,
		-0.330642, 0.800813, -0.499374,
		-0.649024, -0.577091, -0.495715,
		33.338554, 37.943935, 45.430676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176399, 38.740211, 45.668308>,  <33.792870, 38.347897, 45.777679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176399, 38.740211, 45.668308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107731, 38.346481, 45.684475>,  <33.066528, 38.110245, 45.694176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107731, 38.346481, 45.684475>,  <33.176399, 38.740211, 45.668308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107731, 38.346481, 45.684475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655458, 0.144753, 0.741230,
		-0.735461, 0.100760, -0.670033,
		-0.171676, -0.984324, 0.040417,
		33.056229, 38.051186, 45.696602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491489, 38.685596, 45.717930>,  <33.176399, 38.740211, 45.668308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491489, 38.685596, 45.717930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622921, 38.336342, 45.861969>,  <32.701778, 38.126789, 45.948395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.622921, 38.336342, 45.861969>,  <32.491489, 38.685596, 45.717930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622921, 38.336342, 45.861969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670462, 0.052906, 0.740055,
		-0.665219, -0.484602, -0.568019,
		0.328580, -0.873134, 0.360101,
		32.721497, 38.074402, 45.970001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874311, 38.296532, 45.763294>,  <32.491489, 38.685596, 45.717930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874311, 38.296532, 45.763294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139702, 38.153095, 46.025963>,  <32.298935, 38.067036, 46.183563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139702, 38.153095, 46.025963>,  <31.874311, 38.296532, 45.763294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139702, 38.153095, 46.025963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675146, 0.091312, 0.732010,
		-0.322451, -0.929020, -0.181515,
		0.663478, -0.358587, 0.656668,
		32.338745, 38.045521, 46.222961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455017, 37.828461, 46.089848>,  <31.874311, 38.296532, 45.763294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455017, 37.828461, 46.089848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769064, 37.922684, 46.318970>,  <31.957493, 37.979218, 46.456444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.769064, 37.922684, 46.318970>,  <31.455017, 37.828461, 46.089848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769064, 37.922684, 46.318970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582027, -0.035579, 0.812391,
		0.211742, -0.971210, 0.109165,
		0.785118, 0.235554, 0.572804,
		32.004601, 37.993351, 46.490810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555391, 37.252567, 46.566429>,  <31.455017, 37.828461, 46.089848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555391, 37.252567, 46.566429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738382, 37.571095, 46.724720>,  <31.848177, 37.762211, 46.819695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738382, 37.571095, 46.724720>,  <31.555391, 37.252567, 46.566429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738382, 37.571095, 46.724720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399940, -0.213214, 0.891396,
		0.794207, -0.566058, 0.220939,
		0.457475, 0.796315, 0.395725,
		31.875626, 37.809990, 46.843437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021748, 37.148159, 45.970428>,  <31.555391, 37.252567, 46.566429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021748, 37.148159, 45.970428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628139, 37.108803, 45.911060>,  <30.391975, 37.085190, 45.875439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628139, 37.108803, 45.911060>,  <31.021748, 37.148159, 45.970428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628139, 37.108803, 45.911060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168081, -0.237994, -0.956613,
		0.058796, -0.966271, 0.250727,
		-0.984018, -0.098387, -0.148418,
		30.332933, 37.079288, 45.866535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901234, 36.409870, 45.733807>,  <31.021748, 37.148159, 45.970428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901234, 36.409870, 45.733807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643948, 36.691597, 45.613667>,  <30.489576, 36.860634, 45.541584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.643948, 36.691597, 45.613667>,  <30.901234, 36.409870, 45.733807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643948, 36.691597, 45.613667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163882, -0.256536, -0.952540,
		-0.747943, -0.661909, 0.049583,
		-0.643214, 0.704319, -0.300349,
		30.450983, 36.902893, 45.523563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539394, 36.139549, 45.179977>,  <30.901234, 36.409870, 45.733807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539394, 36.139549, 45.179977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463579, 36.525639, 45.107948>,  <30.418089, 36.757290, 45.064732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.463579, 36.525639, 45.107948>,  <30.539394, 36.139549, 45.179977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463579, 36.525639, 45.107948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290898, -0.119961, -0.949204,
		-0.937792, -0.232294, -0.258044,
		-0.189539, 0.965220, -0.180072,
		30.406717, 36.815205, 45.053928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075144, 36.135895, 44.656399>,  <30.539394, 36.139549, 45.179977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075144, 36.135895, 44.656399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268064, 36.486286, 44.653511>,  <30.383816, 36.696522, 44.651779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268064, 36.486286, 44.653511>,  <30.075144, 36.135895, 44.656399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268064, 36.486286, 44.653511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251522, -0.146365, -0.956721,
		-0.839121, 0.459611, -0.290919,
		0.482300, 0.875977, -0.007215,
		30.412754, 36.749081, 44.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943642, 36.353725, 44.030388>,  <30.075144, 36.135895, 44.656399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943642, 36.353725, 44.030388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.242760, 36.597740, 44.135197>,  <30.422230, 36.744148, 44.198082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.242760, 36.597740, 44.135197>,  <29.943642, 36.353725, 44.030388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242760, 36.597740, 44.135197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372095, -0.058230, -0.926366,
		-0.549863, 0.790228, -0.270537,
		0.747794, 0.610040, 0.262021,
		30.467098, 36.780754, 44.213802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026697, 36.864136, 43.493622>,  <29.943642, 36.353725, 44.030388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026697, 36.864136, 43.493622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386488, 36.880436, 43.667648>,  <30.602362, 36.890217, 43.772064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.386488, 36.880436, 43.667648>,  <30.026697, 36.864136, 43.493622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386488, 36.880436, 43.667648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427834, 0.120422, -0.895799,
		-0.088892, 0.991886, 0.090884,
		0.899475, 0.040746, 0.435068,
		30.656330, 36.892658, 43.798168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.331863, 34.038746, 49.351063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.455101, 33.703953, 49.170162>,  <33.529045, 33.503075, 49.061623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.455101, 33.703953, 49.170162>,  <33.331863, 34.038746, 49.351063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455101, 33.703953, 49.170162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619307, -0.184404, 0.763187,
		-0.722174, -0.515216, 0.461538,
		0.308097, -0.836988, -0.452248,
		33.547531, 33.452858, 49.034489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071915, 34.710842, 49.023911>,  <33.331863, 34.038746, 49.351063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071915, 34.710842, 49.023911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454807, 34.599003, 49.053680>,  <33.684544, 34.531898, 49.071545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.454807, 34.599003, 49.053680>,  <33.071915, 34.710842, 49.023911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454807, 34.599003, 49.053680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068673, -0.030338, -0.997178,
		0.281069, 0.959637, -0.009840,
		0.957227, -0.279600, 0.074428,
		33.741974, 34.515121, 49.076008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370197, 35.010757, 48.388664>,  <33.071915, 34.710842, 49.023911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370197, 35.010757, 48.388664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655201, 34.759499, 48.513733>,  <33.826202, 34.608742, 48.588772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.655201, 34.759499, 48.513733>,  <33.370197, 35.010757, 48.388664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655201, 34.759499, 48.513733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184553, -0.262151, -0.947215,
		0.676956, 0.732604, -0.070858,
		0.712510, -0.628146, 0.312669,
		33.868954, 34.571056, 48.607533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808460, 35.016937, 47.852497>,  <33.370197, 35.010757, 48.388664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808460, 35.016937, 47.852497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.928883, 34.694653, 48.056534>,  <34.001137, 34.501282, 48.178955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.928883, 34.694653, 48.056534>,  <33.808460, 35.016937, 47.852497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928883, 34.694653, 48.056534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116775, -0.499734, -0.858271,
		0.946431, 0.317950, -0.056359,
		0.301052, -0.805713, 0.510093,
		34.019199, 34.452938, 48.209560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516895, 34.885849, 47.717838>,  <33.808460, 35.016937, 47.852497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516895, 34.885849, 47.717838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.343422, 34.537266, 47.809479>,  <34.239338, 34.328117, 47.864464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.343422, 34.537266, 47.809479>,  <34.516895, 34.885849, 47.717838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343422, 34.537266, 47.809479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345168, -0.395532, -0.851125,
		0.832334, -0.290039, 0.472333,
		-0.433682, -0.871454, 0.229102,
		34.213318, 34.275829, 47.878208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040150, 34.344242, 47.508598>,  <34.516895, 34.885849, 47.717838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040150, 34.344242, 47.508598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.695049, 34.151260, 47.569122>,  <34.487988, 34.035473, 47.605438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.695049, 34.151260, 47.569122>,  <35.040150, 34.344242, 47.508598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695049, 34.151260, 47.569122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271130, -0.694023, -0.666948,
		0.426784, -0.534387, 0.729579,
		-0.862754, -0.482454, 0.151310,
		34.436222, 34.006523, 47.614513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337852, 33.646496, 47.691151>,  <35.040150, 34.344242, 47.508598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337852, 33.646496, 47.691151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960190, 33.626965, 47.560806>,  <34.733593, 33.615246, 47.482597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.960190, 33.626965, 47.560806>,  <35.337852, 33.646496, 47.691151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960190, 33.626965, 47.560806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265643, -0.697908, -0.665100,
		-0.194948, -0.714521, 0.671904,
		-0.944155, -0.048827, -0.325863,
		34.676945, 33.612316, 47.463047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159935, 32.982067, 47.667656>,  <35.337852, 33.646496, 47.691151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159935, 32.982067, 47.667656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.902214, 33.171616, 47.427551>,  <34.747581, 33.285343, 47.283489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.902214, 33.171616, 47.427551>,  <35.159935, 32.982067, 47.667656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902214, 33.171616, 47.427551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135897, -0.701465, -0.699628,
		-0.752598, -0.532348, 0.387559,
		-0.644305, 0.473871, -0.600265,
		34.708923, 33.313778, 47.247471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856529, 32.455124, 47.313400>,  <35.159935, 32.982067, 47.667656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856529, 32.455124, 47.313400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.741276, 32.763241, 47.085846>,  <34.672123, 32.948109, 46.949314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.741276, 32.763241, 47.085846>,  <34.856529, 32.455124, 47.313400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741276, 32.763241, 47.085846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060277, -0.578313, -0.813585,
		-0.955690, -0.268715, 0.120203,
		-0.288137, 0.770290, -0.568886,
		34.654835, 32.994328, 46.915180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398705, 32.218868, 46.788368>,  <34.856529, 32.455124, 47.313400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398705, 32.218868, 46.788368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.551285, 32.563156, 46.653515>,  <34.642834, 32.769730, 46.572601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.551285, 32.563156, 46.653515>,  <34.398705, 32.218868, 46.788368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551285, 32.563156, 46.653515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177375, -0.426085, -0.887124,
		-0.907212, 0.278595, -0.315201,
		0.381451, 0.860718, -0.337134,
		34.665722, 32.821373, 46.552376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228477, 32.341808, 46.047089>,  <34.398705, 32.218868, 46.788368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228477, 32.341808, 46.047089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526321, 32.608624, 46.057014>,  <34.705029, 32.768711, 46.062969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526321, 32.608624, 46.057014>,  <34.228477, 32.341808, 46.047089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526321, 32.608624, 46.057014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263475, -0.259552, -0.929093,
		-0.613300, 0.698350, -0.369013,
		0.744610, 0.667038, 0.024815,
		34.749706, 32.808735, 46.064461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162380, 32.896999, 45.483192>,  <34.228477, 32.341808, 46.047089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162380, 32.896999, 45.483192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.545666, 32.847633, 45.586411>,  <34.775639, 32.818012, 45.648342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.545666, 32.847633, 45.586411>,  <34.162380, 32.896999, 45.483192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545666, 32.847633, 45.586411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215833, -0.280049, -0.935408,
		0.187707, 0.952020, -0.241712,
		0.958218, -0.123414, 0.258045,
		34.833130, 32.810608, 45.663822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797070, 33.593880, 45.433567>,  <34.162380, 32.896999, 45.483192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797070, 33.593880, 45.433567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.591942, 33.309139, 45.241615>,  <33.468864, 33.138294, 45.126442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.591942, 33.309139, 45.241615>,  <33.797070, 33.593880, 45.433567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591942, 33.309139, 45.241615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777649, 0.148364, 0.610943,
		-0.363700, 0.686485, -0.629651,
		-0.512821, -0.711847, -0.479884,
		33.438095, 33.095585, 45.097649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218380, 33.929348, 45.286369>,  <33.797070, 33.593880, 45.433567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218380, 33.929348, 45.286369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131268, 33.539520, 45.265289>,  <33.078999, 33.305622, 45.252640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131268, 33.539520, 45.265289>,  <33.218380, 33.929348, 45.286369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131268, 33.539520, 45.265289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820920, 0.153703, 0.549969,
		-0.527885, 0.163038, -0.833520,
		-0.217780, -0.974574, -0.052704,
		33.065933, 33.247147, 45.249477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461895, 33.809753, 45.193211>,  <33.218380, 33.929348, 45.286369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461895, 33.809753, 45.193211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576321, 33.453728, 45.335171>,  <32.644978, 33.240112, 45.420345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576321, 33.453728, 45.335171>,  <32.461895, 33.809753, 45.193211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576321, 33.453728, 45.335171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684297, 0.069500, 0.725883,
		-0.670747, -0.450509, -0.589186,
		0.286068, -0.890063, 0.354899,
		32.662140, 33.186710, 45.441639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885313, 33.485477, 45.270496>,  <32.461895, 33.809753, 45.193211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885313, 33.485477, 45.270496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131245, 33.282059, 45.511616>,  <32.278805, 33.160007, 45.656288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131245, 33.282059, 45.511616>,  <31.885313, 33.485477, 45.270496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131245, 33.282059, 45.511616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723533, -0.059572, 0.687714,
		-0.313825, -0.858971, -0.404577,
		0.614828, -0.508547, 0.602799,
		32.315693, 33.129494, 45.692455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418516, 32.893795, 45.482136>,  <31.885313, 33.485477, 45.270496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418516, 32.893795, 45.482136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735167, 32.932247, 45.723492>,  <31.925158, 32.955318, 45.868305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735167, 32.932247, 45.723492>,  <31.418516, 32.893795, 45.482136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735167, 32.932247, 45.723492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608118, 0.028095, 0.793349,
		0.059319, -0.994971, 0.080705,
		0.791627, 0.096139, 0.603394,
		31.972654, 32.961086, 45.904510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242247, 32.539700, 46.097885>,  <31.418516, 32.893795, 45.482136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242247, 32.539700, 46.097885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.539732, 32.786350, 46.201164>,  <31.718224, 32.934341, 46.263130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.539732, 32.786350, 46.201164>,  <31.242247, 32.539700, 46.097885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539732, 32.786350, 46.201164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459152, 0.190463, 0.867700,
		0.485868, -0.763871, 0.424774,
		0.743715, 0.616623, 0.258193,
		31.762846, 32.971336, 46.278622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172068, 32.556221, 46.741985>,  <31.242247, 32.539700, 46.097885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172068, 32.556221, 46.741985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.407326, 32.875668, 46.690926>,  <31.548481, 33.067337, 46.660290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.407326, 32.875668, 46.690926>,  <31.172068, 32.556221, 46.741985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407326, 32.875668, 46.690926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450971, 0.454863, 0.767935,
		0.671351, -0.394091, 0.627679,
		0.588144, 0.798619, -0.127649,
		31.583769, 33.115253, 46.652630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627275, 32.659283, 47.435459>,  <31.172068, 32.556221, 46.741985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627275, 32.659283, 47.435459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.555676, 32.994843, 47.229855>,  <31.512716, 33.196178, 47.106491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.555676, 32.994843, 47.229855>,  <31.627275, 32.659283, 47.435459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555676, 32.994843, 47.229855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436368, 0.400555, 0.805691,
		0.881784, 0.368516, 0.294370,
		-0.178999, 0.838899, -0.514011,
		31.501976, 33.246513, 47.075653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882160, 33.291756, 47.914654>,  <31.627275, 32.659283, 47.435459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882160, 33.291756, 47.914654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.618183, 33.444084, 47.655594>,  <31.459797, 33.535480, 47.500156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.618183, 33.444084, 47.655594>,  <31.882160, 33.291756, 47.914654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618183, 33.444084, 47.655594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564801, 0.316995, 0.761914,
		0.495454, 0.868614, 0.005888,
		-0.659943, 0.380819, -0.647651,
		31.420200, 33.558331, 47.461300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770723, 33.932369, 48.264782>,  <31.882160, 33.291756, 47.914654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770723, 33.932369, 48.264782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.489403, 33.920906, 47.980656>,  <31.320610, 33.914028, 47.810181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.489403, 33.920906, 47.980656>,  <31.770723, 33.932369, 48.264782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489403, 33.920906, 47.980656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639387, 0.462234, 0.614430,
		0.310723, 0.886295, -0.343413,
		-0.703304, -0.028656, -0.710312,
		31.278412, 33.912308, 47.767563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530403, 34.631332, 48.180016>,  <31.770723, 33.932369, 48.264782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530403, 34.631332, 48.180016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250744, 34.378307, 48.046715>,  <31.082949, 34.226494, 47.966732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.250744, 34.378307, 48.046715>,  <31.530403, 34.631332, 48.180016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250744, 34.378307, 48.046715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691996, 0.481454, 0.537907,
		-0.179810, 0.606689, -0.774336,
		-0.699149, -0.632558, -0.333256,
		31.040998, 34.188541, 47.946739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999495, 34.971581, 48.274265>,  <31.530403, 34.631332, 48.180016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999495, 34.971581, 48.274265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817348, 34.620564, 48.214176>,  <30.708061, 34.409954, 48.178123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817348, 34.620564, 48.214176>,  <30.999495, 34.971581, 48.274265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817348, 34.620564, 48.214176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785189, 0.316305, 0.532380,
		-0.419668, 0.360381, -0.833069,
		-0.455364, -0.877540, -0.150224,
		30.680738, 34.357300, 48.169109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386200, 35.176399, 48.218403>,  <30.999495, 34.971581, 48.274265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386200, 35.176399, 48.218403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.335888, 34.785564, 48.287071>,  <30.305700, 34.551064, 48.328274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.335888, 34.785564, 48.287071>,  <30.386200, 35.176399, 48.218403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335888, 34.785564, 48.287071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804131, 0.201760, 0.559166,
		-0.580993, -0.067715, -0.811087,
		-0.125781, -0.977091, 0.171673,
		30.298153, 34.492435, 48.338573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644182, 34.924236, 47.997295>,  <30.386200, 35.176399, 48.218403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644182, 34.924236, 47.997295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.782326, 34.682739, 48.284691>,  <29.865211, 34.537842, 48.457127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.782326, 34.682739, 48.284691>,  <29.644182, 34.924236, 47.997295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782326, 34.682739, 48.284691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841506, 0.139698, 0.521874,
		-0.415447, -0.784846, -0.459804,
		0.345358, -0.603739, 0.718489,
		29.885933, 34.501617, 48.500237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015692, 35.088997, 47.568035>,  <29.644182, 34.924236, 47.997295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015692, 35.088997, 47.568035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.859568, 35.438763, 47.683311>,  <28.765894, 35.648621, 47.752480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.859568, 35.438763, 47.683311>,  <29.015692, 35.088997, 47.568035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859568, 35.438763, 47.683311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648555, 0.483302, -0.588044,
		-0.653479, -0.042610, -0.755744,
		-0.390310, 0.874416, 0.288193,
		28.742476, 35.701088, 47.769768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829124, 35.401516, 46.964497>,  <29.015692, 35.088997, 47.568035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829124, 35.401516, 46.964497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852879, 35.693409, 47.236958>,  <28.867132, 35.868546, 47.400433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.852879, 35.693409, 47.236958>,  <28.829124, 35.401516, 46.964497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852879, 35.693409, 47.236958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717083, 0.443516, -0.537667,
		-0.694453, 0.520372, -0.496938,
		0.059387, 0.729730, 0.681151,
		28.870695, 35.912327, 47.441303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579613, 36.168633, 46.654060>,  <28.829124, 35.401516, 46.964497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579613, 36.168633, 46.654060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.805620, 36.222031, 46.979744>,  <28.941225, 36.254070, 47.175156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.805620, 36.222031, 46.979744>,  <28.579613, 36.168633, 46.654060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805620, 36.222031, 46.979744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558915, 0.663989, -0.496722,
		-0.606933, 0.735730, 0.300555,
		0.565018, 0.133493, 0.814208,
		28.975126, 36.262077, 47.224007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705139, 36.932137, 46.755882>,  <28.579613, 36.168633, 46.654060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705139, 36.932137, 46.755882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.994497, 36.708668, 46.918159>,  <29.168112, 36.574585, 47.015526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.994497, 36.708668, 46.918159>,  <28.705139, 36.932137, 46.755882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994497, 36.708668, 46.918159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679603, 0.472488, -0.561156,
		0.121819, 0.681645, 0.721471,
		0.723395, -0.558673, 0.405690,
		29.211515, 36.541065, 47.039867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275497, 37.372894, 46.725315>,  <28.705139, 36.932137, 46.755882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275497, 37.372894, 46.725315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.453835, 37.024323, 46.807129>,  <29.560837, 36.815178, 46.856216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.453835, 37.024323, 46.807129>,  <29.275497, 37.372894, 46.725315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453835, 37.024323, 46.807129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869585, 0.367493, -0.329803,
		0.212236, 0.324900, 0.921627,
		0.445844, -0.871429, 0.204533,
		29.587587, 36.762894, 46.868488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957331, 37.584038, 46.994194>,  <29.275497, 37.372894, 46.725315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957331, 37.584038, 46.994194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978796, 37.193802, 46.909008>,  <29.991674, 36.959660, 46.857899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.978796, 37.193802, 46.909008>,  <29.957331, 37.584038, 46.994194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978796, 37.193802, 46.909008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876729, 0.148117, -0.457611,
		0.477982, -0.162152, 0.863273,
		0.053663, -0.975586, -0.212961,
		29.994896, 36.901127, 46.845119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702221, 37.349125, 47.033150>,  <29.957331, 37.584038, 46.994194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702221, 37.349125, 47.033150> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.539467, 37.060341, 46.809284>,  <30.441814, 36.887070, 46.674965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.539467, 37.060341, 46.809284>,  <30.702221, 37.349125, 47.033150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539467, 37.060341, 46.809284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782061, 0.041288, -0.621832,
		0.472044, -0.690705, 0.547816,
		-0.406884, -0.721957, -0.559663,
		30.417402, 36.843754, 46.641384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995293, 36.735126, 46.864685>,  <30.702221, 37.349125, 47.033150>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995293, 36.735126, 46.864685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.755585, 36.845764, 46.564186>,  <30.611759, 36.912148, 46.383888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.755585, 36.845764, 46.564186>,  <30.995293, 36.735126, 46.864685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755585, 36.845764, 46.564186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761237, -0.093555, -0.641689,
		-0.247772, -0.956421, -0.154490,
		-0.599272, 0.276596, -0.751244,
		30.575804, 36.928741, 46.338814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449753, 37.058758, 47.385975>,  <30.995293, 36.735126, 46.864685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449753, 37.058758, 47.385975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.580271, 37.431915, 47.325001>,  <31.658581, 37.655811, 47.288418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.580271, 37.431915, 47.325001>,  <31.449753, 37.058758, 47.385975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580271, 37.431915, 47.325001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348820, 0.268711, 0.897841,
		0.878553, -0.239790, 0.413092,
		0.326295, 0.932896, -0.152434,
		31.678160, 37.711784, 47.279270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793072, 37.206223, 48.017307>,  <31.449753, 37.058758, 47.385975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793072, 37.206223, 48.017307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.715111, 37.562637, 47.853321>,  <31.668335, 37.776485, 47.754929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.715111, 37.562637, 47.853321>,  <31.793072, 37.206223, 48.017307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715111, 37.562637, 47.853321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203606, 0.372119, 0.905578,
		0.959457, 0.259970, 0.108894,
		-0.194901, 0.891035, -0.409964,
		31.656641, 37.829948, 47.730331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188019, 37.752136, 48.360519>,  <31.793072, 37.206223, 48.017307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188019, 37.752136, 48.360519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.871389, 37.929897, 48.192745>,  <31.681412, 38.036552, 48.092079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.871389, 37.929897, 48.192745>,  <32.188019, 37.752136, 48.360519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871389, 37.929897, 48.192745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135399, 0.541771, 0.829549,
		0.595889, 0.713437, -0.368678,
		-0.791570, 0.444401, -0.419434,
		31.633919, 38.063217, 48.066914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242981, 38.431374, 48.504246>,  <32.188019, 37.752136, 48.360519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242981, 38.431374, 48.504246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864027, 38.318878, 48.443092>,  <31.636656, 38.251381, 48.406399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864027, 38.318878, 48.443092>,  <32.242981, 38.431374, 48.504246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864027, 38.318878, 48.443092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260785, 0.401121, 0.878119,
		-0.185639, 0.871783, -0.453358,
		-0.947380, -0.281242, -0.152884,
		31.579813, 38.234505, 48.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892555, 38.951195, 48.768394>,  <32.242981, 38.431374, 48.504246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892555, 38.951195, 48.768394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.614151, 38.665791, 48.736202>,  <31.447107, 38.494549, 48.716888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.614151, 38.665791, 48.736202>,  <31.892555, 38.951195, 48.768394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614151, 38.665791, 48.736202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241875, 0.127448, 0.961901,
		-0.676065, 0.688960, -0.261285,
		-0.696012, -0.713506, -0.080479,
		31.405348, 38.451740, 48.712059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224504, 39.174519, 49.039219>,  <31.892555, 38.951195, 48.768394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224504, 39.174519, 49.039219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.161518, 38.780495, 49.067089>,  <31.123726, 38.544079, 49.083813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.161518, 38.780495, 49.067089>,  <31.224504, 39.174519, 49.039219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161518, 38.780495, 49.067089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253551, 0.108520, 0.961216,
		-0.954419, 0.133693, -0.266852,
		-0.157467, -0.985063, 0.069675,
		31.114279, 38.484974, 49.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628763, 39.158264, 49.471268>,  <31.224504, 39.174519, 49.039219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628763, 39.158264, 49.471268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782423, 38.789822, 49.496567>,  <30.874619, 38.568756, 49.511745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782423, 38.789822, 49.496567>,  <30.628763, 39.158264, 49.471268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782423, 38.789822, 49.496567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004479, 0.066647, 0.997767,
		-0.923261, -0.383574, 0.021477,
		0.384148, -0.921102, 0.063251,
		30.897667, 38.513493, 49.515541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110228, 38.763248, 49.924320>,  <30.628763, 39.158264, 49.471268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110228, 38.763248, 49.924320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474863, 38.599354, 49.937737>,  <30.693644, 38.501019, 49.945786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.474863, 38.599354, 49.937737>,  <30.110228, 38.763248, 49.924320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474863, 38.599354, 49.937737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079211, -0.094991, 0.992322,
		-0.403403, -0.907245, -0.119048,
		0.911588, -0.409735, 0.033544,
		30.748339, 38.476433, 49.947800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.822731, 35.531574, 35.127396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986729, 35.378464, 35.458549>,  <38.085129, 35.286598, 35.657242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986729, 35.378464, 35.458549>,  <37.822731, 35.531574, 35.127396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986729, 35.378464, 35.458549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713965, 0.430158, 0.552465,
		-0.567588, -0.817588, -0.096922,
		0.409997, -0.382772, 0.827882,
		38.109726, 35.263634, 35.706913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268387, 35.314983, 35.587826>,  <37.822731, 35.531574, 35.127396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268387, 35.314983, 35.587826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600143, 35.341942, 35.809658>,  <37.799198, 35.358116, 35.942757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600143, 35.341942, 35.809658>,  <37.268387, 35.314983, 35.587826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600143, 35.341942, 35.809658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557632, 0.160072, 0.814508,
		-0.033882, -0.984802, 0.170342,
		0.829396, 0.067391, 0.554581,
		37.848961, 35.362160, 35.976032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212341, 34.854271, 36.228806>,  <37.268387, 35.314983, 35.587826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212341, 34.854271, 36.228806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479408, 35.139072, 36.315777>,  <37.639648, 35.309952, 36.367962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479408, 35.139072, 36.315777>,  <37.212341, 34.854271, 36.228806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479408, 35.139072, 36.315777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426188, 0.126089, 0.895804,
		0.610398, -0.690765, 0.387631,
		0.667667, 0.712001, 0.217432,
		37.679707, 35.352673, 36.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432301, 34.752739, 36.977299>,  <37.212341, 34.854271, 36.228806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432301, 34.752739, 36.977299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505772, 35.140869, 36.914387>,  <37.549854, 35.373745, 36.876640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505772, 35.140869, 36.914387>,  <37.432301, 34.752739, 36.977299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505772, 35.140869, 36.914387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331964, 0.211830, 0.919200,
		0.925236, -0.116625, 0.361021,
		0.183677, 0.970323, -0.157277,
		37.560875, 35.431965, 36.867203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.748569, 35.034336, 37.555302>,  <37.432301, 34.752739, 36.977299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.748569, 35.034336, 37.555302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609631, 35.366142, 37.380375>,  <37.526268, 35.565228, 37.275417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609631, 35.366142, 37.380375>,  <37.748569, 35.034336, 37.555302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609631, 35.366142, 37.380375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407106, 0.286722, 0.867211,
		0.844757, 0.479259, 0.238110,
		-0.347347, 0.829519, -0.437319,
		37.505428, 35.614998, 37.249180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833061, 35.570644, 38.095375>,  <37.748569, 35.034336, 37.555302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833061, 35.570644, 38.095375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570518, 35.716148, 37.830990>,  <37.412991, 35.803452, 37.672359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570518, 35.716148, 37.830990>,  <37.833061, 35.570644, 38.095375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570518, 35.716148, 37.830990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591754, 0.295232, 0.750111,
		0.467996, 0.883470, 0.021476,
		-0.656359, 0.363757, -0.660964,
		37.373611, 35.825275, 37.632702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722523, 36.250443, 38.232922>,  <37.833061, 35.570644, 38.095375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722523, 36.250443, 38.232922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402561, 36.179016, 38.003742>,  <37.210583, 36.136162, 37.866234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402561, 36.179016, 38.003742>,  <37.722523, 36.250443, 38.232922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402561, 36.179016, 38.003742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533561, 0.648631, 0.542762,
		0.274712, 0.739859, -0.614119,
		-0.799904, -0.178566, -0.572946,
		37.162590, 36.125446, 37.831860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396049, 36.910393, 38.158714>,  <37.722523, 36.250443, 38.232922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396049, 36.910393, 38.158714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095982, 36.664627, 38.060940>,  <36.915943, 36.517166, 38.002277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095982, 36.664627, 38.060940>,  <37.396049, 36.910393, 38.158714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095982, 36.664627, 38.060940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636914, 0.572015, 0.516856,
		-0.177743, 0.543410, -0.820435,
		-0.750165, -0.614414, -0.244434,
		36.870934, 36.480305, 37.987610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771080, 37.360703, 38.052380>,  <37.396049, 36.910393, 38.158714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771080, 37.360703, 38.052380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622623, 36.995766, 38.121521>,  <36.533550, 36.776802, 38.163006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622623, 36.995766, 38.121521>,  <36.771080, 37.360703, 38.052380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622623, 36.995766, 38.121521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725058, 0.401034, 0.559877,
		-0.580122, 0.082464, -0.810344,
		-0.371145, -0.912344, 0.172857,
		36.511280, 36.722061, 38.173378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055561, 37.436947, 37.969448>,  <36.771080, 37.360703, 38.052380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055561, 37.436947, 37.969448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071468, 37.093853, 38.174469>,  <36.081013, 36.887997, 38.297482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071468, 37.093853, 38.174469>,  <36.055561, 37.436947, 37.969448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071468, 37.093853, 38.174469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792922, 0.285046, 0.538538,
		-0.608024, -0.427831, -0.668781,
		0.039770, -0.857735, 0.512552,
		36.083401, 36.836533, 38.328236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311066, 37.214420, 38.036514>,  <36.055561, 37.436947, 37.969448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311066, 37.214420, 38.036514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543816, 37.074589, 38.330242>,  <35.683464, 36.990692, 38.506477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543816, 37.074589, 38.330242>,  <35.311066, 37.214420, 38.036514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543816, 37.074589, 38.330242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583734, 0.449178, 0.676383,
		-0.566286, -0.822214, 0.057305,
		0.581872, -0.349575, 0.734318,
		35.718376, 36.969715, 38.550537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804691, 36.976936, 38.415852>,  <35.311066, 37.214420, 38.036514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804691, 36.976936, 38.415852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123444, 37.005184, 38.655846>,  <35.314697, 37.022133, 38.799843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123444, 37.005184, 38.655846>,  <34.804691, 36.976936, 38.415852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123444, 37.005184, 38.655846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575082, 0.392926, 0.717558,
		-0.185080, -0.916854, 0.353727,
		0.796885, 0.070617, 0.599989,
		35.362511, 37.026371, 38.835842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549610, 36.237698, 38.611370>,  <34.804691, 36.976936, 38.415852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549610, 36.237698, 38.611370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157761, 36.243484, 38.531235>,  <33.922653, 36.246956, 38.483154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157761, 36.243484, 38.531235>,  <34.549610, 36.237698, 38.611370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157761, 36.243484, 38.531235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194644, -0.177864, -0.964613,
		-0.049583, -0.983949, 0.171424,
		-0.979620, 0.014462, -0.200339,
		33.863876, 36.247822, 38.471134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423195, 35.533455, 38.411022>,  <34.549610, 36.237698, 38.611370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423195, 35.533455, 38.411022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163021, 35.796299, 38.258633>,  <34.006916, 35.954006, 38.167198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163021, 35.796299, 38.258633>,  <34.423195, 35.533455, 38.411022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163021, 35.796299, 38.258633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311787, -0.226389, -0.922788,
		-0.692619, -0.718998, -0.057625,
		-0.650437, 0.657107, -0.380976,
		33.967892, 35.993431, 38.144341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029778, 35.202316, 37.912392>,  <34.423195, 35.533455, 38.411022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029778, 35.202316, 37.912392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936150, 35.575592, 37.803307>,  <33.879974, 35.799557, 37.737854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936150, 35.575592, 37.803307>,  <34.029778, 35.202316, 37.912392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936150, 35.575592, 37.803307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158809, -0.240041, -0.957685,
		-0.959162, -0.267471, -0.092014,
		-0.234066, 0.933188, -0.272715,
		33.865929, 35.855549, 37.721493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504585, 35.204365, 37.349693>,  <34.029778, 35.202316, 37.912392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504585, 35.204365, 37.349693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718136, 35.542553, 37.344677>,  <33.846264, 35.745464, 37.341667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718136, 35.542553, 37.344677>,  <33.504585, 35.204365, 37.349693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718136, 35.542553, 37.344677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235803, -0.163113, -0.958014,
		-0.812019, 0.508501, -0.286446,
		0.533874, 0.845471, -0.012545,
		33.878300, 35.796196, 37.340912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323605, 35.519165, 36.761528>,  <33.504585, 35.204365, 37.349693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323605, 35.519165, 36.761528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656574, 35.722336, 36.850143>,  <33.856358, 35.844238, 36.903313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656574, 35.722336, 36.850143>,  <33.323605, 35.519165, 36.761528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656574, 35.722336, 36.850143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244887, 0.021437, -0.969315,
		-0.497091, 0.861133, -0.106540,
		0.832425, 0.507928, 0.221536,
		33.906303, 35.874714, 36.916603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272404, 36.146530, 36.380344>,  <33.323605, 35.519165, 36.761528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272404, 36.146530, 36.380344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660957, 36.096825, 36.461308>,  <33.894089, 36.067001, 36.509884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660957, 36.096825, 36.461308>,  <33.272404, 36.146530, 36.380344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660957, 36.096825, 36.461308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214377, 0.091916, -0.972417,
		0.102236, 0.987982, 0.115926,
		0.971386, -0.124268, 0.202403,
		33.952374, 36.059544, 36.522030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586674, 36.686642, 35.998238>,  <33.272404, 36.146530, 36.380344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586674, 36.686642, 35.998238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873280, 36.418121, 36.074093>,  <34.045242, 36.257011, 36.119606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873280, 36.418121, 36.074093>,  <33.586674, 36.686642, 35.998238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873280, 36.418121, 36.074093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274236, 0.021112, -0.961431,
		0.641403, 0.740887, 0.199221,
		0.716518, -0.671298, 0.189637,
		34.088234, 36.216732, 36.130985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231052, 36.974903, 35.839024>,  <33.586674, 36.686642, 35.998238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231052, 36.974903, 35.839024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284271, 36.578621, 35.827694>,  <34.316204, 36.340851, 35.820896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284271, 36.578621, 35.827694>,  <34.231052, 36.974903, 35.839024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284271, 36.578621, 35.827694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406681, 0.080631, -0.910005,
		0.903830, 0.109560, 0.413628,
		0.133051, -0.990704, -0.028321,
		34.324188, 36.281410, 35.819199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721516, 37.003487, 35.339642>,  <34.231052, 36.974903, 35.839024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721516, 37.003487, 35.339642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581547, 36.629879, 35.368382>,  <34.497566, 36.405716, 35.385628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581547, 36.629879, 35.368382>,  <34.721516, 37.003487, 35.339642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581547, 36.629879, 35.368382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198218, -0.148792, -0.968799,
		0.915566, -0.324764, 0.237205,
		-0.349925, -0.934018, 0.071854,
		34.476570, 36.349674, 35.389938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202232, 36.657295, 34.942863>,  <34.721516, 37.003487, 35.339642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202232, 36.657295, 34.942863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892529, 36.405910, 34.972675>,  <34.706707, 36.255081, 34.990562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892529, 36.405910, 34.972675>,  <35.202232, 36.657295, 34.942863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892529, 36.405910, 34.972675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173724, -0.324299, -0.929865,
		0.608555, -0.707011, 0.360271,
		-0.774261, -0.628462, 0.074530,
		34.660252, 36.217373, 34.995033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379589, 35.976181, 34.664268>,  <35.202232, 36.657295, 34.942863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379589, 35.976181, 34.664268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983047, 35.991104, 34.613937>,  <34.745125, 36.000057, 34.583736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983047, 35.991104, 34.613937>,  <35.379589, 35.976181, 34.664268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983047, 35.991104, 34.613937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094131, -0.465973, -0.879778,
		-0.091459, -0.884012, 0.458430,
		-0.991350, 0.037312, -0.125831,
		34.685642, 36.002296, 34.576187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134735, 35.248894, 34.423679>,  <35.379589, 35.976181, 34.664268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134735, 35.248894, 34.423679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867619, 35.522789, 34.306934>,  <34.707348, 35.687126, 34.236885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867619, 35.522789, 34.306934>,  <35.134735, 35.248894, 34.423679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867619, 35.522789, 34.306934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161117, -0.515786, -0.841431,
		-0.726701, -0.514876, 0.454761,
		-0.667792, 0.684739, -0.291867,
		34.667282, 35.728210, 34.219376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467533, 34.995537, 34.440189>,  <35.134735, 35.248894, 34.423679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467533, 34.995537, 34.440189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532356, 35.266563, 34.153236>,  <34.571251, 35.429180, 33.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532356, 35.266563, 34.153236>,  <34.467533, 34.995537, 34.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532356, 35.266563, 34.153236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326212, -0.649334, -0.686987,
		-0.931302, 0.345348, 0.115804,
		0.162054, 0.677570, -0.717383,
		34.580971, 35.469833, 33.938023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876865, 34.991135, 34.044777>,  <34.467533, 34.995537, 34.440189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876865, 34.991135, 34.044777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202297, 35.093021, 33.835701>,  <34.397556, 35.154152, 33.710255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202297, 35.093021, 33.835701>,  <33.876865, 34.991135, 34.044777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202297, 35.093021, 33.835701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218206, -0.699486, -0.680519,
		-0.538950, 0.667712, -0.513510,
		0.813584, 0.254715, -0.522687,
		34.446373, 35.169437, 33.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334297, 34.287441, 33.951332>,  <33.876865, 34.991135, 34.044777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334297, 34.287441, 33.951332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086494, 33.981861, 33.879112>,  <33.937813, 33.798515, 33.835781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086494, 33.981861, 33.879112>,  <34.334297, 34.287441, 33.951332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086494, 33.981861, 33.879112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784855, -0.598494, -0.160647,
		0.014671, -0.241224, 0.970358,
		-0.619505, -0.763948, -0.180546,
		33.900642, 33.752678, 33.824947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581882, 33.523136, 33.927769>,  <34.334297, 34.287441, 33.951332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581882, 33.523136, 33.927769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406815, 33.777534, 33.673538>,  <34.301773, 33.930172, 33.521000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406815, 33.777534, 33.673538>,  <34.581882, 33.523136, 33.927769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406815, 33.777534, 33.673538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454848, -0.453149, -0.766661,
		-0.775605, -0.624632, -0.090954,
		-0.437665, 0.635996, -0.635577,
		34.275517, 33.968334, 33.482864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462399, 33.209332, 34.613350>,  <34.581882, 33.523136, 33.927769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462399, 33.209332, 34.613350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778942, 33.127140, 34.843662>,  <34.968868, 33.077824, 34.981850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778942, 33.127140, 34.843662>,  <34.462399, 33.209332, 34.613350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778942, 33.127140, 34.843662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610371, -0.318827, 0.725118,
		0.034580, -0.925272, -0.377724,
		0.791360, -0.205477, 0.575785,
		35.016350, 33.065498, 35.016399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193844, 32.632889, 34.958977>,  <34.462399, 33.209332, 34.613350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193844, 32.632889, 34.958977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515213, 32.762886, 35.158531>,  <34.708035, 32.840885, 35.278263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515213, 32.762886, 35.158531>,  <34.193844, 32.632889, 34.958977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515213, 32.762886, 35.158531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489469, -0.116562, 0.864195,
		0.339005, -0.938507, 0.065423,
		0.803427, 0.324989, 0.498885,
		34.756241, 32.860382, 35.308197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305828, 32.152054, 35.395672>,  <34.193844, 32.632889, 34.958977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305828, 32.152054, 35.395672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457745, 32.486893, 35.553165>,  <34.548893, 32.687798, 35.647663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457745, 32.486893, 35.553165>,  <34.305828, 32.152054, 35.395672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457745, 32.486893, 35.553165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363515, -0.256337, 0.895627,
		0.850658, -0.483276, 0.206945,
		0.379787, 0.837100, 0.393732,
		34.571682, 32.738022, 35.671284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565090, 31.963625, 36.067734>,  <34.305828, 32.152054, 35.395672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565090, 31.963625, 36.067734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549942, 32.362576, 36.092396>,  <34.540852, 32.601948, 36.107193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549942, 32.362576, 36.092396>,  <34.565090, 31.963625, 36.067734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549942, 32.362576, 36.092396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183973, -0.067603, 0.980604,
		0.982201, 0.025796, 0.186051,
		-0.037873, 0.997379, 0.061654,
		34.538582, 32.661789, 36.110893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972820, 32.211617, 36.655617>,  <34.565090, 31.963625, 36.067734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972820, 32.211617, 36.655617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731976, 32.515408, 36.557110>,  <34.587467, 32.697681, 36.498005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731976, 32.515408, 36.557110>,  <34.972820, 32.211617, 36.655617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731976, 32.515408, 36.557110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193493, 0.160445, 0.967894,
		0.774609, 0.630433, 0.050349,
		-0.602114, 0.759481, -0.246267,
		34.551342, 32.743252, 36.483231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196911, 32.608448, 37.142391>,  <34.972820, 32.211617, 36.655617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196911, 32.608448, 37.142391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847977, 32.755333, 37.013279>,  <34.638615, 32.843464, 36.935810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847977, 32.755333, 37.013279>,  <35.196911, 32.608448, 37.142391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847977, 32.755333, 37.013279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311806, 0.090660, 0.945811,
		0.376575, 0.925709, 0.035412,
		-0.872335, 0.367210, -0.322782,
		34.586277, 32.865498, 36.916443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124634, 33.267735, 37.491352>,  <35.196911, 32.608448, 37.142391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124634, 33.267735, 37.491352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769928, 33.115654, 37.386211>,  <34.557102, 33.024406, 37.323128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.769928, 33.115654, 37.386211>,  <35.124634, 33.267735, 37.491352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769928, 33.115654, 37.386211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302224, 0.046662, 0.952094,
		-0.349721, 0.923727, -0.156284,
		-0.886767, -0.380200, -0.262853,
		34.503899, 33.001595, 37.307354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722664, 33.608185, 37.930481>,  <35.124634, 33.267735, 37.491352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722664, 33.608185, 37.930481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465393, 33.337166, 37.787785>,  <34.311031, 33.174557, 37.702168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465393, 33.337166, 37.787785>,  <34.722664, 33.608185, 37.930481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465393, 33.337166, 37.787785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371562, -0.131205, 0.919090,
		-0.669530, 0.723685, -0.167362,
		-0.643173, -0.677544, -0.356739,
		34.272442, 33.133904, 37.680763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040257, 33.770390, 38.282364>,  <34.722664, 33.608185, 37.930481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040257, 33.770390, 38.282364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021690, 33.392124, 38.153641>,  <34.010551, 33.165165, 38.076408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021690, 33.392124, 38.153641>,  <34.040257, 33.770390, 38.282364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021690, 33.392124, 38.153641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351811, -0.286040, 0.891297,
		-0.934920, 0.154583, -0.319421,
		-0.046412, -0.945667, -0.321808,
		34.007767, 33.108425, 38.057098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499416, 33.593483, 38.572338>,  <34.040257, 33.770390, 38.282364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499416, 33.593483, 38.572338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671921, 33.247417, 38.469963>,  <33.775421, 33.039776, 38.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671921, 33.247417, 38.469963>,  <33.499416, 33.593483, 38.572338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671921, 33.247417, 38.469963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407285, -0.439805, 0.800432,
		-0.805069, -0.240953, -0.542038,
		0.431257, -0.865167, -0.255937,
		33.801296, 32.987869, 38.393181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863075, 33.125122, 38.642597>,  <33.499416, 33.593483, 38.572338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863075, 33.125122, 38.642597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229290, 32.969460, 38.683285>,  <33.449020, 32.876060, 38.707699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229290, 32.969460, 38.683285>,  <32.863075, 33.125122, 38.642597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229290, 32.969460, 38.683285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230087, -0.299266, 0.926013,
		-0.329935, -0.871199, -0.363531,
		0.915534, -0.389168, 0.101713,
		33.503952, 32.852715, 38.713799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753288, 32.537552, 38.894852>,  <32.863075, 33.125122, 38.642597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753288, 32.537552, 38.894852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136490, 32.585758, 38.998924>,  <33.366413, 32.614681, 39.061367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136490, 32.585758, 38.998924>,  <32.753288, 32.537552, 38.894852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136490, 32.585758, 38.998924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192016, -0.404263, 0.894260,
		0.212957, -0.906668, -0.364146,
		0.958008, 0.120517, 0.260185,
		33.423893, 32.621914, 39.076981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007523, 31.815893, 38.994663>,  <32.753288, 32.537552, 38.894852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007523, 31.815893, 38.994663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239750, 32.091236, 39.168610>,  <33.379086, 32.256443, 39.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239750, 32.091236, 39.168610>,  <33.007523, 31.815893, 38.994663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239750, 32.091236, 39.168610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117388, -0.457747, 0.881299,
		0.805706, -0.562701, -0.184948,
		0.580567, 0.688357, 0.434864,
		33.413921, 32.297745, 39.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295361, 31.448269, 39.520290>,  <33.007523, 31.815893, 38.994663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295361, 31.448269, 39.520290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361103, 31.825827, 39.634865>,  <33.400547, 32.052361, 39.703609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361103, 31.825827, 39.634865>,  <33.295361, 31.448269, 39.520290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361103, 31.825827, 39.634865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121376, -0.307533, 0.943765,
		0.978905, -0.120346, -0.165111,
		0.164356, 0.943896, 0.286439,
		33.410408, 32.108997, 39.720795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968071, 31.526031, 39.814651>,  <33.295361, 31.448269, 39.520290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968071, 31.526031, 39.814651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754883, 31.824465, 39.974300>,  <33.626972, 32.003525, 40.070091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754883, 31.824465, 39.974300>,  <33.968071, 31.526031, 39.814651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754883, 31.824465, 39.974300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297406, -0.276424, 0.913860,
		0.792145, 0.605761, -0.074564,
		-0.532969, 0.746085, 0.399125,
		33.594994, 32.048290, 40.094036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444351, 31.971437, 40.315823>,  <33.968071, 31.526031, 39.814651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444351, 31.971437, 40.315823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065300, 32.055573, 40.411953>,  <33.837868, 32.106052, 40.469631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065300, 32.055573, 40.411953>,  <34.444351, 31.971437, 40.315823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065300, 32.055573, 40.411953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256912, 0.055046, 0.964866,
		0.189719, 0.976078, -0.106202,
		-0.947630, 0.210338, 0.240323,
		33.781010, 32.118675, 40.484051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518261, 32.305668, 40.912708>,  <34.444351, 31.971437, 40.315823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518261, 32.305668, 40.912708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118607, 32.304794, 40.929298>,  <33.878815, 32.304272, 40.939251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118607, 32.304794, 40.929298>,  <34.518261, 32.305668, 40.912708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118607, 32.304794, 40.929298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040667, 0.151017, 0.987694,
		-0.008418, 0.988529, -0.150798,
		-0.999137, -0.002181, 0.041472,
		33.818867, 32.304138, 40.941738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312210, 32.908661, 41.250313>,  <34.518261, 32.305668, 40.912708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312210, 32.908661, 41.250313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000980, 32.660034, 41.286655>,  <33.814243, 32.510860, 41.308460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000980, 32.660034, 41.286655>,  <34.312210, 32.908661, 41.250313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000980, 32.660034, 41.286655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164073, 0.340712, 0.925741,
		-0.606362, 0.705391, -0.367082,
		-0.778078, -0.621562, 0.090859,
		33.767555, 32.473564, 41.313911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550671, 33.252113, 41.478355>,  <34.312210, 32.908661, 41.250313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550671, 33.252113, 41.478355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547432, 32.875221, 41.612301>,  <33.545486, 32.649086, 41.692669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547432, 32.875221, 41.612301>,  <33.550671, 33.252113, 41.478355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547432, 32.875221, 41.612301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169039, 0.331343, 0.928245,
		-0.985576, -0.049086, -0.161957,
		-0.008100, -0.942233, 0.334861,
		33.545002, 32.592552, 41.712761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001865, 33.141407, 41.964924>,  <33.550671, 33.252113, 41.478355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001865, 33.141407, 41.964924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265167, 32.850891, 42.044132>,  <33.423149, 32.676582, 42.091660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265167, 32.850891, 42.044132>,  <33.001865, 33.141407, 41.964924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265167, 32.850891, 42.044132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094267, 0.181457, 0.978870,
		-0.746872, -0.663010, 0.050980,
		0.658252, -0.726285, 0.198025,
		33.462643, 32.633007, 42.103539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664455, 32.675877, 42.647957>,  <33.001865, 33.141407, 41.964924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664455, 32.675877, 42.647957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044010, 32.557640, 42.603706>,  <33.271744, 32.486698, 42.577156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044010, 32.557640, 42.603706>,  <32.664455, 32.675877, 42.647957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044010, 32.557640, 42.603706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008634, -0.326078, 0.945304,
		-0.315468, -0.897951, -0.306862,
		0.948897, -0.295563, -0.110620,
		33.328678, 32.468964, 42.570518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721771, 31.992125, 42.880016>,  <32.664455, 32.675877, 42.647957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721771, 31.992125, 42.880016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074200, 32.170406, 42.943348>,  <33.285656, 32.277374, 42.981346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074200, 32.170406, 42.943348>,  <32.721771, 31.992125, 42.880016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074200, 32.170406, 42.943348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042027, -0.259651, 0.964788,
		0.471119, -0.856698, -0.210039,
		0.881068, 0.445703, 0.158331,
		33.338520, 32.304115, 42.990849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061661, 31.726742, 43.484322>,  <32.721771, 31.992125, 42.880016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061661, 31.726742, 43.484322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336113, 32.014584, 43.441608>,  <33.500782, 32.187286, 43.415981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336113, 32.014584, 43.441608>,  <33.061661, 31.726742, 43.484322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336113, 32.014584, 43.441608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152030, 0.001704, 0.988374,
		0.711419, -0.694384, -0.108232,
		0.686126, 0.719603, -0.106780,
		33.541950, 32.230465, 43.409576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654232, 31.516005, 43.990788>,  <33.061661, 31.726742, 43.484322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654232, 31.516005, 43.990788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663048, 31.905079, 43.898354>,  <33.668339, 32.138523, 43.842896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663048, 31.905079, 43.898354>,  <33.654232, 31.516005, 43.990788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663048, 31.905079, 43.898354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016037, 0.230765, 0.972877,
		0.999628, -0.025151, -0.010512,
		0.022043, 0.972685, -0.231083,
		33.669662, 32.196884, 43.829029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244324, 31.906178, 44.319469>,  <33.654232, 31.516005, 43.990788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244324, 31.906178, 44.319469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991005, 32.211330, 44.267387>,  <33.839016, 32.394421, 44.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991005, 32.211330, 44.267387>,  <34.244324, 31.906178, 44.319469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991005, 32.211330, 44.267387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137457, 0.276445, 0.951149,
		0.761606, 0.584459, -0.279934,
		-0.633294, 0.762880, -0.130204,
		33.801018, 32.440193, 44.228325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498833, 32.573162, 44.648167>,  <34.244324, 31.906178, 44.319469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498833, 32.573162, 44.648167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100918, 32.596207, 44.614494>,  <33.862171, 32.610031, 44.594292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.100918, 32.596207, 44.614494>,  <34.498833, 32.573162, 44.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100918, 32.596207, 44.614494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077420, 0.110972, 0.990803,
		0.066421, 0.992152, -0.105933,
		-0.994784, 0.057609, -0.084183,
		33.802483, 32.613491, 44.589241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619141, 33.227219, 44.915569>,  <34.498833, 32.573162, 44.648167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619141, 33.227219, 44.915569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866493, 32.980061, 45.109810>,  <35.014904, 32.831764, 45.226357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866493, 32.980061, 45.109810>,  <34.619141, 33.227219, 44.915569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866493, 32.980061, 45.109810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471273, -0.202919, -0.858327,
		0.628897, 0.759622, 0.165718,
		0.618377, -0.617898, 0.485605,
		35.052006, 32.794693, 45.255493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293053, 33.449402, 44.671959>,  <34.619141, 33.227219, 44.915569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293053, 33.449402, 44.671959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376850, 33.095570, 44.838638>,  <35.427128, 32.883270, 44.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376850, 33.095570, 44.838638>,  <35.293053, 33.449402, 44.671959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376850, 33.095570, 44.838638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568913, -0.236333, -0.787709,
		0.795268, 0.402083, 0.453738,
		0.209491, -0.884577, 0.416698,
		35.439697, 32.830196, 44.963646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986412, 33.423580, 44.521313>,  <35.293053, 33.449402, 44.671959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986412, 33.423580, 44.521313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874687, 33.051430, 44.616287>,  <35.807652, 32.828140, 44.673271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874687, 33.051430, 44.616287>,  <35.986412, 33.423580, 44.521313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874687, 33.051430, 44.616287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420523, -0.340832, -0.840829,
		0.863218, -0.135005, 0.486445,
		-0.279312, -0.930380, 0.237440,
		35.790894, 32.772316, 44.687519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534927, 33.011292, 44.575073>,  <35.986412, 33.423580, 44.521313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534927, 33.011292, 44.575073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223564, 32.783951, 44.468445>,  <36.036747, 32.647545, 44.404469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223564, 32.783951, 44.468445>,  <36.534927, 33.011292, 44.575073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223564, 32.783951, 44.468445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512048, -0.329181, -0.793377,
		0.363170, -0.754064, 0.547261,
		-0.778405, -0.568355, -0.266568,
		35.990044, 32.613445, 44.388474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769287, 32.425850, 44.566494>,  <36.534927, 33.011292, 44.575073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769287, 32.425850, 44.566494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451542, 32.376514, 44.328575>,  <36.260895, 32.346912, 44.185825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451542, 32.376514, 44.328575>,  <36.769287, 32.425850, 44.566494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451542, 32.376514, 44.328575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591094, -0.382638, -0.710068,
		-0.140008, -0.915628, 0.376860,
		-0.794359, -0.123344, -0.594794,
		36.213234, 32.339512, 44.150135>
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
