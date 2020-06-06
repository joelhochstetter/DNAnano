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
	<24.135616, 34.953442, 35.337391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405338, 34.980438, 35.043247>,  <24.567171, 34.996635, 34.866760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.405338, 34.980438, 35.043247>,  <24.135616, 34.953442, 35.337391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.405338, 34.980438, 35.043247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215936, 0.970310, -0.108953,
		0.706177, 0.232259, 0.668857,
		0.674304, 0.067490, -0.735364,
		24.607630, 35.000687, 34.822639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512754, 35.536907, 35.602757>,  <24.135616, 34.953442, 35.337391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512754, 35.536907, 35.602757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519569, 35.468170, 35.208767>,  <24.523659, 35.426926, 34.972374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519569, 35.468170, 35.208767>,  <24.512754, 35.536907, 35.602757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.519569, 35.468170, 35.208767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336923, 0.926518, -0.167473,
		0.941378, 0.334715, -0.042112,
		0.017038, -0.171844, -0.984977,
		24.524681, 35.416618, 34.913273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.099838, 36.051212, 35.337059>,  <24.512754, 35.536907, 35.602757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.099838, 36.051212, 35.337059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358452, 36.118248, 35.039360>,  <25.513620, 36.158470, 34.860741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358452, 36.118248, 35.039360>,  <25.099838, 36.051212, 35.337059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358452, 36.118248, 35.039360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339294, -0.936943, 0.083770,
		-0.683283, -0.306680, -0.662625,
		0.646532, 0.167586, -0.744252,
		25.552412, 36.168526, 34.816086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201281, 35.392902, 35.046131>,  <25.099838, 36.051212, 35.337059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201281, 35.392902, 35.046131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516376, 35.597347, 34.908592>,  <25.705435, 35.720013, 34.826069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516376, 35.597347, 34.908592>,  <25.201281, 35.392902, 35.046131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516376, 35.597347, 34.908592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457779, -0.859219, -0.228430,
		-0.412195, 0.022536, -0.910817,
		0.787739, 0.511111, -0.343849,
		25.752699, 35.750679, 34.805439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472158, 35.170738, 34.395416>,  <25.201281, 35.392902, 35.046131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472158, 35.170738, 34.395416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769287, 35.279720, 34.640034>,  <25.947565, 35.345108, 34.786804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.769287, 35.279720, 34.640034>,  <25.472158, 35.170738, 34.395416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769287, 35.279720, 34.640034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478801, -0.854644, -0.200830,
		0.467934, 0.441988, -0.765300,
		0.742824, 0.272452, 0.611542,
		25.992134, 35.361454, 34.823498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058407, 35.176125, 34.000717>,  <25.472158, 35.170738, 34.395416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058407, 35.176125, 34.000717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138262, 35.059696, 34.374973>,  <26.186174, 34.989841, 34.599525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138262, 35.059696, 34.374973>,  <26.058407, 35.176125, 34.000717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138262, 35.059696, 34.374973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514490, -0.781514, -0.352897,
		0.833934, 0.551829, -0.006266,
		0.199635, -0.291069, 0.935641,
		26.198153, 34.972374, 34.655666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740255, 35.197823, 34.086178>,  <26.058407, 35.176125, 34.000717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740255, 35.197823, 34.086178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556934, 34.901936, 34.283268>,  <26.446941, 34.724403, 34.401524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556934, 34.901936, 34.283268>,  <26.740255, 35.197823, 34.086178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556934, 34.901936, 34.283268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373287, -0.663307, -0.648599,
		0.806609, -0.113325, 0.580120,
		-0.458300, -0.739717, 0.492726,
		26.419445, 34.680019, 34.431087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198460, 34.607491, 34.107281>,  <26.740255, 35.197823, 34.086178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198460, 34.607491, 34.107281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842863, 34.438942, 34.178997>,  <26.629505, 34.337814, 34.222027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842863, 34.438942, 34.178997>,  <27.198460, 34.607491, 34.107281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842863, 34.438942, 34.178997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237213, -0.758646, -0.606784,
		0.391699, -0.496895, 0.774382,
		-0.888989, -0.421370, 0.179291,
		26.576166, 34.312531, 34.232784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.140495, 33.994476, 34.439728>,  <27.198460, 34.607491, 34.107281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.140495, 33.994476, 34.439728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832895, 34.001617, 34.184128>,  <26.648336, 34.005901, 34.030766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832895, 34.001617, 34.184128>,  <27.140495, 33.994476, 34.439728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832895, 34.001617, 34.184128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330594, -0.844448, -0.421445,
		-0.547128, -0.535340, 0.643476,
		-0.768998, 0.017855, -0.639002,
		26.602196, 34.006973, 33.992428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198053, 34.144081, 35.210762>,  <27.140495, 33.994476, 34.439728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198053, 34.144081, 35.210762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388359, 34.381355, 34.950981>,  <27.502542, 34.523720, 34.795113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388359, 34.381355, 34.950981>,  <27.198053, 34.144081, 35.210762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388359, 34.381355, 34.950981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866244, -0.187945, 0.462923,
		0.152537, -0.782824, -0.603258,
		0.475766, 0.593181, -0.649448,
		27.531090, 34.559311, 34.756145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776651, 33.705608, 35.161602>,  <27.198053, 34.144081, 35.210762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776651, 33.705608, 35.161602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872168, 34.084644, 35.076706>,  <27.929478, 34.312065, 35.025768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872168, 34.084644, 35.076706>,  <27.776651, 33.705608, 35.161602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872168, 34.084644, 35.076706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899919, -0.133823, 0.415015,
		0.364862, -0.290101, -0.884713,
		0.238791, 0.947593, -0.212241,
		27.943806, 34.368923, 35.013035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494635, 33.745605, 34.803059>,  <27.776651, 33.705608, 35.161602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494635, 33.745605, 34.803059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389771, 34.073662, 35.006489>,  <28.326853, 34.270496, 35.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389771, 34.073662, 35.006489>,  <28.494635, 33.745605, 34.803059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389771, 34.073662, 35.006489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822869, -0.085337, 0.561786,
		0.504142, 0.565768, -0.652493,
		-0.262159, 0.820137, 0.508575,
		28.311123, 34.319702, 35.159061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082285, 34.193913, 34.815392>,  <28.494635, 33.745605, 34.803059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082285, 34.193913, 34.815392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849228, 34.280846, 35.128643>,  <28.709394, 34.333004, 35.316593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.849228, 34.280846, 35.128643>,  <29.082285, 34.193913, 34.815392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849228, 34.280846, 35.128643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776862, -0.134167, 0.615211,
		0.238776, 0.966833, -0.090667,
		-0.582641, 0.217333, 0.783132,
		28.674435, 34.346046, 35.363583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347719, 34.816177, 35.180317>,  <29.082285, 34.193913, 34.815392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347719, 34.816177, 35.180317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153162, 34.544724, 35.400455>,  <29.036427, 34.381851, 35.532539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153162, 34.544724, 35.400455>,  <29.347719, 34.816177, 35.180317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153162, 34.544724, 35.400455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863544, -0.277436, 0.421094,
		-0.133083, 0.680064, 0.720973,
		-0.486395, -0.678632, 0.550344,
		29.007244, 34.341133, 35.565559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883535, 34.615498, 35.435329>,  <29.347719, 34.816177, 35.180317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.883535, 34.615498, 35.435329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619474, 34.353794, 35.582916>,  <29.461037, 34.196770, 35.671471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.619474, 34.353794, 35.582916>,  <29.883535, 34.615498, 35.435329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619474, 34.353794, 35.582916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739546, -0.480214, 0.471664,
		-0.131406, 0.584241, 0.800871,
		-0.660155, -0.654261, 0.368970,
		29.421429, 34.157516, 35.693607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428215, 34.433582, 35.946423>,  <29.883535, 34.615498, 35.435329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428215, 34.433582, 35.946423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524462, 34.563354, 35.580505>,  <30.582209, 34.641216, 35.360954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.524462, 34.563354, 35.580505>,  <30.428215, 34.433582, 35.946423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524462, 34.563354, 35.580505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028768, 0.944454, 0.327383,
		0.970194, -0.052457, 0.236583,
		0.240615, 0.324431, -0.914795,
		30.596645, 34.660683, 35.306068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209116, 34.709156, 35.912041>,  <30.428215, 34.433582, 35.946423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209116, 34.709156, 35.912041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921291, 34.876354, 35.690228>,  <30.748596, 34.976673, 35.557140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921291, 34.876354, 35.690228>,  <31.209116, 34.709156, 35.912041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921291, 34.876354, 35.690228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014736, 0.789179, 0.613987,
		0.694272, 0.449974, -0.561703,
		-0.719562, 0.417996, -0.554535,
		30.705423, 35.001755, 35.523869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644793, 34.488529, 36.440517>,  <31.209116, 34.709156, 35.912041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644793, 34.488529, 36.440517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672230, 34.165585, 36.674942>,  <31.688692, 33.971817, 36.815598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672230, 34.165585, 36.674942>,  <31.644793, 34.488529, 36.440517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672230, 34.165585, 36.674942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936910, 0.253968, 0.240209,
		-0.342776, 0.532609, 0.773842,
		0.068593, -0.807358, 0.586061,
		31.692808, 33.923378, 36.850761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091976, 34.288353, 35.923721>,  <31.644793, 34.488529, 36.440517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091976, 34.288353, 35.923721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433720, 34.472126, 35.826565>,  <32.638763, 34.582390, 35.768272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433720, 34.472126, 35.826565>,  <32.091976, 34.288353, 35.923721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433720, 34.472126, 35.826565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418021, -0.329851, 0.846438,
		0.308765, -0.824693, -0.473863,
		0.854355, 0.459435, -0.242892,
		32.690025, 34.609955, 35.753696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766567, 33.844494, 35.879925>,  <32.091976, 34.288353, 35.923721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766567, 33.844494, 35.879925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826904, 34.204056, 36.044468>,  <32.863106, 34.419792, 36.143192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826904, 34.204056, 36.044468>,  <32.766567, 33.844494, 35.879925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826904, 34.204056, 36.044468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418924, -0.435032, 0.797026,
		0.895404, 0.052099, -0.442196,
		0.150845, 0.898907, 0.411355,
		32.872158, 34.473728, 36.167873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196465, 33.704056, 35.216507>,  <32.766567, 33.844494, 35.879925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196465, 33.704056, 35.216507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076004, 33.951908, 34.926579>,  <33.003727, 34.100620, 34.752621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076004, 33.951908, 34.926579>,  <33.196465, 33.704056, 35.216507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076004, 33.951908, 34.926579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555876, 0.731675, 0.394529,
		0.774798, -0.284101, -0.564779,
		-0.301149, 0.619628, -0.724825,
		32.985661, 34.137794, 34.709129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620636, 33.100723, 35.341591>,  <33.196465, 33.704056, 35.216507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620636, 33.100723, 35.341591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502014, 32.814762, 35.594883>,  <33.430843, 32.643185, 35.746857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502014, 32.814762, 35.594883>,  <33.620636, 33.100723, 35.341591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502014, 32.814762, 35.594883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420978, -0.693011, -0.585246,
		0.857225, 0.093019, 0.506470,
		-0.296551, -0.714901, 0.633226,
		33.413048, 32.600292, 35.784851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199341, 32.781971, 35.532768>,  <33.620636, 33.100723, 35.341591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199341, 32.781971, 35.532768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885895, 32.535164, 35.503826>,  <33.697826, 32.387081, 35.486462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885895, 32.535164, 35.503826>,  <34.199341, 32.781971, 35.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885895, 32.535164, 35.503826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483757, -0.532975, -0.694201,
		0.389769, -0.578991, 0.716135,
		-0.783619, -0.617014, -0.072354,
		33.650810, 32.350060, 35.482121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457081, 32.190006, 35.567490>,  <34.199341, 32.781971, 35.532768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457081, 32.190006, 35.567490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117828, 32.132767, 35.363453>,  <33.914276, 32.098423, 35.241032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117828, 32.132767, 35.363453>,  <34.457081, 32.190006, 35.567490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117828, 32.132767, 35.363453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517551, -0.429490, -0.740054,
		-0.113177, -0.891662, 0.438326,
		-0.848134, -0.143099, -0.510089,
		33.863388, 32.089836, 35.210426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410046, 31.466358, 35.276756>,  <34.457081, 32.190006, 35.567490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410046, 31.466358, 35.276756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168789, 31.703791, 35.063637>,  <34.024033, 31.846251, 34.935764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168789, 31.703791, 35.063637>,  <34.410046, 31.466358, 35.276756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168789, 31.703791, 35.063637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331629, -0.420893, -0.844317,
		-0.725424, -0.685937, 0.057010,
		-0.603143, 0.593582, -0.532802,
		33.987846, 31.881865, 34.903797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818710, 31.263748, 35.897118>,  <34.410046, 31.466358, 35.276756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818710, 31.263748, 35.897118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026516, 31.441132, 36.189270>,  <35.151199, 31.547562, 36.364559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026516, 31.441132, 36.189270>,  <34.818710, 31.263748, 35.897118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026516, 31.441132, 36.189270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853958, -0.298872, -0.425947,
		0.029399, 0.844996, -0.533964,
		0.519510, 0.443460, 0.730378,
		35.182369, 31.574169, 36.408382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326794, 31.815397, 35.672241>,  <34.818710, 31.263748, 35.897118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326794, 31.815397, 35.672241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431381, 31.597967, 35.991280>,  <35.494133, 31.467510, 36.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431381, 31.597967, 35.991280>,  <35.326794, 31.815397, 35.672241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431381, 31.597967, 35.991280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780576, -0.366981, -0.505990,
		0.567746, 0.754886, 0.328347,
		0.261467, -0.543574, 0.797598,
		35.509823, 31.434895, 36.230560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935780, 32.123280, 35.863129>,  <35.326794, 31.815397, 35.672241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935780, 32.123280, 35.863129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870605, 31.732145, 35.915733>,  <35.831501, 31.497465, 35.947296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870605, 31.732145, 35.915733>,  <35.935780, 32.123280, 35.863129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870605, 31.732145, 35.915733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784684, -0.209228, -0.583520,
		0.598100, 0.008118, 0.801380,
		-0.162934, -0.977833, 0.131509,
		35.821724, 31.438795, 35.955185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449146, 31.764524, 36.237835>,  <35.935780, 32.123280, 35.863129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449146, 31.764524, 36.237835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283138, 31.531904, 35.957962>,  <36.183533, 31.392332, 35.790039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283138, 31.531904, 35.957962>,  <36.449146, 31.764524, 36.237835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283138, 31.531904, 35.957962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878161, -0.054964, -0.475197,
		0.237894, -0.811651, 0.533507,
		-0.415017, -0.581551, -0.699685,
		36.158634, 31.357439, 35.748058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832993, 31.081684, 36.365452>,  <36.449146, 31.764524, 36.237835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832993, 31.081684, 36.365452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681129, 31.127550, 35.998253>,  <36.590012, 31.155069, 35.777935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681129, 31.127550, 35.998253>,  <36.832993, 31.081684, 36.365452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681129, 31.127550, 35.998253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894647, -0.207108, -0.395870,
		-0.235516, -0.971575, -0.023953,
		-0.379657, 0.114663, -0.917994,
		36.567234, 31.161949, 35.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156315, 30.482258, 36.065666>,  <36.832993, 31.081684, 36.365452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156315, 30.482258, 36.065666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044434, 30.710230, 35.756618>,  <36.977306, 30.847013, 35.571190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044434, 30.710230, 35.756618>,  <37.156315, 30.482258, 36.065666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044434, 30.710230, 35.756618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761867, -0.357940, -0.539850,
		-0.584229, -0.739633, -0.334095,
		-0.279704, 0.569932, -0.772621,
		36.960522, 30.881210, 35.524834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244576, 30.060862, 35.326862>,  <37.156315, 30.482258, 36.065666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244576, 30.060862, 35.326862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322063, 30.443459, 35.414131>,  <37.368557, 30.673016, 35.466492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322063, 30.443459, 35.414131>,  <37.244576, 30.060862, 35.326862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322063, 30.443459, 35.414131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941507, -0.118745, -0.315380,
		-0.275751, 0.266507, -0.923545,
		0.193717, 0.956490, 0.218175,
		37.380180, 30.730406, 35.479584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690735, 30.236202, 34.805321>,  <37.244576, 30.060862, 35.326862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690735, 30.236202, 34.805321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732803, 30.523230, 35.080719>,  <37.758045, 30.695446, 35.245960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732803, 30.523230, 35.080719>,  <37.690735, 30.236202, 34.805321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732803, 30.523230, 35.080719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950190, 0.131752, -0.282456,
		-0.293393, 0.683911, -0.667972,
		0.105168, 0.717570, 0.688500,
		37.764355, 30.738501, 35.287270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865971, 30.847727, 34.508701>,  <37.690735, 30.236202, 34.805321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865971, 30.847727, 34.508701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027096, 30.824780, 34.874096>,  <38.123772, 30.811010, 35.093330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027096, 30.824780, 34.874096>,  <37.865971, 30.847727, 34.508701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027096, 30.824780, 34.874096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912869, 0.097605, -0.396413,
		-0.066418, 0.993570, 0.091688,
		0.402814, -0.057370, 0.913482,
		38.147942, 30.807568, 35.148140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381496, 31.487265, 34.605091>,  <37.865971, 30.847727, 34.508701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381496, 31.487265, 34.605091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461964, 31.131517, 34.769314>,  <38.510242, 30.918070, 34.867847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461964, 31.131517, 34.769314>,  <38.381496, 31.487265, 34.605091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461964, 31.131517, 34.769314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860844, -0.039486, -0.507335,
		0.467418, 0.455485, 0.757663,
		0.201166, -0.889367, 0.410558,
		38.522312, 30.864708, 34.892483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891983, 31.489985, 35.111610>,  <38.381496, 31.487265, 34.605091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891983, 31.489985, 35.111610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825520, 31.189184, 34.856461>,  <38.785641, 31.008703, 34.703369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825520, 31.189184, 34.856461>,  <38.891983, 31.489985, 35.111610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825520, 31.189184, 34.856461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814907, 0.259528, -0.518238,
		0.555263, -0.605918, 0.569690,
		-0.166160, -0.752003, -0.637874,
		38.775673, 30.963583, 34.665100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528313, 31.063835, 35.007385>,  <38.891983, 31.489985, 35.111610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528313, 31.063835, 35.007385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312668, 31.050339, 34.670761>,  <39.183281, 31.042242, 34.468788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312668, 31.050339, 34.670761>,  <39.528313, 31.063835, 35.007385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312668, 31.050339, 34.670761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834375, 0.114804, -0.539109,
		0.114804, -0.992815, -0.033740,
		0.539109, 0.033740, 0.841560,
		39.150936, 31.040216, 34.418293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898155, 30.628016, 34.527378>,  <39.528313, 31.063835, 35.007385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898155, 30.628016, 34.527378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661987, 30.886248, 34.333622>,  <39.520287, 31.041187, 34.217369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661987, 30.886248, 34.333622>,  <39.898155, 30.628016, 34.527378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661987, 30.886248, 34.333622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671649, 0.060207, -0.738419,
		-0.447544, -0.761317, -0.469149,
		-0.590417, 0.645579, -0.484392,
		39.484863, 31.079922, 34.188305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655891, 30.431068, 33.866421>,  <39.898155, 30.628016, 34.527378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655891, 30.431068, 33.866421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615135, 30.827990, 33.838280>,  <39.590683, 31.066143, 33.821396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615135, 30.827990, 33.838280>,  <39.655891, 30.431068, 33.866421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615135, 30.827990, 33.838280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547495, -0.003113, -0.836803,
		-0.830583, -0.123777, -0.542965,
		-0.101887, 0.992305, -0.070353,
		39.584568, 31.125681, 33.817173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443718, 30.659395, 33.154049>,  <39.655891, 30.431068, 33.866421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443718, 30.659395, 33.154049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649170, 30.956779, 33.325375>,  <39.772442, 31.135210, 33.428169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649170, 30.956779, 33.325375>,  <39.443718, 30.659395, 33.154049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649170, 30.956779, 33.325375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477901, 0.166707, -0.862450,
		-0.712600, 0.647670, -0.269675,
		0.513627, 0.743459, 0.428317,
		39.803257, 31.179817, 33.453869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483070, 31.352690, 32.760872>,  <39.443718, 30.659395, 33.154049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483070, 31.352690, 32.760872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817986, 31.347660, 32.979519>,  <40.018936, 31.344643, 33.110706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817986, 31.347660, 32.979519>,  <39.483070, 31.352690, 32.760872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817986, 31.347660, 32.979519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545721, 0.080802, -0.834062,
		-0.033678, 0.996651, 0.074518,
		0.837290, -0.012576, 0.546615,
		40.069172, 31.343887, 33.143505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904015, 31.882347, 32.439976>,  <39.483070, 31.352690, 32.760872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904015, 31.882347, 32.439976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154354, 31.660212, 32.659031>,  <40.304558, 31.526930, 32.790462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154354, 31.660212, 32.659031>,  <39.904015, 31.882347, 32.439976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154354, 31.660212, 32.659031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667299, 0.017775, -0.744578,
		0.403758, 0.831435, 0.381701,
		0.625852, -0.555338, 0.547639,
		40.342110, 31.493610, 32.823322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584557, 32.280994, 32.544601>,  <39.904015, 31.882347, 32.439976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584557, 32.280994, 32.544601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594906, 31.882523, 32.511223>,  <40.601116, 31.643440, 32.491196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594906, 31.882523, 32.511223>,  <40.584557, 32.280994, 32.544601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594906, 31.882523, 32.511223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592975, 0.082500, -0.800983,
		0.804805, -0.028755, 0.592842,
		0.025877, -0.996176, -0.083448,
		40.602669, 31.583670, 32.486187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306511, 32.041458, 32.419827>,  <40.584557, 32.280994, 32.544601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306511, 32.041458, 32.419827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059898, 31.766264, 32.266693>,  <40.911930, 31.601147, 32.174812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.059898, 31.766264, 32.266693>,  <41.306511, 32.041458, 32.419827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059898, 31.766264, 32.266693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505345, 0.027079, -0.862492,
		0.603749, -0.725219, 0.330975,
		-0.616533, -0.687985, -0.382835,
		40.874939, 31.559868, 32.151844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648838, 31.357227, 32.272541>,  <41.306511, 32.041458, 32.419827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648838, 31.357227, 32.272541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364296, 31.464231, 32.012569>,  <41.193569, 31.528433, 31.856586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364296, 31.464231, 32.012569>,  <41.648838, 31.357227, 32.272541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364296, 31.464231, 32.012569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611602, -0.220011, -0.759959,
		-0.346288, -0.938101, -0.007102,
		-0.711356, 0.267509, -0.649932,
		41.150890, 31.544485, 31.817591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694740, 30.809271, 31.697865>,  <41.648838, 31.357227, 32.272541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694740, 30.809271, 31.697865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555336, 31.174471, 31.613043>,  <41.471695, 31.393591, 31.562151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555336, 31.174471, 31.613043>,  <41.694740, 30.809271, 31.697865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555336, 31.174471, 31.613043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635362, 0.063789, -0.769575,
		-0.689097, -0.402936, -0.602318,
		-0.348511, 0.913002, -0.212053,
		41.450783, 31.448372, 31.549427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331676, 30.747118, 31.060497>,  <41.694740, 30.809271, 31.697865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331676, 30.747118, 31.060497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513103, 31.091413, 31.152939>,  <41.621960, 31.297991, 31.208405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513103, 31.091413, 31.152939>,  <41.331676, 30.747118, 31.060497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513103, 31.091413, 31.152939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582291, -0.089894, -0.807995,
		-0.674698, 0.501048, -0.541972,
		0.453565, 0.860738, 0.231105,
		41.649174, 31.349634, 31.222271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571724, 30.952745, 30.465199>,  <41.331676, 30.747118, 31.060497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571724, 30.952745, 30.465199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747238, 31.235823, 30.686699>,  <41.852547, 31.405668, 30.819599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747238, 31.235823, 30.686699>,  <41.571724, 30.952745, 30.465199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747238, 31.235823, 30.686699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801005, -0.028741, -0.597967,
		-0.407261, 0.705935, -0.579477,
		0.438781, 0.707693, 0.553753,
		41.878872, 31.448130, 30.852825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712212, 31.427681, 29.989611>,  <41.571724, 30.952745, 30.465199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712212, 31.427681, 29.989611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977440, 31.475599, 30.285173>,  <42.136578, 31.504351, 30.462511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977440, 31.475599, 30.285173>,  <41.712212, 31.427681, 29.989611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977440, 31.475599, 30.285173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748313, -0.081101, -0.658369,
		-0.018943, 0.989481, -0.143419,
		0.663075, 0.119794, 0.738905,
		42.176361, 31.511538, 30.506845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142220, 31.973356, 29.867630>,  <41.712212, 31.427681, 29.989611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142220, 31.973356, 29.867630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363491, 31.745386, 30.110668>,  <42.496254, 31.608604, 30.256491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363491, 31.745386, 30.110668>,  <42.142220, 31.973356, 29.867630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363491, 31.745386, 30.110668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685328, -0.103319, -0.720868,
		0.473617, 0.815175, 0.333432,
		0.553183, -0.569926, 0.607596,
		42.529446, 31.574408, 30.292948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064465, 31.793325, 29.079031>,  <42.142220, 31.973356, 29.867630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064465, 31.793325, 29.079031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934074, 31.695841, 28.713661>,  <41.855843, 31.637350, 28.494438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934074, 31.695841, 28.713661>,  <42.064465, 31.793325, 29.079031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934074, 31.695841, 28.713661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152935, -0.967067, 0.203449,
		-0.932927, -0.073377, 0.352508,
		-0.325971, -0.243714, -0.913426,
		41.836285, 31.622726, 28.439634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529552, 31.390232, 29.131601>,  <42.064465, 31.793325, 29.079031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529552, 31.390232, 29.131601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716145, 31.313025, 28.786316>,  <41.828098, 31.266701, 28.579145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716145, 31.313025, 28.786316>,  <41.529552, 31.390232, 29.131601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716145, 31.313025, 28.786316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058908, -0.966955, 0.248050,
		-0.882568, -0.166561, -0.439695,
		0.466481, -0.193020, -0.863214,
		41.856091, 31.255119, 28.527351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394791, 30.652546, 28.970953>,  <41.529552, 31.390232, 29.131601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394791, 30.652546, 28.970953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697430, 30.757990, 28.731596>,  <41.879013, 30.821257, 28.587982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697430, 30.757990, 28.731596>,  <41.394791, 30.652546, 28.970953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697430, 30.757990, 28.731596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260050, -0.960957, -0.094531,
		-0.599947, -0.084090, -0.795608,
		0.756596, 0.263611, -0.598391,
		41.924408, 30.837072, 28.552078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465755, 30.301401, 28.348188>,  <41.394791, 30.652546, 28.970953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465755, 30.301401, 28.348188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820442, 30.407352, 28.499754>,  <42.033253, 30.470922, 28.590693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820442, 30.407352, 28.499754>,  <41.465755, 30.301401, 28.348188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820442, 30.407352, 28.499754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322983, -0.941339, -0.097788,
		0.330783, 0.209092, -0.920252,
		0.886716, 0.264879, 0.378912,
		42.086456, 30.486816, 28.613428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005848, 29.976376, 27.934174>,  <41.465755, 30.301401, 28.348188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005848, 29.976376, 27.934174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171616, 30.057957, 28.288950>,  <42.271076, 30.106905, 28.501816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171616, 30.057957, 28.288950>,  <42.005848, 29.976376, 27.934174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171616, 30.057957, 28.288950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328397, -0.942418, 0.063268,
		0.848771, 0.265049, -0.457533,
		0.414418, 0.203953, 0.886939,
		42.295940, 30.119143, 28.555031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616402, 29.733870, 27.764818>,  <42.005848, 29.976376, 27.934174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616402, 29.733870, 27.764818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538605, 29.682919, 28.153858>,  <42.491928, 29.652348, 28.387281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538605, 29.682919, 28.153858>,  <42.616402, 29.733870, 27.764818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538605, 29.682919, 28.153858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252578, -0.964601, -0.075820,
		0.947828, 0.230911, 0.219777,
		-0.194490, -0.127375, 0.972599,
		42.480259, 29.644707, 28.445639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450909, 30.471233, 27.659966>,  <42.616402, 29.733870, 27.764818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450909, 30.471233, 27.659966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812801, 30.352230, 27.538019>,  <43.029938, 30.280828, 27.464851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812801, 30.352230, 27.538019>,  <42.450909, 30.471233, 27.659966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812801, 30.352230, 27.538019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308797, 0.034936, -0.950486,
		0.293429, 0.954079, -0.060262,
		0.904734, -0.297510, -0.304868,
		43.084221, 30.262978, 27.446558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714584, 30.967451, 27.289600>,  <42.450909, 30.471233, 27.659966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714584, 30.967451, 27.289600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865463, 30.615599, 27.173689>,  <42.955990, 30.404488, 27.104141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865463, 30.615599, 27.173689>,  <42.714584, 30.967451, 27.289600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865463, 30.615599, 27.173689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410668, 0.121591, -0.903641,
		0.830106, 0.459853, -0.315372,
		0.377195, -0.879631, -0.289780,
		42.978622, 30.351709, 27.086756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085102, 31.045200, 26.739017>,  <42.714584, 30.967451, 27.289600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085102, 31.045200, 26.739017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017189, 30.652145, 26.709089>,  <42.976440, 30.416313, 26.691132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017189, 30.652145, 26.709089>,  <43.085102, 31.045200, 26.739017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017189, 30.652145, 26.709089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322439, 0.127135, -0.938014,
		0.931239, -0.135133, -0.338426,
		-0.169783, -0.982637, -0.074821,
		42.966255, 30.357355, 26.686644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281059, 30.903652, 26.120720>,  <43.085102, 31.045200, 26.739017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281059, 30.903652, 26.120720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034462, 30.604954, 26.220568>,  <42.886505, 30.425735, 26.280476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034462, 30.604954, 26.220568>,  <43.281059, 30.903652, 26.120720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034462, 30.604954, 26.220568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529300, 0.158350, -0.833526,
		0.582905, -0.645985, -0.492874,
		-0.616493, -0.746745, 0.249617,
		42.849514, 30.380930, 26.295452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146309, 30.525381, 25.579166>,  <43.281059, 30.903652, 26.120720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146309, 30.525381, 25.579166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807255, 30.437712, 25.772446>,  <42.603821, 30.385111, 25.888412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807255, 30.437712, 25.772446>,  <43.146309, 30.525381, 25.579166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807255, 30.437712, 25.772446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517588, 0.141256, -0.843889,
		0.116684, -0.965411, -0.233164,
		-0.847636, -0.219151, 0.483203,
		42.552963, 30.371960, 25.917406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679359, 30.123110, 25.142948>,  <43.146309, 30.525381, 25.579166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679359, 30.123110, 25.142948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463009, 30.319948, 25.415798>,  <42.333199, 30.438051, 25.579508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463009, 30.319948, 25.415798>,  <42.679359, 30.123110, 25.142948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463009, 30.319948, 25.415798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493581, 0.470968, -0.731141,
		-0.681048, -0.732143, -0.011849,
		-0.540880, 0.492094, 0.682124,
		42.300743, 30.467577, 25.620436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860134, 30.026222, 25.053547>,  <42.679359, 30.123110, 25.142948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860134, 30.026222, 25.053547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913269, 30.372894, 25.245888>,  <41.945148, 30.580898, 25.361292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913269, 30.372894, 25.245888>,  <41.860134, 30.026222, 25.053547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913269, 30.372894, 25.245888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682468, 0.431799, -0.589735,
		-0.718743, -0.249828, 0.648841,
		0.132837, 0.866681, 0.480852,
		41.953121, 30.632898, 25.390144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230824, 30.412979, 25.193594>,  <41.860134, 30.026222, 25.053547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230824, 30.412979, 25.193594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491692, 30.715424, 25.215389>,  <41.648212, 30.896891, 25.228466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491692, 30.715424, 25.215389>,  <41.230824, 30.412979, 25.193594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491692, 30.715424, 25.215389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603633, 0.561443, -0.566047,
		-0.458588, 0.336266, 0.822570,
		0.652169, 0.756113, 0.054490,
		41.687344, 30.942257, 25.231737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863121, 30.965631, 25.336895>,  <41.230824, 30.412979, 25.193594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863121, 30.965631, 25.336895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192909, 31.101879, 25.156126>,  <41.390781, 31.183628, 25.047665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192909, 31.101879, 25.156126>,  <40.863121, 30.965631, 25.336895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192909, 31.101879, 25.156126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547960, 0.680030, -0.487133,
		0.141393, 0.649260, 0.747308,
		0.824468, 0.340618, -0.451920,
		41.440250, 31.204065, 25.020550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753685, 31.685820, 25.274014>,  <40.863121, 30.965631, 25.336895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753685, 31.685820, 25.274014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052200, 31.623432, 25.015177>,  <41.231308, 31.585999, 24.859875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052200, 31.623432, 25.015177>,  <40.753685, 31.685820, 25.274014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052200, 31.623432, 25.015177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381802, 0.696022, -0.608096,
		0.545234, 0.700876, 0.459884,
		0.746289, -0.155970, -0.647090,
		41.276089, 31.576641, 24.821049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036282, 32.379963, 25.182276>,  <40.753685, 31.685820, 25.274014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036282, 32.379963, 25.182276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120121, 32.132439, 24.879450>,  <41.170425, 31.983925, 24.697754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120121, 32.132439, 24.879450>,  <41.036282, 32.379963, 25.182276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120121, 32.132439, 24.879450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349213, 0.675825, -0.649084,
		0.913301, 0.400424, -0.074443,
		0.209599, -0.618806, -0.757065,
		41.182999, 31.946796, 24.652330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554684, 32.598484, 24.573238>,  <41.036282, 32.379963, 25.182276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554684, 32.598484, 24.573238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255260, 32.355659, 24.466553>,  <41.075607, 32.209965, 24.402542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.255260, 32.355659, 24.466553>,  <41.554684, 32.598484, 24.573238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255260, 32.355659, 24.466553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448988, 0.760058, -0.469809,
		0.487918, -0.231931, -0.841513,
		-0.748563, -0.607058, -0.266712,
		41.030693, 32.173542, 24.386539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198021, 32.980949, 24.036757>,  <41.554684, 32.598484, 24.573238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198021, 32.980949, 24.036757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920647, 32.703873, 24.116077>,  <40.754223, 32.537628, 24.163670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920647, 32.703873, 24.116077>,  <41.198021, 32.980949, 24.036757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920647, 32.703873, 24.116077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709368, 0.608111, -0.356368,
		0.126263, -0.387788, -0.913060,
		-0.693437, -0.692692, 0.198303,
		40.712616, 32.496067, 24.175568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768269, 33.070740, 23.621881>,  <41.198021, 32.980949, 24.036757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768269, 33.070740, 23.621881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532230, 32.883472, 23.884974>,  <40.390606, 32.771114, 24.042828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532230, 32.883472, 23.884974>,  <40.768269, 33.070740, 23.621881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532230, 32.883472, 23.884974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747759, 0.624088, -0.226651,
		-0.304371, -0.625569, -0.718346,
		-0.590097, -0.468164, 0.657729,
		40.355202, 32.743023, 24.082293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205109, 32.803669, 23.190207>,  <40.768269, 33.070740, 23.621881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205109, 32.803669, 23.190207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116310, 32.842960, 23.578241>,  <40.063030, 32.866535, 23.811062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116310, 32.842960, 23.578241>,  <40.205109, 32.803669, 23.190207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116310, 32.842960, 23.578241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772676, 0.589112, -0.236472,
		-0.594718, -0.802059, -0.054881,
		-0.221996, 0.098229, 0.970087,
		40.049709, 32.872429, 23.869267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480278, 32.875259, 23.264437>,  <40.205109, 32.803669, 23.190207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480278, 32.875259, 23.264437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587025, 33.004646, 23.627567>,  <39.651073, 33.082279, 23.845446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587025, 33.004646, 23.627567>,  <39.480278, 32.875259, 23.264437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587025, 33.004646, 23.627567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793259, 0.608666, 0.016316,
		-0.547284, -0.724494, 0.419032,
		0.266871, 0.323471, 0.907825,
		39.667088, 33.101688, 23.899916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825378, 32.880768, 23.606951>,  <39.480278, 32.875259, 23.264437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825378, 32.880768, 23.606951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077297, 33.128902, 23.793943>,  <39.228447, 33.277782, 23.906139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077297, 33.128902, 23.793943>,  <38.825378, 32.880768, 23.606951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077297, 33.128902, 23.793943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734801, 0.670928, 0.099616,
		-0.251852, -0.406245, 0.878371,
		0.629792, 0.620339, 0.467484,
		39.266235, 33.315002, 23.934189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527672, 33.083359, 24.329868>,  <38.825378, 32.880768, 23.606951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527672, 33.083359, 24.329868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787334, 33.367855, 24.221994>,  <38.943134, 33.538551, 24.157270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787334, 33.367855, 24.221994>,  <38.527672, 33.083359, 24.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787334, 33.367855, 24.221994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742454, 0.669557, -0.021349,
		0.165386, 0.214089, 0.962711,
		0.649161, 0.711238, -0.269687,
		38.982082, 33.581226, 24.141088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223454, 33.580643, 24.515583>,  <38.527672, 33.083359, 24.329868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223454, 33.580643, 24.515583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491497, 33.759350, 24.278484>,  <38.652321, 33.866573, 24.136225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491497, 33.759350, 24.278484>,  <38.223454, 33.580643, 24.515583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491497, 33.759350, 24.278484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675550, 0.697971, -0.237632,
		0.307554, 0.559670, 0.769532,
		0.670107, 0.446772, -0.592749,
		38.692528, 33.893383, 24.100660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187874, 34.315067, 24.623310>,  <38.223454, 33.580643, 24.515583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187874, 34.315067, 24.623310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333500, 34.290306, 24.251585>,  <38.420876, 34.275448, 24.028549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333500, 34.290306, 24.251585>,  <38.187874, 34.315067, 24.623310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333500, 34.290306, 24.251585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670410, 0.675221, -0.307615,
		0.646534, 0.735013, 0.204325,
		0.364066, -0.061903, -0.929314,
		38.442719, 34.271736, 23.972792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085434, 35.008408, 24.407021>,  <38.187874, 34.315067, 24.623310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085434, 35.008408, 24.407021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145870, 34.804249, 24.068396>,  <38.182133, 34.681755, 23.865221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145870, 34.804249, 24.068396>,  <38.085434, 35.008408, 24.407021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145870, 34.804249, 24.068396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680479, 0.567482, -0.463587,
		0.717021, 0.646114, -0.261570,
		0.151094, -0.510394, -0.846563,
		38.191196, 34.651131, 23.814426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127281, 35.528488, 23.869797>,  <38.085434, 35.008408, 24.407021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127281, 35.528488, 23.869797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056129, 35.188843, 23.670853>,  <38.013439, 34.985058, 23.551487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056129, 35.188843, 23.670853>,  <38.127281, 35.528488, 23.869797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056129, 35.188843, 23.670853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805645, 0.415886, -0.421872,
		0.565061, 0.325651, -0.758061,
		-0.177884, -0.849111, -0.497360,
		38.002766, 34.934109, 23.521645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958130, 35.690147, 23.121386>,  <38.127281, 35.528488, 23.869797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958130, 35.690147, 23.121386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795292, 35.332775, 23.197332>,  <37.697590, 35.118351, 23.242901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795292, 35.332775, 23.197332>,  <37.958130, 35.690147, 23.121386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795292, 35.332775, 23.197332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865601, 0.311014, -0.392434,
		0.291561, -0.324110, -0.899969,
		-0.407095, -0.893433, 0.189870,
		37.673164, 35.064743, 23.254293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558636, 35.528885, 22.435270>,  <37.958130, 35.690147, 23.121386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558636, 35.528885, 22.435270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427082, 35.267471, 22.707952>,  <37.348148, 35.110622, 22.871563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427082, 35.267471, 22.707952>,  <37.558636, 35.528885, 22.435270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427082, 35.267471, 22.707952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903126, 0.006658, -0.429323,
		0.276040, -0.756866, -0.592416,
		-0.328884, -0.653536, 0.681707,
		37.328415, 35.071411, 22.912464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349529, 34.864841, 22.053925>,  <37.558636, 35.528885, 22.435270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349529, 34.864841, 22.053925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146156, 34.922386, 22.393526>,  <37.024132, 34.956913, 22.597286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146156, 34.922386, 22.393526>,  <37.349529, 34.864841, 22.053925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146156, 34.922386, 22.393526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860717, -0.055346, -0.506067,
		-0.025816, -0.988049, 0.151965,
		-0.508430, 0.143863, 0.849001,
		36.993626, 34.965546, 22.648226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910088, 34.284565, 22.028116>,  <37.349529, 34.864841, 22.053925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910088, 34.284565, 22.028116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764179, 34.590805, 22.240080>,  <36.676636, 34.774548, 22.367258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764179, 34.590805, 22.240080>,  <36.910088, 34.284565, 22.028116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764179, 34.590805, 22.240080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803550, 0.028665, -0.594547,
		-0.470373, -0.642682, 0.604739,
		-0.364770, 0.765596, 0.529910,
		36.654747, 34.820484, 22.399054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258198, 34.098198, 22.054838>,  <36.910088, 34.284565, 22.028116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258198, 34.098198, 22.054838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260799, 34.470490, 22.201096>,  <36.262360, 34.693867, 22.288851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260799, 34.470490, 22.201096>,  <36.258198, 34.098198, 22.054838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260799, 34.470490, 22.201096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784685, 0.231411, -0.575081,
		-0.619860, -0.283174, 0.731837,
		0.006507, 0.930732, 0.365645,
		36.262753, 34.749710, 22.310789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496201, 34.343941, 22.150360>,  <36.258198, 34.098198, 22.054838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496201, 34.343941, 22.150360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694752, 34.691063, 22.159468>,  <35.813881, 34.899338, 22.164932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694752, 34.691063, 22.159468>,  <35.496201, 34.343941, 22.150360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694752, 34.691063, 22.159468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658565, 0.393521, -0.641430,
		-0.565598, 0.303398, 0.766843,
		0.496377, 0.867808, 0.022768,
		35.843666, 34.951405, 22.166298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984684, 34.794838, 22.171871>,  <35.496201, 34.343941, 22.150360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984684, 34.794838, 22.171871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294952, 34.999153, 22.023590>,  <35.481113, 35.121742, 21.934622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294952, 34.999153, 22.023590>,  <34.984684, 34.794838, 22.171871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294952, 34.999153, 22.023590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592710, 0.387744, -0.705938,
		-0.216850, 0.767297, 0.603515,
		0.775674, 0.510792, -0.370703,
		35.527657, 35.152390, 21.912378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810425, 35.408489, 22.217167>,  <34.984684, 34.794838, 22.171871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810425, 35.408489, 22.217167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076126, 35.384151, 21.919157>,  <35.235546, 35.369549, 21.740351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076126, 35.384151, 21.919157>,  <34.810425, 35.408489, 22.217167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076126, 35.384151, 21.919157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649668, 0.445980, -0.615657,
		0.369728, 0.892972, 0.256713,
		0.664253, -0.060847, -0.745027,
		35.275402, 35.365898, 21.695648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745300, 36.032246, 21.909815>,  <34.810425, 35.408489, 22.217167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745300, 36.032246, 21.909815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927265, 35.789337, 21.649269>,  <35.036446, 35.643593, 21.492943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927265, 35.789337, 21.649269>,  <34.745300, 36.032246, 21.909815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927265, 35.789337, 21.649269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572314, 0.361021, -0.736289,
		0.682284, 0.707732, -0.183318,
		0.454913, -0.607273, -0.651363,
		35.063740, 35.607155, 21.453859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741714, 36.419754, 21.363533>,  <34.745300, 36.032246, 21.909815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741714, 36.419754, 21.363533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808449, 36.050884, 21.223955>,  <34.848488, 35.829563, 21.140207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808449, 36.050884, 21.223955>,  <34.741714, 36.419754, 21.363533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808449, 36.050884, 21.223955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483145, 0.232045, -0.844231,
		0.859498, 0.309441, -0.406829,
		0.166837, -0.922172, -0.348947,
		34.858501, 35.774231, 21.119270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004742, 36.505268, 20.727461>,  <34.741714, 36.419754, 21.363533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004742, 36.505268, 20.727461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875599, 36.127190, 20.708017>,  <34.798115, 35.900341, 20.696352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875599, 36.127190, 20.708017>,  <35.004742, 36.505268, 20.727461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875599, 36.127190, 20.708017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530384, 0.223222, -0.817842,
		0.783874, -0.238263, -0.573387,
		-0.322854, -0.945200, -0.048607,
		34.778744, 35.843628, 20.693436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083344, 36.241795, 19.967617>,  <35.004742, 36.505268, 20.727461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083344, 36.241795, 19.967617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822453, 36.009407, 20.162378>,  <34.665916, 35.869976, 20.279236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.822453, 36.009407, 20.162378>,  <35.083344, 36.241795, 19.967617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822453, 36.009407, 20.162378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624041, 0.046889, -0.779983,
		0.430315, -0.812575, -0.393130,
		-0.652228, -0.580968, 0.486903,
		34.626785, 35.835117, 20.308449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745457, 36.018261, 19.407219>,  <35.083344, 36.241795, 19.967617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745457, 36.018261, 19.407219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512356, 35.892624, 19.707018>,  <34.372494, 35.817242, 19.886896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512356, 35.892624, 19.707018>,  <34.745457, 36.018261, 19.407219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512356, 35.892624, 19.707018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743950, -0.164935, -0.647561,
		0.327010, -0.934957, -0.137551,
		-0.582754, -0.314090, 0.749496,
		34.337528, 35.798397, 19.931868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361546, 35.440323, 19.136217>,  <34.745457, 36.018261, 19.407219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361546, 35.440323, 19.136217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154240, 35.536770, 19.464430>,  <34.029858, 35.594639, 19.661358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154240, 35.536770, 19.464430>,  <34.361546, 35.440323, 19.136217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154240, 35.536770, 19.464430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854905, -0.172218, -0.489366,
		0.023318, -0.955094, 0.295383,
		-0.518261, 0.241113, 0.820530,
		33.998760, 35.609104, 19.710588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032051, 34.861069, 19.367476>,  <34.361546, 35.440323, 19.136217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032051, 34.861069, 19.367476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831833, 35.188499, 19.480171>,  <33.711700, 35.384960, 19.547789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831833, 35.188499, 19.480171>,  <34.032051, 34.861069, 19.367476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831833, 35.188499, 19.480171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767528, -0.269085, -0.581802,
		-0.400440, -0.507463, 0.762974,
		-0.500548, 0.818580, 0.281740,
		33.681667, 35.434074, 19.564693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405464, 34.568371, 19.533249>,  <34.032051, 34.861069, 19.367476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405464, 34.568371, 19.533249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332993, 34.956821, 19.471170>,  <33.289509, 35.189892, 19.433924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332993, 34.956821, 19.471170>,  <33.405464, 34.568371, 19.533249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332993, 34.956821, 19.471170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816567, -0.236497, -0.526580,
		-0.548080, 0.031321, 0.835839,
		-0.181180, 0.971127, -0.155195,
		33.278637, 35.248161, 19.424612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730251, 34.606335, 19.700445>,  <33.405464, 34.568371, 19.533249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730251, 34.606335, 19.700445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800961, 34.938023, 19.488354>,  <32.843388, 35.137035, 19.361099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800961, 34.938023, 19.488354>,  <32.730251, 34.606335, 19.700445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800961, 34.938023, 19.488354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842808, -0.150711, -0.516682,
		-0.508356, 0.538214, 0.672235,
		0.176772, 0.829223, -0.530226,
		32.853992, 35.186790, 19.329287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143143, 34.916298, 19.748899>,  <32.730251, 34.606335, 19.700445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143143, 34.916298, 19.748899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282532, 35.112381, 19.429333>,  <32.366165, 35.230030, 19.237593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282532, 35.112381, 19.429333>,  <32.143143, 34.916298, 19.748899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282532, 35.112381, 19.429333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898537, -0.067938, -0.433609,
		-0.266833, 0.868956, 0.416791,
		0.348472, 0.490204, -0.798917,
		32.387074, 35.259441, 19.189657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676952, 35.432034, 19.628885>,  <32.143143, 34.916298, 19.748899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676952, 35.432034, 19.628885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872578, 35.395542, 19.281898>,  <31.989952, 35.373646, 19.073708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872578, 35.395542, 19.281898>,  <31.676952, 35.432034, 19.628885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872578, 35.395542, 19.281898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867284, 0.055106, -0.494754,
		0.092938, 0.994304, -0.052171,
		0.489061, -0.091229, -0.867466,
		32.019295, 35.368172, 19.021658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413256, 35.980022, 19.181934>,  <31.676952, 35.432034, 19.628885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413256, 35.980022, 19.181934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547434, 35.684769, 18.947792>,  <31.627941, 35.507618, 18.807306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547434, 35.684769, 18.947792>,  <31.413256, 35.980022, 19.181934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547434, 35.684769, 18.947792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904974, -0.079861, -0.417906,
		0.261722, 0.669915, -0.694778,
		0.335447, -0.738131, -0.585354,
		31.648067, 35.463329, 18.772186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015230, 36.108665, 18.559553>,  <31.413256, 35.980022, 19.181934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015230, 36.108665, 18.559553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151543, 35.734745, 18.519516>,  <31.233330, 35.510395, 18.495495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151543, 35.734745, 18.519516>,  <31.015230, 36.108665, 18.559553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151543, 35.734745, 18.519516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852285, -0.262241, -0.452592,
		0.396835, 0.239541, -0.886083,
		0.340782, -0.934799, -0.100090,
		31.253777, 35.454304, 18.489489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897049, 36.012394, 17.881525>,  <31.015230, 36.108665, 18.559553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897049, 36.012394, 17.881525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929522, 35.648273, 18.043888>,  <30.949005, 35.429802, 18.141306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929522, 35.648273, 18.043888>,  <30.897049, 36.012394, 17.881525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929522, 35.648273, 18.043888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726005, -0.333032, -0.601669,
		0.682880, -0.245846, -0.687920,
		0.081182, -0.910302, 0.405906,
		30.953876, 35.375183, 18.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983414, 35.548004, 17.352112>,  <30.897049, 36.012394, 17.881525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983414, 35.548004, 17.352112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819548, 35.343010, 17.653980>,  <30.721228, 35.220013, 17.835102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819548, 35.343010, 17.653980>,  <30.983414, 35.548004, 17.352112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819548, 35.343010, 17.653980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760006, -0.265815, -0.593071,
		0.504545, -0.816515, -0.280601,
		-0.409663, -0.512489, 0.754673,
		30.696650, 35.189262, 17.880383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672468, 34.947025, 17.006720>,  <30.983414, 35.548004, 17.352112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672468, 34.947025, 17.006720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489014, 34.946560, 17.362169>,  <30.378941, 34.946281, 17.575439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489014, 34.946560, 17.362169>,  <30.672468, 34.947025, 17.006720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489014, 34.946560, 17.362169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857797, -0.260529, -0.443068,
		0.232025, -0.965465, 0.118494,
		-0.458637, -0.001159, 0.888623,
		30.351423, 34.946213, 17.628756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445917, 34.258804, 17.181849>,  <30.672468, 34.947025, 17.006720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445917, 34.258804, 17.181849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201166, 34.477032, 17.410917>,  <30.054316, 34.607971, 17.548359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201166, 34.477032, 17.410917>,  <30.445917, 34.258804, 17.181849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201166, 34.477032, 17.410917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790130, -0.388606, -0.474005,
		-0.036060, -0.742519, 0.668853,
		-0.611878, 0.545573, 0.572674,
		30.017603, 34.640705, 17.582720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864275, 33.812721, 17.269957>,  <30.445917, 34.258804, 17.181849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864275, 33.812721, 17.269957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728758, 34.177757, 17.361519>,  <29.647448, 34.396778, 17.416456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728758, 34.177757, 17.361519>,  <29.864275, 33.812721, 17.269957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728758, 34.177757, 17.361519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863875, -0.205336, -0.459953,
		-0.372746, -0.353573, 0.857931,
		-0.338791, 0.912592, 0.228905,
		29.627121, 34.451534, 17.430191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163794, 33.768173, 17.514124>,  <29.864275, 33.812721, 17.269957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163794, 33.768173, 17.514124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177032, 34.149387, 17.393707>,  <29.184977, 34.378117, 17.321457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177032, 34.149387, 17.393707>,  <29.163794, 33.768173, 17.514124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177032, 34.149387, 17.393707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879040, -0.115573, -0.462527,
		-0.475597, 0.279937, 0.833932,
		0.033098, 0.953036, -0.301042,
		29.186962, 34.435299, 17.303394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526892, 33.937347, 17.586445>,  <29.163794, 33.768173, 17.514124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526892, 33.937347, 17.586445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646431, 34.250393, 17.368013>,  <28.718155, 34.438221, 17.236956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646431, 34.250393, 17.368013>,  <28.526892, 33.937347, 17.586445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646431, 34.250393, 17.368013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853771, -0.036381, -0.519376,
		-0.426339, 0.621439, 0.657303,
		0.298848, 0.782617, -0.546077,
		28.736086, 34.485180, 17.204189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953594, 34.379528, 17.493511>,  <28.526892, 33.937347, 17.586445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953594, 34.379528, 17.493511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198595, 34.481674, 17.194277>,  <28.345594, 34.542961, 17.014736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198595, 34.481674, 17.194277>,  <27.953594, 34.379528, 17.493511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198595, 34.481674, 17.194277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740214, -0.146772, -0.656156,
		-0.277356, 0.955640, 0.099126,
		0.612500, 0.255363, -0.748087,
		28.382345, 34.558285, 16.969851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576935, 34.843388, 17.196316>,  <27.953594, 34.379528, 17.493511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576935, 34.843388, 17.196316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842873, 34.737671, 16.916851>,  <28.002436, 34.674240, 16.749172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842873, 34.737671, 16.916851>,  <27.576935, 34.843388, 17.196316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842873, 34.737671, 16.916851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633654, 0.295737, -0.714858,
		0.395553, 0.917980, 0.029149,
		0.664846, -0.264294, -0.698662,
		28.042326, 34.658382, 16.707253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525040, 35.402863, 16.660318>,  <27.576935, 34.843388, 17.196316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525040, 35.402863, 16.660318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682501, 35.085293, 16.474970>,  <27.776978, 34.894749, 16.363760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682501, 35.085293, 16.474970>,  <27.525040, 35.402863, 16.660318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682501, 35.085293, 16.474970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590722, 0.167741, -0.789247,
		0.704332, 0.584415, -0.402959,
		0.393655, -0.793928, -0.463372,
		27.800598, 34.847115, 16.335958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506395, 35.684502, 15.999768>,  <27.525040, 35.402863, 16.660318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506395, 35.684502, 15.999768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521717, 35.284904, 15.990483>,  <27.530910, 35.045147, 15.984912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521717, 35.284904, 15.990483>,  <27.506395, 35.684502, 15.999768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521717, 35.284904, 15.990483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584487, -0.003558, -0.811396,
		0.810499, 0.044649, -0.584036,
		0.038306, -0.998996, -0.023213,
		27.533209, 34.985207, 15.983520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528784, 35.492683, 15.240945>,  <27.506395, 35.684502, 15.999768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528784, 35.492683, 15.240945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369331, 35.213734, 15.479191>,  <27.273661, 35.046364, 15.622139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.369331, 35.213734, 15.479191>,  <27.528784, 35.492683, 15.240945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369331, 35.213734, 15.479191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787098, -0.073185, -0.612471,
		0.470714, -0.712957, -0.519731,
		-0.398629, -0.697378, 0.595616,
		27.249743, 35.004520, 15.657876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071289, 34.943966, 14.849928>,  <27.528784, 35.492683, 15.240945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071289, 34.943966, 14.849928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952522, 34.961056, 15.231507>,  <26.881262, 34.971310, 15.460455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.952522, 34.961056, 15.231507>,  <27.071289, 34.943966, 14.849928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952522, 34.961056, 15.231507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918521, -0.285908, -0.273086,
		0.261075, -0.957304, 0.124130,
		-0.296916, 0.042721, 0.953948,
		26.863447, 34.973873, 15.517692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870281, 34.504250, 14.250194>,  <27.071289, 34.943966, 14.849928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870281, 34.504250, 14.250194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548466, 34.266750, 14.255479>,  <26.355375, 34.124249, 14.258650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548466, 34.266750, 14.255479>,  <26.870281, 34.504250, 14.250194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548466, 34.266750, 14.255479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197822, -0.246940, 0.948624,
		-0.559983, 0.765820, 0.316130,
		-0.804541, -0.593750, 0.013214,
		26.307104, 34.088627, 14.259443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320206, 34.618111, 14.815854>,  <26.870281, 34.504250, 14.250194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320206, 34.618111, 14.815854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329071, 34.228992, 14.723607>,  <26.334391, 33.995522, 14.668259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329071, 34.228992, 14.723607>,  <26.320206, 34.618111, 14.815854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329071, 34.228992, 14.723607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217149, -0.220483, 0.950912,
		-0.975887, -0.071155, 0.206354,
		0.022165, -0.972792, -0.230618,
		26.335720, 33.937157, 14.654422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767237, 34.202389, 15.228664>,  <26.320206, 34.618111, 14.815854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767237, 34.202389, 15.228664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085129, 33.984062, 15.122463>,  <26.275864, 33.853065, 15.058743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085129, 33.984062, 15.122463>,  <25.767237, 34.202389, 15.228664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085129, 33.984062, 15.122463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204113, -0.171620, 0.963787,
		-0.571616, -0.820141, -0.024983,
		0.794729, -0.545816, -0.265502,
		26.323547, 33.820316, 15.042812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831585, 33.519299, 15.565270>,  <25.767237, 34.202389, 15.228664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831585, 33.519299, 15.565270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201902, 33.648918, 15.487405>,  <26.424093, 33.726688, 15.440685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201902, 33.648918, 15.487405>,  <25.831585, 33.519299, 15.565270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201902, 33.648918, 15.487405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291970, -0.285860, 0.912709,
		0.240116, -0.901818, -0.359261,
		0.925796, 0.324049, -0.194664,
		26.479641, 33.746132, 15.429006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.251963, 32.863579, 15.863251>,  <25.831585, 33.519299, 15.565270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.251963, 32.863579, 15.863251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341370, 32.869038, 15.473409>,  <26.395014, 32.872314, 15.239504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341370, 32.869038, 15.473409>,  <26.251963, 32.863579, 15.863251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341370, 32.869038, 15.473409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974694, -0.006726, 0.223443,
		-0.003504, -0.999884, -0.014811,
		0.223516, 0.013654, -0.974605,
		26.408424, 32.873135, 15.181027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815493, 32.682770, 15.962984>,  <26.251963, 32.863579, 15.863251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815493, 32.682770, 15.962984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826689, 32.783936, 15.576150>,  <26.833406, 32.844635, 15.344049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826689, 32.783936, 15.576150>,  <26.815493, 32.682770, 15.962984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826689, 32.783936, 15.576150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999248, 0.018903, 0.033867,
		0.026846, -0.967305, -0.252191,
		0.027992, 0.252911, -0.967085,
		26.835087, 32.859810, 15.286024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085756, 32.117977, 15.522381>,  <26.815493, 32.682770, 15.962984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085756, 32.117977, 15.522381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148039, 32.493568, 15.399700>,  <27.185408, 32.718925, 15.326092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148039, 32.493568, 15.399700>,  <27.085756, 32.117977, 15.522381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148039, 32.493568, 15.399700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987397, -0.156854, 0.021067,
		-0.028326, -0.306118, -0.951572,
		0.155707, 0.938983, -0.306703,
		27.194752, 32.775265, 15.307690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549957, 32.219204, 14.877813>,  <27.085756, 32.117977, 15.522381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549957, 32.219204, 14.877813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573467, 32.541344, 15.113768>,  <27.587574, 32.734627, 15.255340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.573467, 32.541344, 15.113768>,  <27.549957, 32.219204, 14.877813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573467, 32.541344, 15.113768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989989, 0.028936, -0.138149,
		-0.128326, 0.592099, -0.795582,
		0.058777, 0.805346, 0.589885,
		27.591101, 32.782948, 15.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015558, 32.723541, 14.446450>,  <27.549957, 32.219204, 14.877813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015558, 32.723541, 14.446450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992373, 32.779072, 14.841898>,  <27.978462, 32.812389, 15.079166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.992373, 32.779072, 14.841898>,  <28.015558, 32.723541, 14.446450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992373, 32.779072, 14.841898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992874, -0.095268, 0.071590,
		0.104123, 0.985723, -0.132317,
		-0.057963, 0.138828, 0.988619,
		27.974983, 32.820721, 15.138484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586512, 33.185627, 14.614317>,  <28.015558, 32.723541, 14.446450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586512, 33.185627, 14.614317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491087, 32.948566, 14.922045>,  <28.433832, 32.806332, 15.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491087, 32.948566, 14.922045>,  <28.586512, 33.185627, 14.614317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491087, 32.948566, 14.922045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933158, -0.359245, 0.012619,
		0.268896, 0.720907, 0.638739,
		-0.238561, -0.592651, 0.769320,
		28.419519, 32.770771, 15.152841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143639, 33.204323, 14.973415>,  <28.586512, 33.185627, 14.614317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143639, 33.204323, 14.973415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948256, 32.886448, 15.117570>,  <28.831026, 32.695721, 15.204062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948256, 32.886448, 15.117570>,  <29.143639, 33.204323, 14.973415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948256, 32.886448, 15.117570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872576, -0.442698, 0.206468,
		-0.004536, 0.415315, 0.909666,
		-0.488457, -0.794690, 0.360386,
		28.801718, 32.648041, 15.225686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503777, 33.127937, 15.476507>,  <29.143639, 33.204323, 14.973415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503777, 33.127937, 15.476507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303572, 32.782661, 15.502998>,  <29.183449, 32.575497, 15.518893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303572, 32.782661, 15.502998>,  <29.503777, 33.127937, 15.476507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303572, 32.782661, 15.502998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827551, -0.454570, 0.329432,
		-0.254259, 0.219692, 0.941854,
		-0.500512, -0.863193, 0.066228,
		29.153418, 32.523705, 15.522866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542755, 32.907818, 16.221750>,  <29.503777, 33.127937, 15.476507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542755, 32.907818, 16.221750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460968, 32.614742, 15.962101>,  <29.411896, 32.438896, 15.806312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.460968, 32.614742, 15.962101>,  <29.542755, 32.907818, 16.221750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460968, 32.614742, 15.962101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790496, -0.514700, 0.331963,
		-0.577329, -0.445253, 0.684427,
		-0.204467, -0.732689, -0.649122,
		29.399628, 32.394936, 15.767365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504639, 32.369858, 16.672472>,  <29.542755, 32.907818, 16.221750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504639, 32.369858, 16.672472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581982, 32.236176, 16.303490>,  <29.628387, 32.155968, 16.082100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581982, 32.236176, 16.303490>,  <29.504639, 32.369858, 16.672472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581982, 32.236176, 16.303490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751508, -0.553990, 0.358233,
		-0.630753, -0.762499, 0.144038,
		0.193356, -0.334202, -0.922455,
		29.639988, 32.135914, 16.026752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629364, 31.693020, 16.727318>,  <29.504639, 32.369858, 16.672472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629364, 31.693020, 16.727318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785353, 31.751570, 16.363670>,  <29.878946, 31.786699, 16.145481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785353, 31.751570, 16.363670>,  <29.629364, 31.693020, 16.727318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785353, 31.751570, 16.363670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801857, -0.539365, 0.257119,
		-0.452711, -0.829252, -0.327711,
		0.389972, 0.146377, -0.909118,
		29.902344, 31.795483, 16.090935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864994, 31.031013, 16.406368>,  <29.629364, 31.693020, 16.727318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864994, 31.031013, 16.406368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063007, 31.334299, 16.236639>,  <30.181816, 31.516270, 16.134802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063007, 31.334299, 16.236639>,  <29.864994, 31.031013, 16.406368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063007, 31.334299, 16.236639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868219, -0.412727, 0.275411,
		0.033691, -0.504744, -0.862611,
		0.495035, 0.758215, -0.424324,
		30.211517, 31.561764, 16.109343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489441, 30.716646, 16.184961>,  <29.864994, 31.031013, 16.406368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489441, 30.716646, 16.184961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584936, 31.105070, 16.187702>,  <30.642233, 31.338125, 16.189346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584936, 31.105070, 16.187702>,  <30.489441, 30.716646, 16.184961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584936, 31.105070, 16.187702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838461, -0.209688, 0.503006,
		0.489885, -0.114343, -0.864256,
		0.238739, 0.971060, 0.006851,
		30.656557, 31.396387, 16.189756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142761, 30.741549, 15.926803>,  <30.489441, 30.716646, 16.184961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142761, 30.741549, 15.926803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122931, 31.103184, 16.096588>,  <31.111032, 31.320164, 16.198460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122931, 31.103184, 16.096588>,  <31.142761, 30.741549, 15.926803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122931, 31.103184, 16.096588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878279, -0.162899, 0.449544,
		0.475572, 0.395084, -0.785964,
		-0.049576, 0.904086, 0.424464,
		31.108057, 31.374411, 16.223927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752207, 31.225040, 15.717083>,  <31.142761, 30.741549, 15.926803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752207, 31.225040, 15.717083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602884, 31.327156, 16.073839>,  <31.513290, 31.388426, 16.287893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602884, 31.327156, 16.073839>,  <31.752207, 31.225040, 15.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602884, 31.327156, 16.073839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916740, -0.045886, 0.396841,
		0.142234, 0.965776, -0.216904,
		-0.373306, 0.255288, 0.891891,
		31.490892, 31.403742, 16.341406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277767, 31.562675, 16.019520>,  <31.752207, 31.225040, 15.717083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277767, 31.562675, 16.019520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028706, 31.511126, 16.328243>,  <31.879269, 31.480196, 16.513477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028706, 31.511126, 16.328243>,  <32.277767, 31.562675, 16.019520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028706, 31.511126, 16.328243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780847, -0.038355, 0.623544,
		-0.050757, 0.990919, 0.124513,
		-0.622657, -0.128875, 0.771810,
		31.841909, 31.472464, 16.559786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489414, 32.001343, 16.468010>,  <32.277767, 31.562675, 16.019520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489414, 32.001343, 16.468010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276875, 31.744427, 16.688963>,  <32.149349, 31.590277, 16.821535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276875, 31.744427, 16.688963>,  <32.489414, 32.001343, 16.468010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276875, 31.744427, 16.688963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794691, -0.152024, 0.587669,
		-0.293480, 0.751233, 0.591201,
		-0.531353, -0.642291, 0.552382,
		32.117470, 31.551739, 16.854677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620090, 32.213474, 17.242611>,  <32.489414, 32.001343, 16.468010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620090, 32.213474, 17.242611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529232, 31.824007, 17.234941>,  <32.474716, 31.590326, 17.230339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529232, 31.824007, 17.234941>,  <32.620090, 32.213474, 17.242611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529232, 31.824007, 17.234941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673368, -0.171256, 0.719198,
		-0.703546, 0.150454, 0.694540,
		-0.227150, -0.973671, -0.019175,
		32.461086, 31.531906, 17.229189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446365, 32.074936, 17.957294>,  <32.620090, 32.213474, 17.242611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446365, 32.074936, 17.957294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544910, 31.727791, 17.784729>,  <32.604038, 31.519505, 17.681190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544910, 31.727791, 17.784729>,  <32.446365, 32.074936, 17.957294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544910, 31.727791, 17.784729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600236, -0.212860, 0.770979,
		-0.760934, -0.448893, 0.468481,
		0.246366, -0.867863, -0.431414,
		32.618820, 31.467432, 17.655304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519829, 31.729317, 18.486500>,  <32.446365, 32.074936, 17.957294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519829, 31.729317, 18.486500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727779, 31.519951, 18.216457>,  <32.852551, 31.394331, 18.054432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727779, 31.519951, 18.216457>,  <32.519829, 31.729317, 18.486500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727779, 31.519951, 18.216457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780648, -0.029814, 0.624260,
		-0.346874, -0.851556, 0.393103,
		0.519872, -0.523415, -0.675107,
		32.883739, 31.362926, 18.013926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982071, 31.403095, 18.924299>,  <32.519829, 31.729317, 18.486500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982071, 31.403095, 18.924299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157009, 31.322010, 18.573841>,  <33.261974, 31.273359, 18.363565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157009, 31.322010, 18.573841>,  <32.982071, 31.403095, 18.924299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157009, 31.322010, 18.573841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898086, 0.048012, 0.437192,
		-0.046559, -0.978060, 0.203053,
		0.437349, -0.202715, -0.876147,
		33.288216, 31.261196, 18.310997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256237, 30.655876, 18.949842>,  <32.982071, 31.403095, 18.924299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256237, 30.655876, 18.949842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467403, 30.879887, 18.694445>,  <33.594105, 31.014294, 18.541206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467403, 30.879887, 18.694445>,  <33.256237, 30.655876, 18.949842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467403, 30.879887, 18.694445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761456, 0.020861, 0.647880,
		0.376150, -0.828212, -0.415423,
		0.527916, 0.560026, -0.638494,
		33.625778, 31.047895, 18.502895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812809, 30.310425, 18.788794>,  <33.256237, 30.655876, 18.949842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812809, 30.310425, 18.788794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935577, 30.673431, 18.674101>,  <34.009239, 30.891235, 18.605286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935577, 30.673431, 18.674101>,  <33.812809, 30.310425, 18.788794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935577, 30.673431, 18.674101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857556, -0.133028, 0.496892,
		0.412794, -0.398395, -0.819074,
		0.306919, 0.907516, -0.286732,
		34.027653, 30.945686, 18.588081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497963, 30.218061, 18.517532>,  <33.812809, 30.310425, 18.788794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497963, 30.218061, 18.517532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467022, 30.613325, 18.570528>,  <34.448456, 30.850483, 18.602325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467022, 30.613325, 18.570528>,  <34.497963, 30.218061, 18.517532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467022, 30.613325, 18.570528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934710, 0.025642, 0.354486,
		0.346892, 0.151262, -0.925627,
		-0.077355, 0.988161, 0.132491,
		34.443817, 30.909773, 18.610275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125141, 30.486002, 18.344204>,  <34.497963, 30.218061, 18.517532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125141, 30.486002, 18.344204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963017, 30.786716, 18.552256>,  <34.865742, 30.967146, 18.677086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963017, 30.786716, 18.552256>,  <35.125141, 30.486002, 18.344204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963017, 30.786716, 18.552256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886557, 0.184449, 0.424258,
		0.223015, 0.633082, -0.741263,
		-0.405316, 0.751788, 0.520129,
		34.841423, 31.012253, 18.708294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576141, 31.161800, 18.161701>,  <35.125141, 30.486002, 18.344204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576141, 31.161800, 18.161701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400776, 31.211308, 18.517786>,  <35.295555, 31.241013, 18.731436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400776, 31.211308, 18.517786>,  <35.576141, 31.161800, 18.161701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400776, 31.211308, 18.517786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887597, 0.215336, 0.407187,
		-0.141298, 0.968665, -0.204262,
		-0.438413, 0.123767, 0.890211,
		35.269253, 31.248438, 18.784849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880901, 31.771215, 18.375856>,  <35.576141, 31.161800, 18.161701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880901, 31.771215, 18.375856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755695, 31.563829, 18.694155>,  <35.680573, 31.439398, 18.885134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755695, 31.563829, 18.694155>,  <35.880901, 31.771215, 18.375856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755695, 31.563829, 18.694155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904682, 0.092264, 0.415978,
		-0.289090, 0.850105, 0.440168,
		-0.313013, -0.518467, 0.795748,
		35.661793, 31.408289, 18.932878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156288, 32.089897, 18.900274>,  <35.880901, 31.771215, 18.375856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156288, 32.089897, 18.900274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080582, 31.729967, 19.057499>,  <36.035156, 31.514009, 19.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080582, 31.729967, 19.057499>,  <36.156288, 32.089897, 18.900274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080582, 31.729967, 19.057499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902482, -0.001680, 0.430724,
		-0.386915, 0.436252, 0.812392,
		-0.189270, -0.899823, 0.393059,
		36.023800, 31.460020, 19.175417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485123, 32.160892, 19.513750>,  <36.156288, 32.089897, 18.900274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485123, 32.160892, 19.513750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438889, 31.774685, 19.420450>,  <36.411148, 31.542959, 19.364471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438889, 31.774685, 19.420450>,  <36.485123, 32.160892, 19.513750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438889, 31.774685, 19.420450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850982, -0.217370, 0.478100,
		-0.512318, -0.143229, 0.846768,
		-0.115585, -0.965524, -0.233248,
		36.404213, 31.485027, 19.350475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620770, 31.796526, 20.080568>,  <36.485123, 32.160892, 19.513750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620770, 31.796526, 20.080568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643337, 31.509537, 19.802849>,  <36.656879, 31.337343, 19.636217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643337, 31.509537, 19.802849>,  <36.620770, 31.796526, 20.080568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643337, 31.509537, 19.802849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905547, -0.256096, 0.338229,
		-0.420477, -0.647804, 0.635255,
		0.056420, -0.717471, -0.694300,
		36.660263, 31.294296, 19.594559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839916, 31.281107, 20.447371>,  <36.620770, 31.796526, 20.080568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839916, 31.281107, 20.447371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925701, 31.149788, 20.079409>,  <36.977173, 31.070997, 19.858631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925701, 31.149788, 20.079409>,  <36.839916, 31.281107, 20.447371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925701, 31.149788, 20.079409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871085, -0.361750, 0.332187,
		-0.441831, -0.872558, 0.208391,
		0.214467, -0.328297, -0.919905,
		36.990040, 31.051298, 19.803436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823933, 30.566109, 20.514809>,  <36.839916, 31.281107, 20.447371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823933, 30.566109, 20.514809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050194, 30.678270, 20.204605>,  <37.185951, 30.745567, 20.018482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050194, 30.678270, 20.204605>,  <36.823933, 30.566109, 20.514809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050194, 30.678270, 20.204605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788625, -0.458837, 0.409315,
		-0.241059, -0.843115, -0.480674,
		0.565651, 0.280403, -0.775508,
		37.219891, 30.762392, 19.971952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237202, 30.017509, 20.482475>,  <36.823933, 30.566109, 20.514809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237202, 30.017509, 20.482475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407990, 30.309498, 20.268993>,  <37.510460, 30.484692, 20.140905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407990, 30.309498, 20.268993>,  <37.237202, 30.017509, 20.482475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407990, 30.309498, 20.268993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892825, -0.246716, 0.376821,
		0.143397, -0.637393, -0.757078,
		0.426967, 0.729973, -0.533703,
		37.536079, 30.528490, 20.108883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878685, 29.703669, 20.279457>,  <37.237202, 30.017509, 20.482475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878685, 29.703669, 20.279457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931499, 30.098122, 20.239243>,  <37.963188, 30.334793, 20.215113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931499, 30.098122, 20.239243>,  <37.878685, 29.703669, 20.279457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931499, 30.098122, 20.239243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862009, -0.064151, 0.502818,
		0.489396, -0.153053, -0.858526,
		0.132033, 0.986134, -0.100538,
		37.971111, 30.393961, 20.209082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517399, 29.733974, 20.007366>,  <37.878685, 29.703669, 20.279457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517399, 29.733974, 20.007366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431030, 30.074232, 20.199110>,  <38.379208, 30.278387, 20.314156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431030, 30.074232, 20.199110>,  <38.517399, 29.733974, 20.007366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431030, 30.074232, 20.199110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913238, 0.002223, 0.407421,
		0.345504, 0.525740, -0.777319,
		-0.215925, 0.850643, 0.479358,
		38.366253, 30.329426, 20.342916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145107, 30.000458, 20.125011>,  <38.517399, 29.733974, 20.007366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145107, 30.000458, 20.125011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933464, 30.251005, 20.353992>,  <38.806477, 30.401335, 20.491381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933464, 30.251005, 20.353992>,  <39.145107, 30.000458, 20.125011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933464, 30.251005, 20.353992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834867, 0.263605, 0.483227,
		0.151779, 0.733602, -0.662413,
		-0.529112, 0.626371, 0.572451,
		38.774731, 30.438917, 20.525728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515965, 30.713263, 20.173750>,  <39.145107, 30.000458, 20.125011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515965, 30.713263, 20.173750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281445, 30.653299, 20.492193>,  <39.140732, 30.617321, 20.683258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281445, 30.653299, 20.492193>,  <39.515965, 30.713263, 20.173750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281445, 30.653299, 20.492193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742524, 0.293490, 0.602098,
		-0.323907, 0.944135, -0.060763,
		-0.586295, -0.149906, 0.796107,
		39.105556, 30.608328, 20.731026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597809, 31.283541, 20.579491>,  <39.515965, 30.713263, 20.173750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597809, 31.283541, 20.579491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468266, 30.993048, 20.822042>,  <39.390537, 30.818752, 20.967573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468266, 30.993048, 20.822042>,  <39.597809, 31.283541, 20.579491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468266, 30.993048, 20.822042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707041, 0.240092, 0.665168,
		-0.628655, 0.644158, 0.435721,
		-0.323860, -0.726234, 0.606381,
		39.371109, 30.775177, 21.003958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708115, 31.567179, 21.170347>,  <39.597809, 31.283541, 20.579491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708115, 31.567179, 21.170347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648724, 31.190248, 21.290335>,  <39.613087, 30.964090, 21.362328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648724, 31.190248, 21.290335>,  <39.708115, 31.567179, 21.170347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648724, 31.190248, 21.290335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744275, 0.093244, 0.661332,
		-0.651159, 0.321454, 0.687502,
		-0.148482, -0.942323, 0.299967,
		39.604179, 30.907551, 21.380325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587749, 31.554943, 21.903564>,  <39.708115, 31.567179, 21.170347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587749, 31.554943, 21.903564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716145, 31.181240, 21.841436>,  <39.793182, 30.957018, 21.804159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716145, 31.181240, 21.841436>,  <39.587749, 31.554943, 21.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716145, 31.181240, 21.841436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702976, 0.125131, 0.700119,
		-0.634657, -0.333920, 0.696928,
		0.320991, -0.934259, -0.155322,
		39.812443, 30.900963, 21.794840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714668, 31.396641, 22.515633>,  <39.587749, 31.554943, 21.903564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714668, 31.396641, 22.515633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923237, 31.113625, 22.324841>,  <40.048378, 30.943815, 22.210365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923237, 31.113625, 22.324841>,  <39.714668, 31.396641, 22.515633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923237, 31.113625, 22.324841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745489, 0.105750, 0.658075,
		-0.415174, -0.698715, 0.582604,
		0.521417, -0.707541, -0.476980,
		40.079662, 30.901361, 22.181747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810345, 30.923128, 22.976871>,  <39.714668, 31.396641, 22.515633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810345, 30.923128, 22.976871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112301, 30.864136, 22.721251>,  <40.293476, 30.828741, 22.567879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112301, 30.864136, 22.721251>,  <39.810345, 30.923128, 22.976871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112301, 30.864136, 22.721251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646002, -0.001012, 0.763335,
		-0.113224, -0.989064, 0.094509,
		0.754892, -0.147481, -0.639052,
		40.338768, 30.819891, 22.529535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237656, 30.421980, 23.287933>,  <39.810345, 30.923128, 22.976871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237656, 30.421980, 23.287933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471237, 30.610249, 23.023369>,  <40.611385, 30.723209, 22.864630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.471237, 30.610249, 23.023369>,  <40.237656, 30.421980, 23.287933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471237, 30.610249, 23.023369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696720, 0.127569, 0.705909,
		0.416627, -0.873038, -0.253431,
		0.583955, 0.470671, -0.661412,
		40.646423, 30.751450, 22.824945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486080, 30.494308, 23.470377>,  <40.237656, 30.421980, 23.287933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486080, 30.494308, 23.470377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427074, 30.156027, 23.675520>,  <39.391670, 29.953058, 23.798605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427074, 30.156027, 23.675520>,  <39.486080, 30.494308, 23.470377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427074, 30.156027, 23.675520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541128, -0.365029, -0.757585,
		0.827901, -0.389277, -0.403787,
		-0.147517, -0.845705, 0.512857,
		39.382820, 29.902315, 23.829376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508152, 30.021152, 22.934574>,  <39.486080, 30.494308, 23.470377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508152, 30.021152, 22.934574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321640, 29.837545, 23.237068>,  <39.209732, 29.727381, 23.418564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321640, 29.837545, 23.237068>,  <39.508152, 30.021152, 22.934574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321640, 29.837545, 23.237068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661990, -0.386011, -0.642468,
		0.586819, -0.800186, -0.123879,
		-0.466275, -0.459019, 0.756233,
		39.181759, 29.699841, 23.463938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470512, 29.330309, 22.767561>,  <39.508152, 30.021152, 22.934574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470512, 29.330309, 22.767561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200203, 29.392828, 23.055698>,  <39.038017, 29.430340, 23.228580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200203, 29.392828, 23.055698>,  <39.470512, 29.330309, 22.767561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200203, 29.392828, 23.055698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705911, -0.418516, -0.571431,
		0.212162, -0.894659, 0.393156,
		-0.675778, 0.156298, 0.720343,
		38.997471, 29.439716, 23.271801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123310, 28.723379, 22.736549>,  <39.470512, 29.330309, 22.767561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123310, 28.723379, 22.736549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880398, 28.991865, 22.906576>,  <38.734650, 29.152958, 23.008593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880398, 28.991865, 22.906576>,  <39.123310, 28.723379, 22.736549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880398, 28.991865, 22.906576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778160, -0.394593, -0.488633,
		-0.160251, -0.627506, 0.761942,
		-0.607278, 0.671217, 0.425066,
		38.698215, 29.193230, 23.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464020, 28.342484, 23.001400>,  <39.123310, 28.723379, 22.736549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464020, 28.342484, 23.001400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349998, 28.725374, 22.981579>,  <38.281586, 28.955109, 22.969687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349998, 28.725374, 22.981579>,  <38.464020, 28.342484, 23.001400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349998, 28.725374, 22.981579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805123, -0.267173, -0.529524,
		-0.520116, -0.111046, 0.846846,
		-0.285056, 0.957229, -0.049555,
		38.264481, 29.012543, 22.966713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796062, 28.375286, 23.292414>,  <38.464020, 28.342484, 23.001400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796062, 28.375286, 23.292414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839111, 28.685478, 23.043560>,  <37.864941, 28.871593, 22.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839111, 28.685478, 23.043560>,  <37.796062, 28.375286, 23.292414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839111, 28.685478, 23.043560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950357, -0.103517, -0.293436,
		-0.291955, 0.622830, 0.725841,
		0.107624, 0.775479, -0.622133,
		37.871399, 28.918121, 22.856920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109066, 28.595240, 23.164118>,  <37.796062, 28.375286, 23.292414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109066, 28.595240, 23.164118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307549, 28.807077, 22.888929>,  <37.426640, 28.934181, 22.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307549, 28.807077, 22.888929>,  <37.109066, 28.595240, 23.164118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307549, 28.807077, 22.888929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833025, 0.067141, -0.549146,
		-0.244635, 0.845589, 0.474482,
		0.496209, 0.529596, -0.687972,
		37.456409, 28.965956, 22.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663788, 29.097080, 22.985138>,  <37.109066, 28.595240, 23.164118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663788, 29.097080, 22.985138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911163, 29.066622, 22.672285>,  <37.059589, 29.048346, 22.484573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911163, 29.066622, 22.672285>,  <36.663788, 29.097080, 22.985138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911163, 29.066622, 22.672285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782065, 0.037690, -0.622055,
		0.076846, 0.996384, -0.036243,
		0.618440, -0.076147, -0.782134,
		37.096695, 29.043777, 22.437645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462288, 29.583937, 22.608019>,  <36.663788, 29.097080, 22.985138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462288, 29.583937, 22.608019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653275, 29.333164, 22.361774>,  <36.767868, 29.182701, 22.214027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653275, 29.333164, 22.361774>,  <36.462288, 29.583937, 22.608019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653275, 29.333164, 22.361774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775327, 0.029015, -0.630893,
		0.413388, 0.778534, -0.472223,
		0.477470, -0.626931, -0.615613,
		36.796516, 29.145084, 22.177090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268906, 29.763876, 21.965387>,  <36.462288, 29.583937, 22.608019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268906, 29.763876, 21.965387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406975, 29.396132, 21.889883>,  <36.489819, 29.175486, 21.844582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406975, 29.396132, 21.889883>,  <36.268906, 29.763876, 21.965387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406975, 29.396132, 21.889883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794586, -0.179227, -0.580096,
		0.499486, 0.350221, -0.792376,
		0.345177, -0.919360, -0.188759,
		36.510529, 29.120323, 21.833256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199760, 29.642515, 21.233156>,  <36.268906, 29.763876, 21.965387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199760, 29.642515, 21.233156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213120, 29.277718, 21.396690>,  <36.221134, 29.058838, 21.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213120, 29.277718, 21.396690>,  <36.199760, 29.642515, 21.233156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213120, 29.277718, 21.396690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822152, -0.257663, -0.507618,
		0.568288, -0.319175, -0.758404,
		0.033394, -0.911996, 0.408837,
		36.223137, 29.004118, 21.519342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047947, 29.289703, 20.698805>,  <36.199760, 29.642515, 21.233156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047947, 29.289703, 20.698805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988621, 29.037855, 21.003851>,  <35.953026, 28.886745, 21.186878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988621, 29.037855, 21.003851>,  <36.047947, 29.289703, 20.698805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988621, 29.037855, 21.003851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839838, -0.326993, -0.433299,
		0.522183, -0.704737, -0.480282,
		-0.148313, -0.629621, 0.762615,
		35.944126, 28.848969, 21.232635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054470, 28.624777, 20.430151>,  <36.047947, 29.289703, 20.698805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054470, 28.624777, 20.430151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863495, 28.611052, 20.781349>,  <35.748909, 28.602816, 20.992069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863495, 28.611052, 20.781349>,  <36.054470, 28.624777, 20.430151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863495, 28.611052, 20.781349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740644, -0.521917, -0.423142,
		0.472761, -0.852306, 0.223767,
		-0.477434, -0.034313, 0.877997,
		35.720264, 28.600758, 21.044748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866756, 27.898325, 20.462469>,  <36.054470, 28.624777, 20.430151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866756, 27.898325, 20.462469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622311, 28.134985, 20.672798>,  <35.475643, 28.276981, 20.798996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622311, 28.134985, 20.672798>,  <35.866756, 27.898325, 20.462469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622311, 28.134985, 20.672798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786473, -0.378777, -0.487840,
		-0.089461, -0.711671, 0.696793,
		-0.611111, 0.591651, 0.525825,
		35.438976, 28.312481, 20.830545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214756, 27.498354, 20.454731>,  <35.866756, 27.898325, 20.462469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214756, 27.498354, 20.454731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107658, 27.864822, 20.574024>,  <35.043400, 28.084703, 20.645601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107658, 27.864822, 20.574024>,  <35.214756, 27.498354, 20.454731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107658, 27.864822, 20.574024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923952, -0.156384, -0.349079,
		-0.273178, -0.369017, 0.888370,
		-0.267743, 0.916172, 0.298234,
		35.027336, 28.139673, 20.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477486, 27.434181, 20.759874>,  <35.214756, 27.498354, 20.454731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477486, 27.434181, 20.759874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525909, 27.817118, 20.654921>,  <34.554962, 28.046879, 20.591948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525909, 27.817118, 20.654921>,  <34.477486, 27.434181, 20.759874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525909, 27.817118, 20.654921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884860, -0.015715, -0.465593,
		-0.449854, 0.288537, 0.845209,
		0.121058, 0.957340, -0.262384,
		34.562225, 28.104321, 20.576206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875923, 27.832884, 20.881998>,  <34.477486, 27.434181, 20.759874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875923, 27.832884, 20.881998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052963, 28.035135, 20.585770>,  <34.159187, 28.156487, 20.408033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052963, 28.035135, 20.585770>,  <33.875923, 27.832884, 20.881998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052963, 28.035135, 20.585770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881155, 0.092030, -0.463784,
		-0.166348, 0.857828, 0.486270,
		0.442598, 0.505629, -0.740571,
		34.185741, 28.186825, 20.363598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283920, 28.255068, 20.655037>,  <33.875923, 27.832884, 20.881998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283920, 28.255068, 20.655037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550236, 28.279974, 20.357622>,  <33.710026, 28.294918, 20.179174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550236, 28.279974, 20.357622>,  <33.283920, 28.255068, 20.655037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550236, 28.279974, 20.357622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724529, 0.292042, -0.624316,
		0.178270, 0.954376, 0.239553,
		0.665792, 0.062266, -0.743535,
		33.749973, 28.298655, 20.134562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087986, 28.850760, 20.281612>,  <33.283920, 28.255068, 20.655037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087986, 28.850760, 20.281612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345520, 28.681898, 20.026344>,  <33.500042, 28.580582, 19.873182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345520, 28.681898, 20.026344>,  <33.087986, 28.850760, 20.281612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345520, 28.681898, 20.026344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589737, 0.257636, -0.765398,
		0.487532, 0.869143, -0.083085,
		0.643834, -0.422154, -0.638172,
		33.538670, 28.555252, 19.834892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179974, 29.391788, 19.747892>,  <33.087986, 28.850760, 20.281612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179974, 29.391788, 19.747892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301586, 29.049288, 19.580847>,  <33.374554, 28.843788, 19.480619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301586, 29.049288, 19.580847>,  <33.179974, 29.391788, 19.747892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301586, 29.049288, 19.580847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510468, 0.223700, -0.830289,
		0.804356, 0.465610, -0.369078,
		0.304028, -0.856251, -0.417613,
		33.392796, 28.792412, 19.455563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245220, 29.516878, 19.046715>,  <33.179974, 29.391788, 19.747892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245220, 29.516878, 19.046715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225506, 29.117409, 19.052696>,  <33.213676, 28.877728, 19.056284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225506, 29.117409, 19.052696>,  <33.245220, 29.516878, 19.046715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225506, 29.117409, 19.052696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616232, 0.018626, -0.787345,
		0.786021, -0.048022, -0.616332,
		-0.049289, -0.998673, 0.014952,
		33.210720, 28.817806, 19.057182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396362, 29.317833, 18.293209>,  <33.245220, 29.516878, 19.046715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396362, 29.317833, 18.293209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182228, 29.056612, 18.507475>,  <33.053745, 28.899879, 18.636034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182228, 29.056612, 18.507475>,  <33.396362, 29.317833, 18.293209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182228, 29.056612, 18.507475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660548, -0.071541, -0.747367,
		0.526393, -0.753925, -0.393075,
		-0.535338, -0.653054, 0.535662,
		33.021626, 28.860697, 18.668173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051022, 28.932314, 17.787945>,  <33.396362, 29.317833, 18.293209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051022, 28.932314, 17.787945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844765, 28.861319, 18.123234>,  <32.721012, 28.818722, 18.324408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844765, 28.861319, 18.123234>,  <33.051022, 28.932314, 17.787945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844765, 28.861319, 18.123234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852969, 0.013853, -0.521778,
		0.081000, -0.984024, -0.158540,
		-0.515638, -0.177494, 0.838220,
		32.690075, 28.808071, 18.374701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499729, 28.511183, 17.544956>,  <33.051022, 28.932314, 17.787945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499729, 28.511183, 17.544956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395950, 28.690275, 17.887238>,  <32.333683, 28.797729, 18.092606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395950, 28.690275, 17.887238>,  <32.499729, 28.511183, 17.544956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395950, 28.690275, 17.887238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938089, 0.093734, -0.333472,
		-0.229514, -0.889243, 0.395691,
		-0.259448, 0.447729, 0.855702,
		32.318115, 28.824594, 18.143948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846338, 28.244417, 17.621899>,  <32.499729, 28.511183, 17.544956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846338, 28.244417, 17.621899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858257, 28.569313, 17.854923>,  <31.865408, 28.764252, 17.994738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858257, 28.569313, 17.854923>,  <31.846338, 28.244417, 17.621899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858257, 28.569313, 17.854923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981783, 0.133201, -0.135499,
		-0.187656, -0.567910, 0.801414,
		0.029798, 0.812241, 0.582560,
		31.867197, 28.812986, 18.029692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354448, 28.159250, 18.172096>,  <31.846338, 28.244417, 17.621899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354448, 28.159250, 18.172096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402075, 28.550930, 18.106375>,  <31.430651, 28.785938, 18.066942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402075, 28.550930, 18.106375>,  <31.354448, 28.159250, 18.172096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402075, 28.550930, 18.106375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992595, 0.121399, 0.004200,
		0.024060, 0.162588, 0.986401,
		0.119065, 0.979198, -0.164305,
		31.437794, 28.844688, 18.057083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781412, 28.313601, 18.411194>,  <31.354448, 28.159250, 18.172096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781412, 28.313601, 18.411194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908379, 28.659966, 18.256563>,  <30.984558, 28.867785, 18.163786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908379, 28.659966, 18.256563>,  <30.781412, 28.313601, 18.411194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908379, 28.659966, 18.256563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939038, 0.343812, -0.000915,
		0.132117, 0.363300, 0.922257,
		0.317415, 0.865914, -0.386576,
		31.003603, 28.919739, 18.140591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577391, 28.815008, 18.915230>,  <30.781412, 28.313601, 18.411194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577391, 28.815008, 18.915230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604258, 28.958441, 18.542799>,  <30.620378, 29.044500, 18.319340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604258, 28.958441, 18.542799>,  <30.577391, 28.815008, 18.915230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604258, 28.958441, 18.542799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917434, 0.389000, 0.083629,
		0.392178, 0.848587, 0.355102,
		0.067168, 0.358580, -0.931080,
		30.624409, 29.066015, 18.263475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250204, 29.577515, 18.922726>,  <30.577391, 28.815008, 18.915230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250204, 29.577515, 18.922726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286552, 29.472443, 18.538488>,  <30.308361, 29.409399, 18.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286552, 29.472443, 18.538488>,  <30.250204, 29.577515, 18.922726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286552, 29.472443, 18.538488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874736, 0.439998, -0.203071,
		0.476002, 0.858720, -0.189792,
		0.090873, -0.262681, -0.960594,
		30.313814, 29.393639, 18.250311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043474, 30.149956, 18.576834>,  <30.250204, 29.577515, 18.922726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043474, 30.149956, 18.576834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997614, 29.869659, 18.295177>,  <29.970097, 29.701481, 18.126183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997614, 29.869659, 18.295177>,  <30.043474, 30.149956, 18.576834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997614, 29.869659, 18.295177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932102, 0.321029, -0.167709,
		0.343571, 0.637105, -0.689968,
		-0.114651, -0.700741, -0.704143,
		29.963219, 29.659437, 18.083935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745098, 30.552435, 18.049765>,  <30.043474, 30.149956, 18.576834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745098, 30.552435, 18.049765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653688, 30.173569, 17.959738>,  <29.598843, 29.946249, 17.905722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653688, 30.173569, 17.959738>,  <29.745098, 30.552435, 18.049765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653688, 30.173569, 17.959738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944477, 0.271762, -0.184686,
		0.236092, 0.170362, -0.956681,
		-0.228526, -0.947166, -0.225063,
		29.585131, 29.889420, 17.892218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425278, 30.543055, 17.439425>,  <29.745098, 30.552435, 18.049765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425278, 30.543055, 17.439425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318127, 30.198656, 17.612366>,  <29.253836, 29.992018, 17.716129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318127, 30.198656, 17.612366>,  <29.425278, 30.543055, 17.439425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318127, 30.198656, 17.612366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960809, 0.205506, -0.186046,
		0.071334, -0.465246, -0.882303,
		-0.267876, -0.860996, 0.432353,
		29.237764, 29.940357, 17.742071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886370, 30.221077, 17.039806>,  <29.425278, 30.543055, 17.439425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886370, 30.221077, 17.039806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824530, 30.053410, 17.397665>,  <28.787426, 29.952808, 17.612381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824530, 30.053410, 17.397665>,  <28.886370, 30.221077, 17.039806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824530, 30.053410, 17.397665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981237, 0.170734, -0.089571,
		-0.115201, -0.891710, -0.437701,
		-0.154602, -0.419170, 0.894648,
		28.778149, 29.927658, 17.666059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409002, 29.744921, 16.923971>,  <28.886370, 30.221077, 17.039806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409002, 29.744921, 16.923971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407633, 29.795891, 17.320707>,  <28.406811, 29.826473, 17.558750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407633, 29.795891, 17.320707>,  <28.409002, 29.744921, 16.923971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407633, 29.795891, 17.320707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999825, -0.018660, -0.001055,
		0.018373, -0.991673, 0.127465,
		-0.003424, 0.127423, 0.991843,
		28.406605, 29.834118, 17.618259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866579, 29.419367, 17.015041>,  <28.409002, 29.744921, 16.923971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866579, 29.419367, 17.015041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910355, 29.626839, 17.354216>,  <27.936621, 29.751322, 17.557720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910355, 29.626839, 17.354216>,  <27.866579, 29.419367, 17.015041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910355, 29.626839, 17.354216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993934, 0.047819, 0.099034,
		0.010820, -0.853632, 0.520764,
		0.109441, 0.518677, 0.847937,
		27.943188, 29.782442, 17.608597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463034, 29.085094, 17.549377>,  <27.866579, 29.419367, 17.015041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463034, 29.085094, 17.549377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510405, 29.464663, 17.666357>,  <27.538828, 29.692404, 17.736544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510405, 29.464663, 17.666357>,  <27.463034, 29.085094, 17.549377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510405, 29.464663, 17.666357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989149, 0.086950, 0.118427,
		0.086950, -0.303298, 0.948920,
		-0.118427, -0.948920, -0.292447,
		27.545933, 29.749338, 17.754091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272242, 29.136009, 18.207800>,  <27.463034, 29.085094, 17.549377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272242, 29.136009, 18.207800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243055, 29.509295, 18.067066>,  <27.225544, 29.733267, 17.982626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243055, 29.509295, 18.067066>,  <27.272242, 29.136009, 18.207800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243055, 29.509295, 18.067066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964506, 0.023740, 0.262992,
		0.253781, 0.358534, 0.898359,
		-0.072964, 0.933215, -0.351833,
		27.221167, 29.789259, 17.961515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862352, 29.392603, 18.646830>,  <27.272242, 29.136009, 18.207800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862352, 29.392603, 18.646830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831169, 29.646475, 18.339296>,  <26.812460, 29.798798, 18.154776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831169, 29.646475, 18.339296>,  <26.862352, 29.392603, 18.646830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831169, 29.646475, 18.339296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930570, 0.230384, 0.284541,
		0.357719, 0.737635, 0.572654,
		-0.077957, 0.634680, -0.768833,
		26.807781, 29.836880, 18.108646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206970, 29.579618, 18.668909>,  <26.862352, 29.392603, 18.646830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206970, 29.579618, 18.668909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116652, 29.750498, 19.019114>,  <26.062460, 29.853025, 19.229237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116652, 29.750498, 19.019114>,  <26.206970, 29.579618, 18.668909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116652, 29.750498, 19.019114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946323, -0.117179, 0.301235,
		0.231279, 0.896532, -0.377810,
		-0.225795, 0.427199, 0.875510,
		26.048912, 29.878658, 19.281767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722412, 30.199106, 18.826727>,  <26.206970, 29.579618, 18.668909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722412, 30.199106, 18.826727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569944, 30.052740, 19.166330>,  <26.478464, 29.964920, 19.370092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.569944, 30.052740, 19.166330>,  <26.722412, 30.199106, 18.826727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.569944, 30.052740, 19.166330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911824, -0.300376, 0.279913,
		0.152598, 0.880842, 0.448143,
		-0.381170, -0.365913, 0.849009,
		26.455593, 29.942966, 19.421034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295322, 30.075171, 19.190653>,  <26.722412, 30.199106, 18.826727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295322, 30.075171, 19.190653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046749, 29.911392, 19.457838>,  <26.897604, 29.813126, 19.618149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046749, 29.911392, 19.457838>,  <27.295322, 30.075171, 19.190653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046749, 29.911392, 19.457838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781903, -0.270302, 0.561752,
		-0.049455, 0.871374, 0.488121,
		-0.621436, -0.409445, 0.667962,
		26.860319, 29.788559, 19.658226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510082, 30.244654, 19.937096>,  <27.295322, 30.075171, 19.190653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510082, 30.244654, 19.937096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269104, 29.928532, 19.981770>,  <27.124517, 29.738857, 20.008574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269104, 29.928532, 19.981770>,  <27.510082, 30.244654, 19.937096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269104, 29.928532, 19.981770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697854, -0.453644, 0.554263,
		-0.387373, 0.411853, 0.824815,
		-0.602447, -0.790306, 0.111684,
		27.088369, 29.691441, 20.015274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451195, 30.103149, 20.603325>,  <27.510082, 30.244654, 19.937096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451195, 30.103149, 20.603325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366623, 29.754507, 20.426418>,  <27.315880, 29.545322, 20.320274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366623, 29.754507, 20.426418>,  <27.451195, 30.103149, 20.603325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366623, 29.754507, 20.426418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735956, -0.439734, 0.514784,
		-0.643169, -0.216647, 0.734437,
		-0.211430, -0.871606, -0.442266,
		27.303194, 29.493025, 20.293737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609150, 29.723993, 21.062992>,  <27.451195, 30.103149, 20.603325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609150, 29.723993, 21.062992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571419, 29.439367, 20.784489>,  <27.548780, 29.268591, 20.617386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571419, 29.439367, 20.784489>,  <27.609150, 29.723993, 21.062992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571419, 29.439367, 20.784489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708165, -0.539517, 0.455438,
		-0.699718, -0.450106, 0.554797,
		-0.094327, -0.711566, -0.696259,
		27.543121, 29.225897, 20.575611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401943, 29.079094, 21.382025>,  <27.609150, 29.723993, 21.062992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401943, 29.079094, 21.382025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624485, 29.021524, 21.054670>,  <27.758009, 28.986982, 20.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624485, 29.021524, 21.054670>,  <27.401943, 29.079094, 21.382025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624485, 29.021524, 21.054670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654299, -0.531229, 0.538227,
		-0.512213, -0.834915, -0.201384,
		0.556355, -0.143921, -0.818386,
		27.791391, 28.978348, 20.809155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750074, 28.399633, 21.296497>,  <27.401943, 29.079094, 21.382025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750074, 28.399633, 21.296497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980274, 28.600864, 21.038595>,  <28.118395, 28.721603, 20.883854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.980274, 28.600864, 21.038595>,  <27.750074, 28.399633, 21.296497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980274, 28.600864, 21.038595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813412, -0.433695, 0.387645,
		-0.084611, -0.747543, -0.658803,
		0.575501, 0.503079, -0.644756,
		28.152924, 28.751787, 20.845169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344511, 27.976368, 21.127846>,  <27.750074, 28.399633, 21.296497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344511, 27.976368, 21.127846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456413, 28.338467, 20.999933>,  <28.523556, 28.555727, 20.923185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.456413, 28.338467, 20.999933>,  <28.344511, 27.976368, 21.127846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.456413, 28.338467, 20.999933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940537, -0.191567, 0.280519,
		0.192680, -0.379246, -0.905012,
		0.279757, 0.905248, -0.319784,
		28.540340, 28.610041, 20.903997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978848, 27.858210, 20.934250>,  <28.344511, 27.976368, 21.127846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978848, 27.858210, 20.934250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960155, 28.257721, 20.940666>,  <28.948940, 28.497427, 20.944515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960155, 28.257721, 20.940666>,  <28.978848, 27.858210, 20.934250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960155, 28.257721, 20.940666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967924, 0.041308, 0.247825,
		0.246860, 0.027105, -0.968672,
		-0.046731, 0.998779, 0.016039,
		28.946136, 28.557354, 20.945478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495905, 28.149063, 20.451281>,  <28.978848, 27.858210, 20.934250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495905, 28.149063, 20.451281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395382, 28.408752, 20.738434>,  <29.335068, 28.564566, 20.910725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395382, 28.408752, 20.738434>,  <29.495905, 28.149063, 20.451281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395382, 28.408752, 20.738434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960946, 0.256144, 0.104751,
		-0.115874, 0.716171, -0.688239,
		-0.251307, 0.649222, 0.717882,
		29.319990, 28.603519, 20.953798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977488, 28.786509, 20.352659>,  <29.495905, 28.149063, 20.451281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977488, 28.786509, 20.352659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832823, 28.824614, 20.723631>,  <29.746023, 28.847477, 20.946215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832823, 28.824614, 20.723631>,  <29.977488, 28.786509, 20.352659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832823, 28.824614, 20.723631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911451, 0.245375, 0.330226,
		-0.196109, 0.964736, -0.175571,
		-0.361661, 0.095264, 0.927430,
		29.724325, 28.853193, 21.001860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131809, 29.383022, 20.637964>,  <29.977488, 28.786509, 20.352659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131809, 29.383022, 20.637964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069633, 29.210201, 20.993305>,  <30.032328, 29.106508, 21.206511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069633, 29.210201, 20.993305>,  <30.131809, 29.383022, 20.637964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069633, 29.210201, 20.993305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915527, 0.274742, 0.293813,
		-0.371011, 0.858981, 0.352850,
		-0.155437, -0.432052, 0.888353,
		30.023003, 29.080585, 21.259811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469877, 29.894428, 21.125851>,  <30.131809, 29.383022, 20.637964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469877, 29.894428, 21.125851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453817, 29.539627, 21.309858>,  <30.444181, 29.326746, 21.420263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453817, 29.539627, 21.309858>,  <30.469877, 29.894428, 21.125851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453817, 29.539627, 21.309858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861405, 0.202570, 0.465776,
		-0.506329, 0.414964, 0.755934,
		-0.040151, -0.887001, 0.460019,
		30.441772, 29.273527, 21.447865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739389, 30.032877, 21.788643>,  <30.469877, 29.894428, 21.125851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739389, 30.032877, 21.788643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732792, 29.633297, 21.771555>,  <30.728834, 29.393549, 21.761301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732792, 29.633297, 21.771555>,  <30.739389, 30.032877, 21.788643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732792, 29.633297, 21.771555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854010, -0.036294, 0.518989,
		-0.519995, -0.027925, 0.853712,
		-0.016492, -0.998951, -0.042721,
		30.727844, 29.333612, 21.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777519, 29.798668, 22.549870>,  <30.739389, 30.032877, 21.788643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777519, 29.798668, 22.549870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905214, 29.520210, 22.292664>,  <30.981831, 29.353136, 22.138340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905214, 29.520210, 22.292664>,  <30.777519, 29.798668, 22.549870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905214, 29.520210, 22.292664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810725, -0.150734, 0.565689,
		-0.490727, -0.701898, 0.516262,
		0.319238, -0.696146, -0.643015,
		31.000986, 29.311367, 22.099758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039776, 29.298910, 22.959841>,  <30.777519, 29.798668, 22.549870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039776, 29.298910, 22.959841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183952, 29.195778, 22.601265>,  <31.270458, 29.133900, 22.386120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.183952, 29.195778, 22.601265>,  <31.039776, 29.298910, 22.959841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183952, 29.195778, 22.601265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878614, -0.228889, 0.419103,
		-0.313243, -0.938688, 0.144031,
		0.360440, -0.257829, -0.896442,
		31.292084, 29.118429, 22.332333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386744, 28.646914, 23.108725>,  <31.039776, 29.298910, 22.959841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386744, 28.646914, 23.108725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551777, 28.793877, 22.775309>,  <31.650797, 28.882055, 22.575260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.551777, 28.793877, 22.775309>,  <31.386744, 28.646914, 23.108725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551777, 28.793877, 22.775309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909729, -0.212968, 0.356423,
		-0.046565, -0.905349, -0.422108,
		0.412583, 0.367408, -0.833539,
		31.675552, 28.904099, 22.525248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778423, 28.193493, 22.782541>,  <31.386744, 28.646914, 23.108725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778423, 28.193493, 22.782541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936087, 28.536945, 22.651459>,  <32.030685, 28.743017, 22.572809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936087, 28.536945, 22.651459>,  <31.778423, 28.193493, 22.782541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936087, 28.536945, 22.651459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908959, -0.311532, 0.277023,
		0.135770, -0.407060, -0.903254,
		0.394158, 0.858632, -0.327704,
		32.054333, 28.794535, 22.553148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373680, 28.000908, 22.290722>,  <31.778423, 28.193493, 22.782541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373680, 28.000908, 22.290722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443615, 28.381657, 22.391415>,  <32.485577, 28.610106, 22.451830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443615, 28.381657, 22.391415>,  <32.373680, 28.000908, 22.290722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443615, 28.381657, 22.391415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960569, -0.221039, 0.168671,
		0.216196, 0.212315, -0.952986,
		0.174836, 0.951874, 0.251731,
		32.496067, 28.667219, 22.466934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086903, 28.073084, 21.909937>,  <32.373680, 28.000908, 22.290722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086903, 28.073084, 21.909937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031227, 28.380686, 22.159498>,  <32.997822, 28.565247, 22.309235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031227, 28.380686, 22.159498>,  <33.086903, 28.073084, 21.909937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031227, 28.380686, 22.159498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976874, 0.003366, 0.213789,
		0.162305, 0.639232, -0.751691,
		-0.139191, 0.769007, 0.623902,
		32.989471, 28.611387, 22.346668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557518, 28.554731, 21.741953>,  <33.086903, 28.073084, 21.909937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557518, 28.554731, 21.741953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457134, 28.625237, 22.122679>,  <33.396904, 28.667540, 22.351114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457134, 28.625237, 22.122679>,  <33.557518, 28.554731, 21.741953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457134, 28.625237, 22.122679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967993, 0.048632, 0.246220,
		-0.002889, 0.983141, -0.182827,
		-0.250960, 0.176264, 0.951814,
		33.381847, 28.678116, 22.408222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948273, 29.104578, 21.897215>,  <33.557518, 28.554731, 21.741953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948273, 29.104578, 21.897215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852333, 28.945122, 22.251289>,  <33.794769, 28.849447, 22.463734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.852333, 28.945122, 22.251289>,  <33.948273, 29.104578, 21.897215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852333, 28.945122, 22.251289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938808, 0.136940, 0.316048,
		-0.247208, 0.906825, 0.341404,
		-0.239848, -0.398642, 0.885188,
		33.780380, 28.825529, 22.516846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093250, 29.613178, 22.513487>,  <33.948273, 29.104578, 21.897215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093250, 29.613178, 22.513487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063789, 29.243633, 22.663715>,  <34.046112, 29.021906, 22.753853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063789, 29.243633, 22.663715>,  <34.093250, 29.613178, 22.513487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063789, 29.243633, 22.663715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855090, 0.135302, 0.500513,
		-0.513221, 0.358011, 0.780021,
		-0.073651, -0.923862, 0.375571,
		34.041695, 28.966475, 22.776386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126846, 29.718340, 23.242348>,  <34.093250, 29.613178, 22.513487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126846, 29.718340, 23.242348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244049, 29.339806, 23.187805>,  <34.314373, 29.112684, 23.155079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244049, 29.339806, 23.187805>,  <34.126846, 29.718340, 23.242348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244049, 29.339806, 23.187805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796786, 0.162860, 0.581901,
		-0.528467, -0.279152, 0.801746,
		0.293011, -0.946335, -0.136358,
		34.331951, 29.055904, 23.146898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285324, 29.562588, 23.904902>,  <34.126846, 29.718340, 23.242348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285324, 29.562588, 23.904902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452587, 29.255873, 23.710096>,  <34.552944, 29.071844, 23.593214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452587, 29.255873, 23.710096>,  <34.285324, 29.562588, 23.904902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452587, 29.255873, 23.710096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733006, -0.031821, 0.679478,
		-0.536512, -0.641113, 0.548753,
		0.418160, -0.766787, -0.487012,
		34.578033, 29.025837, 23.563993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473797, 29.108013, 24.378902>,  <34.285324, 29.562588, 23.904902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473797, 29.108013, 24.378902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696121, 28.980947, 24.071613>,  <34.829514, 28.904707, 23.887239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696121, 28.980947, 24.071613>,  <34.473797, 29.108013, 24.378902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696121, 28.980947, 24.071613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758506, -0.184406, 0.625030,
		-0.340216, -0.930098, 0.138457,
		0.555807, -0.317666, -0.768223,
		34.862862, 28.885649, 23.841146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811646, 28.426493, 24.568642>,  <34.473797, 29.108013, 24.378902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811646, 28.426493, 24.568642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054573, 28.559433, 24.280003>,  <35.200329, 28.639198, 24.106819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054573, 28.559433, 24.280003>,  <34.811646, 28.426493, 24.568642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054573, 28.559433, 24.280003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773255, -0.038845, 0.632904,
		0.182317, -0.942355, -0.280585,
		0.607320, 0.332353, -0.721598,
		35.236771, 28.659140, 24.063522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251419, 27.958452, 24.572416>,  <34.811646, 28.426493, 24.568642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251419, 27.958452, 24.572416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411797, 28.297876, 24.434317>,  <35.508022, 28.501530, 24.351458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411797, 28.297876, 24.434317>,  <35.251419, 27.958452, 24.572416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411797, 28.297876, 24.434317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800817, -0.141620, 0.581924,
		0.444903, -0.509797, -0.736321,
		0.400941, 0.848558, -0.345247,
		35.532078, 28.552444, 24.330742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050583, 27.849617, 24.391113>,  <35.251419, 27.958452, 24.572416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050583, 27.849617, 24.391113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979900, 28.240389, 24.439083>,  <35.937492, 28.474852, 24.467865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979900, 28.240389, 24.439083>,  <36.050583, 27.849617, 24.391113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979900, 28.240389, 24.439083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797725, 0.070778, 0.598854,
		0.576550, 0.201489, -0.791828,
		-0.176706, 0.976930, 0.119926,
		35.926888, 28.533468, 24.475061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677032, 28.097275, 24.249529>,  <36.050583, 27.849617, 24.391113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677032, 28.097275, 24.249529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470814, 28.383541, 24.438013>,  <36.347084, 28.555300, 24.551104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470814, 28.383541, 24.438013>,  <36.677032, 28.097275, 24.249529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470814, 28.383541, 24.438013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802127, 0.209684, 0.559128,
		0.301342, 0.666227, -0.682154,
		-0.515543, 0.715663, 0.471212,
		36.316151, 28.598240, 24.579376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182030, 28.666624, 24.303516>,  <36.677032, 28.097275, 24.249529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182030, 28.666624, 24.303516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881687, 28.714235, 24.563377>,  <36.701481, 28.742802, 24.719294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881687, 28.714235, 24.563377>,  <37.182030, 28.666624, 24.303516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881687, 28.714235, 24.563377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654981, 0.260728, 0.709240,
		-0.084962, 0.958046, -0.273731,
		-0.750854, 0.119030, 0.649654,
		36.656429, 28.749945, 24.758274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335934, 29.286333, 24.554689>,  <37.182030, 28.666624, 24.303516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335934, 29.286333, 24.554689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095734, 29.123154, 24.829781>,  <36.951614, 29.025246, 24.994835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095734, 29.123154, 24.829781>,  <37.335934, 29.286333, 24.554689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095734, 29.123154, 24.829781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696664, 0.155251, 0.700397,
		-0.392496, 0.899708, 0.190975,
		-0.600504, -0.407948, 0.687730,
		36.915581, 29.000769, 25.036100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459751, 29.713345, 25.092688>,  <37.335934, 29.286333, 24.554689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459751, 29.713345, 25.092688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297710, 29.383121, 25.249836>,  <37.200485, 29.184988, 25.344124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297710, 29.383121, 25.249836>,  <37.459751, 29.713345, 25.092688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297710, 29.383121, 25.249836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777733, -0.085262, 0.622785,
		-0.480648, 0.557840, 0.676603,
		-0.405103, -0.825557, 0.392870,
		37.176178, 29.135454, 25.367697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456963, 29.822216, 25.780125>,  <37.459751, 29.713345, 25.092688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456963, 29.822216, 25.780125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419312, 29.425882, 25.741375>,  <37.396721, 29.188082, 25.718126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419312, 29.425882, 25.741375>,  <37.456963, 29.822216, 25.780125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419312, 29.425882, 25.741375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739859, -0.134728, 0.659133,
		-0.666144, -0.009629, 0.745761,
		-0.094128, -0.990836, -0.096873,
		37.391075, 29.128632, 25.712313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347939, 29.567371, 26.517363>,  <37.456963, 29.822216, 25.780125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347939, 29.567371, 26.517363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475567, 29.272287, 26.279379>,  <37.552143, 29.095238, 26.136589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475567, 29.272287, 26.279379>,  <37.347939, 29.567371, 26.517363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475567, 29.272287, 26.279379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619190, -0.312999, 0.720163,
		-0.717494, -0.598177, 0.356913,
		0.319072, -0.737710, -0.594960,
		37.571289, 29.050974, 26.100891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471142, 28.909937, 26.944586>,  <37.347939, 29.567371, 26.517363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471142, 28.909937, 26.944586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691036, 28.864885, 26.613503>,  <37.822975, 28.837854, 26.414852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691036, 28.864885, 26.613503>,  <37.471142, 28.909937, 26.944586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691036, 28.864885, 26.613503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721756, -0.434799, 0.538533,
		-0.420542, -0.893456, -0.157733,
		0.549738, -0.112631, -0.827709,
		37.855957, 28.831097, 26.365191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889103, 28.323376, 27.028006>,  <37.471142, 28.909937, 26.944586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889103, 28.323376, 27.028006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086544, 28.512653, 26.736132>,  <38.205009, 28.626221, 26.561007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086544, 28.512653, 26.736132>,  <37.889103, 28.323376, 27.028006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086544, 28.512653, 26.736132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849033, -0.443955, 0.286438,
		-0.188407, -0.760915, -0.620896,
		0.493605, 0.473194, -0.729686,
		38.234627, 28.654612, 26.517225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367710, 27.800524, 26.784161>,  <37.889103, 28.323376, 27.028006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367710, 27.800524, 26.784161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497601, 28.159868, 26.665842>,  <38.575535, 28.375475, 26.594851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497601, 28.159868, 26.665842>,  <38.367710, 27.800524, 26.784161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497601, 28.159868, 26.665842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894548, -0.190164, 0.404503,
		0.307140, -0.395959, -0.865379,
		0.324731, 0.898362, -0.295797,
		38.595020, 28.429377, 26.577103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132320, 27.715939, 26.851397>,  <38.367710, 27.800524, 26.784161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132320, 27.715939, 26.851397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110760, 28.112110, 26.800568>,  <39.097824, 28.349813, 26.770069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110760, 28.112110, 26.800568>,  <39.132320, 27.715939, 26.851397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110760, 28.112110, 26.800568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905371, 0.102149, 0.412152,
		0.421187, -0.092835, -0.902210,
		-0.053898, 0.990428, -0.127074,
		39.094589, 28.409239, 26.762445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680717, 27.891256, 26.546623>,  <39.132320, 27.715939, 26.851397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680717, 27.891256, 26.546623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560944, 28.210276, 26.756102>,  <39.489079, 28.401688, 26.881788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560944, 28.210276, 26.756102>,  <39.680717, 27.891256, 26.546623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560944, 28.210276, 26.756102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910501, 0.074802, 0.406685,
		0.285178, 0.598599, -0.748567,
		-0.299436, 0.797548, 0.523694,
		39.471111, 28.449541, 26.913210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192932, 28.348148, 26.436584>,  <39.680717, 27.891256, 26.546623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192932, 28.348148, 26.436584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992340, 28.432793, 26.772141>,  <39.871983, 28.483580, 26.973475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992340, 28.432793, 26.772141>,  <40.192932, 28.348148, 26.436584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992340, 28.432793, 26.772141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865159, 0.118341, 0.487335,
		0.003849, 0.970163, -0.242422,
		-0.501483, 0.211610, 0.838890,
		39.841896, 28.496275, 27.023808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542645, 27.671600, 26.447018>,  <40.192932, 28.348148, 26.436584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542645, 27.671600, 26.447018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640293, 28.059490, 26.444473>,  <40.698883, 28.292223, 26.442947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640293, 28.059490, 26.444473>,  <40.542645, 27.671600, 26.447018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640293, 28.059490, 26.444473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588591, -0.153382, -0.793748,
		-0.770691, 0.190028, -0.608214,
		0.244123, 0.969724, -0.006362,
		40.713531, 28.350407, 26.442564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507854, 27.904499, 25.768528>,  <40.542645, 27.671600, 26.447018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507854, 27.904499, 25.768528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779015, 28.134964, 25.951174>,  <40.941711, 28.273243, 26.060760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779015, 28.134964, 25.951174>,  <40.507854, 27.904499, 25.768528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779015, 28.134964, 25.951174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642914, -0.163393, -0.748308,
		-0.356538, 0.800839, -0.481184,
		0.677896, 0.576160, 0.456615,
		40.982384, 28.307812, 26.088158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025295, 27.352516, 25.517328>,  <40.507854, 27.904499, 25.768528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025295, 27.352516, 25.517328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422695, 27.307753, 25.509077>,  <41.661137, 27.280895, 25.504126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422695, 27.307753, 25.509077>,  <41.025295, 27.352516, 25.517328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422695, 27.307753, 25.509077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108692, -0.986907, 0.119168,
		-0.033695, -0.116152, -0.992660,
		0.993504, -0.111909, -0.020629,
		41.720745, 27.274179, 25.502888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687370, 27.368801, 24.828251>,  <41.025295, 27.352516, 25.517328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687370, 27.368801, 24.828251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751003, 27.565737, 24.485954>,  <40.789185, 27.683897, 24.280577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751003, 27.565737, 24.485954>,  <40.687370, 27.368801, 24.828251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751003, 27.565737, 24.485954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654444, -0.596390, -0.464783,
		-0.739187, 0.633974, 0.227332,
		0.159081, 0.492337, -0.855744,
		40.798729, 27.713438, 24.229231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114010, 27.626621, 24.459448>,  <40.687370, 27.368801, 24.828251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114010, 27.626621, 24.459448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395214, 27.591309, 24.177177>,  <40.563938, 27.570122, 24.007814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395214, 27.591309, 24.177177>,  <40.114010, 27.626621, 24.459448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395214, 27.591309, 24.177177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599211, -0.607960, -0.520894,
		-0.383039, 0.789045, -0.480302,
		0.703013, -0.088280, -0.705676,
		40.606117, 27.564825, 23.965475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674618, 28.166695, 24.896116>,  <40.114010, 27.626621, 24.459448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674618, 28.166695, 24.896116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042709, 28.012789, 24.867443>,  <40.263565, 27.920446, 24.850239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042709, 28.012789, 24.867443>,  <39.674618, 28.166695, 24.896116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042709, 28.012789, 24.867443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228126, 0.676127, -0.700579,
		0.318024, 0.628339, 0.709966,
		0.920228, -0.384763, -0.071684,
		40.318779, 27.897360, 24.845938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109074, 28.759567, 24.825796>,  <39.674618, 28.166695, 24.896116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109074, 28.759567, 24.825796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326759, 28.525299, 24.585522>,  <40.457371, 28.384739, 24.441357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326759, 28.525299, 24.585522>,  <40.109074, 28.759567, 24.825796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326759, 28.525299, 24.585522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154033, 0.773583, -0.614690,
		0.824685, 0.241997, 0.511206,
		0.544214, -0.585668, -0.600687,
		40.490025, 28.349598, 24.405315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765438, 29.040556, 24.728069>,  <40.109074, 28.759567, 24.825796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765438, 29.040556, 24.728069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705250, 28.791128, 24.421209>,  <40.669136, 28.641472, 24.237093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705250, 28.791128, 24.421209>,  <40.765438, 29.040556, 24.728069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705250, 28.791128, 24.421209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311286, 0.706629, -0.635433,
		0.938327, -0.334419, 0.087780,
		-0.150474, -0.623569, -0.767150,
		40.660107, 28.604057, 24.191065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085865, 29.742561, 24.693933>,  <40.765438, 29.040556, 24.728069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085865, 29.742561, 24.693933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456257, 29.766306, 24.544785>,  <41.678493, 29.780552, 24.455296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456257, 29.766306, 24.544785>,  <41.085865, 29.742561, 24.693933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456257, 29.766306, 24.544785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362189, -0.139322, -0.921634,
		-0.106658, 0.988466, -0.107509,
		0.925982, 0.059361, -0.372872,
		41.734051, 29.784115, 24.432922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208679, 30.340691, 24.211245>,  <41.085865, 29.742561, 24.693933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208679, 30.340691, 24.211245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398438, 29.993887, 24.150261>,  <41.512295, 29.785805, 24.113670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398438, 29.993887, 24.150261>,  <41.208679, 30.340691, 24.211245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398438, 29.993887, 24.150261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387758, -0.050323, -0.920386,
		0.790309, 0.495748, -0.360062,
		0.474399, -0.867007, -0.152459,
		41.540756, 29.733786, 24.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730671, 30.255491, 23.729977>,  <41.208679, 30.340691, 24.211245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730671, 30.255491, 23.729977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550766, 29.898291, 23.736473>,  <41.442825, 29.683969, 23.740372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550766, 29.898291, 23.736473>,  <41.730671, 30.255491, 23.729977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550766, 29.898291, 23.736473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298763, 0.133283, -0.944974,
		0.841699, -0.429863, -0.326742,
		-0.449759, -0.893002, 0.016243,
		41.415840, 29.630390, 23.741346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584316, 31.065628, 23.747339>,  <41.730671, 30.255491, 23.729977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584316, 31.065628, 23.747339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467846, 31.353535, 23.999420>,  <41.397964, 31.526278, 24.150669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467846, 31.353535, 23.999420>,  <41.584316, 31.065628, 23.747339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467846, 31.353535, 23.999420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601422, -0.374569, 0.705683,
		0.743981, 0.584496, -0.323817,
		-0.291177, 0.719765, 0.630201,
		41.380493, 31.569464, 24.188480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222797, 31.313616, 23.998934>,  <41.584316, 31.065628, 23.747339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222797, 31.313616, 23.998934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935528, 31.403921, 24.262224>,  <41.763168, 31.458105, 24.420198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.935528, 31.403921, 24.262224>,  <42.222797, 31.313616, 23.998934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.935528, 31.403921, 24.262224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591404, -0.300445, 0.748314,
		0.366704, 0.926695, 0.082253,
		-0.718171, 0.225765, 0.658226,
		41.720078, 31.471651, 24.459692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486874, 31.726494, 24.486532>,  <42.222797, 31.313616, 23.998934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486874, 31.726494, 24.486532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176777, 31.547031, 24.664391>,  <41.990719, 31.439354, 24.771105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176777, 31.547031, 24.664391>,  <42.486874, 31.726494, 24.486532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176777, 31.547031, 24.664391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581469, -0.231875, 0.779825,
		-0.246772, 0.863099, 0.440639,
		-0.775240, -0.448657, 0.444645,
		41.944206, 31.412434, 24.797785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667496, 31.824797, 25.203625>,  <42.486874, 31.726494, 24.486532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.667496, 31.824797, 25.203625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373352, 31.553854, 25.195332>,  <42.196865, 31.391289, 25.190355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373352, 31.553854, 25.195332>,  <42.667496, 31.824797, 25.203625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373352, 31.553854, 25.195332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368380, -0.425231, 0.826725,
		-0.568804, 0.600305, 0.562224,
		-0.735362, -0.677357, -0.020733,
		42.152744, 31.350647, 25.189112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352386, 31.753954, 25.965046>,  <42.667496, 31.824797, 25.203625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352386, 31.753954, 25.965046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293209, 31.420574, 25.752079>,  <42.257702, 31.220547, 25.624298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.293209, 31.420574, 25.752079>,  <42.352386, 31.753954, 25.965046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293209, 31.420574, 25.752079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345444, -0.547985, 0.761827,
		-0.926704, -0.071211, 0.368984,
		-0.147947, -0.833451, -0.532420,
		42.248825, 31.170538, 25.592354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134270, 31.305244, 26.453121>,  <42.352386, 31.753954, 25.965046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134270, 31.305244, 26.453121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243023, 31.086113, 26.136648>,  <42.308273, 30.954634, 25.946764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.243023, 31.086113, 26.136648>,  <42.134270, 31.305244, 26.453121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243023, 31.086113, 26.136648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388985, -0.689431, 0.611045,
		-0.880211, -0.473889, 0.025653,
		0.271881, -0.547827, -0.791181,
		42.324589, 30.921764, 25.899294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905979, 30.558027, 26.268301>,  <42.134270, 31.305244, 26.453121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905979, 30.558027, 26.268301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291885, 30.634302, 26.195778>,  <42.523430, 30.680067, 26.152264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291885, 30.634302, 26.195778>,  <41.905979, 30.558027, 26.268301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291885, 30.634302, 26.195778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263064, -0.713759, 0.649111,
		-0.005635, -0.673934, -0.738770,
		0.964762, 0.190686, -0.181310,
		42.581314, 30.691507, 26.141384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594959, 29.962423, 26.615458>,  <41.905979, 30.558027, 26.268301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594959, 29.962423, 26.615458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910549, 30.046099, 26.384371>,  <42.099903, 30.096304, 26.245720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910549, 30.046099, 26.384371>,  <41.594959, 29.962423, 26.615458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910549, 30.046099, 26.384371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608284, -0.133348, 0.782438,
		0.086642, -0.968740, -0.232457,
		0.788976, 0.209192, -0.577715,
		42.147243, 30.108856, 26.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022747, 29.396858, 26.617971>,  <41.594959, 29.962423, 26.615458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022747, 29.396858, 26.617971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283409, 29.680599, 26.510523>,  <42.439808, 29.850843, 26.446053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283409, 29.680599, 26.510523>,  <42.022747, 29.396858, 26.617971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283409, 29.680599, 26.510523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624588, -0.300880, 0.720667,
		0.430385, -0.637408, -0.639125,
		0.651659, 0.709354, -0.268623,
		42.478909, 29.893406, 26.429935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725887, 29.126795, 26.741159>,  <42.022747, 29.396858, 26.617971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725887, 29.126795, 26.741159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767258, 29.523140, 26.706533>,  <42.792080, 29.760946, 26.685759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.767258, 29.523140, 26.706533>,  <42.725887, 29.126795, 26.741159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767258, 29.523140, 26.706533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686683, -0.008172, 0.726911,
		0.719562, -0.134623, -0.681254,
		0.103426, 0.990863, -0.086563,
		42.798286, 29.820398, 26.680565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478588, 29.362419, 26.552261>,  <42.725887, 29.126795, 26.741159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478588, 29.362419, 26.552261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255592, 29.618805, 26.763306>,  <43.121796, 29.772636, 26.889933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255592, 29.618805, 26.763306>,  <43.478588, 29.362419, 26.552261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255592, 29.618805, 26.763306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579002, -0.155266, 0.800406,
		0.594952, 0.751703, -0.284561,
		-0.557485, 0.640964, 0.527613,
		43.088348, 29.811094, 26.921589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847294, 29.316267, 27.134298>,  <43.478588, 29.362419, 26.552261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847294, 29.316267, 27.134298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538322, 29.554108, 27.223560>,  <43.352940, 29.696812, 27.277117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538322, 29.554108, 27.223560>,  <43.847294, 29.316267, 27.134298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538322, 29.554108, 27.223560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334128, 0.081658, 0.938984,
		0.540099, 0.799863, -0.261749,
		-0.772432, 0.594602, 0.223153,
		43.306591, 29.732489, 27.290506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111881, 29.969875, 27.412897>,  <43.847294, 29.316267, 27.134298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111881, 29.969875, 27.412897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745117, 29.870850, 27.538109>,  <43.525059, 29.811434, 27.613235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.745117, 29.870850, 27.538109>,  <44.111881, 29.969875, 27.412897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745117, 29.870850, 27.538109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258399, 0.229492, 0.938383,
		-0.304148, 0.941300, -0.146454,
		-0.916910, -0.247564, 0.313030,
		43.470043, 29.796581, 27.632017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803741, 30.576899, 27.693762>,  <44.111881, 29.969875, 27.412897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803741, 30.576899, 27.693762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682281, 30.246773, 27.884193>,  <43.609406, 30.048697, 27.998453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682281, 30.246773, 27.884193>,  <43.803741, 30.576899, 27.693762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682281, 30.246773, 27.884193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248956, 0.413587, 0.875767,
		-0.919685, 0.384446, 0.079883,
		-0.303646, -0.825316, 0.476079,
		43.591187, 29.999178, 28.027018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275414, 30.688654, 28.157307>,  <43.803741, 30.576899, 27.693762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275414, 30.688654, 28.157307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487625, 30.383671, 28.305466>,  <43.614952, 30.200682, 28.394361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487625, 30.383671, 28.305466>,  <43.275414, 30.688654, 28.157307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487625, 30.383671, 28.305466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221065, 0.546294, 0.807894,
		-0.818332, -0.346731, 0.458379,
		0.530531, -0.762457, 0.370399,
		43.646786, 30.154934, 28.416586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184044, 30.666033, 28.832300>,  <43.275414, 30.688654, 28.157307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184044, 30.666033, 28.832300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520981, 30.457481, 28.777704>,  <43.723141, 30.332352, 28.744947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520981, 30.457481, 28.777704>,  <43.184044, 30.666033, 28.832300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520981, 30.457481, 28.777704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386896, 0.408675, 0.826617,
		-0.375200, -0.749100, 0.545962,
		0.842340, -0.521377, -0.136489,
		43.773682, 30.301067, 28.736757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437313, 30.333508, 29.465710>,  <43.184044, 30.666033, 28.832300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437313, 30.333508, 29.465710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748280, 30.375513, 29.217644>,  <43.934860, 30.400717, 29.068804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748280, 30.375513, 29.217644>,  <43.437313, 30.333508, 29.465710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748280, 30.375513, 29.217644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570196, 0.298567, 0.765333,
		0.265533, -0.948593, 0.172230,
		0.777412, 0.105016, -0.620163,
		43.981503, 30.407019, 29.031595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067760, 30.051577, 30.005272>,  <43.437313, 30.333508, 29.465710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067760, 30.051577, 30.005272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732121, 29.982275, 30.211529>,  <42.530735, 29.940693, 30.335283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.732121, 29.982275, 30.211529>,  <43.067760, 30.051577, 30.005272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732121, 29.982275, 30.211529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215811, 0.976160, -0.023200,
		-0.499330, -0.130749, -0.856489,
		-0.839104, -0.173255, 0.515643,
		42.480389, 29.930298, 30.366222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878864, 30.479467, 30.491203>,  <43.067760, 30.051577, 30.005272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878864, 30.479467, 30.491203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997456, 30.861303, 30.479475>,  <43.068611, 31.090405, 30.472439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997456, 30.861303, 30.479475>,  <42.878864, 30.479467, 30.491203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997456, 30.861303, 30.479475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856537, 0.279354, 0.433943,
		0.422428, -0.103540, 0.900463,
		0.296479, 0.954589, -0.029321,
		43.086399, 31.147680, 30.470678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097965, 30.869711, 31.153252>,  <42.878864, 30.479467, 30.491203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097965, 30.869711, 31.153252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945763, 31.136965, 30.897497>,  <42.854443, 31.297318, 30.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945763, 31.136965, 30.897497>,  <43.097965, 30.869711, 31.153252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945763, 31.136965, 30.897497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742987, 0.190800, 0.641534,
		0.550625, 0.719162, 0.423814,
		-0.380503, 0.668133, -0.639387,
		42.831612, 31.337404, 30.705681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018002, 31.456764, 31.515734>,  <43.097965, 30.869711, 31.153252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018002, 31.456764, 31.515734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766304, 31.485291, 31.206163>,  <42.615284, 31.502407, 31.020420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766304, 31.485291, 31.206163>,  <43.018002, 31.456764, 31.515734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766304, 31.485291, 31.206163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746315, 0.222505, 0.627300,
		0.216939, 0.972320, -0.086786,
		-0.629247, 0.071316, -0.773927,
		42.577530, 31.506685, 30.973986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719578, 32.169216, 31.571041>,  <43.018002, 31.456764, 31.515734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719578, 32.169216, 31.571041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470600, 31.940262, 31.357523>,  <42.321213, 31.802889, 31.229412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470600, 31.940262, 31.357523>,  <42.719578, 32.169216, 31.571041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470600, 31.940262, 31.357523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753546, 0.253966, 0.606358,
		-0.211505, 0.779662, -0.589400,
		-0.622442, -0.572388, -0.533796,
		42.283867, 31.768545, 31.197384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135818, 32.511189, 31.624390>,  <42.719578, 32.169216, 31.571041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135818, 32.511189, 31.624390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014992, 32.154991, 31.488285>,  <41.942497, 31.941273, 31.406622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014992, 32.154991, 31.488285>,  <42.135818, 32.511189, 31.624390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014992, 32.154991, 31.488285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725613, -0.016715, 0.687900,
		-0.618258, 0.454691, -0.641104,
		-0.302066, -0.890492, -0.340264,
		41.924374, 31.887844, 31.386206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523468, 32.558968, 31.848610>,  <42.135818, 32.511189, 31.624390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523468, 32.558968, 31.848610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584984, 32.168018, 31.790508>,  <41.621895, 31.933451, 31.755648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584984, 32.168018, 31.790508>,  <41.523468, 32.558968, 31.848610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584984, 32.168018, 31.790508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796391, -0.209622, 0.567293,
		-0.584903, 0.028435, -0.810605,
		0.153789, -0.977369, -0.145254,
		41.631119, 31.874807, 31.746933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893955, 32.228447, 31.580950>,  <41.523468, 32.558968, 31.848610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893955, 32.228447, 31.580950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120071, 31.961977, 31.775541>,  <41.255741, 31.802095, 31.892296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120071, 31.961977, 31.775541>,  <40.893955, 32.228447, 31.580950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120071, 31.961977, 31.775541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803773, -0.312229, 0.506421,
		-0.185474, -0.677289, -0.711954,
		0.565286, -0.666177, 0.486477,
		41.289658, 31.762123, 31.921484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828056, 33.039112, 31.440710>,  <40.893955, 32.228447, 31.580950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828056, 33.039112, 31.440710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036285, 32.769939, 31.230503>,  <41.161224, 32.608437, 31.104380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036285, 32.769939, 31.230503>,  <40.828056, 33.039112, 31.440710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036285, 32.769939, 31.230503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462506, 0.295119, -0.836058,
		0.717697, 0.678287, -0.157601,
		0.520576, -0.672928, -0.525517,
		41.192459, 32.568062, 31.072847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228634, 33.380146, 30.969048>,  <40.828056, 33.039112, 31.440710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228634, 33.380146, 30.969048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208496, 33.009869, 30.819082>,  <41.196415, 32.787704, 30.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208496, 33.009869, 30.819082>,  <41.228634, 33.380146, 30.969048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208496, 33.009869, 30.819082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571780, 0.334497, -0.749119,
		0.818861, 0.176654, -0.546133,
		-0.050345, -0.925692, -0.374914,
		41.193394, 32.732162, 30.706608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724987, 33.861511, 30.992773>,  <41.228634, 33.380146, 30.969048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724987, 33.861511, 30.992773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342403, 33.847080, 30.876919>,  <40.112854, 33.838421, 30.807407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342403, 33.847080, 30.876919>,  <40.724987, 33.861511, 30.992773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342403, 33.847080, 30.876919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033640, 0.972091, -0.232180,
		0.289928, -0.231813, -0.928550,
		-0.956457, -0.036079, -0.289634,
		40.055466, 33.836258, 30.790028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785061, 34.435860, 30.529045>,  <40.724987, 33.861511, 30.992773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785061, 34.435860, 30.529045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402889, 34.376827, 30.631325>,  <40.173588, 34.341408, 30.692694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402889, 34.376827, 30.631325>,  <40.785061, 34.435860, 30.529045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402889, 34.376827, 30.631325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096898, 0.974868, 0.200604,
		-0.278881, 0.166885, -0.945714,
		-0.955424, -0.147583, 0.255701,
		40.116261, 34.332554, 30.708035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567223, 34.956211, 31.018456>,  <40.785061, 34.435860, 30.529045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567223, 34.956211, 31.018456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862057, 35.222977, 30.974773>,  <41.038956, 35.383038, 30.948565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862057, 35.222977, 30.974773>,  <40.567223, 34.956211, 31.018456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862057, 35.222977, 30.974773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397951, -0.297733, 0.867750,
		0.546205, -0.683063, -0.484855,
		0.737085, 0.666918, -0.109203,
		41.083183, 35.423054, 30.942013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247929, 34.685299, 31.169678>,  <40.567223, 34.956211, 31.018456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247929, 34.685299, 31.169678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247169, 35.071770, 31.272831>,  <41.246716, 35.303650, 31.334723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247169, 35.071770, 31.272831>,  <41.247929, 34.685299, 31.169678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247169, 35.071770, 31.272831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494769, -0.223201, 0.839872,
		0.869023, 0.129184, -0.477610,
		-0.001895, 0.966174, 0.257883,
		41.246601, 35.361622, 31.350195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686695, 34.659698, 31.636951>,  <41.247929, 34.685299, 31.169678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686695, 34.659698, 31.636951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517876, 35.018570, 31.689034>,  <41.416584, 35.233891, 31.720284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517876, 35.018570, 31.689034>,  <41.686695, 34.659698, 31.636951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517876, 35.018570, 31.689034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434138, 0.073928, 0.897808,
		0.795865, 0.435443, -0.420699,
		-0.422046, 0.897176, 0.130206,
		41.391262, 35.287724, 31.728096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244511, 35.194744, 31.755030>,  <41.686695, 34.659698, 31.636951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244511, 35.194744, 31.755030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894463, 35.300827, 31.916937>,  <41.684433, 35.364479, 32.014080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894463, 35.300827, 31.916937>,  <42.244511, 35.194744, 31.755030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894463, 35.300827, 31.916937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458779, 0.188635, 0.868296,
		0.153929, 0.945558, -0.286751,
		-0.875116, 0.265212, 0.404766,
		41.631927, 35.380390, 32.038368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240883, 35.854858, 32.101631>,  <42.244511, 35.194744, 31.755030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240883, 35.854858, 32.101631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993305, 35.597897, 32.282394>,  <41.844757, 35.443718, 32.390850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993305, 35.597897, 32.282394>,  <42.240883, 35.854858, 32.101631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993305, 35.597897, 32.282394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592895, -0.004775, 0.805266,
		-0.515150, 0.766349, 0.383835,
		-0.618947, -0.642407, 0.451905,
		41.807621, 35.405174, 32.417965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157528, 36.134663, 32.807335>,  <42.240883, 35.854858, 32.101631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157528, 36.134663, 32.807335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095619, 35.741280, 32.769707>,  <42.058475, 35.505249, 32.747128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.095619, 35.741280, 32.769707>,  <42.157528, 36.134663, 32.807335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.095619, 35.741280, 32.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563018, -0.166047, 0.809592,
		-0.811823, 0.072336, 0.579406,
		-0.154771, -0.983461, -0.094074,
		42.049187, 35.446239, 32.741486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850830, 35.958447, 33.469181>,  <42.157528, 36.134663, 32.807335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850830, 35.958447, 33.469181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011600, 35.640827, 33.286777>,  <42.108063, 35.450256, 33.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011600, 35.640827, 33.286777>,  <41.850830, 35.958447, 33.469181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011600, 35.640827, 33.286777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519715, -0.212197, 0.827568,
		-0.753891, -0.569617, 0.327390,
		0.401926, -0.794046, -0.456012,
		42.132179, 35.402615, 33.149975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807854, 35.305965, 33.841785>,  <41.850830, 35.958447, 33.469181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807854, 35.305965, 33.841785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130653, 35.311321, 33.605625>,  <42.324333, 35.314533, 33.463928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.130653, 35.311321, 33.605625>,  <41.807854, 35.305965, 33.841785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.130653, 35.311321, 33.605625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565861, -0.303577, 0.766579,
		-0.168966, -0.952713, -0.252564,
		0.807002, 0.013391, -0.590397,
		42.372753, 35.315338, 33.428505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195896, 34.605995, 33.890266>,  <41.807854, 35.305965, 33.841785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195896, 34.605995, 33.890266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404934, 34.938820, 33.815907>,  <42.530357, 35.138515, 33.771290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404934, 34.938820, 33.815907>,  <42.195896, 34.605995, 33.890266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404934, 34.938820, 33.815907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621195, -0.222257, 0.751477,
		0.583960, -0.508203, -0.633025,
		0.522597, 0.832065, -0.185904,
		42.561714, 35.188438, 33.760136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869228, 34.448299, 34.002125>,  <42.195896, 34.605995, 33.890266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869228, 34.448299, 34.002125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831623, 34.843369, 34.052193>,  <42.809059, 35.080410, 34.082233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831623, 34.843369, 34.052193>,  <42.869228, 34.448299, 34.002125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831623, 34.843369, 34.052193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747649, -0.012979, 0.663967,
		0.657405, 0.156000, -0.737212,
		-0.094011, 0.987672, 0.125166,
		42.803421, 35.139671, 34.089741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483418, 34.778721, 33.765118>,  <42.869228, 34.448299, 34.002125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483418, 34.778721, 33.765118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284855, 34.961861, 34.060131>,  <43.165718, 35.071747, 34.237137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284855, 34.961861, 34.060131>,  <43.483418, 34.778721, 33.765118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284855, 34.961861, 34.060131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778878, -0.140237, 0.611295,
		0.383312, 0.877898, -0.286997,
		-0.496407, 0.457853, 0.737530,
		43.135933, 35.099216, 34.281391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981426, 35.349350, 34.173016>,  <43.483418, 34.778721, 33.765118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981426, 35.349350, 34.173016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678440, 35.228088, 34.404308>,  <43.496651, 35.155331, 34.543083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678440, 35.228088, 34.404308>,  <43.981426, 35.349350, 34.173016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678440, 35.228088, 34.404308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609259, -0.009914, 0.792909,
		-0.234640, 0.952890, 0.192208,
		-0.757461, -0.303153, 0.578231,
		43.451202, 35.137142, 34.577778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.134766, 35.691929, 34.696121>,  <43.981426, 35.349350, 34.173016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.134766, 35.691929, 34.696121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881454, 35.413425, 34.831284>,  <43.729465, 35.246323, 34.912380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881454, 35.413425, 34.831284>,  <44.134766, 35.691929, 34.696121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881454, 35.413425, 34.831284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445511, 0.029050, 0.894805,
		-0.632831, 0.717204, 0.291793,
		-0.633281, -0.696257, 0.337906,
		43.691471, 35.204548, 34.932655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825886, 35.971687, 35.385410>,  <44.134766, 35.691929, 34.696121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825886, 35.971687, 35.385410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846706, 35.576019, 35.330505>,  <43.859200, 35.338619, 35.297562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.846706, 35.576019, 35.330505>,  <43.825886, 35.971687, 35.385410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.846706, 35.576019, 35.330505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530206, -0.089104, 0.843174,
		-0.846269, -0.116668, 0.519824,
		0.052054, -0.989166, -0.137264,
		43.862324, 35.279270, 35.289326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376377, 35.584110, 35.866386>,  <43.825886, 35.971687, 35.385410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376377, 35.584110, 35.866386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734509, 35.479248, 35.722355>,  <43.949387, 35.416328, 35.635937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734509, 35.479248, 35.722355>,  <43.376377, 35.584110, 35.866386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734509, 35.479248, 35.722355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383001, 0.040454, 0.922862,
		-0.227369, -0.964177, 0.136626,
		0.895329, -0.262158, -0.360082,
		44.003109, 35.400600, 35.614330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584118, 35.023167, 36.294044>,  <43.376377, 35.584110, 35.866386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584118, 35.023167, 36.294044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734665, 34.927532, 36.652081>,  <43.824993, 34.870152, 36.866901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734665, 34.927532, 36.652081>,  <43.584118, 35.023167, 36.294044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734665, 34.927532, 36.652081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900185, -0.134135, -0.414338,
		0.219126, 0.961688, 0.164740,
		0.376366, -0.239089, 0.895089,
		43.847576, 34.855804, 36.920609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073078, 35.381233, 36.675426>,  <43.584118, 35.023167, 36.294044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073078, 35.381233, 36.675426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155914, 35.002930, 36.775558>,  <44.205616, 34.775948, 36.835636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.155914, 35.002930, 36.775558>,  <44.073078, 35.381233, 36.675426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.155914, 35.002930, 36.775558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969517, 0.164142, -0.181915,
		0.130958, 0.280369, 0.950917,
		0.207089, -0.945754, 0.250326,
		44.218040, 34.719204, 36.850655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611004, 35.316010, 37.278778>,  <44.073078, 35.381233, 36.675426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611004, 35.316010, 37.278778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615582, 35.029335, 36.999859>,  <44.618328, 34.857330, 36.832508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.615582, 35.029335, 36.999859>,  <44.611004, 35.316010, 37.278778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615582, 35.029335, 36.999859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965925, 0.188244, -0.177631,
		0.258569, -0.671506, 0.694422,
		0.011441, -0.716689, -0.697299,
		44.619015, 34.814327, 36.790668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374744, 35.280220, 37.011211>,  <44.611004, 35.316010, 37.278778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374744, 35.280220, 37.011211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185959, 34.997459, 36.800480>,  <45.072689, 34.827805, 36.674042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185959, 34.997459, 36.800480>,  <45.374744, 35.280220, 37.011211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185959, 34.997459, 36.800480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824903, -0.143212, -0.546831,
		0.311106, -0.692665, 0.650713,
		-0.471961, -0.706898, -0.526828,
		45.044369, 34.785389, 36.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739487, 34.571381, 37.061695>,  <45.374744, 35.280220, 37.011211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739487, 34.571381, 37.061695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533886, 34.663418, 36.731152>,  <45.410526, 34.718639, 36.532825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533886, 34.663418, 36.731152>,  <45.739487, 34.571381, 37.061695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533886, 34.663418, 36.731152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841225, -0.053205, -0.538062,
		-0.167772, -0.971713, -0.166215,
		-0.513998, 0.230096, -0.826355,
		45.379688, 34.732445, 36.483246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.962563, 34.264259, 36.467594>,  <45.739487, 34.571381, 37.061695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.962563, 34.264259, 36.467594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822235, 34.598724, 36.298950>,  <45.738037, 34.799404, 36.197765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822235, 34.598724, 36.298950>,  <45.962563, 34.264259, 36.467594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822235, 34.598724, 36.298950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646287, -0.109622, -0.755180,
		-0.677672, -0.537412, -0.501945,
		-0.350819, 0.836165, -0.421611,
		45.716991, 34.849575, 36.172466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690208, 34.358387, 35.719341>,  <45.962563, 34.264259, 36.467594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690208, 34.358387, 35.719341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904861, 34.665924, 35.858433>,  <46.033653, 34.850445, 35.941887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904861, 34.665924, 35.858433>,  <45.690208, 34.358387, 35.719341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904861, 34.665924, 35.858433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395588, 0.134776, -0.908485,
		-0.745346, 0.625075, -0.231820,
		0.536628, 0.768841, 0.347727,
		46.065849, 34.896576, 35.962749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831627, 34.775581, 35.174522>,  <45.690208, 34.358387, 35.719341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831627, 34.775581, 35.174522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103222, 34.870773, 35.452324>,  <46.266178, 34.927887, 35.619007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103222, 34.870773, 35.452324>,  <45.831627, 34.775581, 35.174522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103222, 34.870773, 35.452324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708259, 0.036665, -0.705000,
		-0.193237, 0.970579, -0.143653,
		0.678991, 0.237976, 0.694506,
		46.306919, 34.942165, 35.660675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.378387, 35.135353, 34.802311>,  <45.831627, 34.775581, 35.174522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.378387, 35.135353, 34.802311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565601, 35.046368, 35.144413>,  <46.677929, 34.992977, 35.349674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.565601, 35.046368, 35.144413>,  <46.378387, 35.135353, 34.802311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.565601, 35.046368, 35.144413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881928, 0.056122, -0.468031,
		0.056122, 0.973324, 0.222463,
		0.468031, -0.222463, 0.855253,
		46.706009, 34.979630, 35.400990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056503, 35.378017, 35.023716>,  <46.378387, 35.135353, 34.802311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056503, 35.378017, 35.023716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348526, 35.122250, 35.120178>,  <47.523739, 34.968788, 35.178055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.348526, 35.122250, 35.120178>,  <47.056503, 35.378017, 35.023716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.348526, 35.122250, 35.120178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588471, 0.767628, 0.253870,
		-0.347449, -0.043425, 0.936693,
		0.730056, -0.639423, 0.241157,
		47.567543, 34.930424, 35.192524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.883987, 34.089825, 22.978130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991482, 34.459751, 22.870426>,  <32.055977, 34.681705, 22.805803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991482, 34.459751, 22.870426>,  <31.883987, 34.089825, 22.978130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991482, 34.459751, 22.870426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918831, -0.162256, 0.359753,
		0.289015, -0.344084, -0.893351,
		0.268737, 0.924813, -0.269260,
		32.072102, 34.737194, 22.789648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505913, 34.165237, 22.775864>,  <31.883987, 34.089825, 22.978130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505913, 34.165237, 22.775864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.491188, 34.554722, 22.865788>,  <32.482353, 34.788410, 22.919741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.491188, 34.554722, 22.865788>,  <32.505913, 34.165237, 22.775864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491188, 34.554722, 22.865788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991860, 0.008157, 0.127074,
		0.121899, 0.227656, -0.966082,
		-0.036810, 0.973708, 0.224808,
		32.480145, 34.846832, 22.933229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035870, 34.372581, 22.449333>,  <32.505913, 34.165237, 22.775864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035870, 34.372581, 22.449333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973362, 34.642399, 22.737936>,  <32.935860, 34.804291, 22.911098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973362, 34.642399, 22.737936>,  <33.035870, 34.372581, 22.449333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973362, 34.642399, 22.737936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946624, -0.106227, 0.304333,
		0.281929, 0.730553, -0.621939,
		-0.156265, 0.674543, 0.721508,
		32.926483, 34.844761, 22.954388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648853, 34.783665, 22.437689>,  <33.035870, 34.372581, 22.449333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648853, 34.783665, 22.437689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.464359, 34.916542, 22.766787>,  <33.353664, 34.996269, 22.964245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.464359, 34.916542, 22.766787>,  <33.648853, 34.783665, 22.437689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464359, 34.916542, 22.766787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878028, 0.037324, 0.477151,
		0.127800, 0.942472, -0.308893,
		-0.461230, 0.332196, 0.822747,
		33.325989, 35.016201, 23.013611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039761, 35.384117, 22.710882>,  <33.648853, 34.783665, 22.437689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039761, 35.384117, 22.710882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849182, 35.228420, 23.026220>,  <33.734837, 35.135002, 23.215424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.849182, 35.228420, 23.026220>,  <34.039761, 35.384117, 22.710882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849182, 35.228420, 23.026220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875490, -0.127715, 0.466053,
		-0.080724, 0.912239, 0.401627,
		-0.476446, -0.389242, 0.788346,
		33.706249, 35.111649, 23.262724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299263, 35.681198, 23.264956>,  <34.039761, 35.384117, 22.710882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299263, 35.681198, 23.264956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127899, 35.363991, 23.438202>,  <34.025082, 35.173668, 23.542150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127899, 35.363991, 23.438202>,  <34.299263, 35.681198, 23.264956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127899, 35.363991, 23.438202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745347, -0.039170, 0.665525,
		-0.510808, 0.607938, 0.607854,
		-0.428407, -0.793018, 0.433116,
		33.999378, 35.126087, 23.568136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281982, 35.816582, 24.010044>,  <34.299263, 35.681198, 23.264956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281982, 35.816582, 24.010044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261738, 35.420139, 23.960814>,  <34.249592, 35.182274, 23.931274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.261738, 35.420139, 23.960814>,  <34.281982, 35.816582, 24.010044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261738, 35.420139, 23.960814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756774, -0.118474, 0.642850,
		-0.651714, -0.060607, 0.756040,
		-0.050610, -0.991106, -0.123077,
		34.246555, 35.122807, 23.923891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401188, 35.518890, 24.673018>,  <34.281982, 35.816582, 24.010044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401188, 35.518890, 24.673018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462109, 35.194668, 24.446814>,  <34.498661, 35.000134, 24.311092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.462109, 35.194668, 24.446814>,  <34.401188, 35.518890, 24.673018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462109, 35.194668, 24.446814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719602, -0.301271, 0.625627,
		-0.677477, -0.502228, 0.537393,
		0.152306, -0.810557, -0.565508,
		34.507801, 34.951500, 24.277161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363773, 34.879818, 25.141048>,  <34.401188, 35.518890, 24.673018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363773, 34.879818, 25.141048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569138, 34.804028, 24.806263>,  <34.692356, 34.758553, 24.605392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.569138, 34.804028, 24.806263>,  <34.363773, 34.879818, 25.141048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569138, 34.804028, 24.806263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807957, -0.221911, 0.545858,
		-0.289161, -0.956479, 0.039160,
		0.513412, -0.189480, -0.836962,
		34.723160, 34.747185, 24.555174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692635, 34.144695, 25.228079>,  <34.363773, 34.879818, 25.141048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692635, 34.144695, 25.228079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.888458, 34.307693, 24.919720>,  <35.005951, 34.405495, 24.734705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.888458, 34.307693, 24.919720>,  <34.692635, 34.144695, 25.228079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888458, 34.307693, 24.919720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867917, -0.312873, 0.385785,
		-0.083986, -0.857937, -0.506843,
		0.489557, 0.407497, -0.770895,
		35.035324, 34.429943, 24.688452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206940, 33.614273, 24.935732>,  <34.692635, 34.144695, 25.228079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206940, 33.614273, 24.935732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.311466, 33.987156, 24.835569>,  <35.374184, 34.210884, 24.775471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.311466, 33.987156, 24.835569>,  <35.206940, 33.614273, 24.935732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311466, 33.987156, 24.835569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956296, -0.214774, 0.198419,
		0.131186, -0.291315, -0.947590,
		0.261320, 0.932206, -0.250408,
		35.389862, 34.266819, 24.760447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824974, 33.471252, 24.767918>,  <35.206940, 33.614273, 24.935732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824974, 33.471252, 24.767918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842243, 33.870007, 24.794302>,  <35.852604, 34.109261, 24.810133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.842243, 33.870007, 24.794302>,  <35.824974, 33.471252, 24.767918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842243, 33.870007, 24.794302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927100, -0.064581, 0.369208,
		0.372319, 0.045212, -0.927003,
		0.043175, 0.996888, 0.065960,
		35.855194, 34.169071, 24.814091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540802, 33.800705, 24.533434>,  <35.824974, 33.471252, 24.767918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540802, 33.800705, 24.533434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366287, 34.034283, 24.807270>,  <36.261578, 34.174431, 24.971571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366287, 34.034283, 24.807270>,  <36.540802, 33.800705, 24.533434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366287, 34.034283, 24.807270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874042, 0.094271, 0.476617,
		0.213780, 0.806302, -0.551520,
		-0.436290, 0.583943, 0.684589,
		36.235401, 34.209465, 25.012646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985420, 34.270626, 24.672939>,  <36.540802, 33.800705, 24.533434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985420, 34.270626, 24.672939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754158, 34.348022, 24.990000>,  <36.615402, 34.394463, 25.180237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754158, 34.348022, 24.990000>,  <36.985420, 34.270626, 24.672939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754158, 34.348022, 24.990000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814567, 0.080807, 0.574414,
		0.047094, 0.977768, -0.204333,
		-0.578155, 0.193494, 0.792652,
		36.580711, 34.406071, 25.227795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160938, 34.930275, 24.951843>,  <36.985420, 34.270626, 24.672939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160938, 34.930275, 24.951843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996971, 34.717945, 25.248545>,  <36.898590, 34.590549, 25.426565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996971, 34.717945, 25.248545>,  <37.160938, 34.930275, 24.951843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996971, 34.717945, 25.248545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761670, 0.248200, 0.598544,
		-0.501822, 0.810325, 0.302568,
		-0.409918, -0.530820, 0.741753,
		36.873997, 34.558701, 25.471071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366550, 35.297951, 25.534245>,  <37.160938, 34.930275, 24.951843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366550, 35.297951, 25.534245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269188, 34.933384, 25.666948>,  <37.210770, 34.714642, 25.746571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269188, 34.933384, 25.666948>,  <37.366550, 35.297951, 25.534245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269188, 34.933384, 25.666948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746879, 0.042103, 0.663626,
		-0.618811, 0.409314, 0.670473,
		-0.243403, -0.911422, 0.331762,
		37.196167, 34.659958, 25.766478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369385, 35.288456, 26.265797>,  <37.366550, 35.297951, 25.534245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369385, 35.288456, 26.265797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402088, 34.899006, 26.180593>,  <37.421711, 34.665337, 26.129471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.402088, 34.899006, 26.180593>,  <37.369385, 35.288456, 26.265797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402088, 34.899006, 26.180593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669847, -0.104577, 0.735098,
		-0.737985, -0.202781, 0.643629,
		0.081755, -0.973624, -0.213008,
		37.426613, 34.606918, 26.116692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463341, 34.976845, 26.926111>,  <37.369385, 35.288456, 26.265797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463341, 34.976845, 26.926111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564228, 34.670437, 26.689602>,  <37.624760, 34.486591, 26.547697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564228, 34.670437, 26.689602>,  <37.463341, 34.976845, 26.926111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564228, 34.670437, 26.689602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583037, -0.367369, 0.724643,
		-0.772306, -0.527498, 0.353962,
		0.252214, -0.766019, -0.591272,
		37.639893, 34.440632, 26.512220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343033, 34.341766, 27.281166>,  <37.463341, 34.976845, 26.926111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343033, 34.341766, 27.281166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612198, 34.261700, 26.996317>,  <37.773697, 34.213661, 26.825407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612198, 34.261700, 26.996317>,  <37.343033, 34.341766, 27.281166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612198, 34.261700, 26.996317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606771, -0.401278, 0.686152,
		-0.423105, -0.893817, -0.148569,
		0.672912, -0.200167, -0.712126,
		37.814072, 34.201653, 26.782679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781738, 33.804657, 27.570765>,  <37.343033, 34.341766, 27.281166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781738, 33.804657, 27.570765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997013, 33.918102, 27.253294>,  <38.126179, 33.986168, 27.062811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.997013, 33.918102, 27.253294>,  <37.781738, 33.804657, 27.570765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997013, 33.918102, 27.253294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836651, -0.293561, 0.462425,
		-0.101843, -0.912900, -0.395273,
		0.538184, 0.283611, -0.793676,
		38.158470, 34.003185, 27.015190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313179, 33.272850, 27.464819>,  <37.781738, 33.804657, 27.570765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313179, 33.272850, 27.464819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462242, 33.614189, 27.318985>,  <38.551682, 33.818993, 27.231485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.462242, 33.614189, 27.318985>,  <38.313179, 33.272850, 27.464819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462242, 33.614189, 27.318985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885964, -0.210319, 0.413321,
		0.276027, -0.477037, -0.834413,
		0.372662, 0.853347, -0.364584,
		38.574039, 33.870193, 27.209610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806347, 32.796764, 27.632404>,  <38.313179, 33.272850, 27.464819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806347, 32.796764, 27.632404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966270, 32.473816, 27.458830>,  <39.062225, 32.280048, 27.354685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.966270, 32.473816, 27.458830>,  <38.806347, 32.796764, 27.632404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966270, 32.473816, 27.458830> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915436, -0.327895, -0.233369,
		0.046129, 0.490546, -0.870193,
		0.399810, -0.807372, -0.433939,
		39.086212, 32.231606, 27.328648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656277, 32.587101, 26.964787>,  <38.806347, 32.796764, 27.632404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656277, 32.587101, 26.964787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731663, 32.215496, 27.092176>,  <38.776894, 31.992535, 27.168610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.731663, 32.215496, 27.092176>,  <38.656277, 32.587101, 26.964787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731663, 32.215496, 27.092176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852134, -0.315899, -0.417223,
		0.488209, -0.192750, -0.851175,
		0.188466, -0.929008, 0.318473,
		38.788204, 31.936794, 27.187719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700943, 32.171017, 26.442343>,  <38.656277, 32.587101, 26.964787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700943, 32.171017, 26.442343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612289, 31.925629, 26.745535>,  <38.559097, 31.778397, 26.927450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612289, 31.925629, 26.745535>,  <38.700943, 32.171017, 26.442343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612289, 31.925629, 26.745535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708388, -0.432886, -0.557491,
		0.670122, -0.660503, -0.338632,
		-0.221636, -0.613470, 0.757979,
		38.545799, 31.741589, 26.972929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584072, 31.578949, 26.177814>,  <38.700943, 32.171017, 26.442343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584072, 31.578949, 26.177814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401024, 31.554539, 26.532635>,  <38.291195, 31.539892, 26.745527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.401024, 31.554539, 26.532635>,  <38.584072, 31.578949, 26.177814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401024, 31.554539, 26.532635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781904, -0.447370, -0.434149,
		0.423335, -0.892264, 0.157010,
		-0.457618, -0.061024, 0.887053,
		38.263737, 31.536232, 26.798750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210884, 31.001095, 26.123888>,  <38.584072, 31.578949, 26.177814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210884, 31.001095, 26.123888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028091, 31.184780, 26.428596>,  <37.918415, 31.294991, 26.611422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028091, 31.184780, 26.428596>,  <38.210884, 31.001095, 26.123888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028091, 31.184780, 26.428596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888080, -0.283510, -0.361851,
		0.049803, -0.841871, 0.537375,
		-0.456983, 0.459211, 0.761769,
		37.890995, 31.322544, 26.657127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687740, 30.471901, 26.458326>,  <38.210884, 31.001095, 26.123888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687740, 30.471901, 26.458326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580612, 30.839619, 26.573687>,  <37.516335, 31.060249, 26.642902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.580612, 30.839619, 26.573687>,  <37.687740, 30.471901, 26.458326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580612, 30.839619, 26.573687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963153, -0.263119, -0.055716,
		0.024664, -0.292694, 0.955888,
		-0.267820, 0.919292, 0.288399,
		37.500267, 31.115406, 26.660206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976032, 30.400761, 26.719246>,  <37.687740, 30.471901, 26.458326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976032, 30.400761, 26.719246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042816, 30.785303, 26.631683>,  <37.082886, 31.016029, 26.579145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042816, 30.785303, 26.631683>,  <36.976032, 30.400761, 26.719246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042816, 30.785303, 26.631683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911624, 0.065946, -0.405701,
		-0.375587, 0.267295, 0.887405,
		0.166963, 0.961356, -0.218904,
		37.092907, 31.073709, 26.566011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358925, 30.769400, 27.095604>,  <36.976032, 30.400761, 26.719246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358925, 30.769400, 27.095604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481678, 31.003195, 26.795153>,  <36.555328, 31.143473, 26.614882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481678, 31.003195, 26.795153>,  <36.358925, 30.769400, 27.095604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481678, 31.003195, 26.795153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949375, 0.132309, -0.284922,
		-0.067153, 0.800542, 0.595502,
		0.306883, 0.584489, -0.751130,
		36.573742, 31.178541, 26.569813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038219, 31.476398, 27.160728>,  <36.358925, 30.769400, 27.095604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038219, 31.476398, 27.160728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141850, 31.457172, 26.774864>,  <36.204029, 31.445637, 26.543346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.141850, 31.457172, 26.774864>,  <36.038219, 31.476398, 27.160728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141850, 31.457172, 26.774864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940874, 0.213132, -0.263307,
		0.218256, 0.975841, 0.009993,
		0.259075, -0.048066, -0.964660,
		36.219570, 31.442753, 26.485466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749519, 32.075760, 26.926666>,  <36.038219, 31.476398, 27.160728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749519, 32.075760, 26.926666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829113, 31.861526, 26.598385>,  <35.876869, 31.732986, 26.401417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829113, 31.861526, 26.598385>,  <35.749519, 32.075760, 26.926666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829113, 31.861526, 26.598385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921795, 0.182029, -0.342286,
		0.332715, 0.824629, -0.457479,
		0.198985, -0.535586, -0.820703,
		35.888809, 31.700851, 26.352175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670219, 32.588795, 26.514700>,  <35.749519, 32.075760, 26.926666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670219, 32.588795, 26.514700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625324, 32.245659, 26.314095>,  <35.598389, 32.039776, 26.193731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625324, 32.245659, 26.314095>,  <35.670219, 32.588795, 26.514700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625324, 32.245659, 26.314095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742308, 0.407902, -0.531596,
		0.660592, 0.312614, -0.682561,
		-0.112233, -0.857839, -0.501513,
		35.591656, 31.988308, 26.163641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523617, 32.719772, 25.912582>,  <35.670219, 32.588795, 26.514700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523617, 32.719772, 25.912582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389114, 32.343166, 25.921354>,  <35.308414, 32.117203, 25.926619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389114, 32.343166, 25.921354>,  <35.523617, 32.719772, 25.912582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389114, 32.343166, 25.921354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797435, 0.272255, -0.538493,
		0.501029, -0.198559, -0.842345,
		-0.336255, -0.941515, 0.021930,
		35.288239, 32.060711, 25.927933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503166, 32.466808, 25.175192>,  <35.523617, 32.719772, 25.912582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503166, 32.466808, 25.175192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256107, 32.276318, 25.425541>,  <35.107872, 32.162022, 25.575750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.256107, 32.276318, 25.425541>,  <35.503166, 32.466808, 25.175192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256107, 32.276318, 25.425541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762350, 0.167030, -0.625239,
		0.193220, -0.863309, -0.466222,
		-0.617648, -0.476233, 0.625871,
		35.070812, 32.133450, 25.613302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313602, 31.837811, 24.840574>,  <35.503166, 32.466808, 25.175192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313602, 31.837811, 24.840574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026329, 31.920691, 25.106291>,  <34.853966, 31.970419, 25.265720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026329, 31.920691, 25.106291>,  <35.313602, 31.837811, 24.840574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026329, 31.920691, 25.106291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678870, 0.001021, -0.734258,
		-0.152817, -0.978298, 0.139929,
		-0.718180, 0.207201, 0.664293,
		34.810875, 31.982851, 25.305578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777409, 31.439529, 24.603294>,  <35.313602, 31.837811, 24.840574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777409, 31.439529, 24.603294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592155, 31.693455, 24.850689>,  <34.481003, 31.845810, 24.999126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.592155, 31.693455, 24.850689>,  <34.777409, 31.439529, 24.603294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592155, 31.693455, 24.850689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697733, 0.169162, -0.696098,
		-0.546516, -0.753922, 0.364586,
		-0.463129, 0.634812, 0.618486,
		34.453217, 31.883898, 25.036234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153843, 31.238304, 24.648798>,  <34.777409, 31.439529, 24.603294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153843, 31.238304, 24.648798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098732, 31.615330, 24.770514>,  <34.065666, 31.841545, 24.843542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098732, 31.615330, 24.770514>,  <34.153843, 31.238304, 24.648798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098732, 31.615330, 24.770514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622039, 0.156729, -0.767140,
		-0.770769, -0.294977, 0.564716,
		-0.137781, 0.942563, 0.304289,
		34.057396, 31.898098, 24.861799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367771, 31.296244, 24.671890>,  <34.153843, 31.238304, 24.648798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367771, 31.296244, 24.671890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.499081, 31.674067, 24.674637>,  <33.577866, 31.900761, 24.676285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.499081, 31.674067, 24.674637>,  <33.367771, 31.296244, 24.671890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499081, 31.674067, 24.674637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823622, 0.289788, -0.487514,
		-0.462476, 0.154381, 0.873088,
		0.328274, 0.944558, 0.006868,
		33.597565, 31.957434, 24.676697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808167, 31.695404, 24.782364>,  <33.367771, 31.296244, 24.671890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808167, 31.695404, 24.782364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.063530, 31.958567, 24.622570>,  <33.216747, 32.116467, 24.526693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.063530, 31.958567, 24.622570>,  <32.808167, 31.695404, 24.782364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063530, 31.958567, 24.622570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761855, 0.466236, -0.449669,
		-0.109586, 0.591423, 0.798881,
		0.638411, 0.657908, -0.399485,
		33.255054, 32.155941, 24.502724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589275, 32.372971, 24.922705>,  <32.808167, 31.695404, 24.782364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589275, 32.372971, 24.922705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814220, 32.409718, 24.593998>,  <32.949188, 32.431767, 24.396774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814220, 32.409718, 24.593998>,  <32.589275, 32.372971, 24.922705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814220, 32.409718, 24.593998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675195, 0.624719, -0.392222,
		0.477342, 0.775427, 0.413350,
		0.562367, 0.091868, -0.821769,
		32.982929, 32.437279, 24.347467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.439480, 33.047508, 24.595116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623211, 32.851624, 24.298683>,  <32.733448, 32.734093, 24.120823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.623211, 32.851624, 24.298683>,  <32.439480, 33.047508, 24.595116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623211, 32.851624, 24.298683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749744, 0.233662, -0.619101,
		0.476343, 0.839991, -0.259832,
		0.459326, -0.489712, -0.741082,
		32.761009, 32.704712, 24.076359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390755, 33.453629, 24.014793>,  <32.439480, 33.047508, 24.595116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390755, 33.453629, 24.014793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455410, 33.091366, 23.857992>,  <32.494202, 32.874008, 23.763910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.455410, 33.091366, 23.857992>,  <32.390755, 33.453629, 24.014793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455410, 33.091366, 23.857992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656022, 0.198139, -0.728269,
		0.737230, 0.374880, -0.562101,
		0.161639, -0.905652, -0.392004,
		32.503902, 32.819672, 23.740391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362553, 33.562935, 23.356262>,  <32.390755, 33.453629, 24.014793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362553, 33.562935, 23.356262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306725, 33.166954, 23.365309>,  <32.273228, 32.929363, 23.370737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306725, 33.166954, 23.365309>,  <32.362553, 33.562935, 23.356262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306725, 33.166954, 23.365309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710316, 0.084178, -0.698832,
		0.689908, -0.113600, -0.714929,
		-0.139568, -0.989954, 0.022617,
		32.264854, 32.869968, 23.372093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346756, 33.304955, 22.664177>,  <32.362553, 33.562935, 23.356262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346756, 33.304955, 22.664177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178417, 32.996048, 22.854542>,  <32.077415, 32.810703, 22.968761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.178417, 32.996048, 22.854542>,  <32.346756, 33.304955, 22.664177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178417, 32.996048, 22.854542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699023, -0.058287, -0.712720,
		0.578150, -0.632618, -0.515303,
		-0.420844, -0.772268, 0.475913,
		32.052162, 32.764366, 22.997316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274784, 32.700157, 22.180466>,  <32.346756, 33.304955, 22.664177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274784, 32.700157, 22.180466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005814, 32.702179, 22.476522>,  <31.844431, 32.703392, 22.654158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005814, 32.702179, 22.476522>,  <32.274784, 32.700157, 22.180466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005814, 32.702179, 22.476522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738429, -0.072932, -0.670376,
		0.050595, -0.997324, 0.052771,
		-0.672430, 0.005050, 0.740143,
		31.804085, 32.703693, 22.698565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861895, 32.194611, 21.978359>,  <32.274784, 32.700157, 22.180466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861895, 32.194611, 21.978359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.643776, 32.387115, 22.252890>,  <31.512905, 32.502617, 22.417608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.643776, 32.387115, 22.252890>,  <31.861895, 32.194611, 21.978359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643776, 32.387115, 22.252890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802778, -0.064180, -0.592814,
		-0.241250, -0.874224, 0.421344,
		-0.545295, 0.481262, 0.686324,
		31.480188, 32.531494, 22.458788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230854, 31.732002, 22.030497>,  <31.861895, 32.194611, 21.978359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230854, 31.732002, 22.030497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.139130, 32.095970, 22.168751>,  <31.084095, 32.314350, 22.251703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.139130, 32.095970, 22.168751>,  <31.230854, 31.732002, 22.030497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139130, 32.095970, 22.168751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900952, -0.064030, -0.429168,
		-0.368378, -0.409814, 0.834476,
		-0.229311, 0.909919, 0.345636,
		31.070337, 32.368946, 22.272442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584021, 31.614546, 22.117466>,  <31.230854, 31.732002, 22.030497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584021, 31.614546, 22.117466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616047, 32.011536, 22.154535>,  <30.635262, 32.249729, 22.176777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616047, 32.011536, 22.154535>,  <30.584021, 31.614546, 22.117466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616047, 32.011536, 22.154535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954830, 0.103052, -0.278709,
		-0.286162, -0.066174, 0.955894,
		0.080064, 0.992472, 0.092675,
		30.640066, 32.309277, 22.182337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946941, 31.869558, 22.474409>,  <30.584021, 31.614546, 22.117466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946941, 31.869558, 22.474409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104626, 32.167114, 22.258547>,  <30.199236, 32.345646, 22.129030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.104626, 32.167114, 22.258547>,  <29.946941, 31.869558, 22.474409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104626, 32.167114, 22.258547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893194, 0.171890, -0.415522,
		-0.216341, 0.645819, 0.732198,
		0.394210, 0.743889, -0.539655,
		30.222889, 32.390282, 22.096651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491962, 32.429081, 22.504192>,  <29.946941, 31.869558, 22.474409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491962, 32.429081, 22.504192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699625, 32.516872, 22.173786>,  <29.824223, 32.569546, 21.975542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.699625, 32.516872, 22.173786>,  <29.491962, 32.429081, 22.504192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699625, 32.516872, 22.173786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849794, 0.235739, -0.471464,
		0.091248, 0.946708, 0.308897,
		0.519158, 0.219479, -0.826017,
		29.855371, 32.582714, 21.925982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260090, 33.055130, 22.337288>,  <29.491962, 32.429081, 22.504192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260090, 33.055130, 22.337288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.418129, 32.882595, 22.012856>,  <29.512953, 32.779076, 21.818197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.418129, 32.882595, 22.012856>,  <29.260090, 33.055130, 22.337288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418129, 32.882595, 22.012856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897025, 0.009247, -0.441882,
		0.198099, 0.902144, -0.383265,
		0.395097, -0.431335, -0.811079,
		29.536657, 32.753193, 21.769531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025978, 33.461510, 21.783207>,  <29.260090, 33.055130, 22.337288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025978, 33.461510, 21.783207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130423, 33.094105, 21.664440>,  <29.193089, 32.873661, 21.593180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.130423, 33.094105, 21.664440>,  <29.025978, 33.461510, 21.783207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130423, 33.094105, 21.664440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864868, -0.085984, -0.494581,
		0.428747, 0.385935, -0.816841,
		0.261111, -0.918510, -0.296917,
		29.208755, 32.818550, 21.575365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019020, 33.375374, 21.093958>,  <29.025978, 33.461510, 21.783207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019020, 33.375374, 21.093958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970154, 33.000454, 21.224525>,  <28.940834, 32.775501, 21.302866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.970154, 33.000454, 21.224525>,  <29.019020, 33.375374, 21.093958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970154, 33.000454, 21.224525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884846, -0.046122, -0.463596,
		0.449582, -0.345463, -0.823730,
		-0.122163, -0.937298, 0.326417,
		28.933504, 32.719265, 21.322451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719500, 32.979424, 20.480732>,  <29.019020, 33.375374, 21.093958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719500, 32.979424, 20.480732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.661797, 32.723942, 20.783056>,  <28.627174, 32.570652, 20.964451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.661797, 32.723942, 20.783056>,  <28.719500, 32.979424, 20.480732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661797, 32.723942, 20.783056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802516, -0.371346, -0.466980,
		0.578928, -0.673915, -0.459000,
		-0.144257, -0.638703, 0.755810,
		28.618519, 32.532330, 21.009800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536343, 32.389507, 20.150497>,  <28.719500, 32.979424, 20.480732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536343, 32.389507, 20.150497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.397760, 32.311649, 20.517557>,  <28.314611, 32.264935, 20.737793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.397760, 32.311649, 20.517557>,  <28.536343, 32.389507, 20.150497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397760, 32.311649, 20.517557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862277, -0.319124, -0.393240,
		0.369388, -0.927508, -0.057282,
		-0.346453, -0.194651, 0.917650,
		28.293825, 32.253254, 20.792852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221731, 31.711119, 20.119339>,  <28.536343, 32.389507, 20.150497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221731, 31.711119, 20.119339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061573, 31.903807, 20.431143>,  <27.965479, 32.019421, 20.618225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.061573, 31.903807, 20.431143>,  <28.221731, 31.711119, 20.119339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061573, 31.903807, 20.431143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915089, -0.254687, -0.312645,
		0.047925, -0.838500, 0.542789,
		-0.400394, 0.481717, 0.779509,
		27.941454, 32.048321, 20.664995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641153, 31.353817, 20.197104>,  <28.221731, 31.711119, 20.119339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641153, 31.353817, 20.197104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595959, 31.698990, 20.394114>,  <27.568842, 31.906094, 20.512320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.595959, 31.698990, 20.394114>,  <27.641153, 31.353817, 20.197104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595959, 31.698990, 20.394114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951188, 0.049335, -0.304643,
		-0.287185, -0.502904, 0.815237,
		-0.112986, 0.862933, 0.492525,
		27.562063, 31.957870, 20.541870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965672, 31.337320, 20.500639>,  <27.641153, 31.353817, 20.197104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965672, 31.337320, 20.500639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.063370, 31.723494, 20.464239>,  <27.121988, 31.955198, 20.442400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.063370, 31.723494, 20.464239>,  <26.965672, 31.337320, 20.500639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063370, 31.723494, 20.464239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840047, 0.163773, -0.517204,
		-0.484424, 0.202767, 0.851011,
		0.244244, 0.965434, -0.090998,
		27.136642, 32.013123, 20.436939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424902, 31.655743, 20.526098>,  <26.965672, 31.337320, 20.500639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424902, 31.655743, 20.526098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.626959, 31.966251, 20.375244>,  <26.748192, 32.152557, 20.284731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.626959, 31.966251, 20.375244>,  <26.424902, 31.655743, 20.526098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626959, 31.966251, 20.375244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789066, 0.238408, -0.566160,
		-0.349583, 0.583576, 0.732960,
		0.505141, 0.776274, -0.377136,
		26.778502, 32.199135, 20.262104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900156, 32.110027, 20.488836>,  <26.424902, 31.655743, 20.526098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900156, 32.110027, 20.488836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.192467, 32.238014, 20.247644>,  <26.367853, 32.314808, 20.102930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.192467, 32.238014, 20.247644>,  <25.900156, 32.110027, 20.488836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192467, 32.238014, 20.247644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679880, 0.262171, -0.684857,
		-0.061051, 0.910431, 0.409131,
		0.730778, 0.319971, -0.602978,
		26.411699, 32.334007, 20.066751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701277, 32.715412, 20.358448>,  <25.900156, 32.110027, 20.488836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701277, 32.715412, 20.358448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.918314, 32.565422, 20.057785>,  <26.048536, 32.475430, 19.877388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.918314, 32.565422, 20.057785>,  <25.701277, 32.715412, 20.358448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918314, 32.565422, 20.057785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716769, 0.259903, -0.647065,
		0.437991, 0.889856, -0.127749,
		0.542592, -0.374976, -0.751656,
		26.081091, 32.452930, 19.832289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.527653, 33.111813, 19.777529>,  <25.701277, 32.715412, 20.358448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.527653, 33.111813, 19.777529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.673668, 32.769356, 19.631227>,  <25.761276, 32.563881, 19.543447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.673668, 32.769356, 19.631227>,  <25.527653, 33.111813, 19.777529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673668, 32.769356, 19.631227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610748, 0.076295, -0.788141,
		0.702663, 0.511083, -0.495034,
		0.365037, -0.856138, -0.365753,
		25.783178, 32.512516, 19.521502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.586653, 33.281242, 19.082483>,  <25.527653, 33.111813, 19.777529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.586653, 33.281242, 19.082483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.590591, 32.885891, 19.143164>,  <25.592955, 32.648682, 19.179573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.590591, 32.885891, 19.143164>,  <25.586653, 33.281242, 19.082483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590591, 32.885891, 19.143164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394037, -0.143269, -0.907859,
		0.919042, -0.050838, -0.390868,
		0.009845, -0.988377, 0.151703,
		25.593546, 32.589378, 19.188675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636040, 33.882511, 19.371363>,  <25.586653, 33.281242, 19.082483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636040, 33.882511, 19.371363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.862913, 34.053276, 19.653086>,  <25.999039, 34.155735, 19.822119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.862913, 34.053276, 19.653086>,  <25.636040, 33.882511, 19.371363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.862913, 34.053276, 19.653086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651828, -0.290021, 0.700719,
		0.503408, -0.856525, 0.113777,
		0.567186, 0.426911, 0.704306,
		26.033070, 34.181351, 19.864378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.278856, 34.349422, 18.936432>,  <25.636040, 33.882511, 19.371363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.278856, 34.349422, 18.936432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.427317, 34.706779, 18.835157>,  <25.516392, 34.921192, 18.774393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.427317, 34.706779, 18.835157>,  <25.278856, 34.349422, 18.936432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427317, 34.706779, 18.835157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923019, -0.384728, -0.004479,
		-0.101410, -0.232035, -0.967407,
		0.371149, 0.893389, -0.253188,
		25.538662, 34.974796, 18.759201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801775, 34.184849, 18.560530>,  <25.278856, 34.349422, 18.936432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801775, 34.184849, 18.560530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.896599, 34.563885, 18.646200>,  <25.953493, 34.791306, 18.697603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.896599, 34.563885, 18.646200>,  <25.801775, 34.184849, 18.560530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896599, 34.563885, 18.646200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953378, -0.269291, 0.136206,
		0.186744, 0.171903, -0.967252,
		0.237058, 0.947592, 0.214177,
		25.967716, 34.848164, 18.710453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297218, 34.384022, 18.077332>,  <25.801775, 34.184849, 18.560530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297218, 34.384022, 18.077332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.340069, 34.621513, 18.396332>,  <26.365780, 34.764008, 18.587732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.340069, 34.621513, 18.396332>,  <26.297218, 34.384022, 18.077332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340069, 34.621513, 18.396332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987897, -0.154061, -0.018006,
		0.112173, 0.789776, -0.603052,
		0.107128, 0.593734, 0.797499,
		26.372208, 34.799633, 18.635582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872206, 34.704720, 17.942600>,  <26.297218, 34.384022, 18.077332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872206, 34.704720, 17.942600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.838833, 34.761166, 18.337189>,  <26.818810, 34.795033, 18.573942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.838833, 34.761166, 18.337189>,  <26.872206, 34.704720, 17.942600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838833, 34.761166, 18.337189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995734, -0.027331, 0.088125,
		0.039397, 0.989616, -0.138231,
		-0.083432, 0.141113, 0.986472,
		26.813803, 34.803501, 18.633131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274830, 35.362244, 18.218561>,  <26.872206, 34.704720, 17.942600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274830, 35.362244, 18.218561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.232611, 35.115891, 18.530855>,  <27.207279, 34.968079, 18.718231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.232611, 35.115891, 18.530855>,  <27.274830, 35.362244, 18.218561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232611, 35.115891, 18.530855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954121, 0.158508, 0.254024,
		-0.280202, 0.771728, 0.570897,
		-0.105546, -0.615883, 0.780736,
		27.200947, 34.931126, 18.765076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716852, 35.575115, 18.670769>,  <27.274830, 35.362244, 18.218561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716852, 35.575115, 18.670769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.631748, 35.249775, 18.887358>,  <27.580685, 35.054569, 19.017311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.631748, 35.249775, 18.887358>,  <27.716852, 35.575115, 18.670769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631748, 35.249775, 18.887358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822411, 0.150167, 0.548716,
		-0.527610, 0.562061, 0.636958,
		-0.212762, -0.813350, 0.541475,
		27.567921, 35.005772, 19.049801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816607, 35.755646, 19.406353>,  <27.716852, 35.575115, 18.670769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816607, 35.755646, 19.406353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825872, 35.356888, 19.376232>,  <27.831432, 35.117634, 19.358160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.825872, 35.356888, 19.376232>,  <27.816607, 35.755646, 19.406353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825872, 35.356888, 19.376232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774901, -0.029687, 0.631386,
		-0.631658, -0.072979, 0.771804,
		0.023165, -0.996892, -0.075303,
		27.832823, 35.057819, 19.353642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810570, 35.409416, 20.049013>,  <27.816607, 35.755646, 19.406353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810570, 35.409416, 20.049013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.006487, 35.152412, 19.813290>,  <28.124037, 34.998211, 19.671856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.006487, 35.152412, 19.813290>,  <27.810570, 35.409416, 20.049013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006487, 35.152412, 19.813290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762287, -0.012435, 0.647119,
		-0.423109, -0.766176, 0.483687,
		0.489792, -0.642511, -0.589307,
		28.153425, 34.959660, 19.636497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962086, 34.768093, 20.472689>,  <27.810570, 35.409416, 20.049013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962086, 34.768093, 20.472689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210014, 34.816296, 20.162516>,  <28.358772, 34.845219, 19.976412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.210014, 34.816296, 20.162516>,  <27.962086, 34.768093, 20.472689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210014, 34.816296, 20.162516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784206, -0.058591, 0.617727,
		0.029010, -0.990981, -0.130823,
		0.619821, 0.120512, -0.775434,
		28.395960, 34.852448, 19.929886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428514, 34.261345, 20.585909>,  <27.962086, 34.768093, 20.472689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428514, 34.261345, 20.585909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.630621, 34.487022, 20.324715>,  <28.751884, 34.622429, 20.167999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.630621, 34.487022, 20.324715>,  <28.428514, 34.261345, 20.585909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630621, 34.487022, 20.324715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845301, -0.171272, 0.506095,
		0.173698, -0.807682, -0.563454,
		0.505267, 0.564196, -0.652984,
		28.782202, 34.656281, 20.128819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086102, 33.887104, 20.265072>,  <28.428514, 34.261345, 20.585909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086102, 33.887104, 20.265072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136843, 34.278236, 20.198433>,  <29.167288, 34.512917, 20.158449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.136843, 34.278236, 20.198433>,  <29.086102, 33.887104, 20.265072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136843, 34.278236, 20.198433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886050, -0.036204, 0.462174,
		0.445896, -0.206243, -0.870999,
		0.126854, 0.977831, -0.166599,
		29.174898, 34.571587, 20.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734566, 33.966335, 19.952112>,  <29.086102, 33.887104, 20.265072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734566, 33.966335, 19.952112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633499, 34.306896, 20.135969>,  <29.572859, 34.511234, 20.246283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.633499, 34.306896, 20.135969>,  <29.734566, 33.966335, 19.952112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633499, 34.306896, 20.135969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833616, -0.049597, 0.550113,
		0.491165, 0.522162, -0.697212,
		-0.252668, 0.851403, 0.459643,
		29.557699, 34.562317, 20.273863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353889, 34.365128, 20.011732>,  <29.734566, 33.966335, 19.952112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353889, 34.365128, 20.011732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.111429, 34.536430, 20.279814>,  <29.965952, 34.639214, 20.440662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.111429, 34.536430, 20.279814>,  <30.353889, 34.365128, 20.011732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111429, 34.536430, 20.279814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782034, 0.167386, 0.600337,
		0.144919, 0.888017, -0.436376,
		-0.606153, 0.428261, 0.670202,
		29.929583, 34.664909, 20.480875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735889, 34.959118, 20.290745>,  <30.353889, 34.365128, 20.011732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735889, 34.959118, 20.290745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.444904, 34.928486, 20.563488>,  <30.270313, 34.910107, 20.727135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.444904, 34.928486, 20.563488>,  <30.735889, 34.959118, 20.290745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444904, 34.928486, 20.563488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660135, 0.192907, 0.725954,
		-0.187130, 0.978224, -0.089778,
		-0.727464, -0.076582, 0.681859,
		30.226665, 34.905510, 20.768045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709442, 35.578320, 20.618868>,  <30.735889, 34.959118, 20.290745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709442, 35.578320, 20.618868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527658, 35.303768, 20.845970>,  <30.418589, 35.139038, 20.982231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.527658, 35.303768, 20.845970>,  <30.709442, 35.578320, 20.618868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527658, 35.303768, 20.845970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739020, 0.065312, 0.670510,
		-0.497308, 0.724302, 0.477568,
		-0.454461, -0.686382, 0.567754,
		30.391319, 35.097855, 21.016296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824194, 35.798378, 21.318695>,  <30.709442, 35.578320, 20.618868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824194, 35.798378, 21.318695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702223, 35.421860, 21.376631>,  <30.629040, 35.195950, 21.411392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702223, 35.421860, 21.376631>,  <30.824194, 35.798378, 21.318695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702223, 35.421860, 21.376631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513153, -0.034272, 0.857613,
		-0.802305, 0.335835, 0.493479,
		-0.304929, -0.941297, 0.144838,
		30.610744, 35.139469, 21.420082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434032, 35.866821, 21.957418>,  <30.824194, 35.798378, 21.318695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434032, 35.866821, 21.957418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593506, 35.515961, 21.850340>,  <30.689190, 35.305447, 21.786093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.593506, 35.515961, 21.850340>,  <30.434032, 35.866821, 21.957418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593506, 35.515961, 21.850340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679848, 0.086766, 0.728202,
		-0.615514, -0.472316, 0.630920,
		0.398683, -0.877148, -0.267697,
		30.713110, 35.252815, 21.770031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670338, 35.638557, 22.639929>,  <30.434032, 35.866821, 21.957418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670338, 35.638557, 22.639929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862909, 35.393230, 22.389467>,  <30.978453, 35.246033, 22.239189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.862909, 35.393230, 22.389467>,  <30.670338, 35.638557, 22.639929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862909, 35.393230, 22.389467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746408, -0.087608, 0.659697,
		-0.459460, -0.784963, 0.415608,
		0.481427, -0.613317, -0.626155,
		31.007338, 35.209236, 22.201620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908155, 35.034412, 23.097677>,  <30.670338, 35.638557, 22.639929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908155, 35.034412, 23.097677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138126, 35.001682, 22.772036>,  <31.276110, 34.982044, 22.576651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138126, 35.001682, 22.772036>,  <30.908155, 35.034412, 23.097677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138126, 35.001682, 22.772036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809811, -0.085246, 0.580465,
		-0.116895, -0.992994, 0.017253,
		0.574928, -0.081825, -0.814102,
		31.310604, 34.977135, 22.527805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333004, 34.502323, 23.218904>,  <30.908155, 35.034412, 23.097677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333004, 34.502323, 23.218904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524473, 34.709614, 22.935410>,  <31.639355, 34.833988, 22.765312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.524473, 34.709614, 22.935410>,  <31.333004, 34.502323, 23.218904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524473, 34.709614, 22.935410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838115, -0.029181, 0.544713,
		0.261605, -0.854743, -0.448305,
		0.478671, 0.518231, -0.708739,
		31.668076, 34.865082, 22.722788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.283585, 31.279276, 26.370192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.519566, 31.505316, 26.139496>,  <34.661152, 31.640940, 26.001080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.519566, 31.505316, 26.139496>,  <34.283585, 31.279276, 26.370192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519566, 31.505316, 26.139496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805159, -0.358047, 0.472781,
		0.060669, -0.743281, -0.666223,
		0.589948, 0.565098, -0.576737,
		34.696548, 31.674845, 25.966475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853783, 30.902397, 26.107573>,  <34.283585, 31.279276, 26.370192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853783, 30.902397, 26.107573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.989296, 31.268236, 26.019268>,  <35.070606, 31.487740, 25.966286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.989296, 31.268236, 26.019268>,  <34.853783, 30.902397, 26.107573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989296, 31.268236, 26.019268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940814, -0.326915, 0.089417,
		0.009610, -0.237990, -0.971220,
		0.338786, 0.914597, -0.220763,
		35.090931, 31.542616, 25.953039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438995, 30.867844, 25.540565>,  <34.853783, 30.902397, 26.107573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438995, 30.867844, 25.540565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.492851, 31.215256, 25.731365>,  <35.525166, 31.423702, 25.845844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.492851, 31.215256, 25.731365>,  <35.438995, 30.867844, 25.540565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492851, 31.215256, 25.731365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941206, -0.262620, 0.212513,
		0.309843, 0.420340, -0.852826,
		0.134641, 0.868530, 0.476998,
		35.533245, 31.475815, 25.874464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062843, 31.143520, 25.208307>,  <35.438995, 30.867844, 25.540565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062843, 31.143520, 25.208307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.012093, 31.310749, 25.568111>,  <35.981644, 31.411085, 25.783995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.012093, 31.310749, 25.568111>,  <36.062843, 31.143520, 25.208307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012093, 31.310749, 25.568111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984597, -0.056905, 0.165321,
		0.120302, 0.906631, -0.404410,
		-0.126872, 0.418070, 0.899512,
		35.974030, 31.436171, 25.837965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699245, 31.561974, 25.282663>,  <36.062843, 31.143520, 25.208307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699245, 31.561974, 25.282663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539417, 31.515598, 25.646400>,  <36.443520, 31.487772, 25.864643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539417, 31.515598, 25.646400>,  <36.699245, 31.561974, 25.282663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539417, 31.515598, 25.646400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899273, -0.242087, 0.364282,
		0.177905, 0.963303, 0.200992,
		-0.399572, -0.115939, 0.909341,
		36.419544, 31.480816, 25.919203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066910, 32.005325, 25.748817>,  <36.699245, 31.561974, 25.282663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066910, 32.005325, 25.748817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.903591, 31.740820, 26.000540>,  <36.805599, 31.582117, 26.151573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.903591, 31.740820, 26.000540>,  <37.066910, 32.005325, 25.748817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903591, 31.740820, 26.000540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889716, -0.134065, 0.436385,
		-0.204196, 0.738081, 0.643072,
		-0.408300, -0.661259, 0.629307,
		36.781101, 31.542442, 26.189331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193932, 32.324608, 26.401583>,  <37.066910, 32.005325, 25.748817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193932, 32.324608, 26.401583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131626, 31.931877, 26.444962>,  <37.094242, 31.696239, 26.470989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.131626, 31.931877, 26.444962>,  <37.193932, 32.324608, 26.401583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131626, 31.931877, 26.444962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831463, -0.071048, 0.551019,
		-0.533298, 0.176000, 0.827416,
		-0.155766, -0.981823, 0.108448,
		37.084896, 31.637331, 26.477495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060745, 32.201702, 27.100584>,  <37.193932, 32.324608, 26.401583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060745, 32.201702, 27.100584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219864, 31.879702, 26.924528>,  <37.315334, 31.686501, 26.818895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219864, 31.879702, 26.924528>,  <37.060745, 32.201702, 27.100584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219864, 31.879702, 26.924528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735890, -0.006546, 0.677069,
		-0.547925, -0.593232, 0.589792,
		0.397798, -0.805005, -0.440140,
		37.339203, 31.638201, 26.792486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277546, 31.879211, 27.641979>,  <37.060745, 32.201702, 27.100584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277546, 31.879211, 27.641979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465824, 31.719011, 27.327517>,  <37.578793, 31.622890, 27.138840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.465824, 31.719011, 27.327517>,  <37.277546, 31.879211, 27.641979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465824, 31.719011, 27.327517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853217, -0.020248, 0.521163,
		-0.224644, -0.916072, 0.332185,
		0.470697, -0.400502, -0.786157,
		37.607033, 31.598862, 27.091669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712143, 31.430395, 27.952822>,  <37.277546, 31.879211, 27.641979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712143, 31.430395, 27.952822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879749, 31.485741, 27.593872>,  <37.980312, 31.518948, 27.378502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.879749, 31.485741, 27.593872>,  <37.712143, 31.430395, 27.952822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879749, 31.485741, 27.593872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907714, -0.039877, 0.417691,
		0.022010, -0.989578, -0.142306,
		0.419012, 0.138366, -0.897376,
		38.005451, 31.527250, 27.324659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210316, 30.973215, 27.964741>,  <37.712143, 31.430395, 27.952822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210316, 30.973215, 27.964741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300468, 31.244345, 27.684809>,  <38.354561, 31.407022, 27.516850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.300468, 31.244345, 27.684809>,  <38.210316, 30.973215, 27.964741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300468, 31.244345, 27.684809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958112, -0.023916, 0.285393,
		0.176709, -0.734836, -0.654821,
		0.225378, 0.677823, -0.699829,
		38.368080, 31.447691, 27.474859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885902, 30.695377, 27.755318>,  <38.210316, 30.973215, 27.964741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885902, 30.695377, 27.755318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842571, 31.075060, 27.637150>,  <38.816574, 31.302870, 27.566248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.842571, 31.075060, 27.637150>,  <38.885902, 30.695377, 27.755318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842571, 31.075060, 27.637150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944989, 0.190586, 0.265844,
		0.308644, -0.250371, -0.917634,
		-0.108328, 0.949206, -0.295421,
		38.810074, 31.359821, 27.548523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189892, 29.954279, 27.495741>,  <38.885902, 30.695377, 27.755318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189892, 29.954279, 27.495741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.081062, 29.623646, 27.298666>,  <39.015766, 29.425266, 27.180422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.081062, 29.623646, 27.298666>,  <39.189892, 29.954279, 27.495741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081062, 29.623646, 27.298666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788338, -0.102142, 0.606704,
		-0.551815, 0.553471, -0.623835,
		-0.272074, -0.826581, -0.492686,
		38.999439, 29.375671, 27.150860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525646, 30.051012, 27.307135>,  <39.189892, 29.954279, 27.495741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525646, 30.051012, 27.307135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580456, 29.656900, 27.348022>,  <38.613342, 29.420433, 27.372555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580456, 29.656900, 27.348022>,  <38.525646, 30.051012, 27.307135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580456, 29.656900, 27.348022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786205, -0.045396, 0.616296,
		-0.602584, -0.164811, -0.780852,
		0.137020, -0.985280, 0.102220,
		38.621563, 29.361317, 27.378689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925869, 29.665041, 26.734396>,  <38.525646, 30.051012, 27.307135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925869, 29.665041, 26.734396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.987366, 29.269861, 26.727219>,  <39.024261, 29.032753, 26.722912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.987366, 29.269861, 26.727219>,  <38.925869, 29.665041, 26.734396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987366, 29.269861, 26.727219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763720, -0.107283, -0.636571,
		0.626974, 0.111569, -0.771010,
		0.153738, -0.987949, -0.017944,
		39.033485, 28.973476, 26.721836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078304, 29.487167, 26.065836>,  <38.925869, 29.665041, 26.734396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078304, 29.487167, 26.065836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.920357, 29.167467, 26.247065>,  <38.825588, 28.975647, 26.355803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.920357, 29.167467, 26.247065>,  <39.078304, 29.487167, 26.065836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920357, 29.167467, 26.247065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738647, -0.017074, -0.673876,
		0.546332, -0.600754, -0.583623,
		-0.394869, -0.799251, 0.453074,
		38.801895, 28.927692, 26.382986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799786, 29.211319, 25.514048>,  <39.078304, 29.487167, 26.065836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799786, 29.211319, 25.514048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.625549, 29.007895, 25.811134>,  <38.521008, 28.885839, 25.989386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.625549, 29.007895, 25.811134>,  <38.799786, 29.211319, 25.514048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625549, 29.007895, 25.811134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888827, 0.112588, -0.444196,
		0.142281, -0.853632, -0.501067,
		-0.435594, -0.508563, 0.742712,
		38.494869, 28.855328, 26.033949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462070, 28.645983, 25.196266>,  <38.799786, 29.211319, 25.514048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462070, 28.645983, 25.196266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289787, 28.699776, 25.553232>,  <38.186417, 28.732052, 25.767412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.289787, 28.699776, 25.553232>,  <38.462070, 28.645983, 25.196266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289787, 28.699776, 25.553232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896557, 0.049455, -0.440159,
		-0.103327, -0.989681, 0.099270,
		-0.430707, 0.134482, 0.892416,
		38.160576, 28.740120, 25.820957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960114, 28.165007, 25.180408>,  <38.462070, 28.645983, 25.196266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960114, 28.165007, 25.180408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846035, 28.411169, 25.474329>,  <37.777588, 28.558867, 25.650682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846035, 28.411169, 25.474329>,  <37.960114, 28.165007, 25.180408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846035, 28.411169, 25.474329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929426, 0.009722, -0.368881,
		-0.234157, -0.788149, 0.569203,
		-0.285199, 0.615408, 0.734802,
		37.760475, 28.595791, 25.694769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340694, 27.859119, 25.482872>,  <37.960114, 28.165007, 25.180408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340694, 27.859119, 25.482872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372978, 28.255108, 25.529255>,  <37.392349, 28.492701, 25.557085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.372978, 28.255108, 25.529255>,  <37.340694, 27.859119, 25.482872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372978, 28.255108, 25.529255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916578, 0.119422, -0.381605,
		-0.391626, -0.075487, 0.917023,
		0.080707, 0.989970, 0.115958,
		37.397190, 28.552099, 25.564043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697651, 28.073771, 25.805578>,  <37.340694, 27.859119, 25.482872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697651, 28.073771, 25.805578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850662, 28.398251, 25.628660>,  <36.942467, 28.592939, 25.522509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850662, 28.398251, 25.628660>,  <36.697651, 28.073771, 25.805578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850662, 28.398251, 25.628660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888616, 0.191895, -0.416578,
		-0.253054, 0.552383, 0.794252,
		0.382524, 0.811202, -0.442297,
		36.965420, 28.641611, 25.495972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153320, 28.521439, 25.957348>,  <36.697651, 28.073771, 25.805578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153320, 28.521439, 25.957348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378361, 28.662224, 25.658121>,  <36.513386, 28.746695, 25.478584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378361, 28.662224, 25.658121>,  <36.153320, 28.521439, 25.957348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378361, 28.662224, 25.658121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824390, 0.306858, -0.475626,
		0.062148, 0.884286, 0.462792,
		0.562600, 0.351962, -0.748067,
		36.547142, 28.767813, 25.433701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780952, 29.078438, 25.661915>,  <36.153320, 28.521439, 25.957348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780952, 29.078438, 25.661915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.035629, 28.973179, 25.371984>,  <36.188435, 28.910023, 25.198027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.035629, 28.973179, 25.371984>,  <35.780952, 29.078438, 25.661915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035629, 28.973179, 25.371984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744978, 0.032736, -0.666285,
		0.199060, 0.964200, -0.175197,
		0.636697, -0.263148, -0.724825,
		36.226639, 28.894234, 25.154537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635357, 29.595980, 25.142242>,  <35.780952, 29.078438, 25.661915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635357, 29.595980, 25.142242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873840, 29.338364, 24.950514>,  <36.016930, 29.183794, 24.835478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873840, 29.338364, 24.950514>,  <35.635357, 29.595980, 25.142242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873840, 29.338364, 24.950514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603138, 0.034725, -0.796881,
		0.529869, 0.764202, -0.367742,
		0.596208, -0.644041, -0.479319,
		36.052704, 29.145151, 24.806719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802925, 29.886011, 24.441929>,  <35.635357, 29.595980, 25.142242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802925, 29.886011, 24.441929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852890, 29.489145, 24.442492>,  <35.882870, 29.251026, 24.442829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.852890, 29.489145, 24.442492>,  <35.802925, 29.886011, 24.441929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852890, 29.489145, 24.442492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626211, -0.079942, -0.775544,
		0.769582, 0.095997, -0.631292,
		0.124917, -0.992166, 0.001408,
		35.890366, 29.191496, 24.442913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924500, 29.662657, 23.790007>,  <35.802925, 29.886011, 24.441929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924500, 29.662657, 23.790007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.796509, 29.332617, 23.976265>,  <35.719715, 29.134594, 24.088020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.796509, 29.332617, 23.976265>,  <35.924500, 29.662657, 23.790007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796509, 29.332617, 23.976265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619574, -0.189592, -0.761698,
		0.716759, -0.532228, -0.450545,
		-0.319977, -0.825099, 0.465646,
		35.700516, 29.085087, 24.115959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836609, 29.291367, 23.141602>,  <35.924500, 29.662657, 23.790007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836609, 29.291367, 23.141602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683090, 29.049339, 23.420628>,  <35.590981, 28.904123, 23.588043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.683090, 29.049339, 23.420628>,  <35.836609, 29.291367, 23.141602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683090, 29.049339, 23.420628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814299, -0.134464, -0.564656,
		0.435452, -0.784738, -0.441099,
		-0.383795, -0.605066, 0.697564,
		35.567951, 28.867819, 23.629896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631523, 28.607979, 22.817532>,  <35.836609, 29.291367, 23.141602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631523, 28.607979, 22.817532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.402317, 28.661753, 23.140909>,  <35.264793, 28.694017, 23.334936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.402317, 28.661753, 23.140909>,  <35.631523, 28.607979, 22.817532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402317, 28.661753, 23.140909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818459, -0.144629, -0.556065,
		0.042172, -0.980311, 0.192901,
		-0.573016, 0.134432, 0.808444,
		35.230412, 28.702082, 23.383442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731224, 28.015057, 22.305876>,  <35.631523, 28.607979, 22.817532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731224, 28.015057, 22.305876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.792759, 28.230400, 21.974453>,  <35.829681, 28.359606, 21.775600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.792759, 28.230400, 21.974453>,  <35.731224, 28.015057, 22.305876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792759, 28.230400, 21.974453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938679, 0.182240, 0.292695,
		0.308571, -0.822775, -0.477311,
		0.153837, 0.538359, -0.828555,
		35.838909, 28.391909, 21.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335602, 27.880169, 22.126383>,  <35.731224, 28.015057, 22.305876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335602, 27.880169, 22.126383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.300724, 28.214905, 21.910198>,  <36.279797, 28.415747, 21.780487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.300724, 28.214905, 21.910198>,  <36.335602, 27.880169, 22.126383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300724, 28.214905, 21.910198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958043, 0.219138, 0.184750,
		0.273042, -0.501677, -0.820834,
		-0.087191, 0.836839, -0.540461,
		36.274567, 28.465956, 21.748060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925499, 27.934170, 21.644590>,  <36.335602, 27.880169, 22.126383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925499, 27.934170, 21.644590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787254, 28.303146, 21.713472>,  <36.704308, 28.524532, 21.754801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.787254, 28.303146, 21.713472>,  <36.925499, 27.934170, 21.644590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787254, 28.303146, 21.713472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937335, 0.330727, 0.109648,
		0.044192, 0.199308, -0.978940,
		-0.345616, 0.922440, 0.172203,
		36.683571, 28.579878, 21.765133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423496, 28.297750, 21.388874>,  <36.925499, 27.934170, 21.644590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423496, 28.297750, 21.388874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.233223, 28.560343, 21.623055>,  <37.119061, 28.717899, 21.763563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.233223, 28.560343, 21.623055>,  <37.423496, 28.297750, 21.388874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233223, 28.560343, 21.623055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878054, 0.394039, 0.271579,
		-0.052405, 0.643245, -0.763865,
		-0.475684, 0.656482, 0.585453,
		37.090519, 28.757288, 21.798691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778019, 28.999756, 21.320789>,  <37.423496, 28.297750, 21.388874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778019, 28.999756, 21.320789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600430, 28.989338, 21.679054>,  <37.493877, 28.983088, 21.894012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600430, 28.989338, 21.679054>,  <37.778019, 28.999756, 21.320789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600430, 28.989338, 21.679054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828744, 0.368127, 0.421505,
		-0.340696, 0.929411, -0.141852,
		-0.443971, -0.026046, 0.895662,
		37.467239, 28.981524, 21.947754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118099, 29.547678, 21.715563>,  <37.778019, 28.999756, 21.320789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118099, 29.547678, 21.715563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908836, 29.373299, 22.008480>,  <37.783279, 29.268671, 22.184231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908836, 29.373299, 22.008480>,  <38.118099, 29.547678, 21.715563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908836, 29.373299, 22.008480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720885, 0.231949, 0.653089,
		-0.454568, 0.869568, 0.192922,
		-0.523157, -0.435948, 0.732295,
		37.751888, 29.242514, 22.228168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997143, 30.018456, 22.227755>,  <38.118099, 29.547678, 21.715563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997143, 30.018456, 22.227755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957470, 29.667480, 22.415483>,  <37.933666, 29.456896, 22.528120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.957470, 29.667480, 22.415483>,  <37.997143, 30.018456, 22.227755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957470, 29.667480, 22.415483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656379, 0.296794, 0.693599,
		-0.747883, 0.376846, 0.546496,
		-0.099184, -0.877440, 0.469321,
		37.927715, 29.404249, 22.556280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749947, 30.174576, 22.976517>,  <37.997143, 30.018456, 22.227755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749947, 30.174576, 22.976517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918999, 29.812059, 22.978065>,  <38.020432, 29.594549, 22.978994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.918999, 29.812059, 22.978065>,  <37.749947, 30.174576, 22.976517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918999, 29.812059, 22.978065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552707, 0.261123, 0.791410,
		-0.718260, -0.332336, 0.611274,
		0.422632, -0.906293, 0.003870,
		38.045788, 29.540171, 22.979227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794304, 30.040150, 23.628345>,  <37.749947, 30.174576, 22.976517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794304, 30.040150, 23.628345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047512, 29.770948, 23.475325>,  <38.199436, 29.609426, 23.383512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.047512, 29.770948, 23.475325>,  <37.794304, 30.040150, 23.628345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047512, 29.770948, 23.475325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634002, 0.167146, 0.755052,
		-0.444211, -0.720505, 0.532493,
		0.633023, -0.673005, -0.382553,
		38.237419, 29.569048, 23.360559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045410, 29.523357, 24.164961>,  <37.794304, 30.040150, 23.628345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045410, 29.523357, 24.164961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339333, 29.509897, 23.893982>,  <38.515686, 29.501822, 23.731394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.339333, 29.509897, 23.893982>,  <38.045410, 29.523357, 24.164961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339333, 29.509897, 23.893982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677803, -0.001095, 0.735243,
		-0.025491, -0.999433, 0.022010,
		0.734801, -0.033661, -0.677447,
		38.559772, 29.499802, 23.690748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450985, 29.214718, 24.542038>,  <38.045410, 29.523357, 24.164961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450985, 29.214718, 24.542038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664371, 29.374969, 24.244068>,  <38.792404, 29.471121, 24.065287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664371, 29.374969, 24.244068>,  <38.450985, 29.214718, 24.542038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664371, 29.374969, 24.244068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796044, 0.059868, 0.602271,
		0.285884, -0.914282, -0.286980,
		0.533465, 0.400628, -0.744924,
		38.824409, 29.495157, 24.020592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041893, 28.842705, 24.517073>,  <38.450985, 29.214718, 24.542038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041893, 28.842705, 24.517073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157303, 29.162241, 24.305939>,  <39.226547, 29.353962, 24.179258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157303, 29.162241, 24.305939>,  <39.041893, 28.842705, 24.517073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157303, 29.162241, 24.305939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774817, 0.129074, 0.618868,
		0.562507, -0.587533, -0.581714,
		0.288521, 0.798840, -0.527836,
		39.243858, 29.401894, 24.147589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.031246, 27.559124, 18.913828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102623, 27.947367, 18.978418>,  <33.145451, 28.180313, 19.017174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102623, 27.947367, 18.978418>,  <33.031246, 27.559124, 18.913828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102623, 27.947367, 18.978418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696212, -0.240520, 0.676342,
		0.695302, -0.008268, -0.718670,
		0.178446, 0.970609, 0.161478,
		33.156158, 28.238550, 19.026861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692406, 27.596052, 19.021441>,  <33.031246, 27.559124, 18.913828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692406, 27.596052, 19.021441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608318, 27.962856, 19.157026>,  <33.557865, 28.182940, 19.238379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608318, 27.962856, 19.157026>,  <33.692406, 27.596052, 19.021441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608318, 27.962856, 19.157026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764586, -0.061867, 0.641545,
		0.609276, 0.394032, -0.688129,
		-0.210217, 0.917012, 0.338966,
		33.545254, 28.237961, 19.258717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385414, 27.961927, 19.041725>,  <33.692406, 27.596052, 19.021441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385414, 27.961927, 19.041725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127361, 28.159853, 19.274607>,  <33.972530, 28.278608, 19.414335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127361, 28.159853, 19.274607>,  <34.385414, 27.961927, 19.041725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127361, 28.159853, 19.274607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684607, 0.035975, 0.728024,
		0.339293, 0.868253, -0.361963,
		-0.645131, 0.494816, 0.582206,
		33.933823, 28.308298, 19.449268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751045, 28.476309, 19.337238>,  <34.385414, 27.961927, 19.041725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751045, 28.476309, 19.337238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430508, 28.446562, 19.574663>,  <34.238186, 28.428715, 19.717117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430508, 28.446562, 19.574663>,  <34.751045, 28.476309, 19.337238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430508, 28.446562, 19.574663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580928, 0.139994, 0.801826,
		-0.142724, 0.987356, -0.068982,
		-0.801344, -0.074366, 0.593563,
		34.190105, 28.424252, 19.752731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817951, 29.010368, 19.617321>,  <34.751045, 28.476309, 19.337238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817951, 29.010368, 19.617321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619335, 28.751043, 19.848196>,  <34.500168, 28.595449, 19.986721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619335, 28.751043, 19.848196>,  <34.817951, 29.010368, 19.617321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619335, 28.751043, 19.848196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703528, 0.088903, 0.705085,
		-0.508428, 0.756168, 0.411961,
		-0.496538, -0.648310, 0.577186,
		34.470375, 28.556551, 20.021351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605164, 29.390249, 20.339725>,  <34.817951, 29.010368, 19.617321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605164, 29.390249, 20.339725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593273, 28.996407, 20.408617>,  <34.586140, 28.760101, 20.449951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593273, 28.996407, 20.408617>,  <34.605164, 29.390249, 20.339725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593273, 28.996407, 20.408617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708159, 0.100856, 0.698812,
		-0.705426, 0.142741, 0.694261,
		-0.029729, -0.984608, 0.172230,
		34.584354, 28.701025, 20.460285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640011, 29.314005, 21.070774>,  <34.605164, 29.390249, 20.339725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640011, 29.314005, 21.070774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772949, 28.958120, 20.945581>,  <34.852711, 28.744589, 20.870466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772949, 28.958120, 20.945581>,  <34.640011, 29.314005, 21.070774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772949, 28.958120, 20.945581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743026, 0.042598, 0.667906,
		-0.580912, -0.454528, 0.675237,
		0.332346, -0.889713, -0.312981,
		34.872654, 28.691206, 20.851686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694088, 28.892191, 21.678640>,  <34.640011, 29.314005, 21.070774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694088, 28.892191, 21.678640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930748, 28.721933, 21.404772>,  <35.072746, 28.619780, 21.240452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930748, 28.721933, 21.404772>,  <34.694088, 28.892191, 21.678640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930748, 28.721933, 21.404772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724810, -0.090998, 0.682913,
		-0.352982, -0.900303, 0.254672,
		0.591654, -0.425644, -0.684670,
		35.108246, 28.594240, 21.199371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110828, 28.338116, 22.103748>,  <34.694088, 28.892191, 21.678640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110828, 28.338116, 22.103748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296177, 28.449657, 21.767290>,  <35.407387, 28.516582, 21.565416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296177, 28.449657, 21.767290>,  <35.110828, 28.338116, 22.103748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296177, 28.449657, 21.767290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880447, -0.037248, 0.472679,
		0.100478, -0.959610, -0.262776,
		0.463375, 0.278855, -0.841144,
		35.435188, 28.533314, 21.514946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101383, 28.069071, 22.790424>,  <35.110828, 28.338116, 22.103748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101383, 28.069071, 22.790424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960861, 28.358692, 23.027855>,  <34.876549, 28.532465, 23.170313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960861, 28.358692, 23.027855>,  <35.101383, 28.069071, 22.790424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960861, 28.358692, 23.027855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882511, -0.044358, -0.468195,
		-0.312669, -0.688314, 0.654570,
		-0.351301, 0.724055, 0.593575,
		34.855473, 28.575909, 23.205927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453442, 27.801884, 22.997849>,  <35.101383, 28.069071, 22.790424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453442, 27.801884, 22.997849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441372, 28.198776, 23.046118>,  <34.434128, 28.436913, 23.075079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441372, 28.198776, 23.046118>,  <34.453442, 27.801884, 22.997849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441372, 28.198776, 23.046118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936611, 0.014092, -0.350088,
		-0.349070, -0.123589, 0.928911,
		-0.030177, 0.992234, 0.120674,
		34.432320, 28.496447, 23.082319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755795, 27.817596, 23.305172>,  <34.453442, 27.801884, 22.997849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755795, 27.817596, 23.305172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867546, 28.160580, 23.132330>,  <33.934597, 28.366369, 23.028624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867546, 28.160580, 23.132330>,  <33.755795, 27.817596, 23.305172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867546, 28.160580, 23.132330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953670, 0.195476, -0.228699,
		-0.111633, 0.475981, 0.872342,
		0.279378, 0.857457, -0.432107,
		33.951359, 28.417816, 23.002697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267128, 28.219231, 23.558130>,  <33.755795, 27.817596, 23.305172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267128, 28.219231, 23.558130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445988, 28.428852, 23.268185>,  <33.553303, 28.554625, 23.094217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445988, 28.428852, 23.268185>,  <33.267128, 28.219231, 23.558130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445988, 28.428852, 23.268185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892066, 0.320520, -0.318567,
		0.065388, 0.789074, 0.610809,
		0.447149, 0.524052, -0.724864,
		33.580132, 28.586067, 23.050726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091858, 28.871950, 23.615229>,  <33.267128, 28.219231, 23.558130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091858, 28.871950, 23.615229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164803, 28.808781, 23.227043>,  <33.208569, 28.770878, 22.994131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164803, 28.808781, 23.227043>,  <33.091858, 28.871950, 23.615229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164803, 28.808781, 23.227043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900641, 0.369136, -0.229313,
		0.394448, 0.915860, -0.074917,
		0.182363, -0.157926, -0.970465,
		33.219513, 28.761402, 22.935904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842609, 29.533484, 23.285599>,  <33.091858, 28.871950, 23.615229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842609, 29.533484, 23.285599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894939, 29.257700, 23.000633>,  <32.926338, 29.092230, 22.829655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894939, 29.257700, 23.000633>,  <32.842609, 29.533484, 23.285599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894939, 29.257700, 23.000633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865601, 0.270897, -0.421129,
		0.483341, 0.671761, -0.561354,
		0.130829, -0.689458, -0.712413,
		32.934189, 29.050863, 22.786909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781921, 29.915236, 22.600941>,  <32.842609, 29.533484, 23.285599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781921, 29.915236, 22.600941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703175, 29.524641, 22.565794>,  <32.655926, 29.290285, 22.544706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703175, 29.524641, 22.565794>,  <32.781921, 29.915236, 22.600941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703175, 29.524641, 22.565794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836291, 0.214022, -0.504788,
		0.511725, -0.025889, -0.858759,
		-0.196862, -0.976486, -0.087869,
		32.644115, 29.231695, 22.539433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693314, 29.726105, 21.864311>,  <32.781921, 29.915236, 22.600941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693314, 29.726105, 21.864311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484615, 29.470793, 22.090719>,  <32.359398, 29.317606, 22.226564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484615, 29.470793, 22.090719>,  <32.693314, 29.726105, 21.864311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484615, 29.470793, 22.090719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840723, 0.272086, -0.468139,
		0.144798, -0.720116, -0.678577,
		-0.521745, -0.638281, 0.566021,
		32.328091, 29.279308, 22.260525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149715, 29.431877, 21.396774>,  <32.693314, 29.726105, 21.864311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149715, 29.431877, 21.396774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020554, 29.328121, 21.760851>,  <31.943056, 29.265867, 21.979298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020554, 29.328121, 21.760851>,  <32.149715, 29.431877, 21.396774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020554, 29.328121, 21.760851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935065, -0.061169, -0.349159,
		0.146245, -0.963833, -0.222796,
		-0.322903, -0.259391, 0.910192,
		31.923683, 29.250305, 22.033909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767830, 28.945618, 21.149580>,  <32.149715, 29.431877, 21.396774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767830, 28.945618, 21.149580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639277, 29.007866, 21.523211>,  <31.562145, 29.045216, 21.747389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639277, 29.007866, 21.523211>,  <31.767830, 28.945618, 21.149580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639277, 29.007866, 21.523211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921001, -0.280701, -0.270118,
		0.220160, -0.947095, 0.233538,
		-0.321382, 0.155619, 0.934075,
		31.542862, 29.054552, 21.803432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452009, 28.306744, 21.368099>,  <31.767830, 28.945618, 21.149580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452009, 28.306744, 21.368099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318933, 28.614098, 21.586788>,  <31.239088, 28.798510, 21.718002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318933, 28.614098, 21.586788>,  <31.452009, 28.306744, 21.368099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318933, 28.614098, 21.586788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927632, -0.162283, -0.336398,
		-0.169767, -0.619055, 0.766779,
		-0.332684, 0.768397, 0.546705,
		31.219128, 28.844612, 21.750805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848309, 28.052132, 21.646269>,  <31.452009, 28.306744, 21.368099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848309, 28.052132, 21.646269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812630, 28.449749, 21.671307>,  <30.791224, 28.688320, 21.686329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812630, 28.449749, 21.671307>,  <30.848309, 28.052132, 21.646269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812630, 28.449749, 21.671307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976332, -0.074829, -0.202918,
		-0.197026, -0.079211, 0.977193,
		-0.089196, 0.994045, 0.062593,
		30.785872, 28.747963, 21.690084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252123, 28.171165, 22.092665>,  <30.848309, 28.052132, 21.646269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252123, 28.171165, 22.092665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321392, 28.510391, 21.892345>,  <30.362953, 28.713926, 21.772154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321392, 28.510391, 21.892345>,  <30.252123, 28.171165, 22.092665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321392, 28.510391, 21.892345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960664, 0.033358, -0.275702,
		-0.217107, 0.528841, 0.820482,
		0.173172, 0.848065, -0.500797,
		30.373344, 28.764811, 21.742107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797388, 28.656939, 22.437828>,  <30.252123, 28.171165, 22.092665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797388, 28.656939, 22.437828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883593, 28.776461, 22.065964>,  <29.935316, 28.848173, 21.842844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883593, 28.776461, 22.065964>,  <29.797388, 28.656939, 22.437828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883593, 28.776461, 22.065964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964110, -0.086075, -0.251162,
		-0.155069, 0.950425, 0.269530,
		0.215511, 0.298804, -0.929662,
		29.948246, 28.866102, 21.787066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.120537, 36.249451, 18.649771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.023148, 35.914062, 18.844788>,  <32.964714, 35.712830, 18.961798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.023148, 35.914062, 18.844788>,  <33.120537, 36.249451, 18.649771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023148, 35.914062, 18.844788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735326, 0.168213, 0.656506,
		-0.632468, 0.518343, 0.575591,
		-0.243473, -0.838466, 0.487541,
		32.950108, 35.662521, 18.991051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111694, 36.535732, 19.331532>,  <33.120537, 36.249451, 18.649771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111694, 36.535732, 19.331532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.152622, 36.138355, 19.351952>,  <33.177177, 35.899929, 19.364204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.152622, 36.138355, 19.351952>,  <33.111694, 36.535732, 19.331532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152622, 36.138355, 19.351952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606954, 0.103010, 0.788032,
		-0.788122, -0.049646, 0.613513,
		0.102321, -0.993441, 0.051051,
		33.183319, 35.840324, 19.367268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034355, 36.466785, 20.038425>,  <33.111694, 36.535732, 19.331532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034355, 36.466785, 20.038425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225025, 36.149666, 19.886503>,  <33.339428, 35.959393, 19.795351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.225025, 36.149666, 19.886503>,  <33.034355, 36.466785, 20.038425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225025, 36.149666, 19.886503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666255, 0.043957, 0.744427,
		-0.573488, -0.607893, 0.549161,
		0.476672, -0.792801, -0.379803,
		33.368027, 35.911827, 19.772562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182396, 36.035057, 20.639091>,  <33.034355, 36.466785, 20.038425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182396, 36.035057, 20.639091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.433308, 35.884453, 20.366398>,  <33.583855, 35.794090, 20.202782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.433308, 35.884453, 20.366398>,  <33.182396, 36.035057, 20.639091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433308, 35.884453, 20.366398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675242, -0.173217, 0.716968,
		-0.388036, -0.910074, 0.145583,
		0.627277, -0.376513, -0.681734,
		33.621490, 35.771500, 20.161877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533882, 35.607819, 20.945913>,  <33.182396, 36.035057, 20.639091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533882, 35.607819, 20.945913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766483, 35.626827, 20.621052>,  <33.906044, 35.638233, 20.426136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.766483, 35.626827, 20.621052>,  <33.533882, 35.607819, 20.945913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766483, 35.626827, 20.621052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792955, -0.256270, 0.552764,
		-0.181860, -0.965436, -0.186709,
		0.581506, 0.047526, -0.812153,
		33.940933, 35.641083, 20.377405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892086, 34.934490, 20.910444>,  <33.533882, 35.607819, 20.945913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892086, 34.934490, 20.910444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095222, 35.237892, 20.747101>,  <34.217106, 35.419933, 20.649096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095222, 35.237892, 20.747101>,  <33.892086, 34.934490, 20.910444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095222, 35.237892, 20.747101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770254, -0.187554, 0.609534,
		0.385748, -0.624089, -0.679493,
		0.507845, 0.758509, -0.408359,
		34.247578, 35.465446, 20.624594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494919, 34.588551, 20.882639>,  <33.892086, 34.934490, 20.910444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494919, 34.588551, 20.882639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565327, 34.974190, 20.803118>,  <34.607571, 35.205574, 20.755405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565327, 34.974190, 20.803118>,  <34.494919, 34.588551, 20.882639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565327, 34.974190, 20.803118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851425, -0.047749, 0.522299,
		0.494057, -0.261204, -0.829265,
		0.176023, 0.964102, -0.198805,
		34.618134, 35.263420, 20.743477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170200, 34.636158, 20.604622>,  <34.494919, 34.588551, 20.882639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170200, 34.636158, 20.604622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097111, 35.000275, 20.753201>,  <35.053257, 35.218746, 20.842348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.097111, 35.000275, 20.753201>,  <35.170200, 34.636158, 20.604622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097111, 35.000275, 20.753201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767093, -0.104317, 0.632998,
		0.614964, 0.400599, -0.679220,
		-0.182724, 0.910296, 0.371448,
		35.042294, 35.273365, 20.864635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782993, 34.987553, 20.630053>,  <35.170200, 34.636158, 20.604622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782993, 34.987553, 20.630053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.556511, 35.200291, 20.881941>,  <35.420620, 35.327934, 21.033073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.556511, 35.200291, 20.881941>,  <35.782993, 34.987553, 20.630053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556511, 35.200291, 20.881941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768564, 0.064579, 0.636505,
		0.297857, 0.844374, -0.445325,
		-0.566207, 0.531848, 0.629720,
		35.386650, 35.359844, 21.070856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258541, 35.445724, 20.827776>,  <35.782993, 34.987553, 20.630053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258541, 35.445724, 20.827776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.964077, 35.425579, 21.097746>,  <35.787399, 35.413494, 21.259727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.964077, 35.425579, 21.097746>,  <36.258541, 35.445724, 20.827776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964077, 35.425579, 21.097746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676750, -0.042219, 0.735002,
		-0.008521, 0.997838, 0.065162,
		-0.736164, -0.050361, 0.674927,
		35.743229, 35.410469, 21.300224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556038, 35.743259, 21.436275>,  <36.258541, 35.445724, 20.827776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556038, 35.743259, 21.436275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232117, 35.581375, 21.606186>,  <36.037766, 35.484245, 21.708132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232117, 35.581375, 21.606186>,  <36.556038, 35.743259, 21.436275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232117, 35.581375, 21.606186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500944, -0.100057, 0.859677,
		-0.305419, 0.908954, 0.283764,
		-0.809799, -0.404711, 0.424775,
		35.989178, 35.459961, 21.733618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342747, 36.130375, 22.044825>,  <36.556038, 35.743259, 21.436275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342747, 36.130375, 22.044825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218609, 35.753590, 22.096045>,  <36.144127, 35.527519, 22.126776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218609, 35.753590, 22.096045>,  <36.342747, 36.130375, 22.044825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218609, 35.753590, 22.096045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526062, -0.057981, 0.848467,
		-0.791798, 0.330679, 0.513524,
		-0.310345, -0.941960, 0.128048,
		36.125504, 35.471001, 22.134459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149261, 35.947983, 22.743591>,  <36.342747, 36.130375, 22.044825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149261, 35.947983, 22.743591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.207581, 35.577732, 22.603899>,  <36.242573, 35.355583, 22.520084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.207581, 35.577732, 22.603899>,  <36.149261, 35.947983, 22.743591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207581, 35.577732, 22.603899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545628, -0.219225, 0.808845,
		-0.825247, -0.308479, 0.473083,
		0.145800, -0.925625, -0.349229,
		36.251320, 35.300045, 22.499130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060219, 35.495552, 23.338600>,  <36.149261, 35.947983, 22.743591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060219, 35.495552, 23.338600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.247269, 35.267155, 23.068697>,  <36.359497, 35.130116, 22.906755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.247269, 35.267155, 23.068697>,  <36.060219, 35.495552, 23.338600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247269, 35.267155, 23.068697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619063, -0.333332, 0.711092,
		-0.630945, -0.750241, 0.197605,
		0.467622, -0.570989, -0.674760,
		36.387554, 35.095860, 22.866268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536736, 35.116611, 23.698416>,  <36.060219, 35.495552, 23.338600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536736, 35.116611, 23.698416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.381489, 34.890297, 23.989414>,  <35.288342, 34.754509, 24.164013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.381489, 34.890297, 23.989414>,  <35.536736, 35.116611, 23.698416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381489, 34.890297, 23.989414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873491, -0.025905, -0.486151,
		0.293904, -0.824144, -0.484156,
		-0.388116, -0.565788, 0.727496,
		35.265053, 34.720562, 24.207663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237362, 34.444439, 23.425266>,  <35.536736, 35.116611, 23.698416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237362, 34.444439, 23.425266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070732, 34.522381, 23.780457>,  <34.970757, 34.569145, 23.993570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.070732, 34.522381, 23.780457>,  <35.237362, 34.444439, 23.425266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070732, 34.522381, 23.780457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904669, 0.007508, -0.426049,
		-0.089684, -0.980804, 0.173150,
		-0.416570, 0.194853, 0.887976,
		34.945763, 34.580837, 24.046848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691235, 34.075001, 23.348257>,  <35.237362, 34.444439, 23.425266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691235, 34.075001, 23.348257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653221, 34.340027, 23.645435>,  <34.630413, 34.499043, 23.823742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653221, 34.340027, 23.645435>,  <34.691235, 34.075001, 23.348257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653221, 34.340027, 23.645435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926840, 0.213430, -0.308893,
		-0.363230, -0.717949, 0.593813,
		-0.095032, 0.662569, 0.742948,
		34.624710, 34.538799, 23.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094589, 33.864334, 23.748127>,  <34.691235, 34.075001, 23.348257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094589, 33.864334, 23.748127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.148495, 34.256996, 23.802086>,  <34.180840, 34.492592, 23.834461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.148495, 34.256996, 23.802086>,  <34.094589, 33.864334, 23.748127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148495, 34.256996, 23.802086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945312, 0.168178, -0.279467,
		-0.297026, -0.089857, 0.950632,
		0.134763, 0.981652, 0.134896,
		34.188923, 34.551491, 23.842554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495842, 34.037468, 24.085396>,  <34.094589, 33.864334, 23.748127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495842, 34.037468, 24.085396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646912, 34.367851, 23.917990>,  <33.737553, 34.566082, 23.817545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646912, 34.367851, 23.917990>,  <33.495842, 34.037468, 24.085396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646912, 34.367851, 23.917990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919775, 0.282581, -0.272329,
		-0.106667, 0.487793, 0.866418,
		0.377674, 0.825958, -0.418518,
		33.760212, 34.615639, 23.792435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046280, 34.657845, 24.288719>,  <33.495842, 34.037468, 24.085396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046280, 34.657845, 24.288719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.246662, 34.795940, 23.971266>,  <33.366890, 34.878799, 23.780794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.246662, 34.795940, 23.971266>,  <33.046280, 34.657845, 24.288719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246662, 34.795940, 23.971266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859605, 0.305081, -0.409885,
		0.100614, 0.887545, 0.449602,
		0.500956, 0.345239, -0.793633,
		33.396950, 34.899513, 23.733175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681644, 35.300674, 24.101540>,  <33.046280, 34.657845, 24.288719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681644, 35.300674, 24.101540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899303, 35.234081, 23.772617>,  <33.029900, 35.194126, 23.575264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.899303, 35.234081, 23.772617>,  <32.681644, 35.300674, 24.101540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899303, 35.234081, 23.772617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768052, 0.295588, -0.568088,
		0.337642, 0.940697, 0.032974,
		0.544145, -0.166484, -0.822307,
		33.062546, 35.184135, 23.525925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542049, 35.884682, 23.719625>,  <32.681644, 35.300674, 24.101540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542049, 35.884682, 23.719625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691460, 35.601711, 23.479616>,  <32.781105, 35.431931, 23.335611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.691460, 35.601711, 23.479616>,  <32.542049, 35.884682, 23.719625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691460, 35.601711, 23.479616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744842, 0.156806, -0.648553,
		0.552890, 0.689175, -0.468348,
		0.373527, -0.707424, -0.600024,
		32.803516, 35.389484, 23.299608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558567, 36.113979, 23.108027>,  <32.542049, 35.884682, 23.719625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558567, 36.113979, 23.108027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.535107, 35.717434, 23.061102>,  <32.521030, 35.479507, 23.032948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.535107, 35.717434, 23.061102>,  <32.558567, 36.113979, 23.108027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535107, 35.717434, 23.061102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626316, 0.128050, -0.768980,
		0.777359, 0.028371, -0.628416,
		-0.058653, -0.991362, -0.117310,
		32.517509, 35.420025, 23.025909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400852, 35.954124, 22.502758>,  <32.558567, 36.113979, 23.108027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400852, 35.954124, 22.502758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.312969, 35.573475, 22.588676>,  <32.260239, 35.345085, 22.640226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.312969, 35.573475, 22.588676>,  <32.400852, 35.954124, 22.502758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312969, 35.573475, 22.588676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588384, -0.046365, -0.807251,
		0.778161, -0.303738, -0.549735,
		-0.219704, -0.951627, 0.214794,
		32.247059, 35.287987, 22.653114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360531, 35.551533, 21.800024>,  <32.400852, 35.954124, 22.502758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360531, 35.551533, 21.800024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.139362, 35.345455, 22.061970>,  <32.006660, 35.221809, 22.219137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.139362, 35.345455, 22.061970>,  <32.360531, 35.551533, 21.800024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139362, 35.345455, 22.061970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770781, 0.017719, -0.636853,
		0.316500, -0.856889, -0.406901,
		-0.552923, -0.515195, 0.654866,
		31.973486, 35.190895, 22.258430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037361, 35.005268, 21.473349>,  <32.360531, 35.551533, 21.800024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037361, 35.005268, 21.473349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.809757, 35.028763, 21.801439>,  <31.673193, 35.042858, 21.998295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.809757, 35.028763, 21.801439>,  <32.037361, 35.005268, 21.473349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809757, 35.028763, 21.801439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819892, 0.036200, -0.571373,
		-0.063252, -0.997617, 0.027558,
		-0.569014, 0.058735, 0.820228,
		31.639053, 35.046383, 22.047508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628462, 34.409992, 21.372963>,  <32.037361, 35.005268, 21.473349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628462, 34.409992, 21.372963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.453140, 34.668324, 21.623016>,  <31.347948, 34.823322, 21.773048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.453140, 34.668324, 21.623016>,  <31.628462, 34.409992, 21.372963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453140, 34.668324, 21.623016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853328, -0.080511, -0.515122,
		-0.282351, -0.759225, 0.586392,
		-0.438304, 0.645830, 0.625135,
		31.321650, 34.862072, 21.810556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064629, 33.990139, 21.526745>,  <31.628462, 34.409992, 21.372963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064629, 33.990139, 21.526745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.972599, 34.367085, 21.623924>,  <30.917381, 34.593250, 21.682232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.972599, 34.367085, 21.623924>,  <31.064629, 33.990139, 21.526745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972599, 34.367085, 21.623924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809255, -0.046602, -0.585607,
		-0.540530, -0.331342, 0.773330,
		-0.230075, 0.942359, 0.242951,
		30.903576, 34.649792, 21.696810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725178, 33.632824, 22.036896>,  <31.064629, 33.990139, 21.526745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725178, 33.632824, 22.036896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.723406, 33.234932, 22.077862>,  <30.722343, 32.996197, 22.102442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.723406, 33.234932, 22.077862>,  <30.725178, 33.632824, 22.036896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723406, 33.234932, 22.077862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793914, 0.058773, 0.605183,
		-0.608014, 0.083990, 0.789471,
		-0.004429, -0.994732, 0.102416,
		30.722076, 32.936512, 22.108587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682335, 33.488899, 22.730219>,  <30.725178, 33.632824, 22.036896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682335, 33.488899, 22.730219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.818352, 33.143337, 22.581608>,  <30.899961, 32.936001, 22.492441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.818352, 33.143337, 22.581608>,  <30.682335, 33.488899, 22.730219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818352, 33.143337, 22.581608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699603, -0.031618, 0.713831,
		-0.628432, -0.502656, 0.593642,
		0.340042, -0.863908, -0.371530,
		30.920364, 32.884167, 22.470148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835392, 33.184296, 23.362648>,  <30.682335, 33.488899, 22.730219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835392, 33.184296, 23.362648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.030863, 32.974121, 23.084049>,  <31.148146, 32.848015, 22.916891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.030863, 32.974121, 23.084049>,  <30.835392, 33.184296, 23.362648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030863, 32.974121, 23.084049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683103, -0.266177, 0.680088,
		-0.542736, -0.808123, 0.228855,
		0.488679, -0.525440, -0.696495,
		31.177467, 32.816490, 22.875101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869438, 32.451878, 23.634106>,  <30.835392, 33.184296, 23.362648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869438, 32.451878, 23.634106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.149740, 32.549549, 23.365980>,  <31.317921, 32.608150, 23.205105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.149740, 32.549549, 23.365980>,  <30.869438, 32.451878, 23.634106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149740, 32.549549, 23.365980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711873, -0.300851, 0.634606,
		-0.046708, -0.921882, -0.384646,
		0.700753, 0.244178, -0.670315,
		31.359966, 32.622803, 23.164886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422646, 31.939831, 23.732864>,  <30.869438, 32.451878, 23.634106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422646, 31.939831, 23.732864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.621048, 32.186775, 23.488621>,  <31.740089, 32.334942, 23.342073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.621048, 32.186775, 23.488621>,  <31.422646, 31.939831, 23.732864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621048, 32.186775, 23.488621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857901, -0.239816, 0.454417,
		0.134104, -0.749237, -0.648583,
		0.496007, 0.617360, -0.610610,
		31.769850, 32.371983, 23.305437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032330, 31.595911, 23.502628>,  <31.422646, 31.939831, 23.732864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032330, 31.595911, 23.502628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099754, 31.987829, 23.459574>,  <32.140209, 32.222980, 23.433741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099754, 31.987829, 23.459574>,  <32.032330, 31.595911, 23.502628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099754, 31.987829, 23.459574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915101, -0.114978, 0.386484,
		0.366299, -0.163645, -0.915994,
		0.168565, 0.979796, -0.107635,
		32.150326, 32.281769, 23.427282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778698, 31.618053, 23.303118>,  <32.032330, 31.595911, 23.502628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778698, 31.618053, 23.303118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.702198, 31.983528, 23.446562>,  <32.656296, 32.202812, 23.532627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.702198, 31.983528, 23.446562>,  <32.778698, 31.618053, 23.303118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702198, 31.983528, 23.446562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928349, 0.049741, 0.368367,
		0.318734, 0.403365, -0.857732,
		-0.191251, 0.913686, 0.358609,
		32.644821, 32.257633, 23.554144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457092, 32.061996, 23.185633>,  <32.778698, 31.618053, 23.303118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457092, 32.061996, 23.185633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243225, 32.254673, 23.463367>,  <33.114902, 32.370277, 23.630009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.243225, 32.254673, 23.463367>,  <33.457092, 32.061996, 23.185633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243225, 32.254673, 23.463367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833960, 0.168029, 0.525621,
		0.136517, 0.860083, -0.491549,
		-0.534673, 0.481688, 0.694336,
		33.082825, 32.399178, 23.671669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739594, 32.721348, 23.379585>,  <33.457092, 32.061996, 23.185633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739594, 32.721348, 23.379585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.514236, 32.594978, 23.684948>,  <33.379025, 32.519157, 23.868166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.514236, 32.594978, 23.684948>,  <33.739594, 32.721348, 23.379585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514236, 32.594978, 23.684948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805658, -0.005350, 0.592357,
		-0.183054, 0.948770, 0.257539,
		-0.563389, -0.315921, 0.763405,
		33.345219, 32.500202, 23.913969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019691, 33.028011, 23.915531>,  <33.739594, 32.721348, 23.379585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019691, 33.028011, 23.915531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802891, 32.741505, 24.091347>,  <33.672810, 32.569603, 24.196836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802891, 32.741505, 24.091347>,  <34.019691, 33.028011, 23.915531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802891, 32.741505, 24.091347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723952, -0.132353, 0.677035,
		-0.426762, 0.685163, 0.590277,
		-0.542004, -0.716265, 0.439541,
		33.640289, 32.526627, 24.223209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028679, 33.214008, 24.687527>,  <34.019691, 33.028011, 23.915531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028679, 33.214008, 24.687527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.885784, 32.840454, 24.693842>,  <33.800049, 32.616322, 24.697630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.885784, 32.840454, 24.693842>,  <34.028679, 33.214008, 24.687527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885784, 32.840454, 24.693842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617545, -0.223479, 0.754119,
		-0.700730, 0.279145, 0.656548,
		-0.357233, -0.933882, 0.015786,
		33.778614, 32.560291, 24.698578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989185, 33.162270, 25.421148>,  <34.028679, 33.214008, 24.687527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989185, 33.162270, 25.421148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.007263, 32.801952, 25.248392>,  <34.018112, 32.585762, 25.144739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.007263, 32.801952, 25.248392>,  <33.989185, 33.162270, 25.421148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007263, 32.801952, 25.248392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466188, -0.363350, 0.806626,
		-0.883531, -0.237798, 0.403517,
		0.045196, -0.900794, -0.431890,
		34.020821, 32.531715, 25.118826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750965, 32.642620, 25.854559>,  <33.989185, 33.162270, 25.421148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750965, 32.642620, 25.854559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.969337, 32.421200, 25.602993>,  <34.100361, 32.288349, 25.452053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.969337, 32.421200, 25.602993>,  <33.750965, 32.642620, 25.854559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969337, 32.421200, 25.602993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640052, -0.208831, 0.739407,
		-0.540637, -0.806207, 0.240295,
		0.545934, -0.553552, -0.628916,
		34.133118, 32.255135, 25.414318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908131, 32.055424, 26.189243>,  <33.750965, 32.642620, 25.854559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908131, 32.055424, 26.189243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.191681, 32.051414, 25.907139>,  <34.361813, 32.049007, 25.737877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.191681, 32.051414, 25.907139>,  <33.908131, 32.055424, 26.189243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191681, 32.051414, 25.907139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689142, -0.203165, 0.695563,
		-0.150254, -0.979093, -0.137113,
		0.708877, -0.010021, -0.705260,
		34.404343, 32.048409, 25.695560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.196243, 29.023924, 22.188427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365095, 28.967407, 21.830244>,  <29.466406, 28.933496, 21.615334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.365095, 28.967407, 21.830244>,  <29.196243, 29.023924, 22.188427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365095, 28.967407, 21.830244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831725, 0.332565, -0.444560,
		0.360610, 0.932436, 0.022869,
		0.422129, -0.141292, -0.895457,
		29.491734, 28.925020, 21.561607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008490, 29.582102, 21.802168>,  <29.196243, 29.023924, 22.188427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008490, 29.582102, 21.802168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109512, 29.291903, 21.546085>,  <29.170126, 29.117783, 21.392435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109512, 29.291903, 21.546085>,  <29.008490, 29.582102, 21.802168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109512, 29.291903, 21.546085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739622, 0.281845, -0.611166,
		0.623840, 0.627865, -0.465413,
		0.252555, -0.725499, -0.640208,
		29.185280, 29.074253, 21.354023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966711, 29.875174, 21.181623>,  <29.008490, 29.582102, 21.802168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966711, 29.875174, 21.181623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.939882, 29.479084, 21.132706>,  <28.923784, 29.241430, 21.103355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.939882, 29.479084, 21.132706>,  <28.966711, 29.875174, 21.181623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939882, 29.479084, 21.132706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724938, 0.132582, -0.675934,
		0.685541, 0.043321, -0.726744,
		-0.067072, -0.990225, -0.122295,
		28.919762, 29.182016, 21.096018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896664, 29.817089, 20.506672>,  <28.966711, 29.875174, 21.181623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896664, 29.817089, 20.506672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.777599, 29.463512, 20.650917>,  <28.706161, 29.251366, 20.737465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.777599, 29.463512, 20.650917>,  <28.896664, 29.817089, 20.506672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777599, 29.463512, 20.650917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675459, -0.071938, -0.733880,
		0.674651, -0.462026, -0.575655,
		-0.297660, -0.883944, 0.360613,
		28.688301, 29.198330, 20.759102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843969, 29.319239, 19.911627>,  <28.896664, 29.817089, 20.506672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843969, 29.319239, 19.911627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.623747, 29.154718, 20.202204>,  <28.491613, 29.056005, 20.376549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.623747, 29.154718, 20.202204>,  <28.843969, 29.319239, 19.911627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623747, 29.154718, 20.202204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744666, -0.151335, -0.650054,
		0.377304, -0.898849, -0.222964,
		-0.550558, -0.411302, 0.726441,
		28.458580, 29.031328, 20.420135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357388, 28.929577, 19.585762>,  <28.843969, 29.319239, 19.911627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357388, 28.929577, 19.585762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.193016, 28.934528, 19.950396>,  <28.094393, 28.937500, 20.169176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.193016, 28.934528, 19.950396>,  <28.357388, 28.929577, 19.585762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193016, 28.934528, 19.950396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911211, 0.026098, -0.411113,
		-0.028880, -0.999583, 0.000556,
		-0.410927, 0.012380, 0.911584,
		28.069738, 28.938242, 20.223871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682653, 28.530550, 19.549864>,  <28.357388, 28.929577, 19.585762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682653, 28.530550, 19.549864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.623894, 28.766390, 19.867554>,  <27.588638, 28.907894, 20.058167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.623894, 28.766390, 19.867554>,  <27.682653, 28.530550, 19.549864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623894, 28.766390, 19.867554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871457, 0.302714, -0.385910,
		-0.467956, -0.748822, 0.469343,
		-0.146901, 0.589601, 0.794223,
		27.579823, 28.943270, 20.105822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.032675, 28.290365, 19.830585>,  <27.682653, 28.530550, 19.549864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.032675, 28.290365, 19.830585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.115030, 28.666170, 19.940075>,  <27.164444, 28.891653, 20.005770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.115030, 28.666170, 19.940075>,  <27.032675, 28.290365, 19.830585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115030, 28.666170, 19.940075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833253, 0.314990, -0.454391,
		-0.513127, -0.134527, 0.847705,
		0.205890, 0.939512, 0.273724,
		27.176798, 28.948025, 20.022192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372381, 28.587112, 20.000860>,  <27.032675, 28.290365, 19.830585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372381, 28.587112, 20.000860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.605925, 28.911581, 20.014223>,  <26.746050, 29.106262, 20.022242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.605925, 28.911581, 20.014223>,  <26.372381, 28.587112, 20.000860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605925, 28.911581, 20.014223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662000, 0.499503, -0.558796,
		-0.469965, 0.304141, 0.828632,
		0.583856, 0.811169, 0.033408,
		26.781082, 29.154932, 20.024246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094252, 29.153597, 20.452177>,  <26.372381, 28.587112, 20.000860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094252, 29.153597, 20.452177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.335445, 29.338884, 20.192381>,  <26.480162, 29.450056, 20.036503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.335445, 29.338884, 20.192381>,  <26.094252, 29.153597, 20.452177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335445, 29.338884, 20.192381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796795, 0.389567, -0.461904,
		0.039058, 0.796031, 0.603993,
		0.602986, 0.463218, -0.649489,
		26.516342, 29.477850, 19.997534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805346, 29.749601, 20.493950>,  <26.094252, 29.153597, 20.452177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805346, 29.749601, 20.493950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.026814, 29.789549, 20.163260>,  <26.159695, 29.813517, 19.964846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.026814, 29.789549, 20.163260>,  <25.805346, 29.749601, 20.493950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026814, 29.789549, 20.163260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748368, 0.495105, -0.441382,
		0.365237, 0.863075, 0.348861,
		0.553668, 0.099868, -0.826727,
		26.192913, 29.819510, 19.915241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722870, 30.397623, 20.437006>,  <25.805346, 29.749601, 20.493950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722870, 30.397623, 20.437006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.822653, 30.206192, 20.100262>,  <25.882523, 30.091333, 19.898214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.822653, 30.206192, 20.100262>,  <25.722870, 30.397623, 20.437006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822653, 30.206192, 20.100262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805267, 0.380354, -0.454836,
		0.537881, 0.791386, -0.290503,
		0.249457, -0.478580, -0.841863,
		25.897490, 30.062618, 19.847702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933439, 30.921488, 19.859909>,  <25.722870, 30.397623, 20.437006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933439, 30.921488, 19.859909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.762209, 30.577423, 19.749008>,  <25.659470, 30.370983, 19.682468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.762209, 30.577423, 19.749008>,  <25.933439, 30.921488, 19.859909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762209, 30.577423, 19.749008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750929, 0.509238, -0.420454,
		0.502849, 0.028215, -0.863914,
		-0.428075, -0.860163, -0.277257,
		25.633785, 30.319374, 19.665833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.937780, 30.902889, 19.072239>,  <25.933439, 30.921488, 19.859909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.937780, 30.902889, 19.072239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.649450, 30.744875, 19.300049>,  <25.476452, 30.650066, 19.436735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.649450, 30.744875, 19.300049>,  <25.937780, 30.902889, 19.072239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649450, 30.744875, 19.300049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636445, 0.702652, -0.318149,
		-0.274498, -0.591801, -0.757907,
		-0.720826, -0.395034, 0.569525,
		25.433203, 30.626364, 19.470905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391502, 31.525528, 19.010303>,  <25.937780, 30.902889, 19.072239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391502, 31.525528, 19.010303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.219616, 31.858299, 19.150723>,  <26.116484, 32.057964, 19.234974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.219616, 31.858299, 19.150723>,  <26.391502, 31.525528, 19.010303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219616, 31.858299, 19.150723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820774, 0.197816, 0.535909,
		0.376396, 0.518421, -0.767832,
		-0.429716, 0.831931, 0.351049,
		26.090700, 32.107880, 19.256037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003494, 32.026016, 18.995321>,  <26.391502, 31.525528, 19.010303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003494, 32.026016, 18.995321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.723059, 32.162277, 19.245899>,  <26.554798, 32.244034, 19.396246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.723059, 32.162277, 19.245899>,  <27.003494, 32.026016, 18.995321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723059, 32.162277, 19.245899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702566, 0.179723, 0.688549,
		0.121968, 0.922852, -0.365331,
		-0.701088, 0.340651, 0.626445,
		26.512732, 32.264473, 19.433832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318151, 32.652832, 19.231247>,  <27.003494, 32.026016, 18.995321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318151, 32.652832, 19.231247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.031950, 32.579536, 19.500908>,  <26.860229, 32.535561, 19.662704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.031950, 32.579536, 19.500908>,  <27.318151, 32.652832, 19.231247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031950, 32.579536, 19.500908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695301, -0.092958, 0.712682,
		-0.067923, 0.978664, 0.193918,
		-0.715502, -0.183239, 0.674152,
		26.817299, 32.524567, 19.703154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620613, 33.024635, 19.744989>,  <27.318151, 32.652832, 19.231247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620613, 33.024635, 19.744989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346048, 32.779781, 19.902029>,  <27.181309, 32.632870, 19.996252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.346048, 32.779781, 19.902029>,  <27.620613, 33.024635, 19.744989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.346048, 32.779781, 19.902029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631946, -0.234958, 0.738538,
		-0.359838, 0.755043, 0.548112,
		-0.686412, -0.612131, 0.392600,
		27.140125, 32.596142, 20.019810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410339, 33.238373, 20.427900>,  <27.620613, 33.024635, 19.744989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410339, 33.238373, 20.427900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.318449, 32.849598, 20.448126>,  <27.263315, 32.616333, 20.460260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.318449, 32.849598, 20.448126>,  <27.410339, 33.238373, 20.427900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318449, 32.849598, 20.448126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522712, -0.079390, 0.848804,
		-0.820973, 0.221424, 0.526284,
		-0.229727, -0.971941, 0.050564,
		27.249531, 32.558014, 20.463295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222204, 33.103596, 21.149275>,  <27.410339, 33.238373, 20.427900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222204, 33.103596, 21.149275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.338181, 32.763023, 20.974464>,  <27.407766, 32.558678, 20.869577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.338181, 32.763023, 20.974464>,  <27.222204, 33.103596, 21.149275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338181, 32.763023, 20.974464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569198, -0.213686, 0.793947,
		-0.769381, -0.478953, 0.422679,
		0.289943, -0.851435, -0.437025,
		27.425163, 32.507591, 20.843357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341383, 32.531258, 21.738703>,  <27.222204, 33.103596, 21.149275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341383, 32.531258, 21.738703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.534813, 32.384060, 21.421028>,  <27.650871, 32.295742, 21.230423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.534813, 32.384060, 21.421028>,  <27.341383, 32.531258, 21.738703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534813, 32.384060, 21.421028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810200, -0.155192, 0.565236,
		-0.331257, -0.916784, 0.223104,
		0.483575, -0.367997, -0.794187,
		27.679886, 32.273663, 21.182772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852459, 31.977482, 21.962133>,  <27.341383, 32.531258, 21.738703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852459, 31.977482, 21.962133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.990166, 32.066696, 21.597336>,  <28.072790, 32.120224, 21.378456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.990166, 32.066696, 21.597336>,  <27.852459, 31.977482, 21.962133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990166, 32.066696, 21.597336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938313, -0.048225, 0.342407,
		0.032388, -0.973617, -0.225880,
		0.344266, 0.223037, -0.911995,
		28.093445, 32.133606, 21.323738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422567, 31.660595, 21.921986>,  <27.852459, 31.977482, 21.962133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422567, 31.660595, 21.921986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.485001, 31.930092, 21.633068>,  <28.522461, 32.091789, 21.459717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.485001, 31.930092, 21.633068>,  <28.422567, 31.660595, 21.921986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485001, 31.930092, 21.633068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979197, -0.009555, 0.202684,
		0.129656, -0.738904, -0.661219,
		0.156082, 0.673743, -0.722294,
		28.531826, 32.132214, 21.416380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905428, 31.447813, 21.425817>,  <28.422567, 31.660595, 21.921986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905428, 31.447813, 21.425817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.925438, 31.847309, 21.424425>,  <28.937445, 32.087006, 21.423590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.925438, 31.847309, 21.424425>,  <28.905428, 31.447813, 21.425817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925438, 31.847309, 21.424425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965238, -0.047453, 0.257028,
		0.256540, -0.016219, -0.966398,
		0.050027, 0.998742, -0.003482,
		28.940447, 32.146931, 21.423380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610615, 31.602015, 21.178335>,  <28.905428, 31.447813, 21.425817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610615, 31.602015, 21.178335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.487833, 31.971216, 21.271151>,  <29.414164, 32.192738, 21.326839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.487833, 31.971216, 21.271151>,  <29.610615, 31.602015, 21.178335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487833, 31.971216, 21.271151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938927, 0.253841, 0.232337,
		0.155547, 0.289185, -0.944551,
		-0.306955, 0.923004, 0.232040,
		29.395746, 32.248116, 21.340763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000740, 32.177170, 20.777773>,  <29.610615, 31.602015, 21.178335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000740, 32.177170, 20.777773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860315, 32.378624, 21.093521>,  <29.776060, 32.499496, 21.282970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.860315, 32.378624, 21.093521>,  <30.000740, 32.177170, 20.777773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860315, 32.378624, 21.093521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935855, 0.216218, 0.278254,
		-0.030537, 0.836420, -0.547237,
		-0.351060, 0.503637, 0.789371,
		29.754997, 32.529716, 21.330332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435835, 32.857140, 20.837971>,  <30.000740, 32.177170, 20.777773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435835, 32.857140, 20.837971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.268494, 32.754837, 21.186584>,  <30.168089, 32.693455, 21.395752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.268494, 32.754837, 21.186584>,  <30.435835, 32.857140, 20.837971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268494, 32.754837, 21.186584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875950, 0.140140, 0.461597,
		-0.240195, 0.956529, 0.165406,
		-0.418351, -0.255760, 0.871532,
		30.142988, 32.678108, 21.448044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746658, 33.280933, 21.367039>,  <30.435835, 32.857140, 20.837971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746658, 33.280933, 21.367039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585194, 32.995110, 21.595587>,  <30.488316, 32.823616, 21.732716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585194, 32.995110, 21.595587>,  <30.746658, 33.280933, 21.367039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585194, 32.995110, 21.595587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853846, -0.069896, 0.515812,
		-0.328642, 0.696074, 0.638338,
		-0.403661, -0.714559, 0.571369,
		30.464096, 32.780743, 21.766998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278688, 33.918018, 21.544445>,  <30.746658, 33.280933, 21.367039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278688, 33.918018, 21.544445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.386431, 34.300705, 21.500376>,  <30.451077, 34.530319, 21.473934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.386431, 34.300705, 21.500376>,  <30.278688, 33.918018, 21.544445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386431, 34.300705, 21.500376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861244, 0.188111, -0.472094,
		-0.430937, 0.222046, 0.874637,
		0.269355, 0.956718, -0.110172,
		30.467237, 34.587719, 21.467323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741392, 34.275021, 21.803600>,  <30.278688, 33.918018, 21.544445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741392, 34.275021, 21.803600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.943562, 34.528797, 21.569666>,  <30.064863, 34.681061, 21.429304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.943562, 34.528797, 21.569666>,  <29.741392, 34.275021, 21.803600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943562, 34.528797, 21.569666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804560, 0.101571, -0.585122,
		-0.311821, 0.766271, 0.561780,
		0.505422, 0.634439, -0.584838,
		30.095188, 34.719128, 21.394215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273203, 34.785492, 21.642654>,  <29.741392, 34.275021, 21.803600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273203, 34.785492, 21.642654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.563667, 34.816006, 21.369343>,  <29.737946, 34.834312, 21.205357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.563667, 34.816006, 21.369343>,  <29.273203, 34.785492, 21.642654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563667, 34.816006, 21.369343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686681, 0.129634, -0.715307,
		0.034009, 0.988623, 0.146519,
		0.726163, 0.076284, -0.683277,
		29.781517, 34.838890, 21.164360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050787, 35.366741, 21.210342>,  <29.273203, 34.785492, 21.642654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050787, 35.366741, 21.210342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.320673, 35.162159, 20.997488>,  <29.482605, 35.039410, 20.869776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.320673, 35.162159, 20.997488>,  <29.050787, 35.366741, 21.210342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320673, 35.162159, 20.997488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584054, 0.070829, -0.808619,
		0.451265, 0.856385, -0.250929,
		0.674716, -0.511457, -0.532138,
		29.523088, 35.008720, 20.837847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154198, 35.792313, 20.616240>,  <29.050787, 35.366741, 21.210342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154198, 35.792313, 20.616240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.295286, 35.433781, 20.508772>,  <29.379940, 35.218662, 20.444292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.295286, 35.433781, 20.508772>,  <29.154198, 35.792313, 20.616240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295286, 35.433781, 20.508772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512038, 0.055434, -0.857172,
		0.783202, 0.439910, -0.439402,
		0.352721, -0.896329, -0.268667,
		29.401102, 35.164883, 20.428171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396725, 35.797852, 19.846970>,  <29.154198, 35.792313, 20.616240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396725, 35.797852, 19.846970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.335451, 35.413216, 19.938084>,  <29.298687, 35.182434, 19.992752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.335451, 35.413216, 19.938084>,  <29.396725, 35.797852, 19.846970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335451, 35.413216, 19.938084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580188, -0.099081, -0.808433,
		0.799948, -0.255995, -0.542724,
		-0.153182, -0.961587, 0.227785,
		29.289497, 35.124741, 20.006418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479229, 35.379826, 19.228743>,  <29.396725, 35.797852, 19.846970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479229, 35.379826, 19.228743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.262133, 35.174763, 19.494862>,  <29.131876, 35.051727, 19.654533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.262133, 35.174763, 19.494862>,  <29.479229, 35.379826, 19.228743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262133, 35.174763, 19.494862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698808, -0.163809, -0.696300,
		0.465942, -0.842825, -0.269340,
		-0.542739, -0.512653, 0.665299,
		29.099312, 35.020966, 19.694450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765814, 34.857883, 18.781183>,  <29.479229, 35.379826, 19.228743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765814, 34.857883, 18.781183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.960844, 34.882839, 18.432844>,  <30.077862, 34.897812, 18.223841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.960844, 34.882839, 18.432844>,  <29.765814, 34.857883, 18.781183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960844, 34.882839, 18.432844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872362, -0.075288, 0.483029,
		-0.035429, -0.995208, -0.091133,
		0.487575, 0.062388, -0.870849,
		30.107117, 34.901554, 18.171589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294886, 34.471218, 18.901995>,  <29.765814, 34.857883, 18.781183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294886, 34.471218, 18.901995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413910, 34.683315, 18.584431>,  <30.485325, 34.810574, 18.393892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.413910, 34.683315, 18.584431>,  <30.294886, 34.471218, 18.901995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413910, 34.683315, 18.584431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913640, 0.083102, 0.397940,
		0.276981, -0.843762, -0.459725,
		0.297563, 0.530245, -0.793912,
		30.503180, 34.842388, 18.346256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052071, 34.284138, 18.766554>,  <30.294886, 34.471218, 18.901995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052071, 34.284138, 18.766554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.005468, 34.636730, 18.583508>,  <30.977507, 34.848286, 18.473680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.005468, 34.636730, 18.583508>,  <31.052071, 34.284138, 18.766554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005468, 34.636730, 18.583508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805972, 0.353154, 0.475071,
		0.580376, -0.313475, -0.751596,
		-0.116506, 0.881485, -0.457614,
		30.970516, 34.901176, 18.446222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567158, 34.233952, 18.247122>,  <31.052071, 34.284138, 18.766554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567158, 34.233952, 18.247122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477600, 34.612682, 18.339554>,  <31.423866, 34.839920, 18.395012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477600, 34.612682, 18.339554>,  <31.567158, 34.233952, 18.247122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477600, 34.612682, 18.339554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939067, 0.146127, 0.311126,
		0.260815, 0.286658, -0.921848,
		-0.223893, 0.946823, 0.231079,
		31.410433, 34.896729, 18.408878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138958, 34.592144, 17.931124>,  <31.567158, 34.233952, 18.247122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138958, 34.592144, 17.931124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.001705, 34.846622, 18.207533>,  <31.919353, 34.999310, 18.373379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.001705, 34.846622, 18.207533>,  <32.138958, 34.592144, 17.931124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001705, 34.846622, 18.207533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938973, 0.251405, 0.234790,
		-0.024354, 0.729416, -0.683637,
		-0.343129, 0.636198, 0.691024,
		31.898766, 35.037483, 18.414841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606617, 35.152668, 17.889744>,  <32.138958, 34.592144, 17.931124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606617, 35.152668, 17.889744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434620, 35.192841, 18.248636>,  <32.331421, 35.216946, 18.463972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434620, 35.192841, 18.248636>,  <32.606617, 35.152668, 17.889744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434620, 35.192841, 18.248636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867144, 0.322598, 0.379463,
		-0.251333, 0.941193, -0.225804,
		-0.429992, 0.100433, 0.897229,
		32.305622, 35.222969, 18.517805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846184, 35.828743, 18.150661>,  <32.606617, 35.152668, 17.889744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846184, 35.828743, 18.150661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710785, 35.635757, 18.473810>,  <32.629547, 35.519966, 18.667700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710785, 35.635757, 18.473810>,  <32.846184, 35.828743, 18.150661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710785, 35.635757, 18.473810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773661, 0.345994, 0.530788,
		-0.535602, 0.804687, 0.256143,
		-0.338494, -0.482460, 0.807870,
		32.609238, 35.491020, 18.716171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.871681, 30.609776, 17.086500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870600, 30.424088, 17.440786>,  <26.869951, 30.312675, 17.653358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870600, 30.424088, 17.440786>,  <26.871681, 30.609776, 17.086500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870600, 30.424088, 17.440786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997471, 0.061654, 0.035357,
		-0.071021, 0.883571, 0.462880,
		-0.002702, -0.464220, 0.885716,
		26.869789, 30.284821, 17.706501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283449, 31.000557, 17.644024>,  <26.871681, 30.609776, 17.086500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283449, 31.000557, 17.644024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.231709, 30.627113, 17.777678>,  <27.200665, 30.403048, 17.857870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.231709, 30.627113, 17.777678>,  <27.283449, 31.000557, 17.644024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231709, 30.627113, 17.777678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985161, -0.159330, -0.063805,
		0.112807, 0.320922, 0.940363,
		-0.129352, -0.933607, 0.334134,
		27.192904, 30.347031, 17.877918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798700, 30.945789, 18.187920>,  <27.283449, 31.000557, 17.644024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798700, 30.945789, 18.187920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716261, 30.566792, 18.090122>,  <27.666798, 30.339394, 18.031445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.716261, 30.566792, 18.090122>,  <27.798700, 30.945789, 18.187920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716261, 30.566792, 18.090122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977922, -0.190617, -0.085639,
		0.034538, -0.256746, 0.965861,
		-0.206097, -0.947495, -0.244494,
		27.654432, 30.282543, 18.016773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145973, 30.482651, 18.660545>,  <27.798700, 30.945789, 18.187920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145973, 30.482651, 18.660545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080956, 30.272034, 18.326759>,  <28.041945, 30.145664, 18.126488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.080956, 30.272034, 18.326759>,  <28.145973, 30.482651, 18.660545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.080956, 30.272034, 18.326759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920872, -0.384683, 0.063359,
		-0.354366, -0.758137, 0.547407,
		-0.162544, -0.526543, -0.834465,
		28.032192, 30.114071, 18.076420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418341, 29.862648, 18.919170>,  <28.145973, 30.482651, 18.660545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418341, 29.862648, 18.919170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414513, 29.856813, 18.519232>,  <28.412216, 29.853312, 18.279268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414513, 29.856813, 18.519232>,  <28.418341, 29.862648, 18.919170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414513, 29.856813, 18.519232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905619, -0.424085, -0.002480,
		-0.423985, -0.905505, 0.017268,
		-0.009569, -0.014587, -0.999848,
		28.411642, 29.852438, 18.219278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.818716, 29.298265, 18.784912>,  <28.418341, 29.862648, 18.919170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.818716, 29.298265, 18.784912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791842, 29.473221, 18.426208>,  <28.775717, 29.578194, 18.210987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791842, 29.473221, 18.426208>,  <28.818716, 29.298265, 18.784912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791842, 29.473221, 18.426208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867739, -0.418003, -0.268891,
		-0.492458, -0.796219, -0.351456,
		-0.067187, 0.437390, -0.896759,
		28.771685, 29.604437, 18.157181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018173, 28.777996, 18.362967>,  <28.818716, 29.298265, 18.784912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018173, 28.777996, 18.362967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061195, 29.128605, 18.175291>,  <29.087009, 29.338970, 18.062685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.061195, 29.128605, 18.175291>,  <29.018173, 28.777996, 18.362967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061195, 29.128605, 18.175291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928563, -0.257196, -0.267620,
		-0.355249, -0.406888, -0.841570,
		0.107557, 0.876523, -0.469190,
		29.093462, 29.391562, 18.034534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226574, 28.672552, 17.643230>,  <29.018173, 28.777996, 18.362967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226574, 28.672552, 17.643230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356644, 29.039951, 17.733231>,  <29.434687, 29.260391, 17.787231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.356644, 29.039951, 17.733231>,  <29.226574, 28.672552, 17.643230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356644, 29.039951, 17.733231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937317, -0.344576, 0.051997,
		0.125289, 0.193988, -0.972970,
		0.325175, 0.918497, 0.225000,
		29.454197, 29.315500, 17.800730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729250, 28.737055, 17.257957>,  <29.226574, 28.672552, 17.643230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729250, 28.737055, 17.257957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805859, 29.027994, 17.521559>,  <29.851824, 29.202557, 17.679720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805859, 29.027994, 17.521559>,  <29.729250, 28.737055, 17.257957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805859, 29.027994, 17.521559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973420, -0.226678, -0.032712,
		0.125589, 0.647753, -0.751428,
		0.191522, 0.727347, 0.659004,
		29.863316, 29.246199, 17.719259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273056, 29.009169, 16.932772>,  <29.729250, 28.737055, 17.257957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273056, 29.009169, 16.932772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284616, 29.110920, 17.319441>,  <30.291553, 29.171970, 17.551443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284616, 29.110920, 17.319441>,  <30.273056, 29.009169, 16.932772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284616, 29.110920, 17.319441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999534, 0.002141, -0.030449,
		-0.009815, 0.967102, -0.254199,
		0.028903, 0.254380, 0.966672,
		30.293287, 29.187233, 17.609442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793383, 29.472015, 17.014805>,  <30.273056, 29.009169, 16.932772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793383, 29.472015, 17.014805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723087, 29.372988, 17.395924>,  <30.680910, 29.313570, 17.624596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.723087, 29.372988, 17.395924>,  <30.793383, 29.472015, 17.014805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723087, 29.372988, 17.395924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962089, 0.161860, 0.219511,
		-0.208564, 0.955254, 0.209739,
		-0.175741, -0.247570, 0.952798,
		30.670364, 29.298717, 17.681763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269020, 29.877039, 17.330441>,  <30.793383, 29.472015, 17.014805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269020, 29.877039, 17.330441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189898, 29.613092, 17.620392>,  <31.142424, 29.454725, 17.794363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.189898, 29.613092, 17.620392>,  <31.269020, 29.877039, 17.330441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189898, 29.613092, 17.620392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958341, 0.025260, 0.284506,
		-0.206047, 0.750959, 0.627380,
		-0.197805, -0.659866, 0.724880,
		31.130556, 29.415133, 17.837856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479782, 30.660559, 17.563387>,  <31.269020, 29.877039, 17.330441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479782, 30.660559, 17.563387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669170, 30.947695, 17.359219>,  <31.782803, 31.119976, 17.236717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669170, 30.947695, 17.359219>,  <31.479782, 30.660559, 17.563387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669170, 30.947695, 17.359219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867783, 0.280863, -0.409963,
		-0.150929, 0.637040, 0.755910,
		0.473470, 0.717841, -0.510422,
		31.811211, 31.163048, 17.206093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096273, 31.161291, 17.572899>,  <31.479782, 30.660559, 17.563387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096273, 31.161291, 17.572899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325537, 31.289833, 17.271378>,  <31.463095, 31.366959, 17.090466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325537, 31.289833, 17.271378>,  <31.096273, 31.161291, 17.572899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325537, 31.289833, 17.271378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814955, 0.319700, -0.483364,
		0.085660, 0.891360, 0.445129,
		0.573159, 0.321355, -0.753804,
		31.497484, 31.386240, 17.045237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942329, 31.954723, 17.400881>,  <31.096273, 31.161291, 17.572899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942329, 31.954723, 17.400881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.090040, 31.766100, 17.080564>,  <31.178667, 31.652925, 16.888374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.090040, 31.766100, 17.080564>,  <30.942329, 31.954723, 17.400881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090040, 31.766100, 17.080564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791166, 0.292538, -0.537102,
		0.487536, 0.831899, -0.265053,
		0.369276, -0.471558, -0.800792,
		31.200823, 31.624632, 16.840326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902945, 32.436363, 16.886440>,  <30.942329, 31.954723, 17.400881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902945, 32.436363, 16.886440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.976904, 32.111958, 16.664423>,  <31.021280, 31.917315, 16.531214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.976904, 32.111958, 16.664423>,  <30.902945, 32.436363, 16.886440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976904, 32.111958, 16.664423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666871, 0.311310, -0.677030,
		0.721870, 0.495322, -0.483280,
		0.184898, -0.811013, -0.555041,
		31.032373, 31.868654, 16.497911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987438, 32.639717, 16.172602>,  <30.902945, 32.436363, 16.886440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987438, 32.639717, 16.172602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873125, 32.256428, 16.177149>,  <30.804537, 32.026455, 16.179876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.873125, 32.256428, 16.177149>,  <30.987438, 32.639717, 16.172602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873125, 32.256428, 16.177149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683960, 0.195647, -0.702795,
		0.671214, -0.208620, -0.711301,
		-0.285781, -0.958228, 0.011367,
		30.787392, 31.968960, 16.180559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754414, 32.508934, 15.422389>,  <30.987438, 32.639717, 16.172602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754414, 32.508934, 15.422389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.594011, 32.213669, 15.639391>,  <30.497770, 32.036510, 15.769592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.594011, 32.213669, 15.639391>,  <30.754414, 32.508934, 15.422389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594011, 32.213669, 15.639391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803807, -0.000543, -0.594890,
		0.439420, -0.674623, -0.593123,
		-0.401004, -0.738163, 0.542505,
		30.473709, 31.992220, 15.802142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438538, 31.981733, 14.954949>,  <30.754414, 32.508934, 15.422389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438538, 31.981733, 14.954949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259283, 31.935833, 15.309578>,  <30.151731, 31.908293, 15.522355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.259283, 31.935833, 15.309578>,  <30.438538, 31.981733, 14.954949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259283, 31.935833, 15.309578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893966, 0.058189, -0.444342,
		-0.000606, -0.991690, -0.128648,
		-0.448135, -0.114737, 0.886572,
		30.124842, 31.901407, 15.575549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899155, 31.564177, 14.846881>,  <30.438538, 31.981733, 14.954949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899155, 31.564177, 14.846881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817419, 31.765718, 15.182590>,  <29.768377, 31.886644, 15.384014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817419, 31.765718, 15.182590>,  <29.899155, 31.564177, 14.846881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817419, 31.765718, 15.182590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890355, 0.260660, -0.373262,
		-0.406835, -0.823520, 0.395349,
		-0.204337, 0.503857, 0.839271,
		29.756119, 31.916876, 15.434371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184994, 31.409533, 14.961422>,  <29.899155, 31.564177, 14.846881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184994, 31.409533, 14.961422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256617, 31.715294, 15.209171>,  <29.299591, 31.898750, 15.357821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256617, 31.715294, 15.209171>,  <29.184994, 31.409533, 14.961422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256617, 31.715294, 15.209171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891343, 0.392536, -0.226766,
		-0.416468, -0.511471, 0.751633,
		0.179059, 0.764404, 0.619374,
		29.310335, 31.944614, 15.394983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561083, 31.372736, 15.414027>,  <29.184994, 31.409533, 14.961422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561083, 31.372736, 15.414027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721880, 31.735468, 15.464724>,  <28.818357, 31.953106, 15.495142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721880, 31.735468, 15.464724>,  <28.561083, 31.372736, 15.414027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721880, 31.735468, 15.464724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900513, 0.416603, -0.124575,
		-0.165769, -0.064054, 0.984082,
		0.401992, 0.906829, 0.126742,
		28.842478, 32.007515, 15.502747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984812, 31.683701, 15.744771>,  <28.561083, 31.372736, 15.414027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984812, 31.683701, 15.744771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247967, 31.947168, 15.598710>,  <28.405859, 32.105251, 15.511074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247967, 31.947168, 15.598710>,  <27.984812, 31.683701, 15.744771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247967, 31.947168, 15.598710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736956, 0.662940, -0.131932,
		0.155173, 0.355898, 0.921552,
		0.657888, 0.658671, -0.365151,
		28.445333, 32.144772, 15.489164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127037, 32.246616, 16.293653>,  <27.984812, 31.683701, 15.744771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127037, 32.246616, 16.293653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.198854, 32.397842, 15.930372>,  <28.241945, 32.488579, 15.712403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.198854, 32.397842, 15.930372>,  <28.127037, 32.246616, 16.293653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198854, 32.397842, 15.930372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783548, 0.613174, 0.100351,
		0.594826, 0.693603, 0.406321,
		0.179542, 0.378064, -0.908203,
		28.252718, 32.511261, 15.657911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052828, 32.889721, 16.417122>,  <28.127037, 32.246616, 16.293653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052828, 32.889721, 16.417122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018732, 32.882153, 16.018650>,  <27.998274, 32.877609, 15.779567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018732, 32.882153, 16.018650>,  <28.052828, 32.889721, 16.417122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018732, 32.882153, 16.018650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901396, 0.427462, 0.069009,
		0.424524, 0.903835, -0.053493,
		-0.085239, -0.018923, -0.996181,
		27.993160, 32.876476, 15.719796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796551, 33.620518, 16.245991>,  <28.052828, 32.889721, 16.417122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796551, 33.620518, 16.245991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707632, 33.355999, 15.959420>,  <27.654282, 33.197289, 15.787477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.707632, 33.355999, 15.959420>,  <27.796551, 33.620518, 16.245991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707632, 33.355999, 15.959420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932547, 0.358634, -0.041684,
		0.284501, 0.658835, -0.696416,
		-0.222296, -0.661301, -0.716427,
		27.640944, 33.157608, 15.744493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216738, 33.832718, 15.689107>,  <27.796551, 33.620518, 16.245991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216738, 33.832718, 15.689107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112101, 34.159573, 15.894577>,  <28.049318, 34.355686, 16.017859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112101, 34.159573, 15.894577>,  <28.216738, 33.832718, 15.689107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112101, 34.159573, 15.894577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801451, -0.112657, 0.587355,
		0.537816, 0.565333, -0.625422,
		-0.261592, 0.817134, 0.513675,
		28.033623, 34.404713, 16.048679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879463, 34.171253, 15.842043>,  <28.216738, 33.832718, 15.689107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879463, 34.171253, 15.842043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609535, 34.333855, 16.088417>,  <28.447578, 34.431416, 16.236242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609535, 34.333855, 16.088417>,  <28.879463, 34.171253, 15.842043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609535, 34.333855, 16.088417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720197, 0.180613, 0.669847,
		0.161046, 0.895621, -0.414641,
		-0.674819, 0.406500, 0.615936,
		28.407089, 34.455803, 16.273197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106531, 34.904388, 15.936814>,  <28.879463, 34.171253, 15.842043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106531, 34.904388, 15.936814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880232, 34.835068, 16.259279>,  <28.744453, 34.793476, 16.452759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.880232, 34.835068, 16.259279>,  <29.106531, 34.904388, 15.936814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880232, 34.835068, 16.259279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734840, 0.337573, 0.588264,
		-0.374087, 0.925208, -0.063631,
		-0.565747, -0.173303, 0.806161,
		28.710508, 34.783077, 16.501127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165142, 35.442604, 16.465109>,  <29.106531, 34.904388, 15.936814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165142, 35.442604, 16.465109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027054, 35.148861, 16.698874>,  <28.944201, 34.972614, 16.839132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.027054, 35.148861, 16.698874>,  <29.165142, 35.442604, 16.465109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027054, 35.148861, 16.698874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720718, 0.191423, 0.666276,
		-0.601156, 0.651209, 0.463183,
		-0.345221, -0.734360, 0.584413,
		28.923487, 34.928555, 16.874197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192875, 35.709511, 17.092588>,  <29.165142, 35.442604, 16.465109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192875, 35.709511, 17.092588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191809, 35.317356, 17.171408>,  <29.191168, 35.082062, 17.218699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191809, 35.317356, 17.171408>,  <29.192875, 35.709511, 17.092588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191809, 35.317356, 17.171408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752057, 0.127906, 0.646567,
		-0.659092, 0.149915, 0.736969,
		-0.002668, -0.980390, 0.197047,
		29.191008, 35.023239, 17.230522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127008, 35.671722, 17.826719>,  <29.192875, 35.709511, 17.092588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127008, 35.671722, 17.826719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279303, 35.325115, 17.697601>,  <29.370678, 35.117153, 17.620131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.279303, 35.325115, 17.697601>,  <29.127008, 35.671722, 17.826719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.279303, 35.325115, 17.697601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776645, 0.110201, 0.620225,
		-0.501862, -0.486836, 0.714931,
		0.380734, -0.866514, -0.322793,
		29.393522, 35.065163, 17.600763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342716, 35.320698, 18.403910>,  <29.127008, 35.671722, 17.826719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342716, 35.320698, 18.403910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.543217, 35.128757, 18.115883>,  <29.663517, 35.013596, 17.943068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.543217, 35.128757, 18.115883>,  <29.342716, 35.320698, 18.403910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543217, 35.128757, 18.115883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822194, 0.004733, 0.569188,
		-0.269716, -0.877339, 0.396900,
		0.501250, -0.479847, -0.720066,
		29.693592, 34.984802, 17.899862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993666, 34.734558, 18.791834>,  <29.342716, 35.320698, 18.403910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993666, 34.734558, 18.791834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822254, 34.748196, 19.152988>,  <28.719406, 34.756378, 19.369680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.822254, 34.748196, 19.152988>,  <28.993666, 34.734558, 18.791834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822254, 34.748196, 19.152988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890311, -0.186224, -0.415531,
		0.153973, -0.981916, 0.110155,
		-0.428530, 0.034091, 0.902884,
		28.693695, 34.758423, 19.423853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626919, 34.069206, 18.840122>,  <28.993666, 34.734558, 18.791834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626919, 34.069206, 18.840122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475092, 34.325047, 19.107508>,  <28.383995, 34.478550, 19.267939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475092, 34.325047, 19.107508>,  <28.626919, 34.069206, 18.840122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475092, 34.325047, 19.107508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899084, -0.084664, -0.429512,
		-0.218120, -0.764033, 0.607188,
		-0.379568, 0.639598, 0.668462,
		28.361221, 34.516926, 19.308046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978485, 33.809921, 19.026480>,  <28.626919, 34.069206, 18.840122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978485, 33.809921, 19.026480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949455, 34.186947, 19.156898>,  <27.932037, 34.413162, 19.235149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949455, 34.186947, 19.156898>,  <27.978485, 33.809921, 19.026480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949455, 34.186947, 19.156898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992243, -0.035153, -0.119240,
		-0.100930, -0.332171, 0.937803,
		-0.072575, 0.942563, 0.326047,
		27.927683, 34.469715, 19.254713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447561, 33.863670, 19.484745>,  <27.978485, 33.809921, 19.026480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447561, 33.863670, 19.484745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471441, 34.251755, 19.390833>,  <27.485769, 34.484608, 19.334486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471441, 34.251755, 19.390833>,  <27.447561, 33.863670, 19.484745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471441, 34.251755, 19.390833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997734, 0.050690, -0.044236,
		-0.031017, 0.236889, 0.971041,
		0.059701, 0.970213, -0.234780,
		27.489351, 34.542820, 19.320398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964266, 34.334015, 19.900824>,  <27.447561, 33.863670, 19.484745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964266, 34.334015, 19.900824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043188, 34.536636, 19.565090>,  <27.090542, 34.658207, 19.363651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043188, 34.536636, 19.565090>,  <26.964266, 34.334015, 19.900824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043188, 34.536636, 19.565090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973629, 0.201269, -0.107407,
		0.114525, 0.838390, 0.532904,
		0.197306, 0.506550, -0.839331,
		27.102381, 34.688602, 19.313292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658913, 34.990826, 19.929279>,  <26.964266, 34.334015, 19.900824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658913, 34.990826, 19.929279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.726847, 34.946232, 19.537621>,  <26.767607, 34.919476, 19.302626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.726847, 34.946232, 19.537621>,  <26.658913, 34.990826, 19.929279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726847, 34.946232, 19.537621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909338, 0.365212, -0.199308,
		0.379815, 0.924225, -0.039349,
		0.169835, -0.111482, -0.979147,
		26.777798, 34.912788, 19.243877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512222, 35.609989, 19.639952>,  <26.658913, 34.990826, 19.929279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512222, 35.609989, 19.639952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.479820, 35.357922, 19.331064>,  <26.460379, 35.206680, 19.145733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.479820, 35.357922, 19.331064>,  <26.512222, 35.609989, 19.639952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479820, 35.357922, 19.331064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877070, 0.413115, -0.245122,
		0.473484, 0.657433, -0.586170,
		-0.081005, -0.630173, -0.772218,
		26.455519, 35.168869, 19.099400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413210, 36.016422, 18.976940>,  <26.512222, 35.609989, 19.639952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413210, 36.016422, 18.976940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272493, 35.645065, 18.929066>,  <26.188063, 35.422249, 18.900341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.272493, 35.645065, 18.929066>,  <26.413210, 36.016422, 18.976940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272493, 35.645065, 18.929066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862758, 0.371181, -0.343326,
		0.363166, -0.017525, -0.931560,
		-0.351794, -0.928395, -0.119681,
		26.166956, 35.366547, 18.893160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119780, 35.999619, 18.359974>,  <26.413210, 36.016422, 18.976940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119780, 35.999619, 18.359974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.935244, 35.708553, 18.563021>,  <25.824522, 35.533916, 18.684849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.935244, 35.708553, 18.563021>,  <26.119780, 35.999619, 18.359974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935244, 35.708553, 18.563021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887103, 0.368879, -0.277448,
		0.014639, -0.578306, -0.815689,
		-0.461340, -0.727661, 0.507617,
		25.796843, 35.490253, 18.715305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.039879, 34.891251, 27.299177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.112156, 34.508930, 27.206409>,  <39.155521, 34.279537, 27.150749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.112156, 34.508930, 27.206409>,  <39.039879, 34.891251, 27.299177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112156, 34.508930, 27.206409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873115, -0.047329, -0.485212,
		0.452792, 0.290167, -0.843079,
		0.180695, -0.955805, -0.231919,
		39.166363, 34.222187, 27.136833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083908, 34.927090, 26.548895>,  <39.039879, 34.891251, 27.299177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083908, 34.927090, 26.548895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916672, 34.623409, 26.748419>,  <38.816330, 34.441200, 26.868134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.916672, 34.623409, 26.748419>,  <39.083908, 34.927090, 26.548895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916672, 34.623409, 26.748419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732302, -0.043235, -0.679606,
		0.537525, -0.649417, -0.537889,
		-0.418092, -0.759202, 0.498809,
		38.791245, 34.395649, 26.898062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975113, 34.344769, 26.046406>,  <39.083908, 34.927090, 26.548895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975113, 34.344769, 26.046406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705204, 34.247910, 26.325275>,  <38.543259, 34.189793, 26.492598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.705204, 34.247910, 26.325275>,  <38.975113, 34.344769, 26.046406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705204, 34.247910, 26.325275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702178, -0.080199, -0.707470,
		0.227228, -0.966918, -0.115918,
		-0.674769, -0.242152, 0.697172,
		38.502773, 34.175262, 26.534428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556854, 33.829739, 25.816156>,  <38.975113, 34.344769, 26.046406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556854, 33.829739, 25.816156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335514, 33.968185, 26.119209>,  <38.202709, 34.051254, 26.301041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335514, 33.968185, 26.119209>,  <38.556854, 33.829739, 25.816156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335514, 33.968185, 26.119209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831634, -0.178480, -0.525861,
		-0.046782, -0.921061, 0.386599,
		-0.553350, 0.346110, 0.757636,
		38.169510, 34.072018, 26.346500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960587, 33.355339, 25.887754>,  <38.556854, 33.829739, 25.816156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960587, 33.355339, 25.887754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857857, 33.688427, 26.083967>,  <37.796219, 33.888279, 26.201694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.857857, 33.688427, 26.083967>,  <37.960587, 33.355339, 25.887754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857857, 33.688427, 26.083967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919972, -0.055119, -0.388090,
		-0.296133, -0.550943, 0.780235,
		-0.256822, 0.832721, 0.490530,
		37.780811, 33.938244, 26.231127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288578, 33.283737, 26.236238>,  <37.960587, 33.355339, 25.887754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288578, 33.283737, 26.236238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351124, 33.676121, 26.190155>,  <37.388653, 33.911549, 26.162504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.351124, 33.676121, 26.190155>,  <37.288578, 33.283737, 26.236238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351124, 33.676121, 26.190155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893246, 0.090672, -0.440330,
		-0.421498, 0.171763, 0.890414,
		0.156368, 0.980957, -0.115208,
		37.398033, 33.970409, 26.155592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673290, 33.670265, 26.414253>,  <37.288578, 33.283737, 26.236238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673290, 33.670265, 26.414253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851650, 33.941822, 26.180920>,  <36.958668, 34.104755, 26.040918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.851650, 33.941822, 26.180920>,  <36.673290, 33.670265, 26.414253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851650, 33.941822, 26.180920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874547, 0.191645, -0.445465,
		-0.190629, 0.708788, 0.679176,
		0.445901, 0.678890, -0.583336,
		36.985420, 34.145489, 26.005919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260639, 34.229324, 26.568678>,  <36.673290, 33.670265, 26.414253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260639, 34.229324, 26.568678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433529, 34.280006, 26.211550>,  <36.537262, 34.310413, 25.997272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433529, 34.280006, 26.211550>,  <36.260639, 34.229324, 26.568678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433529, 34.280006, 26.211550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870726, 0.316170, -0.376661,
		0.234559, 0.940204, 0.246980,
		0.432226, 0.126702, -0.892820,
		36.563198, 34.318016, 25.943705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844791, 34.739357, 26.216600>,  <36.260639, 34.229324, 26.568678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844791, 34.739357, 26.216600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080170, 34.627228, 25.913246>,  <36.221397, 34.559948, 25.731234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080170, 34.627228, 25.913246>,  <35.844791, 34.739357, 26.216600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080170, 34.627228, 25.913246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720669, 0.243400, -0.649148,
		0.366565, 0.928533, -0.058795,
		0.588444, -0.280327, -0.758387,
		36.256702, 34.543129, 25.685730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933994, 35.263622, 25.681812>,  <35.844791, 34.739357, 26.216600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933994, 35.263622, 25.681812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995655, 34.931175, 25.468088>,  <36.032650, 34.731709, 25.339853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.995655, 34.931175, 25.468088>,  <35.933994, 35.263622, 25.681812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995655, 34.931175, 25.468088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596221, 0.352975, -0.721061,
		0.787882, 0.429718, -0.441117,
		0.154149, -0.831114, -0.534309,
		36.041901, 34.681839, 25.307795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837490, 35.432667, 25.016033>,  <35.933994, 35.263622, 25.681812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837490, 35.432667, 25.016033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844910, 35.038704, 24.947206>,  <35.849361, 34.802326, 24.905910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844910, 35.038704, 24.947206>,  <35.837490, 35.432667, 25.016033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844910, 35.038704, 24.947206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543672, 0.134495, -0.828451,
		0.839093, 0.108911, -0.532974,
		0.018546, -0.984911, -0.172066,
		35.850471, 34.743229, 24.895586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906414, 35.363361, 24.284182>,  <35.837490, 35.432667, 25.016033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906414, 35.363361, 24.284182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728916, 35.041725, 24.442436>,  <35.622417, 34.848743, 24.537390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728916, 35.041725, 24.442436>,  <35.906414, 35.363361, 24.284182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728916, 35.041725, 24.442436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769113, 0.115127, -0.628658,
		0.459948, -0.583255, -0.669523,
		-0.443748, -0.804089, 0.395637,
		35.595791, 34.800499, 24.561127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257519, 34.907253, 23.723001>,  <35.906414, 35.363361, 24.284182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257519, 34.907253, 23.723001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480087, 34.922619, 23.390997>,  <36.613628, 34.931839, 23.191793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.480087, 34.922619, 23.390997>,  <36.257519, 34.907253, 23.723001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480087, 34.922619, 23.390997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829130, -0.090870, 0.551621,
		-0.054231, -0.995121, -0.082414,
		0.556419, 0.038417, -0.830013,
		36.647015, 34.934143, 23.141993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791687, 34.304077, 23.836472>,  <36.257519, 34.907253, 23.723001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791687, 34.304077, 23.836472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947403, 34.539337, 23.552912>,  <37.040833, 34.680492, 23.382776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947403, 34.539337, 23.552912>,  <36.791687, 34.304077, 23.836472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947403, 34.539337, 23.552912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914147, -0.152190, 0.375730,
		0.113099, -0.794303, -0.596902,
		0.389286, 0.588151, -0.708897,
		37.064190, 34.715782, 23.340242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290512, 33.855198, 23.513935>,  <36.791687, 34.304077, 23.836472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290512, 33.855198, 23.513935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394409, 34.228405, 23.414324>,  <37.456745, 34.452328, 23.354557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394409, 34.228405, 23.414324>,  <37.290512, 33.855198, 23.513935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394409, 34.228405, 23.414324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929773, -0.171956, 0.325504,
		0.260879, -0.316087, -0.912158,
		0.259738, 0.933017, -0.249030,
		37.472332, 34.508308, 23.339615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722378, 33.825226, 22.890383>,  <37.290512, 33.855198, 23.513935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722378, 33.825226, 22.890383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797241, 34.156338, 23.101952>,  <37.842159, 34.355003, 23.228893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797241, 34.156338, 23.101952>,  <37.722378, 33.825226, 22.890383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797241, 34.156338, 23.101952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912820, -0.345493, 0.217700,
		0.362945, 0.442064, -0.820274,
		0.187162, 0.827776, 0.528920,
		37.853390, 34.404671, 23.260628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379265, 34.022209, 22.694372>,  <37.722378, 33.825226, 22.890383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379265, 34.022209, 22.694372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326729, 34.186825, 23.055124>,  <38.295208, 34.285595, 23.271576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.326729, 34.186825, 23.055124>,  <38.379265, 34.022209, 22.694372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326729, 34.186825, 23.055124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909832, -0.311210, 0.274506,
		0.393644, 0.856611, -0.333559,
		-0.131338, 0.411540, 0.901879,
		38.287327, 34.310287, 23.325687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020275, 34.191357, 22.811646>,  <38.379265, 34.022209, 22.694372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020275, 34.191357, 22.811646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.838226, 34.227161, 23.166014>,  <38.728996, 34.248642, 23.378635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.838226, 34.227161, 23.166014>,  <39.020275, 34.191357, 22.811646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838226, 34.227161, 23.166014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814286, -0.360730, 0.454765,
		0.360284, 0.928365, 0.091290,
		-0.455119, 0.089509, 0.885920,
		38.701691, 34.254013, 23.431789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537434, 34.480083, 23.255669>,  <39.020275, 34.191357, 22.811646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537434, 34.480083, 23.255669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263298, 34.310078, 23.492203>,  <39.098816, 34.208073, 23.634123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.263298, 34.310078, 23.492203>,  <39.537434, 34.480083, 23.255669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263298, 34.310078, 23.492203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725171, -0.472613, 0.500762,
		0.066639, 0.772008, 0.632109,
		-0.685336, -0.425017, 0.591333,
		39.057697, 34.182571, 23.669603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726246, 34.578735, 23.987740>,  <39.537434, 34.480083, 23.255669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726246, 34.578735, 23.987740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.511600, 34.241989, 23.964714>,  <39.382812, 34.039940, 23.950899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.511600, 34.241989, 23.964714>,  <39.726246, 34.578735, 23.987740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511600, 34.241989, 23.964714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749630, -0.506917, 0.425547,
		-0.387433, 0.185202, 0.903104,
		-0.536610, -0.841865, -0.057563,
		39.350616, 33.989429, 23.947445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135853, 34.137497, 24.449770>,  <39.726246, 34.578735, 23.987740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135853, 34.137497, 24.449770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857376, 33.882370, 24.318012>,  <39.690289, 33.729294, 24.238958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.857376, 33.882370, 24.318012>,  <40.135853, 34.137497, 24.449770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857376, 33.882370, 24.318012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551162, -0.768929, 0.323988,
		-0.459926, 0.044009, 0.886866,
		-0.696196, -0.637817, -0.329394,
		39.648518, 33.691025, 24.219194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985916, 33.652542, 25.003813>,  <40.135853, 34.137497, 24.449770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985916, 33.652542, 25.003813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866158, 33.464573, 24.671659>,  <39.794304, 33.351791, 24.472368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.866158, 33.464573, 24.671659>,  <39.985916, 33.652542, 25.003813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866158, 33.464573, 24.671659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436278, -0.841420, 0.318864,
		-0.848542, -0.266811, 0.456934,
		-0.299398, -0.469919, -0.830384,
		39.776337, 33.323597, 24.422544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743881, 32.893959, 25.221262>,  <39.985916, 33.652542, 25.003813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743881, 32.893959, 25.221262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.831299, 32.892944, 24.830933>,  <39.883747, 32.892334, 24.596735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.831299, 32.892944, 24.830933>,  <39.743881, 32.893959, 25.221262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831299, 32.892944, 24.830933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597602, -0.790193, 0.135895,
		-0.771435, -0.612853, -0.171172,
		0.218542, -0.002541, -0.975824,
		39.896862, 32.892181, 24.538185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592285, 32.153519, 24.927164>,  <39.743881, 32.893959, 25.221262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592285, 32.153519, 24.927164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853867, 32.325272, 24.678013>,  <40.010815, 32.428326, 24.528522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853867, 32.325272, 24.678013>,  <39.592285, 32.153519, 24.927164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853867, 32.325272, 24.678013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609647, -0.786617, 0.097801,
		-0.447973, -0.443693, -0.776181,
		0.653951, 0.429384, -0.622879,
		40.050053, 32.454086, 24.491150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905247, 31.626738, 24.657009>,  <39.592285, 32.153519, 24.927164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905247, 31.626738, 24.657009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128658, 31.901525, 24.471052>,  <40.262703, 32.066399, 24.359478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.128658, 31.901525, 24.471052>,  <39.905247, 31.626738, 24.657009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128658, 31.901525, 24.471052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742945, -0.663550, -0.087945,
		-0.368894, -0.296269, -0.880989,
		0.558525, 0.686969, -0.464891,
		40.296215, 32.107616, 24.331585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109200, 31.395092, 23.988543>,  <39.905247, 31.626738, 24.657009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109200, 31.395092, 23.988543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.396339, 31.627096, 24.142574>,  <40.568623, 31.766298, 24.234993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.396339, 31.627096, 24.142574>,  <40.109200, 31.395092, 23.988543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396339, 31.627096, 24.142574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670222, -0.725414, -0.156771,
		0.188413, 0.370625, -0.909471,
		0.717846, 0.580010, 0.385078,
		40.611694, 31.801100, 24.258099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706535, 31.565788, 23.477364>,  <40.109200, 31.395092, 23.988543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706535, 31.565788, 23.477364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818508, 31.567572, 23.861366>,  <40.885693, 31.568642, 24.091768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.818508, 31.567572, 23.861366>,  <40.706535, 31.565788, 23.477364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818508, 31.567572, 23.861366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774579, -0.591816, -0.223116,
		0.567154, 0.806061, -0.169122,
		0.279934, 0.004458, 0.960009,
		40.902489, 31.568909, 24.149368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011414, 31.517035, 22.711906>,  <40.706535, 31.565788, 23.477364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011414, 31.517035, 22.711906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.190453, 31.159351, 22.709028>,  <41.297874, 30.944742, 22.707302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.190453, 31.159351, 22.709028>,  <41.011414, 31.517035, 22.711906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190453, 31.159351, 22.709028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830791, 0.418804, -0.366592,
		0.330823, 0.158107, 0.930354,
		0.447597, -0.894207, -0.007196,
		41.324730, 30.891088, 22.706869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134430, 31.460236, 21.893223>,  <41.011414, 31.517035, 22.711906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134430, 31.460236, 21.893223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.011894, 31.207924, 22.178396>,  <40.938374, 31.056538, 22.349501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.011894, 31.207924, 22.178396>,  <41.134430, 31.460236, 21.893223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011894, 31.207924, 22.178396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614351, -0.441083, -0.654231,
		0.727138, -0.638408, -0.252398,
		-0.306338, -0.630778, 0.712935,
		40.919994, 31.018690, 22.392277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173359, 30.743073, 21.542965>,  <41.134430, 31.460236, 21.893223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173359, 30.743073, 21.542965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925350, 30.766254, 21.855940>,  <40.776543, 30.780163, 22.043724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925350, 30.766254, 21.855940>,  <41.173359, 30.743073, 21.542965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925350, 30.766254, 21.855940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742239, -0.366515, -0.561024,
		0.254262, -0.928606, 0.270263,
		-0.620026, 0.057953, 0.782438,
		40.739342, 30.783640, 22.090672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833019, 30.034559, 21.581932>,  <41.173359, 30.743073, 21.542965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833019, 30.034559, 21.581932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.584698, 30.283609, 21.772488>,  <40.435707, 30.433039, 21.886820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.584698, 30.283609, 21.772488>,  <40.833019, 30.034559, 21.581932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584698, 30.283609, 21.772488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702914, -0.172981, -0.689919,
		-0.347155, -0.763162, 0.545039,
		-0.620801, 0.622625, 0.476386,
		40.398457, 30.470396, 21.915403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256474, 29.739151, 21.469074>,  <40.833019, 30.034559, 21.581932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256474, 29.739151, 21.469074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115852, 30.097544, 21.577612>,  <40.031479, 30.312580, 21.642735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.115852, 30.097544, 21.577612>,  <40.256474, 29.739151, 21.469074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115852, 30.097544, 21.577612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756431, -0.101095, -0.646213,
		-0.551564, -0.432430, 0.713289,
		-0.351552, 0.895982, 0.271343,
		40.010387, 30.366339, 21.659016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489960, 29.635036, 21.626972>,  <40.256474, 29.739151, 21.469074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489960, 29.635036, 21.626972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533691, 30.028011, 21.566488>,  <39.559933, 30.263796, 21.530197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.533691, 30.028011, 21.566488>,  <39.489960, 29.635036, 21.626972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533691, 30.028011, 21.566488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883134, 0.026189, -0.468388,
		-0.456202, 0.184749, 0.870487,
		0.109331, 0.982437, -0.151211,
		39.566490, 30.322742, 21.521126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840832, 29.971884, 21.896130>,  <39.489960, 29.635036, 21.626972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840832, 29.971884, 21.896130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013729, 30.201056, 21.617586>,  <39.117466, 30.338558, 21.450460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013729, 30.201056, 21.617586>,  <38.840832, 29.971884, 21.896130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013729, 30.201056, 21.617586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885725, 0.124778, -0.447127,
		-0.169282, 0.810051, 0.561392,
		0.432245, 0.572929, -0.696360,
		39.143402, 30.372934, 21.408678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367474, 30.498039, 21.807146>,  <38.840832, 29.971884, 21.896130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367474, 30.498039, 21.807146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604733, 30.520985, 21.485926>,  <38.747089, 30.534752, 21.293194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604733, 30.520985, 21.485926>,  <38.367474, 30.498039, 21.807146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604733, 30.520985, 21.485926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799901, 0.155105, -0.579742,
		0.091302, 0.986231, 0.137884,
		0.593146, 0.057361, -0.803049,
		38.782677, 30.538193, 21.245010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170685, 31.122343, 21.399384>,  <38.367474, 30.498039, 21.807146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170685, 31.122343, 21.399384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351654, 30.902874, 21.118166>,  <38.460236, 30.771193, 20.949436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.351654, 30.902874, 21.118166>,  <38.170685, 31.122343, 21.399384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351654, 30.902874, 21.118166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798885, 0.101017, -0.592941,
		0.396349, 0.829913, -0.392623,
		0.452428, -0.548671, -0.703042,
		38.487381, 30.738272, 20.907253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006451, 31.496006, 20.776104>,  <38.170685, 31.122343, 21.399384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006451, 31.496006, 20.776104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139996, 31.140984, 20.649122>,  <38.220123, 30.927969, 20.572933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139996, 31.140984, 20.649122>,  <38.006451, 31.496006, 20.776104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139996, 31.140984, 20.649122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574325, 0.075518, -0.815137,
		0.747455, 0.454465, -0.484534,
		0.333860, -0.887558, -0.317456,
		38.240154, 30.874716, 20.553885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160236, 31.681759, 20.002125>,  <38.006451, 31.496006, 20.776104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160236, 31.681759, 20.002125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129932, 31.286879, 20.058254>,  <38.111752, 31.049950, 20.091932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.129932, 31.286879, 20.058254>,  <38.160236, 31.681759, 20.002125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129932, 31.286879, 20.058254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817981, -0.018949, -0.574932,
		0.570234, -0.158341, -0.806078,
		-0.075761, -0.987203, 0.140326,
		38.107204, 30.990717, 20.100351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222355, 31.305477, 19.357899>,  <38.160236, 31.681759, 20.002125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222355, 31.305477, 19.357899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978619, 31.106123, 19.604576>,  <37.832375, 30.986511, 19.752583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.978619, 31.106123, 19.604576>,  <38.222355, 31.305477, 19.357899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978619, 31.106123, 19.604576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689016, -0.052059, -0.722874,
		0.392375, -0.865391, -0.311674,
		-0.609343, -0.498386, 0.616695,
		37.795815, 30.956608, 19.789585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933922, 30.867729, 18.870914>,  <38.222355, 31.305477, 19.357899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933922, 30.867729, 18.870914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.711288, 30.857883, 19.203085>,  <37.577709, 30.851976, 19.402388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.711288, 30.857883, 19.203085>,  <37.933922, 30.867729, 18.870914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711288, 30.857883, 19.203085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824056, -0.110683, -0.555591,
		0.105591, -0.993551, 0.041318,
		-0.556581, -0.024617, 0.830428,
		37.544315, 30.850498, 19.452213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365673, 30.488001, 18.684982>,  <37.933922, 30.867729, 18.870914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365673, 30.488001, 18.684982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247757, 30.678839, 19.016155>,  <37.177006, 30.793343, 19.214859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247757, 30.678839, 19.016155>,  <37.365673, 30.488001, 18.684982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247757, 30.678839, 19.016155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926548, 0.069168, -0.369763,
		-0.233680, -0.876125, 0.421662,
		-0.294793, 0.477096, 0.827935,
		37.159321, 30.821968, 19.264536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660500, 30.237152, 18.815701>,  <37.365673, 30.488001, 18.684982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660500, 30.237152, 18.815701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701210, 30.562613, 19.044651>,  <36.725636, 30.757889, 19.182022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.701210, 30.562613, 19.044651>,  <36.660500, 30.237152, 18.815701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701210, 30.562613, 19.044651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962847, 0.225238, -0.148974,
		-0.250134, -0.535949, 0.806345,
		0.101778, 0.813650, 0.572376,
		36.731743, 30.806707, 19.216364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192959, 30.215593, 19.382107>,  <36.660500, 30.237152, 18.815701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192959, 30.215593, 19.382107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256195, 30.609690, 19.355862>,  <36.294136, 30.846148, 19.340115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256195, 30.609690, 19.355862>,  <36.192959, 30.215593, 19.382107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256195, 30.609690, 19.355862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978103, 0.147143, -0.147183,
		-0.135357, 0.087443, 0.986931,
		0.158090, 0.985242, -0.065611,
		36.303623, 30.905262, 19.336178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664848, 30.415148, 19.772631>,  <36.192959, 30.215593, 19.382107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664848, 30.415148, 19.772631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770035, 30.733173, 19.554008>,  <35.833145, 30.923988, 19.422836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770035, 30.733173, 19.554008>,  <35.664848, 30.415148, 19.772631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770035, 30.733173, 19.554008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962052, 0.173303, -0.210768,
		-0.072855, 0.581238, 0.810466,
		0.262962, 0.795066, -0.546554,
		35.848923, 30.971693, 19.390041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220512, 30.888460, 20.011972>,  <35.664848, 30.415148, 19.772631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220512, 30.888460, 20.011972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349213, 31.041164, 19.665392>,  <35.426434, 31.132786, 19.457443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349213, 31.041164, 19.665392>,  <35.220512, 30.888460, 20.011972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349213, 31.041164, 19.665392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943333, 0.207781, -0.258747,
		0.081254, 0.900604, 0.426978,
		0.321747, 0.381759, -0.866452,
		35.445736, 31.155691, 19.405457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746510, 31.443932, 19.908237>,  <35.220512, 30.888460, 20.011972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746510, 31.443932, 19.908237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914253, 31.372484, 19.552208>,  <35.014900, 31.329617, 19.338591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914253, 31.372484, 19.552208>,  <34.746510, 31.443932, 19.908237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914253, 31.372484, 19.552208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885561, 0.135296, -0.444383,
		0.199798, 0.974572, -0.101439,
		0.419359, -0.178617, -0.890075,
		35.040062, 31.318899, 19.285185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391541, 31.885508, 19.492434>,  <34.746510, 31.443932, 19.908237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391541, 31.885508, 19.492434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532631, 31.596579, 19.254498>,  <34.617287, 31.423222, 19.111736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.532631, 31.596579, 19.254498>,  <34.391541, 31.885508, 19.492434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532631, 31.596579, 19.254498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805923, 0.088506, -0.585368,
		0.475472, 0.685868, -0.550919,
		0.352726, -0.722324, -0.594838,
		34.638447, 31.379881, 19.076046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448818, 32.230885, 18.839310>,  <34.391541, 31.885508, 19.492434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448818, 32.230885, 18.839310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.439720, 31.837023, 18.770088>,  <34.434261, 31.600706, 18.728556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.439720, 31.837023, 18.770088>,  <34.448818, 32.230885, 18.839310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439720, 31.837023, 18.770088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823782, 0.116539, -0.554798,
		0.566450, 0.129937, -0.813788,
		-0.022749, -0.984650, -0.173053,
		34.432896, 31.541628, 18.718172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221695, 32.195415, 18.164072>,  <34.448818, 32.230885, 18.839310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221695, 32.195415, 18.164072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164181, 31.819237, 18.287291>,  <34.129673, 31.593531, 18.361221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164181, 31.819237, 18.287291>,  <34.221695, 32.195415, 18.164072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164181, 31.819237, 18.287291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760246, -0.094299, -0.642755,
		0.633523, -0.326609, -0.701409,
		-0.143787, -0.940444, 0.308044,
		34.121044, 31.537104, 18.379704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267544, 31.739428, 17.650848>,  <34.221695, 32.195415, 18.164072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267544, 31.739428, 17.650848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041092, 31.535561, 17.909998>,  <33.905220, 31.413240, 18.065489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041092, 31.535561, 17.909998>,  <34.267544, 31.739428, 17.650848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041092, 31.535561, 17.909998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627412, -0.243354, -0.739684,
		0.534656, -0.825238, -0.182002,
		-0.566125, -0.509667, 0.647875,
		33.871254, 31.382660, 18.104361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866550, 31.348604, 17.129457>,  <34.267544, 31.739428, 17.650848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866550, 31.348604, 17.129457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689064, 31.304882, 17.485249>,  <33.582573, 31.278648, 17.698723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.689064, 31.304882, 17.485249>,  <33.866550, 31.348604, 17.129457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689064, 31.304882, 17.485249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804887, -0.387812, -0.449176,
		0.394049, -0.915234, 0.084098,
		-0.443715, -0.109308, 0.889477,
		33.555950, 31.272089, 17.752092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485237, 30.714703, 17.109961>,  <33.866550, 31.348604, 17.129457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485237, 30.714703, 17.109961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.293003, 30.910805, 17.400806>,  <33.177662, 31.028465, 17.575314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.293003, 30.910805, 17.400806>,  <33.485237, 30.714703, 17.109961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293003, 30.910805, 17.400806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873707, -0.196427, -0.445031,
		-0.075353, -0.849158, 0.522736,
		-0.480581, 0.490253, 0.727114,
		33.148830, 31.057880, 17.618940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920662, 30.305183, 17.200382>,  <33.485237, 30.714703, 17.109961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920662, 30.305183, 17.200382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823856, 30.666641, 17.341719>,  <32.765774, 30.883516, 17.426521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.823856, 30.666641, 17.341719>,  <32.920662, 30.305183, 17.200382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823856, 30.666641, 17.341719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916675, -0.093587, -0.388522,
		-0.318018, -0.417927, 0.851000,
		-0.242016, 0.903647, 0.353341,
		32.751251, 30.937735, 17.447721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054775, 30.290001, 17.312336>,  <32.920662, 30.305183, 17.200382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054775, 30.290001, 17.312336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176044, 30.669271, 17.274279>,  <32.248806, 30.896833, 17.251444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176044, 30.669271, 17.274279>,  <32.054775, 30.290001, 17.312336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176044, 30.669271, 17.274279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877388, 0.238780, -0.416141,
		-0.371856, 0.209640, 0.904309,
		0.303171, 0.948175, -0.095144,
		32.266994, 30.953724, 17.245735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721748, 30.129797, 18.008097>,  <32.054775, 30.290001, 17.312336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721748, 30.129797, 18.008097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627214, 29.741438, 18.023621>,  <31.570494, 29.508423, 18.032936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627214, 29.741438, 18.023621>,  <31.721748, 30.129797, 18.008097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627214, 29.741438, 18.023621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879193, -0.196663, 0.433985,
		-0.413722, 0.136689, 0.900084,
		-0.236335, -0.970896, 0.038812,
		31.556314, 29.450169, 18.035265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922163, 29.862162, 18.722973>,  <31.721748, 30.129797, 18.008097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922163, 29.862162, 18.722973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895227, 29.516438, 18.523602>,  <31.879066, 29.309002, 18.403978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.895227, 29.516438, 18.523602>,  <31.922163, 29.862162, 18.722973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895227, 29.516438, 18.523602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794865, -0.348414, 0.496788,
		-0.603039, -0.362731, 0.710472,
		-0.067338, -0.864311, -0.498429,
		31.875027, 29.257145, 18.374073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927742, 29.294851, 19.264408>,  <31.922163, 29.862162, 18.722973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927742, 29.294851, 19.264408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050934, 29.162113, 18.907751>,  <32.124851, 29.082470, 18.693756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050934, 29.162113, 18.907751>,  <31.927742, 29.294851, 19.264408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050934, 29.162113, 18.907751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691454, -0.565658, 0.449358,
		-0.653482, -0.754924, 0.055245,
		0.307981, -0.331847, -0.891642,
		32.143330, 29.062559, 18.640259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846970, 28.641285, 19.347599>,  <31.927742, 29.294851, 19.264408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846970, 28.641285, 19.347599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110512, 28.689856, 19.050636>,  <32.268635, 28.718998, 18.872459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.110512, 28.689856, 19.050636>,  <31.846970, 28.641285, 19.347599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110512, 28.689856, 19.050636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687527, -0.497732, 0.528744,
		-0.305316, -0.858789, -0.411415,
		0.658854, 0.121425, -0.742407,
		32.308167, 28.726282, 18.827913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279110, 27.984631, 19.326609>,  <31.846970, 28.641285, 19.347599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279110, 27.984631, 19.326609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500240, 28.262789, 19.142952>,  <32.632919, 28.429684, 19.032759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500240, 28.262789, 19.142952>,  <32.279110, 27.984631, 19.326609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500240, 28.262789, 19.142952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831972, -0.429531, 0.351178,
		0.046994, -0.576131, -0.816005,
		0.552824, 0.695397, -0.459139,
		32.666088, 28.471407, 19.005211>
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
