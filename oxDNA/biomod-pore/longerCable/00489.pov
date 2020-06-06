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
	<24.180349, 35.201500, 35.109608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251972, 34.808395, 35.128006>,  <24.294947, 34.572533, 35.139046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251972, 34.808395, 35.128006>,  <24.180349, 35.201500, 35.109608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251972, 34.808395, 35.128006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884136, 0.181246, 0.430643,
		-0.431558, -0.036440, 0.901349,
		0.179058, -0.982762, 0.046000,
		24.305689, 34.513565, 35.141808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494900, 34.992744, 35.784351>,  <24.180349, 35.201500, 35.109608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494900, 34.992744, 35.784351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611685, 34.723747, 35.512318>,  <24.681757, 34.562351, 35.349098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.611685, 34.723747, 35.512318>,  <24.494900, 34.992744, 35.784351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.611685, 34.723747, 35.512318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937118, 0.058974, 0.343994,
		-0.191224, -0.737754, 0.647419,
		0.291964, -0.672489, -0.680085,
		24.699274, 34.521999, 35.308292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810871, 34.495354, 36.097324>,  <24.494900, 34.992744, 35.784351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810871, 34.495354, 36.097324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957520, 34.524033, 35.726284>,  <25.045509, 34.541241, 35.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957520, 34.524033, 35.726284>,  <24.810871, 34.495354, 36.097324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957520, 34.524033, 35.726284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896953, 0.237576, 0.372870,
		0.247111, -0.968719, 0.022789,
		0.366621, 0.071699, -0.927604,
		25.067507, 34.545540, 35.448002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488329, 34.630894, 36.157135>,  <24.810871, 34.495354, 36.097324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488329, 34.630894, 36.157135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561886, 34.601803, 35.765034>,  <25.606020, 34.584351, 35.529774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.561886, 34.601803, 35.765034>,  <25.488329, 34.630894, 36.157135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.561886, 34.601803, 35.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943774, 0.291791, 0.155400,
		0.274728, -0.953713, 0.122292,
		0.183890, -0.072723, -0.980253,
		25.617052, 34.579987, 35.470959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946585, 34.088669, 35.875832>,  <25.488329, 34.630894, 36.157135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946585, 34.088669, 35.875832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995985, 34.413239, 35.647327>,  <26.025625, 34.607979, 35.510223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995985, 34.413239, 35.647327>,  <25.946585, 34.088669, 35.875832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995985, 34.413239, 35.647327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929961, 0.106253, 0.351969,
		0.346294, -0.574719, -0.741471,
		0.123500, 0.811424, -0.571261,
		26.033035, 34.656666, 35.475948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.583227, 34.026127, 35.626183>,  <25.946585, 34.088669, 35.875832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.583227, 34.026127, 35.626183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491936, 34.413715, 35.588219>,  <26.437160, 34.646267, 35.565441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491936, 34.413715, 35.588219>,  <26.583227, 34.026127, 35.626183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491936, 34.413715, 35.588219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874982, 0.246884, 0.416479,
		0.426988, 0.012006, -0.904177,
		-0.228227, 0.968971, -0.094912,
		26.423468, 34.704407, 35.559746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153641, 34.317802, 35.305531>,  <26.583227, 34.026127, 35.626183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153641, 34.317802, 35.305531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960634, 34.598755, 35.514851>,  <26.844830, 34.767326, 35.640442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960634, 34.598755, 35.514851>,  <27.153641, 34.317802, 35.305531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960634, 34.598755, 35.514851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844171, 0.213606, 0.491678,
		0.233563, 0.678998, -0.695995,
		-0.482517, 0.702377, 0.523301,
		26.815880, 34.809467, 35.671841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.476353, 34.925682, 35.171314>,  <27.153641, 34.317802, 35.305531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.476353, 34.925682, 35.171314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281397, 34.921635, 35.520565>,  <27.164423, 34.919205, 35.730114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281397, 34.921635, 35.520565>,  <27.476353, 34.925682, 35.171314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281397, 34.921635, 35.520565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820809, 0.335793, 0.462078,
		-0.297866, 0.941881, -0.155355,
		-0.487390, -0.010120, 0.873126,
		27.135180, 34.918598, 35.782501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704378, 35.547436, 35.421436>,  <27.476353, 34.925682, 35.171314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704378, 35.547436, 35.421436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564438, 35.343346, 35.735703>,  <27.480474, 35.220890, 35.924263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564438, 35.343346, 35.735703>,  <27.704378, 35.547436, 35.421436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564438, 35.343346, 35.735703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776761, 0.310836, 0.547744,
		-0.523686, 0.801906, 0.287576,
		-0.349850, -0.510224, 0.785669,
		27.459482, 35.190277, 35.971405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864563, 35.970821, 35.992825>,  <27.704378, 35.547436, 35.421436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864563, 35.970821, 35.992825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763943, 35.622757, 36.162312>,  <27.703571, 35.413918, 36.264004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.763943, 35.622757, 36.162312>,  <27.864563, 35.970821, 35.992825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763943, 35.622757, 36.162312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769157, 0.086004, 0.633246,
		-0.587469, 0.485200, 0.647658,
		-0.251550, -0.870163, 0.423720,
		27.688478, 35.361710, 36.289429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931959, 36.119141, 36.759117>,  <27.864563, 35.970821, 35.992825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931959, 36.119141, 36.759117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915968, 35.720947, 36.724659>,  <27.906372, 35.482033, 36.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.915968, 35.720947, 36.724659>,  <27.931959, 36.119141, 36.759117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915968, 35.720947, 36.724659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893158, -0.074254, 0.443571,
		-0.447962, -0.059204, 0.892090,
		-0.039980, -0.995480, -0.086141,
		27.903975, 35.422302, 36.698818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073360, 35.783337, 37.380478>,  <27.931959, 36.119141, 36.759117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073360, 35.783337, 37.380478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182169, 35.540459, 37.081863>,  <28.247454, 35.394733, 36.902695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182169, 35.540459, 37.081863>,  <28.073360, 35.783337, 37.380478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182169, 35.540459, 37.081863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901224, -0.111215, 0.418840,
		-0.337343, -0.786733, 0.516963,
		0.272021, -0.607192, -0.746540,
		28.263775, 35.358299, 36.857903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.693203, 35.542183, 37.652611>,  <28.073360, 35.783337, 37.380478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.693203, 35.542183, 37.652611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672033, 35.381329, 37.286991>,  <28.659332, 35.284817, 37.067619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672033, 35.381329, 37.286991>,  <28.693203, 35.542183, 37.652611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672033, 35.381329, 37.286991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967412, -0.247613, 0.052924,
		-0.247613, -0.881460, 0.402139,
		-0.052924, -0.402139, -0.914048,
		28.656157, 35.260689, 37.012775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630404, 34.781116, 37.592056>,  <28.693203, 35.542183, 37.652611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630404, 34.781116, 37.592056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813396, 34.942097, 37.274883>,  <28.923193, 35.038685, 37.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813396, 34.942097, 37.274883>,  <28.630404, 34.781116, 37.592056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813396, 34.942097, 37.274883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853709, -0.448261, 0.265035,
		-0.248778, -0.798183, -0.548648,
		0.457483, 0.402450, -0.792933,
		28.950642, 35.062832, 37.037003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750483, 34.316616, 36.916271>,  <28.630404, 34.781116, 37.592056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750483, 34.316616, 36.916271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026737, 34.594574, 36.996414>,  <29.192490, 34.761349, 37.044502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026737, 34.594574, 36.996414>,  <28.750483, 34.316616, 36.916271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026737, 34.594574, 36.996414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670534, -0.719067, 0.182556,
		0.270929, 0.008269, -0.962564,
		0.690638, 0.694891, 0.200361,
		29.233929, 34.803040, 37.056522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563652, 34.336071, 36.231178>,  <28.750483, 34.316616, 36.916271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563652, 34.336071, 36.231178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420300, 34.604897, 36.490376>,  <28.334288, 34.766193, 36.645893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420300, 34.604897, 36.490376>,  <28.563652, 34.336071, 36.231178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420300, 34.604897, 36.490376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924935, -0.161381, -0.344169,
		-0.126729, -0.722696, 0.679449,
		-0.358380, 0.672062, 0.647995,
		28.312786, 34.806515, 36.684772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957329, 34.115639, 36.447498>,  <28.563652, 34.336071, 36.231178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957329, 34.115639, 36.447498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923767, 34.503918, 36.537563>,  <27.903629, 34.736885, 36.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923767, 34.503918, 36.537563>,  <27.957329, 34.115639, 36.447498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923767, 34.503918, 36.537563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956232, -0.014871, -0.292231,
		-0.280321, -0.239827, 0.929464,
		-0.083907, 0.970702, 0.225162,
		27.898596, 34.795128, 36.605110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368265, 34.256523, 36.899899>,  <27.957329, 34.115639, 36.447498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368265, 34.256523, 36.899899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461800, 34.599571, 36.716682>,  <27.517920, 34.805401, 36.606754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461800, 34.599571, 36.716682>,  <27.368265, 34.256523, 36.899899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461800, 34.599571, 36.716682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930112, 0.060087, -0.362328,
		-0.283219, 0.510755, 0.811737,
		0.233836, 0.857624, -0.458041,
		27.531950, 34.856857, 36.579269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784935, 34.583164, 36.966351>,  <27.368265, 34.256523, 36.899899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784935, 34.583164, 36.966351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984610, 34.783356, 36.683411>,  <27.104414, 34.903469, 36.513649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984610, 34.783356, 36.683411>,  <26.784935, 34.583164, 36.966351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984610, 34.783356, 36.683411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845034, 0.100620, -0.525160,
		-0.191656, 0.859884, 0.473147,
		0.499184, 0.500475, -0.707347,
		27.134365, 34.933498, 36.471207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465818, 35.250893, 36.875343>,  <26.784935, 34.583164, 36.966351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465818, 35.250893, 36.875343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654163, 35.145924, 36.538433>,  <26.767170, 35.082943, 36.336288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654163, 35.145924, 36.538433>,  <26.465818, 35.250893, 36.875343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654163, 35.145924, 36.538433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870431, 0.017280, -0.491987,
		0.143664, 0.964798, -0.220285,
		0.470861, -0.262424, -0.842273,
		26.795422, 35.067196, 36.285751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873667, 35.630596, 37.085533>,  <26.465818, 35.250893, 36.875343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873667, 35.630596, 37.085533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153406, 35.806587, 37.310860>,  <26.321249, 35.912182, 37.446056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153406, 35.806587, 37.310860>,  <25.873667, 35.630596, 37.085533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153406, 35.806587, 37.310860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714740, 0.421971, 0.557752,
		0.007696, -0.792690, 0.609576,
		0.699348, 0.439981, 0.563320,
		26.363211, 35.938580, 37.479855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129690, 35.647339, 36.346317>,  <25.873667, 35.630596, 37.085533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129690, 35.647339, 36.346317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360691, 35.385914, 36.150623>,  <26.499292, 35.229057, 36.033207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360691, 35.385914, 36.150623>,  <26.129690, 35.647339, 36.346317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360691, 35.385914, 36.150623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684167, -0.060485, -0.726813,
		0.445426, 0.754453, -0.482075,
		0.577504, -0.653561, -0.489230,
		26.533943, 35.189846, 36.003853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192627, 35.929672, 35.676636>,  <26.129690, 35.647339, 36.346317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192627, 35.929672, 35.676636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243013, 35.533669, 35.651310>,  <26.273245, 35.296066, 35.636116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243013, 35.533669, 35.651310>,  <26.192627, 35.929672, 35.676636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243013, 35.533669, 35.651310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720217, -0.047373, -0.692129,
		0.682217, 0.132785, -0.718991,
		0.125965, -0.990012, -0.063315,
		26.280804, 35.236664, 35.632317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139914, 35.769718, 34.980713>,  <26.192627, 35.929672, 35.676636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139914, 35.769718, 34.980713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057436, 35.422035, 35.160477>,  <26.007950, 35.213425, 35.268333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.057436, 35.422035, 35.160477>,  <26.139914, 35.769718, 34.980713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.057436, 35.422035, 35.160477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858299, -0.059896, -0.509642,
		0.469900, -0.490814, -0.733686,
		-0.206195, -0.869203, 0.449410,
		25.995577, 35.161274, 35.295300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804546, 35.315193, 34.607010>,  <26.139914, 35.769718, 34.980713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804546, 35.315193, 34.607010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665375, 35.082451, 34.901054>,  <25.581873, 34.942806, 35.077480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665375, 35.082451, 34.901054>,  <25.804546, 35.315193, 34.607010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665375, 35.082451, 34.901054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813270, -0.202771, -0.545413,
		0.466411, -0.787611, -0.402654,
		-0.347927, -0.581853, 0.735115,
		25.560997, 34.907894, 35.121590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479406, 34.832661, 34.201363>,  <25.804546, 35.315193, 34.607010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479406, 34.832661, 34.201363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359695, 34.743904, 34.572567>,  <25.287868, 34.690651, 34.795288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.359695, 34.743904, 34.572567>,  <25.479406, 34.832661, 34.201363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359695, 34.743904, 34.572567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907478, -0.234318, -0.348682,
		0.294819, -0.946498, -0.131238,
		-0.299275, -0.221894, 0.928007,
		25.269913, 34.677338, 34.850967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738701, 34.133171, 33.801991>,  <25.479406, 34.832661, 34.201363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738701, 34.133171, 33.801991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024950, 34.119164, 33.522945>,  <26.196699, 34.110760, 33.355518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024950, 34.119164, 33.522945>,  <25.738701, 34.133171, 33.801991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024950, 34.119164, 33.522945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082104, -0.987601, 0.133803,
		-0.693646, -0.153029, -0.703873,
		0.715621, -0.035021, -0.697610,
		26.239637, 34.108658, 33.313663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621326, 33.677010, 33.150269>,  <25.738701, 34.133171, 33.801991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621326, 33.677010, 33.150269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016870, 33.695450, 33.206879>,  <26.254196, 33.706512, 33.240845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016870, 33.695450, 33.206879>,  <25.621326, 33.677010, 33.150269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016870, 33.695450, 33.206879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022801, -0.986521, 0.162042,
		0.147090, -0.157010, -0.976582,
		0.988860, 0.046102, 0.141528,
		26.313528, 33.709282, 33.249336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994589, 33.186272, 32.662441>,  <25.621326, 33.677010, 33.150269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994589, 33.186272, 32.662441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242886, 33.247311, 32.970051>,  <26.391863, 33.283936, 33.154617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242886, 33.247311, 32.970051>,  <25.994589, 33.186272, 32.662441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242886, 33.247311, 32.970051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113828, -0.988024, 0.104173,
		0.775708, 0.022872, -0.630677,
		0.620741, 0.152597, 0.769022,
		26.429108, 33.293091, 33.200756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726713, 33.025318, 32.482456>,  <25.994589, 33.186272, 32.662441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726713, 33.025318, 32.482456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681185, 32.979786, 32.877239>,  <26.653868, 32.952469, 33.114109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681185, 32.979786, 32.877239>,  <26.726713, 33.025318, 32.482456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681185, 32.979786, 32.877239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140927, -0.985220, -0.097373,
		0.983455, 0.128006, 0.128181,
		-0.113822, -0.113826, 0.986959,
		26.647038, 32.945637, 33.173328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330730, 32.704895, 32.832493>,  <26.726713, 33.025318, 32.482456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330730, 32.704895, 32.832493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999275, 32.602901, 33.031830>,  <26.800402, 32.541706, 33.151432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999275, 32.602901, 33.031830>,  <27.330730, 32.704895, 32.832493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999275, 32.602901, 33.031830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166026, -0.962125, -0.216219,
		0.534597, -0.096430, 0.839588,
		-0.828638, -0.254983, 0.498339,
		26.750683, 32.526405, 33.181332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428131, 32.194984, 33.410011>,  <27.330730, 32.704895, 32.832493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428131, 32.194984, 33.410011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051567, 32.157585, 33.280396>,  <26.825628, 32.135147, 33.202625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051567, 32.157585, 33.280396>,  <27.428131, 32.194984, 33.410011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051567, 32.157585, 33.280396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091712, -0.995568, 0.020811,
		-0.324552, -0.010126, 0.945814,
		-0.941411, -0.093497, -0.324042,
		26.769144, 32.129536, 33.183182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286694, 31.858477, 33.909672>,  <27.428131, 32.194984, 33.410011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286694, 31.858477, 33.909672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037081, 31.806973, 33.601383>,  <26.887314, 31.776070, 33.416412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037081, 31.806973, 33.601383>,  <27.286694, 31.858477, 33.909672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037081, 31.806973, 33.601383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165103, -0.985789, 0.031013,
		-0.763758, -0.107895, 0.636422,
		-0.624031, -0.128761, -0.770717,
		26.849871, 31.768345, 33.370167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922026, 31.360273, 34.180092>,  <27.286694, 31.858477, 33.909672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922026, 31.360273, 34.180092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835907, 31.329935, 33.790653>,  <26.784237, 31.311731, 33.556988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835907, 31.329935, 33.790653>,  <26.922026, 31.360273, 34.180092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835907, 31.329935, 33.790653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003962, -0.997039, 0.076797,
		-0.976541, 0.012676, 0.214958,
		-0.215295, -0.075847, -0.973599,
		26.771318, 31.307180, 33.498573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375872, 30.882128, 34.148209>,  <26.922026, 31.360273, 34.180092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375872, 30.882128, 34.148209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555670, 30.876638, 33.790939>,  <26.663548, 30.873344, 33.576576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555670, 30.876638, 33.790939>,  <26.375872, 30.882128, 34.148209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555670, 30.876638, 33.790939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006744, -0.999906, 0.011971,
		-0.893258, 0.000643, -0.449544,
		0.449494, -0.013725, -0.893178,
		26.690517, 30.872520, 33.522987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305096, 30.295801, 33.533424>,  <26.375872, 30.882128, 34.148209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305096, 30.295801, 33.533424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394850, 30.507383, 33.206043>,  <26.448702, 30.634333, 33.009617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.394850, 30.507383, 33.206043>,  <26.305096, 30.295801, 33.533424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.394850, 30.507383, 33.206043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291969, -0.837774, -0.461398,
		-0.929735, -0.135432, -0.342420,
		0.224383, 0.528954, -0.818450,
		26.462164, 30.666069, 32.960506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959593, 30.072985, 32.903992>,  <26.305096, 30.295801, 33.533424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959593, 30.072985, 32.903992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330156, 30.207096, 32.835464>,  <26.552494, 30.287563, 32.794346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.330156, 30.207096, 32.835464>,  <25.959593, 30.072985, 32.903992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330156, 30.207096, 32.835464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281985, -0.919351, -0.274368,
		-0.249493, 0.205868, -0.946241,
		0.926411, 0.335279, -0.171320,
		26.608080, 30.307680, 32.784069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270258, 29.833752, 32.193504>,  <25.959593, 30.072985, 32.903992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270258, 29.833752, 32.193504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578478, 29.923588, 32.432106>,  <26.763411, 29.977489, 32.575268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578478, 29.923588, 32.432106>,  <26.270258, 29.833752, 32.193504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578478, 29.923588, 32.432106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431429, -0.872666, -0.228743,
		0.469172, 0.433606, -0.769327,
		0.770549, 0.224590, 0.596501,
		26.809643, 29.990965, 32.611057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645639, 29.293432, 32.041660>,  <26.270258, 29.833752, 32.193504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645639, 29.293432, 32.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852242, 29.454285, 32.344055>,  <26.976202, 29.550797, 32.525490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852242, 29.454285, 32.344055>,  <26.645639, 29.293432, 32.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852242, 29.454285, 32.344055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620257, -0.784372, -0.006543,
		0.590342, 0.472284, -0.654557,
		0.516506, 0.402130, 0.755985,
		27.007193, 29.574924, 32.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949423, 28.569029, 32.159763>,  <26.645639, 29.293432, 32.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949423, 28.569029, 32.159763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316967, 28.572809, 32.317551>,  <27.537495, 28.575077, 32.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316967, 28.572809, 32.317551>,  <26.949423, 28.569029, 32.159763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316967, 28.572809, 32.317551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269086, 0.746188, 0.608931,
		-0.288591, -0.665669, 0.688186,
		0.918862, 0.009449, 0.394466,
		27.592627, 28.575644, 32.435890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914671, 28.553234, 32.758438>,  <26.949423, 28.569029, 32.159763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914671, 28.553234, 32.758438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261189, 28.738182, 32.682808>,  <27.469099, 28.849152, 32.637432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261189, 28.738182, 32.682808>,  <26.914671, 28.553234, 32.758438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261189, 28.738182, 32.682808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297268, 0.781353, 0.548744,
		0.401455, -0.419168, 0.814329,
		0.866294, 0.462370, -0.189073,
		27.521076, 28.876894, 32.626087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991158, 29.080341, 33.337013>,  <26.914671, 28.553234, 32.758438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991158, 29.080341, 33.337013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304399, 29.201387, 33.119694>,  <27.492346, 29.274015, 32.989304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304399, 29.201387, 33.119694>,  <26.991158, 29.080341, 33.337013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304399, 29.201387, 33.119694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168264, 0.944140, 0.283348,
		0.598691, -0.130475, 0.790282,
		0.783107, 0.302614, -0.543294,
		27.539331, 29.292171, 32.956707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377491, 29.597836, 33.634449>,  <26.991158, 29.080341, 33.337013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377491, 29.597836, 33.634449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374878, 29.651993, 33.238140>,  <27.373310, 29.684486, 33.000355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374878, 29.651993, 33.238140>,  <27.377491, 29.597836, 33.634449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374878, 29.651993, 33.238140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255359, 0.957716, 0.132560,
		0.966824, 0.253868, 0.028316,
		-0.006534, 0.135393, -0.990770,
		27.372917, 29.692612, 32.940910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788025, 30.224949, 33.446785>,  <27.377491, 29.597836, 33.634449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788025, 30.224949, 33.446785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485889, 30.144222, 33.197392>,  <27.304607, 30.095787, 33.047756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485889, 30.144222, 33.197392>,  <27.788025, 30.224949, 33.446785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485889, 30.144222, 33.197392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348679, 0.929320, 0.121605,
		0.554874, 0.309249, -0.772321,
		-0.755339, -0.201817, -0.623484,
		27.259287, 30.083677, 33.010345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746189, 30.778994, 32.806095>,  <27.788025, 30.224949, 33.446785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746189, 30.778994, 32.806095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385145, 30.621523, 32.875744>,  <27.168520, 30.527040, 32.917534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385145, 30.621523, 32.875744>,  <27.746189, 30.778994, 32.806095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385145, 30.621523, 32.875744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355819, 0.909979, 0.212911,
		-0.242261, 0.130221, -0.961432,
		-0.902609, -0.393676, 0.174117,
		27.114363, 30.503420, 32.927979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218561, 31.092068, 32.353752>,  <27.746189, 30.778994, 32.806095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218561, 31.092068, 32.353752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016066, 30.978462, 32.679466>,  <26.894569, 30.910299, 32.874893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016066, 30.978462, 32.679466>,  <27.218561, 31.092068, 32.353752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016066, 30.978462, 32.679466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432126, 0.900665, 0.045493,
		-0.746319, -0.328844, -0.578680,
		-0.506237, -0.284015, 0.814285,
		26.864195, 30.893257, 32.923752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432039, 31.159439, 32.295887>,  <27.218561, 31.092068, 32.353752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432039, 31.159439, 32.295887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559393, 31.208651, 32.671864>,  <26.635805, 31.238176, 32.897449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559393, 31.208651, 32.671864>,  <26.432039, 31.159439, 32.295887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559393, 31.208651, 32.671864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277102, 0.960313, -0.031831,
		-0.906558, -0.250326, 0.339838,
		0.318383, 0.123026, 0.939945,
		26.654907, 31.245558, 32.953846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834946, 31.571423, 32.485195>,  <26.432039, 31.159439, 32.295887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834946, 31.571423, 32.485195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122187, 31.640955, 32.754745>,  <26.294531, 31.682674, 32.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122187, 31.640955, 32.754745>,  <25.834946, 31.571423, 32.485195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122187, 31.640955, 32.754745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081108, 0.982609, -0.167036,
		-0.691194, 0.065293, 0.719714,
		0.718104, 0.173829, 0.673877,
		26.337618, 31.693104, 32.956909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531679, 31.989103, 32.889130>,  <25.834946, 31.571423, 32.485195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531679, 31.989103, 32.889130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919703, 32.030197, 32.977158>,  <26.152517, 32.054855, 33.029976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919703, 32.030197, 32.977158>,  <25.531679, 31.989103, 32.889130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919703, 32.030197, 32.977158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100303, 0.994709, -0.022229,
		-0.221192, -0.000510, 0.975230,
		0.970058, 0.102735, 0.220073,
		26.210720, 32.061016, 33.043179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571646, 32.429543, 33.492332>,  <25.531679, 31.989103, 32.889130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571646, 32.429543, 33.492332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904257, 32.466496, 33.273232>,  <26.103823, 32.488667, 33.141773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.904257, 32.466496, 33.273232>,  <25.571646, 32.429543, 33.492332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.904257, 32.466496, 33.273232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082186, 0.995682, 0.043159,
		0.549372, 0.009129, 0.835528,
		0.831526, 0.092379, -0.547750,
		26.153715, 32.494209, 33.108906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141975, 32.132526, 33.758022>,  <25.571646, 32.429543, 33.492332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141975, 32.132526, 33.758022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498877, 32.232796, 33.908245>,  <26.713018, 32.292957, 33.998379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498877, 32.232796, 33.908245>,  <26.141975, 32.132526, 33.758022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498877, 32.232796, 33.908245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122237, 0.934785, -0.333521,
		-0.434673, 0.251678, 0.864707,
		0.892254, 0.250672, 0.375561,
		26.766552, 32.307999, 34.020912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140255, 32.819000, 34.170139>,  <26.141975, 32.132526, 33.758022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140255, 32.819000, 34.170139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508801, 32.754448, 34.028690>,  <26.729927, 32.715717, 33.943821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508801, 32.754448, 34.028690>,  <26.140255, 32.819000, 34.170139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508801, 32.754448, 34.028690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045226, 0.948074, -0.314819,
		0.386065, 0.274070, 0.880817,
		0.921362, -0.161377, -0.353623,
		26.785210, 32.706036, 33.922604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.704445, 33.301407, 34.376293>,  <26.140255, 32.819000, 34.170139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.704445, 33.301407, 34.376293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776224, 33.164280, 34.007450>,  <26.819292, 33.082005, 33.786144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.776224, 33.164280, 34.007450>,  <26.704445, 33.301407, 34.376293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776224, 33.164280, 34.007450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056969, 0.932124, -0.357629,
		0.982117, 0.116707, 0.147738,
		0.179448, -0.342817, -0.922104,
		26.830059, 33.061436, 33.730820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363863, 33.580421, 34.011429>,  <26.704445, 33.301407, 34.376293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363863, 33.580421, 34.011429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075315, 33.496933, 33.747288>,  <26.902187, 33.446838, 33.588802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075315, 33.496933, 33.747288>,  <27.363863, 33.580421, 34.011429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075315, 33.496933, 33.747288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042659, 0.938300, -0.343181,
		0.691238, -0.275729, -0.667955,
		-0.721367, -0.208725, -0.660351,
		26.858906, 33.434315, 33.549183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582775, 33.866402, 33.296879>,  <27.363863, 33.580421, 34.011429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582775, 33.866402, 33.296879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187397, 33.837421, 33.350140>,  <26.950171, 33.820034, 33.382095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187397, 33.837421, 33.350140>,  <27.582775, 33.866402, 33.296879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187397, 33.837421, 33.350140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127255, 0.873875, -0.469200,
		-0.082365, -0.480723, -0.872996,
		-0.988445, -0.072447, 0.133151,
		26.890863, 33.815689, 33.390083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087547, 33.982590, 32.689514>,  <27.582775, 33.866402, 33.296879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087547, 33.982590, 32.689514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920908, 34.138359, 33.018101>,  <26.820925, 34.231819, 33.215252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920908, 34.138359, 33.018101>,  <27.087547, 33.982590, 32.689514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920908, 34.138359, 33.018101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002248, 0.903164, -0.429291,
		-0.909089, -0.180687, -0.375380,
		-0.416597, 0.389420, 0.821462,
		26.795929, 34.255184, 33.264538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472416, 34.486774, 32.566814>,  <27.087547, 33.982590, 32.689514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472416, 34.486774, 32.566814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661518, 34.570591, 32.909180>,  <26.774981, 34.620880, 33.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661518, 34.570591, 32.909180>,  <26.472416, 34.486774, 32.566814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661518, 34.570591, 32.909180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041259, 0.964986, -0.259035,
		-0.880226, 0.157775, 0.447558,
		0.472757, 0.209544, 0.855916,
		26.803345, 34.633453, 33.165955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.147791, 34.982452, 32.988708>,  <26.472416, 34.486774, 32.566814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.147791, 34.982452, 32.988708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543074, 34.993759, 33.048908>,  <26.780243, 35.000546, 33.085030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543074, 34.993759, 33.048908>,  <26.147791, 34.982452, 32.988708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543074, 34.993759, 33.048908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012783, 0.964148, -0.265057,
		-0.152596, 0.263855, 0.952415,
		0.988206, 0.028272, 0.150498,
		26.839535, 35.002239, 33.094059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296410, 35.483967, 33.423759>,  <26.147791, 34.982452, 32.988708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296410, 35.483967, 33.423759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597490, 35.401623, 33.173618>,  <26.778139, 35.352219, 33.023533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597490, 35.401623, 33.173618>,  <26.296410, 35.483967, 33.423759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597490, 35.401623, 33.173618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001735, 0.949235, -0.314563,
		0.658362, 0.237856, 0.714132,
		0.752700, -0.205857, -0.625353,
		26.823299, 35.339867, 32.986012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957867, 35.783043, 33.585857>,  <26.296410, 35.483967, 33.423759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957867, 35.783043, 33.585857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879686, 35.732544, 33.196835>,  <26.832779, 35.702244, 32.963421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879686, 35.732544, 33.196835>,  <26.957867, 35.783043, 33.585857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879686, 35.732544, 33.196835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183929, 0.978802, -0.090099,
		0.963312, 0.161270, -0.214529,
		-0.195451, -0.126252, -0.972553,
		26.821051, 35.694668, 32.905067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277782, 36.353809, 33.142826>,  <26.957867, 35.783043, 33.585857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277782, 36.353809, 33.142826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931198, 36.188896, 33.030209>,  <26.723248, 36.089947, 32.962639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931198, 36.188896, 33.030209>,  <27.277782, 36.353809, 33.142826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931198, 36.188896, 33.030209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367549, 0.908435, -0.199132,
		0.337861, -0.069060, -0.938659,
		-0.866463, -0.412282, -0.281542,
		26.671259, 36.065212, 32.945747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649759, 36.879143, 32.798855>,  <27.277782, 36.353809, 33.142826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649759, 36.879143, 32.798855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022411, 36.945049, 32.928417>,  <28.246002, 36.984592, 33.006153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.022411, 36.945049, 32.928417>,  <27.649759, 36.879143, 32.798855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022411, 36.945049, 32.928417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295477, 0.175440, -0.939103,
		-0.211558, 0.970604, 0.114761,
		0.931631, 0.164765, 0.323907,
		28.301901, 36.994480, 33.025589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889132, 37.490047, 32.664139>,  <27.649759, 36.879143, 32.798855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889132, 37.490047, 32.664139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202909, 37.243378, 32.690556>,  <28.391176, 37.095375, 32.706406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202909, 37.243378, 32.690556>,  <27.889132, 37.490047, 32.664139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202909, 37.243378, 32.690556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333466, 0.329589, -0.883273,
		0.522924, 0.714902, 0.464183,
		0.784443, -0.616674, 0.066046,
		28.438242, 37.058376, 32.710369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566347, 37.821766, 32.553749>,  <27.889132, 37.490047, 32.664139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566347, 37.821766, 32.553749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603313, 37.437374, 32.449463>,  <28.625494, 37.206738, 32.386890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603313, 37.437374, 32.449463>,  <28.566347, 37.821766, 32.553749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603313, 37.437374, 32.449463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241996, 0.275663, -0.930294,
		0.965866, 0.022881, 0.258029,
		0.092415, -0.960982, -0.260716,
		28.631039, 37.149078, 32.371246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224394, 37.866119, 32.197910>,  <28.566347, 37.821766, 32.553749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224394, 37.866119, 32.197910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965780, 37.581242, 32.088528>,  <28.810612, 37.410316, 32.022900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965780, 37.581242, 32.088528>,  <29.224394, 37.866119, 32.197910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965780, 37.581242, 32.088528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196999, 0.190428, -0.961732,
		0.737013, -0.675660, 0.017184,
		-0.646532, -0.712194, -0.273452,
		28.771820, 37.367584, 32.006493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524546, 37.344093, 31.781244>,  <29.224394, 37.866119, 32.197910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524546, 37.344093, 31.781244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133459, 37.359043, 31.698614>,  <28.898808, 37.368011, 31.649036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.133459, 37.359043, 31.698614>,  <29.524546, 37.344093, 31.781244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133459, 37.359043, 31.698614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209927, 0.168357, -0.963113,
		-0.001217, -0.985017, -0.172451,
		-0.977716, 0.037374, -0.206576,
		28.840145, 37.370255, 31.636641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397430, 36.989223, 31.165533>,  <29.524546, 37.344093, 31.781244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397430, 36.989223, 31.165533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082747, 37.234982, 31.189539>,  <28.893936, 37.382435, 31.203943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082747, 37.234982, 31.189539>,  <29.397430, 36.989223, 31.165533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082747, 37.234982, 31.189539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095573, 0.217265, -0.971422,
		-0.609878, -0.758493, -0.229645,
		-0.786711, 0.614397, 0.060014,
		28.846733, 37.419300, 31.207542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728470, 36.840740, 30.864315>,  <29.397430, 36.989223, 31.165533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728470, 36.840740, 30.864315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809198, 37.232162, 30.847826>,  <28.857635, 37.467014, 30.837933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809198, 37.232162, 30.847826>,  <28.728470, 36.840740, 30.864315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809198, 37.232162, 30.847826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006670, -0.043462, -0.999033,
		-0.979400, 0.201350, -0.015299,
		0.201820, 0.978555, -0.041223,
		28.869745, 37.525730, 30.835459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355465, 37.169811, 30.346449>,  <28.728470, 36.840740, 30.864315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355465, 37.169811, 30.346449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641172, 37.445194, 30.396801>,  <28.812597, 37.610424, 30.427013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641172, 37.445194, 30.396801>,  <28.355465, 37.169811, 30.346449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641172, 37.445194, 30.396801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009178, 0.170635, -0.985292,
		-0.699809, 0.704920, 0.115562,
		0.714271, 0.688456, 0.125882,
		28.855453, 37.651730, 30.434566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229300, 37.597729, 29.860741>,  <28.355465, 37.169811, 30.346449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229300, 37.597729, 29.860741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595924, 37.738091, 29.937456>,  <28.815899, 37.822308, 29.983484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.595924, 37.738091, 29.937456>,  <28.229300, 37.597729, 29.860741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595924, 37.738091, 29.937456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123686, 0.207319, -0.970423,
		-0.380284, 0.913174, 0.146619,
		0.916562, 0.350902, 0.191787,
		28.870893, 37.843361, 29.994993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176947, 38.275963, 29.605927>,  <28.229300, 37.597729, 29.860741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176947, 38.275963, 29.605927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567486, 38.191547, 29.624737>,  <28.801809, 38.140900, 29.636023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.567486, 38.191547, 29.624737>,  <28.176947, 38.275963, 29.605927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.567486, 38.191547, 29.624737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119657, 0.346245, -0.930482,
		0.180084, 0.914100, 0.363307,
		0.976346, -0.211037, 0.047025,
		28.860390, 38.128235, 29.638844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518606, 38.864330, 29.318188>,  <28.176947, 38.275963, 29.605927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518606, 38.864330, 29.318188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810030, 38.592644, 29.282726>,  <28.984884, 38.429630, 29.261450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810030, 38.592644, 29.282726>,  <28.518606, 38.864330, 29.318188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810030, 38.592644, 29.282726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241598, 0.375913, -0.894606,
		0.640960, 0.630357, 0.437973,
		0.728561, -0.679220, -0.088652,
		29.028599, 38.388878, 29.256130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071449, 39.203484, 29.113844>,  <28.518606, 38.864330, 29.318188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071449, 39.203484, 29.113844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147602, 38.823425, 29.015068>,  <29.193295, 38.595390, 28.955803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147602, 38.823425, 29.015068>,  <29.071449, 39.203484, 29.113844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147602, 38.823425, 29.015068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360492, 0.301627, -0.882648,
		0.913127, 0.079021, 0.399944,
		0.190381, -0.950146, -0.246937,
		29.204716, 38.538383, 28.940987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653627, 39.238869, 28.827168>,  <29.071449, 39.203484, 29.113844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653627, 39.238869, 28.827168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506866, 38.901077, 28.671097>,  <29.418810, 38.698402, 28.577456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506866, 38.901077, 28.671097>,  <29.653627, 39.238869, 28.827168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506866, 38.901077, 28.671097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392418, 0.239781, -0.887983,
		0.843440, -0.478916, 0.243412,
		-0.366903, -0.844479, -0.390176,
		29.396795, 38.647732, 28.554045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110907, 39.040344, 28.310232>,  <29.653627, 39.238869, 28.827168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110907, 39.040344, 28.310232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773705, 38.837563, 28.238304>,  <29.571383, 38.715893, 28.195148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.773705, 38.837563, 28.238304>,  <30.110907, 39.040344, 28.310232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.773705, 38.837563, 28.238304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010251, 0.319093, -0.947668,
		0.537808, -0.800732, -0.263800,
		-0.843005, -0.506959, -0.179819,
		29.520803, 38.685474, 28.184359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176180, 38.566963, 27.682152>,  <30.110907, 39.040344, 28.310232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176180, 38.566963, 27.682152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792065, 38.674534, 27.711889>,  <29.561596, 38.739075, 27.729731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792065, 38.674534, 27.711889>,  <30.176180, 38.566963, 27.682152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792065, 38.674534, 27.711889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020676, 0.334301, -0.942239,
		-0.278246, -0.903283, -0.326585,
		-0.960287, 0.268927, 0.074342,
		29.503979, 38.755211, 27.734192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053961, 38.487888, 27.009148>,  <30.176180, 38.566963, 27.682152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053961, 38.487888, 27.009148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750353, 38.695206, 27.166758>,  <29.568188, 38.819595, 27.261324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750353, 38.695206, 27.166758>,  <30.053961, 38.487888, 27.009148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750353, 38.695206, 27.166758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123062, 0.480081, -0.868549,
		-0.639330, -0.707737, -0.300609,
		-0.759021, 0.518296, 0.394025,
		29.522646, 38.850693, 27.284966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665442, 38.345673, 26.459703>,  <30.053961, 38.487888, 27.009148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665442, 38.345673, 26.459703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464727, 38.633636, 26.651512>,  <29.344299, 38.806416, 26.766598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464727, 38.633636, 26.651512>,  <29.665442, 38.345673, 26.459703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464727, 38.633636, 26.651512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277275, 0.391241, -0.877524,
		-0.819348, -0.573287, 0.003296,
		-0.501784, 0.719912, 0.479520,
		29.314192, 38.849609, 26.795368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112703, 38.476368, 26.127901>,  <29.665442, 38.345673, 26.459703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112703, 38.476368, 26.127901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119762, 38.817333, 26.336927>,  <29.123999, 39.021912, 26.462343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119762, 38.817333, 26.336927>,  <29.112703, 38.476368, 26.127901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119762, 38.817333, 26.336927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412528, 0.482297, -0.772794,
		-0.910774, -0.201934, 0.360157,
		0.017649, 0.852416, 0.522567,
		29.125057, 39.073059, 26.493698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513969, 38.802788, 25.955765>,  <29.112703, 38.476368, 26.127901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513969, 38.802788, 25.955765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745628, 39.079483, 26.128313>,  <28.884624, 39.245502, 26.231842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745628, 39.079483, 26.128313>,  <28.513969, 38.802788, 25.955765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745628, 39.079483, 26.128313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208279, 0.637136, -0.742076,
		-0.788168, 0.339925, 0.513070,
		0.579147, 0.691743, 0.431371,
		28.919373, 39.287006, 26.257725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089136, 39.406872, 26.054701>,  <28.513969, 38.802788, 25.955765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089136, 39.406872, 26.054701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477814, 39.493736, 26.017506>,  <28.711021, 39.545856, 25.995190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477814, 39.493736, 26.017506>,  <28.089136, 39.406872, 26.054701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477814, 39.493736, 26.017506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205768, 0.584688, -0.784729,
		-0.116048, 0.781651, 0.612825,
		0.971696, 0.217166, -0.092987,
		28.769323, 39.558887, 25.989609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139368, 40.143372, 25.897320>,  <28.089136, 39.406872, 26.054701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139368, 40.143372, 25.897320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480999, 39.967251, 25.786551>,  <28.685978, 39.861580, 25.720089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480999, 39.967251, 25.786551>,  <28.139368, 40.143372, 25.897320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480999, 39.967251, 25.786551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166806, 0.272427, -0.947607,
		0.492676, 0.855521, 0.159228,
		0.854076, -0.440303, -0.276925,
		28.737223, 39.835159, 25.703472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244070, 40.594570, 25.448942>,  <28.139368, 40.143372, 25.897320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244070, 40.594570, 25.448942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488382, 40.287498, 25.371361>,  <28.634970, 40.103256, 25.324812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488382, 40.287498, 25.371361>,  <28.244070, 40.594570, 25.448942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488382, 40.287498, 25.371361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223399, 0.067926, -0.972358,
		0.759630, 0.637228, -0.130011,
		0.610782, -0.767676, -0.193955,
		28.671618, 40.057194, 25.313175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622272, 40.808483, 24.873081>,  <28.244070, 40.594570, 25.448942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622272, 40.808483, 24.873081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657520, 40.410957, 24.900108>,  <28.678669, 40.172443, 24.916325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657520, 40.410957, 24.900108>,  <28.622272, 40.808483, 24.873081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657520, 40.410957, 24.900108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274402, -0.089426, -0.957448,
		0.957569, 0.065828, -0.280585,
		0.088119, -0.993816, 0.067568,
		28.683956, 40.112812, 24.920380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688076, 40.711723, 24.255554>,  <28.622272, 40.808483, 24.873081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688076, 40.711723, 24.255554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663721, 40.326859, 24.361788>,  <28.649107, 40.095940, 24.425528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663721, 40.326859, 24.361788>,  <28.688076, 40.711723, 24.255554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663721, 40.326859, 24.361788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378199, -0.223997, -0.898215,
		0.923720, -0.155134, -0.350251,
		-0.060888, -0.962164, 0.265582,
		28.645454, 40.038208, 24.441462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011042, 40.319458, 23.721651>,  <28.688076, 40.711723, 24.255554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011042, 40.319458, 23.721651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755026, 40.082718, 23.917637>,  <28.601416, 39.940674, 24.035229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755026, 40.082718, 23.917637>,  <29.011042, 40.319458, 23.721651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755026, 40.082718, 23.917637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434783, -0.246790, -0.866059,
		0.633494, -0.767340, -0.099371,
		-0.640038, -0.591848, 0.489966,
		28.563015, 39.905163, 24.064627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067022, 39.599274, 23.401787>,  <29.011042, 40.319458, 23.721651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067022, 39.599274, 23.401787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709549, 39.680756, 23.561703>,  <28.495064, 39.729645, 23.657652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.709549, 39.680756, 23.561703>,  <29.067022, 39.599274, 23.401787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709549, 39.680756, 23.561703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417592, -0.051656, -0.907165,
		-0.164147, -0.977668, 0.131231,
		-0.893685, 0.203709, 0.399788,
		28.441442, 39.741867, 23.681639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681961, 39.352234, 22.909430>,  <29.067022, 39.599274, 23.401787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681961, 39.352234, 22.909430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411848, 39.567108, 23.111588>,  <28.249781, 39.696033, 23.232882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411848, 39.567108, 23.111588>,  <28.681961, 39.352234, 22.909430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411848, 39.567108, 23.111588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620953, -0.044299, -0.782595,
		-0.398013, -0.842298, 0.363483,
		-0.675281, 0.537189, 0.505396,
		28.209265, 39.728264, 23.263206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009016, 39.054218, 22.650997>,  <28.681961, 39.352234, 22.909430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009016, 39.054218, 22.650997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946123, 39.424961, 22.787357>,  <27.908386, 39.647408, 22.869173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946123, 39.424961, 22.787357>,  <28.009016, 39.054218, 22.650997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946123, 39.424961, 22.787357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638311, 0.168014, -0.751219,
		-0.753549, -0.335717, 0.565207,
		-0.157234, 0.926858, 0.340899,
		27.898952, 39.703018, 22.889627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242741, 39.244843, 22.612402>,  <28.009016, 39.054218, 22.650997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242741, 39.244843, 22.612402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437708, 39.593891, 22.624784>,  <27.554688, 39.803318, 22.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437708, 39.593891, 22.624784>,  <27.242741, 39.244843, 22.612402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437708, 39.593891, 22.624784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465632, 0.289754, -0.836199,
		-0.738654, 0.393164, 0.547551,
		0.487418, 0.872619, 0.030958,
		27.583933, 39.855679, 22.634071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784761, 39.805580, 22.467327>,  <27.242741, 39.244843, 22.612402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784761, 39.805580, 22.467327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141499, 39.980473, 22.420940>,  <27.355541, 40.085407, 22.393108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141499, 39.980473, 22.420940>,  <26.784761, 39.805580, 22.467327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141499, 39.980473, 22.420940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332804, 0.460588, -0.822861,
		-0.306364, 0.772457, 0.556283,
		0.891842, 0.437228, -0.115969,
		27.409052, 40.111641, 22.386150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703489, 40.537724, 22.514698>,  <26.784761, 39.805580, 22.467327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703489, 40.537724, 22.514698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021873, 40.444771, 22.291111>,  <27.212904, 40.389000, 22.156960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021873, 40.444771, 22.291111>,  <26.703489, 40.537724, 22.514698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021873, 40.444771, 22.291111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305625, 0.642784, -0.702440,
		0.522532, 0.729949, 0.440608,
		0.795961, -0.232386, -0.558966,
		27.260662, 40.375053, 22.123421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919651, 41.145584, 22.225109>,  <26.703489, 40.537724, 22.514698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919651, 41.145584, 22.225109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087954, 40.877541, 21.980515>,  <27.188934, 40.716713, 21.833757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087954, 40.877541, 21.980515>,  <26.919651, 41.145584, 22.225109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087954, 40.877541, 21.980515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164387, 0.606575, -0.777846,
		0.892156, 0.427803, 0.145062,
		0.420756, -0.670113, -0.611484,
		27.214180, 40.676506, 21.797070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390814, 41.561150, 21.883179>,  <26.919651, 41.145584, 22.225109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390814, 41.561150, 21.883179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337288, 41.227116, 21.669741>,  <27.305172, 41.026695, 21.541677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337288, 41.227116, 21.669741>,  <27.390814, 41.561150, 21.883179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337288, 41.227116, 21.669741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061086, 0.544364, -0.836622,
		0.989122, -0.079356, -0.123856,
		-0.133814, -0.835087, -0.533595,
		27.297144, 40.976589, 21.509663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659979, 41.784523, 21.343107>,  <27.390814, 41.561150, 21.883179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659979, 41.784523, 21.343107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467680, 41.458065, 21.214859>,  <27.352301, 41.262192, 21.137911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467680, 41.458065, 21.214859>,  <27.659979, 41.784523, 21.343107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467680, 41.458065, 21.214859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062399, 0.396560, -0.915885,
		0.874637, -0.420302, -0.241571,
		-0.480746, -0.816141, -0.320620,
		27.323456, 41.213223, 21.118673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014917, 41.614815, 20.776899>,  <27.659979, 41.784523, 21.343107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014917, 41.614815, 20.776899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642599, 41.468788, 20.769472>,  <27.419209, 41.381172, 20.765017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642599, 41.468788, 20.769472>,  <28.014917, 41.614815, 20.776899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642599, 41.468788, 20.769472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135207, 0.391031, -0.910392,
		0.339614, -0.844879, -0.413330,
		-0.930796, -0.365067, -0.018566,
		27.363361, 41.359268, 20.763903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908480, 41.490990, 20.086369>,  <28.014917, 41.614815, 20.776899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908480, 41.490990, 20.086369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533466, 41.468174, 20.223642>,  <27.308458, 41.454483, 20.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533466, 41.468174, 20.223642>,  <27.908480, 41.490990, 20.086369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533466, 41.468174, 20.223642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334577, 0.418173, -0.844505,
		-0.095338, -0.906574, -0.411137,
		-0.937533, -0.057044, 0.343187,
		27.252207, 41.451061, 20.326599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458168, 41.485218, 19.461786>,  <27.908480, 41.490990, 20.086369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458168, 41.485218, 19.461786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236858, 41.587490, 19.778902>,  <27.104073, 41.648853, 19.969172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236858, 41.587490, 19.778902>,  <27.458168, 41.485218, 19.461786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236858, 41.587490, 19.778902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376410, 0.772281, -0.511759,
		-0.743103, -0.581557, -0.331043,
		-0.553275, 0.255682, 0.792789,
		27.070875, 41.664196, 20.016739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870392, 41.708618, 19.103415>,  <27.458168, 41.485218, 19.461786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870392, 41.708618, 19.103415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866758, 41.875313, 19.467007>,  <26.864578, 41.975330, 19.685162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866758, 41.875313, 19.467007>,  <26.870392, 41.708618, 19.103415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866758, 41.875313, 19.467007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348453, 0.850724, -0.393510,
		-0.937282, -0.320311, 0.137486,
		-0.009083, 0.416737, 0.908982,
		26.864033, 42.000336, 19.739700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291861, 41.980877, 19.149565>,  <26.870392, 41.708618, 19.103415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291861, 41.980877, 19.149565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510687, 42.186775, 19.413610>,  <26.641983, 42.310314, 19.572037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510687, 42.186775, 19.413610>,  <26.291861, 41.980877, 19.149565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510687, 42.186775, 19.413610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310467, 0.857108, -0.411067,
		-0.777385, 0.019938, 0.628709,
		0.547067, 0.514750, 0.660113,
		26.674807, 42.341202, 19.611645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834229, 42.520466, 19.367636>,  <26.291861, 41.980877, 19.149565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834229, 42.520466, 19.367636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210535, 42.644825, 19.421743>,  <26.436319, 42.719440, 19.454208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.210535, 42.644825, 19.421743>,  <25.834229, 42.520466, 19.367636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210535, 42.644825, 19.421743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238870, 0.890895, -0.386326,
		-0.240621, 0.331130, 0.912389,
		0.940767, 0.310900, 0.135271,
		26.492765, 42.738094, 19.462324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698055, 43.102699, 19.566189>,  <25.834229, 42.520466, 19.367636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698055, 43.102699, 19.566189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084936, 43.130474, 19.468456>,  <26.317064, 43.147141, 19.409817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084936, 43.130474, 19.468456>,  <25.698055, 43.102699, 19.566189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084936, 43.130474, 19.468456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161585, 0.910386, -0.380904,
		0.195988, 0.407891, 0.891748,
		0.967202, 0.069441, -0.244334,
		26.375097, 43.151306, 19.395157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993196, 43.791298, 19.708361>,  <25.698055, 43.102699, 19.566189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993196, 43.791298, 19.708361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255438, 43.634354, 19.450294>,  <26.412783, 43.540188, 19.295454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255438, 43.634354, 19.450294>,  <25.993196, 43.791298, 19.708361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255438, 43.634354, 19.450294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040755, 0.871547, -0.488615,
		0.754004, 0.294044, 0.587380,
		0.655604, -0.392357, -0.645166,
		26.452120, 43.516647, 19.256744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531612, 44.343071, 19.484222>,  <25.993196, 43.791298, 19.708361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531612, 44.343071, 19.484222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527096, 44.081268, 19.181833>,  <26.524385, 43.924187, 19.000401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527096, 44.081268, 19.181833>,  <26.531612, 44.343071, 19.484222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527096, 44.081268, 19.181833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125119, 0.751005, -0.648335,
		0.992078, 0.087265, -0.090372,
		-0.011293, -0.654505, -0.755973,
		26.523708, 43.884918, 18.955042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084866, 44.562145, 18.976221>,  <26.531612, 44.343071, 19.484222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084866, 44.562145, 18.976221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836939, 44.337116, 18.757374>,  <26.688183, 44.202099, 18.626064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836939, 44.337116, 18.757374>,  <27.084866, 44.562145, 18.976221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836939, 44.337116, 18.757374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146277, 0.602151, -0.784868,
		0.770992, -0.566506, -0.290933,
		-0.619817, -0.562571, -0.547120,
		26.650993, 44.168346, 18.593239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344612, 44.485931, 18.305311>,  <27.084866, 44.562145, 18.976221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344612, 44.485931, 18.305311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964052, 44.394882, 18.222336>,  <26.735716, 44.340252, 18.172550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.964052, 44.394882, 18.222336>,  <27.344612, 44.485931, 18.305311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964052, 44.394882, 18.222336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019601, 0.716968, -0.696831,
		0.307338, -0.658898, -0.686583,
		-0.951399, -0.227620, -0.207437,
		26.678633, 44.326595, 18.160105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373486, 44.422073, 17.656239>,  <27.344612, 44.485931, 18.305311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373486, 44.422073, 17.656239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988785, 44.488834, 17.743122>,  <26.757965, 44.528893, 17.795252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988785, 44.488834, 17.743122>,  <27.373486, 44.422073, 17.656239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988785, 44.488834, 17.743122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036180, 0.708599, -0.704683,
		-0.271529, -0.685587, -0.675457,
		-0.961750, 0.166904, 0.217210,
		26.700260, 44.538906, 17.808285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949644, 44.382786, 17.021805>,  <27.373486, 44.422073, 17.656239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949644, 44.382786, 17.021805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679312, 44.582214, 17.238945>,  <26.517113, 44.701870, 17.369228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679312, 44.582214, 17.238945>,  <26.949644, 44.382786, 17.021805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679312, 44.582214, 17.238945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191833, 0.592143, -0.782667,
		-0.711657, -0.633085, -0.304546,
		-0.675829, 0.498568, 0.542849,
		26.476562, 44.731785, 17.401800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.334824, 44.323956, 16.610226>,  <26.949644, 44.382786, 17.021805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.334824, 44.323956, 16.610226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264395, 44.628082, 16.860317>,  <26.222137, 44.810558, 17.010372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264395, 44.628082, 16.860317>,  <26.334824, 44.323956, 16.610226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264395, 44.628082, 16.860317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343957, 0.547600, -0.762777,
		-0.922330, -0.349356, 0.165100,
		-0.176072, 0.760319, 0.625231,
		26.211573, 44.856178, 17.047886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672514, 44.626022, 16.459101>,  <26.334824, 44.323956, 16.610226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672514, 44.626022, 16.459101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854046, 44.924919, 16.653280>,  <25.962965, 45.104259, 16.769789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854046, 44.924919, 16.653280>,  <25.672514, 44.626022, 16.459101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854046, 44.924919, 16.653280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330645, 0.647105, -0.686971,
		-0.827474, 0.151256, 0.540749,
		0.453829, 0.747246, 0.485450,
		25.990194, 45.149094, 16.798916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238632, 45.198032, 16.859379>,  <25.672514, 44.626022, 16.459101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238632, 45.198032, 16.859379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590435, 45.301689, 16.699724>,  <25.801517, 45.363884, 16.603931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590435, 45.301689, 16.699724>,  <25.238632, 45.198032, 16.859379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590435, 45.301689, 16.699724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475706, 0.501712, -0.722488,
		0.013026, 0.825306, 0.564535,
		0.879508, 0.259142, -0.399138,
		25.854288, 45.379433, 16.579983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.425053, 45.906380, 17.157734>,  <25.238632, 45.198032, 16.859379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.425053, 45.906380, 17.157734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211130, 45.917767, 17.495531>,  <25.082777, 45.924599, 17.698210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211130, 45.917767, 17.495531>,  <25.425053, 45.906380, 17.157734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211130, 45.917767, 17.495531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077294, 0.993594, -0.082439,
		-0.841431, -0.109363, -0.529181,
		-0.534807, 0.028465, 0.844495,
		25.050688, 45.926308, 17.748878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768841, 46.301601, 17.079205>,  <25.425053, 45.906380, 17.157734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768841, 46.301601, 17.079205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931839, 46.304703, 17.444473>,  <25.029638, 46.306564, 17.663635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931839, 46.304703, 17.444473>,  <24.768841, 46.301601, 17.079205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931839, 46.304703, 17.444473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122472, 0.991394, 0.046238,
		-0.904957, -0.130680, 0.404940,
		0.407497, 0.007750, 0.913174,
		25.054089, 46.307030, 17.718426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.271797, 46.513893, 17.578808>,  <24.768841, 46.301601, 17.079205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.271797, 46.513893, 17.578808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650166, 46.604633, 17.671562>,  <24.877186, 46.659077, 17.727215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650166, 46.604633, 17.671562>,  <24.271797, 46.513893, 17.578808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650166, 46.604633, 17.671562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217486, 0.973860, -0.065547,
		-0.240696, 0.011570, 0.970532,
		0.945920, 0.226854, 0.231888,
		24.933941, 46.672691, 17.741129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.351597, 47.094696, 18.123884>,  <24.271797, 46.513893, 17.578808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.351597, 47.094696, 18.123884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625111, 47.091019, 17.832035>,  <24.789219, 47.088810, 17.656925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.625111, 47.091019, 17.832035>,  <24.351597, 47.094696, 18.123884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625111, 47.091019, 17.832035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327893, 0.889405, -0.318504,
		0.651861, 0.457027, 0.605147,
		0.683786, -0.009197, -0.729624,
		24.830246, 47.088261, 17.613148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.117237, 47.324852, 17.422001>,  <24.351597, 47.094696, 18.123884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.117237, 47.324852, 17.422001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232752, 47.639996, 17.204424>,  <24.302061, 47.829082, 17.073877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.232752, 47.639996, 17.204424>,  <24.117237, 47.324852, 17.422001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232752, 47.639996, 17.204424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951473, -0.173096, 0.254435,
		0.106305, -0.591023, -0.799619,
		0.288788, 0.787864, -0.543942,
		24.319387, 47.876354, 17.041241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524641, 47.107346, 16.810728>,  <24.117237, 47.324852, 17.422001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524641, 47.107346, 16.810728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641632, 47.469131, 16.934923>,  <24.711826, 47.686203, 17.009441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641632, 47.469131, 16.934923>,  <24.524641, 47.107346, 16.810728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641632, 47.469131, 16.934923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885523, -0.378730, 0.269096,
		0.360979, 0.196241, -0.911693,
		0.292478, 0.904463, 0.310490,
		24.729376, 47.740471, 17.028070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148340, 47.299580, 16.547625>,  <24.524641, 47.107346, 16.810728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148340, 47.299580, 16.547625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113182, 47.510372, 16.885752>,  <25.092087, 47.636848, 17.088629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113182, 47.510372, 16.885752>,  <25.148340, 47.299580, 16.547625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113182, 47.510372, 16.885752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825118, -0.436914, 0.358171,
		0.558081, 0.728969, -0.396421,
		-0.087894, 0.526983, 0.845319,
		25.086815, 47.668468, 17.139347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.888474, 47.494747, 16.936806>,  <25.148340, 47.299580, 16.547625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.888474, 47.494747, 16.936806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599228, 47.500267, 17.213041>,  <25.425680, 47.503578, 17.378782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599228, 47.500267, 17.213041>,  <25.888474, 47.494747, 16.936806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599228, 47.500267, 17.213041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626239, -0.408731, 0.663900,
		0.291430, 0.912551, 0.286915,
		-0.723114, 0.013803, 0.690591,
		25.382294, 47.504410, 17.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025356, 48.007561, 17.578764>,  <25.888474, 47.494747, 16.936806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025356, 48.007561, 17.578764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867453, 47.640411, 17.562412>,  <25.772711, 47.420120, 17.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.867453, 47.640411, 17.562412>,  <26.025356, 48.007561, 17.578764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867453, 47.640411, 17.562412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745717, -0.346074, 0.569332,
		-0.536723, 0.194264, 0.821091,
		-0.394759, -0.917875, -0.040880,
		25.749025, 47.365047, 17.550148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764402, 47.673172, 18.313469>,  <26.025356, 48.007561, 17.578764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764402, 47.673172, 18.313469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910637, 47.409618, 18.050495>,  <25.998379, 47.251488, 17.892712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910637, 47.409618, 18.050495>,  <25.764402, 47.673172, 18.313469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910637, 47.409618, 18.050495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774025, -0.177077, 0.607889,
		-0.516944, -0.731107, 0.445254,
		0.365588, -0.658882, -0.657434,
		26.020313, 47.211952, 17.853266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873728, 47.088131, 18.664795>,  <25.764402, 47.673172, 18.313469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873728, 47.088131, 18.664795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134718, 47.039875, 18.365536>,  <26.291311, 47.010921, 18.185980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.134718, 47.039875, 18.365536>,  <25.873728, 47.088131, 18.664795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134718, 47.039875, 18.365536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721500, -0.203040, 0.661977,
		-0.231760, -0.971711, -0.045441,
		0.652477, -0.120634, -0.748146,
		26.330462, 47.003685, 18.141092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187815, 46.415218, 18.744555>,  <25.873728, 47.088131, 18.664795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187815, 46.415218, 18.744555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437269, 46.632423, 18.519621>,  <26.586943, 46.762745, 18.384661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437269, 46.632423, 18.519621>,  <26.187815, 46.415218, 18.744555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437269, 46.632423, 18.519621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780497, -0.392428, 0.486646,
		0.043578, -0.742390, -0.668549,
		0.623638, 0.543008, -0.562332,
		26.624361, 46.795326, 18.350922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722202, 45.985008, 18.596003>,  <26.187815, 46.415218, 18.744555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722202, 45.985008, 18.596003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889254, 46.337669, 18.508116>,  <26.989485, 46.549267, 18.455383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.889254, 46.337669, 18.508116>,  <26.722202, 45.985008, 18.596003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889254, 46.337669, 18.508116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850129, -0.293793, 0.436997,
		0.320727, -0.369292, -0.872214,
		0.417629, 0.881652, -0.219719,
		27.014542, 46.602165, 18.442200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439854, 45.800926, 18.632824>,  <26.722202, 45.985008, 18.596003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439854, 45.800926, 18.632824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400808, 46.198757, 18.647181>,  <27.377382, 46.437454, 18.655794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400808, 46.198757, 18.647181>,  <27.439854, 45.800926, 18.632824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400808, 46.198757, 18.647181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775972, 0.053475, 0.628496,
		0.623168, 0.089201, -0.776984,
		-0.097611, 0.994577, 0.035894,
		27.371525, 46.497131, 18.657949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980949, 46.075901, 18.292599>,  <27.439854, 45.800926, 18.632824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980949, 46.075901, 18.292599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842062, 46.339352, 18.559628>,  <27.758730, 46.497421, 18.719845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842062, 46.339352, 18.559628>,  <27.980949, 46.075901, 18.292599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842062, 46.339352, 18.559628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755499, -0.225269, 0.615203,
		0.555572, 0.717960, -0.419373,
		-0.347219, 0.658626, 0.667571,
		27.737896, 46.536938, 18.759899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551260, 46.428791, 18.527225>,  <27.980949, 46.075901, 18.292599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551260, 46.428791, 18.527225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274864, 46.490925, 18.809618>,  <28.109028, 46.528206, 18.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274864, 46.490925, 18.809618>,  <28.551260, 46.428791, 18.527225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274864, 46.490925, 18.809618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684460, -0.173508, 0.708102,
		0.232488, 0.972504, 0.013569,
		-0.690987, 0.155338, 0.705979,
		28.067568, 46.537525, 19.021412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011576, 46.571907, 19.072758>,  <28.551260, 46.428791, 18.527225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011576, 46.571907, 19.072758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655397, 46.526409, 19.249016>,  <28.441690, 46.499111, 19.354771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655397, 46.526409, 19.249016>,  <29.011576, 46.571907, 19.072758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655397, 46.526409, 19.249016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455019, -0.239515, 0.857665,
		0.007985, 0.964206, 0.265032,
		-0.890446, -0.113747, 0.440645,
		28.388264, 46.492287, 19.381208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029404, 46.896534, 19.681833>,  <29.011576, 46.571907, 19.072758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029404, 46.896534, 19.681833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712040, 46.658745, 19.734140>,  <28.521622, 46.516071, 19.765524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712040, 46.658745, 19.734140>,  <29.029404, 46.896534, 19.681833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712040, 46.658745, 19.734140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366745, -0.295421, 0.882170,
		-0.485799, 0.747879, 0.452411,
		-0.793409, -0.594477, 0.130766,
		28.474018, 46.480400, 19.773371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832436, 46.892048, 20.387583>,  <29.029404, 46.896534, 19.681833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832436, 46.892048, 20.387583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660429, 46.551220, 20.268209>,  <28.557226, 46.346722, 20.196585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660429, 46.551220, 20.268209>,  <28.832436, 46.892048, 20.387583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660429, 46.551220, 20.268209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355559, -0.463676, 0.811531,
		-0.829859, 0.242859, 0.502349,
		-0.430014, -0.852070, -0.298435,
		28.531425, 46.295597, 20.178679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442587, 46.693703, 20.973656>,  <28.832436, 46.892048, 20.387583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442587, 46.693703, 20.973656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510305, 46.373974, 20.743032>,  <28.550936, 46.182137, 20.604658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.510305, 46.373974, 20.743032>,  <28.442587, 46.693703, 20.973656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510305, 46.373974, 20.743032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188010, -0.548065, 0.815032,
		-0.967466, -0.246379, 0.057496,
		0.169295, -0.799326, -0.576556,
		28.561094, 46.134174, 20.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968433, 46.171864, 21.212006>,  <28.442587, 46.693703, 20.973656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968433, 46.171864, 21.212006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272480, 45.989674, 21.026632>,  <28.454908, 45.880360, 20.915409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272480, 45.989674, 21.026632>,  <27.968433, 46.171864, 21.212006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272480, 45.989674, 21.026632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128819, -0.593424, 0.794515,
		-0.636890, -0.663623, -0.392398,
		0.760117, -0.455470, -0.463433,
		28.500515, 45.853031, 20.887602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767204, 45.540230, 21.176966>,  <27.968433, 46.171864, 21.212006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767204, 45.540230, 21.176966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163475, 45.498302, 21.142153>,  <28.401237, 45.473148, 21.121265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163475, 45.498302, 21.142153>,  <27.767204, 45.540230, 21.176966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163475, 45.498302, 21.142153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015936, -0.723597, 0.690038,
		-0.135304, -0.682218, -0.718521,
		0.990676, -0.104815, -0.087033,
		28.460678, 45.466858, 21.116043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723196, 44.892212, 21.304884>,  <27.767204, 45.540230, 21.176966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723196, 44.892212, 21.304884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085922, 45.047638, 21.370251>,  <28.303558, 45.140896, 21.409470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085922, 45.047638, 21.370251>,  <27.723196, 44.892212, 21.304884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085922, 45.047638, 21.370251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112068, -0.595948, 0.795164,
		0.406362, -0.702752, -0.583960,
		0.906814, 0.388568, 0.163415,
		28.357965, 45.164207, 21.419275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120817, 44.286102, 21.471674>,  <27.723196, 44.892212, 21.304884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120817, 44.286102, 21.471674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334059, 44.599243, 21.600010>,  <28.462004, 44.787128, 21.677011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334059, 44.599243, 21.600010>,  <28.120817, 44.286102, 21.471674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334059, 44.599243, 21.600010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181551, -0.476241, 0.860368,
		0.826340, -0.400418, -0.396015,
		0.533105, 0.782854, 0.320841,
		28.493990, 44.834099, 21.696262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774160, 44.080551, 21.775537>,  <28.120817, 44.286102, 21.471674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774160, 44.080551, 21.775537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694775, 44.437962, 21.936646>,  <28.647144, 44.652409, 22.033310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694775, 44.437962, 21.936646>,  <28.774160, 44.080551, 21.775537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694775, 44.437962, 21.936646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205256, -0.363939, 0.908525,
		0.958375, 0.262979, -0.111174,
		-0.198463, 0.893527, 0.402768,
		28.635235, 44.706020, 22.057476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242752, 44.091385, 22.348232>,  <28.774160, 44.080551, 21.775537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242752, 44.091385, 22.348232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993595, 44.392551, 22.433193>,  <28.844101, 44.573254, 22.484171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993595, 44.392551, 22.433193>,  <29.242752, 44.091385, 22.348232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993595, 44.392551, 22.433193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104392, -0.189085, 0.976396,
		0.775312, 0.630362, 0.039181,
		-0.622892, 0.752921, 0.212405,
		28.806728, 44.618427, 22.496914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476664, 44.386314, 22.960546>,  <29.242752, 44.091385, 22.348232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476664, 44.386314, 22.960546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092127, 44.491589, 22.928154>,  <28.861404, 44.554752, 22.908718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092127, 44.491589, 22.928154>,  <29.476664, 44.386314, 22.960546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092127, 44.491589, 22.928154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121915, -0.143115, 0.982168,
		0.246904, 0.954071, 0.169669,
		-0.961340, 0.263186, -0.080980,
		28.803724, 44.570545, 22.903860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410351, 44.736008, 23.547020>,  <29.476664, 44.386314, 22.960546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410351, 44.736008, 23.547020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033768, 44.648281, 23.444603>,  <28.807817, 44.595646, 23.383154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033768, 44.648281, 23.444603>,  <29.410351, 44.736008, 23.547020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033768, 44.648281, 23.444603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213053, -0.201539, 0.956029,
		-0.261278, 0.954610, 0.143013,
		-0.941458, -0.219320, -0.256040,
		28.751331, 44.582485, 23.367790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103926, 44.765507, 24.146151>,  <29.410351, 44.736008, 23.547020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103926, 44.765507, 24.146151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805779, 44.585960, 23.948992>,  <28.626890, 44.478233, 23.830696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805779, 44.585960, 23.948992>,  <29.103926, 44.765507, 24.146151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805779, 44.585960, 23.948992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365037, -0.343863, 0.865162,
		-0.557827, 0.824791, 0.092454,
		-0.745370, -0.448862, -0.492896,
		28.582167, 44.451302, 23.801123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485798, 44.866062, 24.458906>,  <29.103926, 44.765507, 24.146151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485798, 44.866062, 24.458906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439379, 44.531345, 24.244871>,  <28.411528, 44.330517, 24.116449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439379, 44.531345, 24.244871>,  <28.485798, 44.866062, 24.458906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439379, 44.531345, 24.244871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394160, -0.455693, 0.798112,
		-0.911686, 0.303528, -0.276947,
		-0.116046, -0.836788, -0.535088,
		28.404564, 44.280308, 24.084345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804991, 44.557629, 24.636604>,  <28.485798, 44.866062, 24.458906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804991, 44.557629, 24.636604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036455, 44.261868, 24.498949>,  <28.175333, 44.084412, 24.416355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036455, 44.261868, 24.498949>,  <27.804991, 44.557629, 24.636604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036455, 44.261868, 24.498949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173192, -0.523743, 0.834085,
		-0.796968, -0.423050, -0.431128,
		0.578660, -0.739407, -0.344138,
		28.210052, 44.040047, 24.395708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413273, 43.853451, 24.607384>,  <27.804991, 44.557629, 24.636604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413273, 43.853451, 24.607384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801153, 43.755890, 24.601910>,  <28.033882, 43.697353, 24.598625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801153, 43.755890, 24.601910>,  <27.413273, 43.853451, 24.607384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801153, 43.755890, 24.601910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170924, -0.717451, 0.675314,
		-0.174530, -0.652515, -0.737404,
		0.969704, -0.243902, -0.013686,
		28.092064, 43.682720, 24.597803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405851, 43.076305, 24.630117>,  <27.413273, 43.853451, 24.607384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405851, 43.076305, 24.630117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767000, 43.193836, 24.755651>,  <27.983688, 43.264355, 24.830971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767000, 43.193836, 24.755651>,  <27.405851, 43.076305, 24.630117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767000, 43.193836, 24.755651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006101, -0.738680, 0.674029,
		0.429868, -0.606646, -0.668725,
		0.902871, 0.293823, 0.313834,
		28.037861, 43.281982, 24.849802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666826, 42.410969, 24.845665>,  <27.405851, 43.076305, 24.630117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666826, 42.410969, 24.845665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880671, 42.709480, 25.004288>,  <28.008976, 42.888588, 25.099461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880671, 42.709480, 25.004288>,  <27.666826, 42.410969, 24.845665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880671, 42.709480, 25.004288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284336, -0.600724, 0.747184,
		0.795831, -0.286696, -0.533347,
		0.534609, 0.746282, 0.396557,
		28.041054, 42.933365, 25.123255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355471, 42.169071, 24.936987>,  <27.666826, 42.410969, 24.845665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355471, 42.169071, 24.936987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333473, 42.462051, 25.208426>,  <28.320274, 42.637840, 25.371288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333473, 42.462051, 25.208426>,  <28.355471, 42.169071, 24.936987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333473, 42.462051, 25.208426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103279, -0.671805, 0.733492,
		0.993131, 0.110423, -0.038702,
		-0.054994, 0.732451, 0.678595,
		28.316975, 42.681786, 25.412004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723713, 41.909218, 25.577250>,  <28.355471, 42.169071, 24.936987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723713, 41.909218, 25.577250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517223, 42.222942, 25.714872>,  <28.393330, 42.411175, 25.797445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517223, 42.222942, 25.714872>,  <28.723713, 41.909218, 25.577250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517223, 42.222942, 25.714872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044201, -0.376791, 0.925243,
		0.855312, 0.492840, 0.159842,
		-0.516224, 0.784307, 0.344058,
		28.362356, 42.458233, 25.818090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009943, 42.029572, 26.285501>,  <28.723713, 41.909218, 25.577250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009943, 42.029572, 26.285501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654995, 42.213398, 26.270676>,  <28.442026, 42.323692, 26.261780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654995, 42.213398, 26.270676>,  <29.009943, 42.029572, 26.285501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654995, 42.213398, 26.270676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111239, -0.135384, 0.984529,
		0.447437, 0.877765, 0.171258,
		-0.887370, 0.459565, -0.037066,
		28.388784, 42.351269, 26.259556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006441, 42.409096, 26.896238>,  <29.009943, 42.029572, 26.285501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006441, 42.409096, 26.896238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629152, 42.372227, 26.768591>,  <28.402779, 42.350105, 26.692003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.629152, 42.372227, 26.768591>,  <29.006441, 42.409096, 26.896238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629152, 42.372227, 26.768591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282134, -0.284724, 0.916151,
		-0.175306, 0.954168, 0.242552,
		-0.943222, -0.092175, -0.319117,
		28.346186, 42.344574, 26.672855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590141, 42.776058, 27.371065>,  <29.006441, 42.409096, 26.896238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590141, 42.776058, 27.371065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379499, 42.496532, 27.177425>,  <28.253115, 42.328819, 27.061241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379499, 42.496532, 27.177425>,  <28.590141, 42.776058, 27.371065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379499, 42.496532, 27.177425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213439, -0.442529, 0.870983,
		-0.822880, 0.561990, 0.083884,
		-0.526605, -0.698811, -0.484098,
		28.221518, 42.286888, 27.032196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952887, 42.589119, 27.782623>,  <28.590141, 42.776058, 27.371065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952887, 42.589119, 27.782623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968742, 42.287987, 27.519815>,  <27.978256, 42.107307, 27.362131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968742, 42.287987, 27.519815>,  <27.952887, 42.589119, 27.782623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968742, 42.287987, 27.519815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292282, -0.637511, 0.712847,
		-0.955510, 0.163776, -0.245311,
		0.039641, -0.752833, -0.657017,
		27.980635, 42.062138, 27.322710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348209, 42.184025, 27.947712>,  <27.952887, 42.589119, 27.782623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348209, 42.184025, 27.947712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603083, 41.941399, 27.757521>,  <27.756006, 41.795822, 27.643406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603083, 41.941399, 27.757521>,  <27.348209, 42.184025, 27.947712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603083, 41.941399, 27.757521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245554, -0.744558, 0.620755,
		-0.730546, -0.278780, -0.623365,
		0.637186, -0.606560, -0.475479,
		27.794237, 41.759430, 27.614878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018660, 41.507526, 27.933113>,  <27.348209, 42.184025, 27.947712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018660, 41.507526, 27.933113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407164, 41.441715, 27.864313>,  <27.640266, 41.402229, 27.823032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407164, 41.441715, 27.864313>,  <27.018660, 41.507526, 27.933113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407164, 41.441715, 27.864313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008119, -0.699316, 0.714767,
		-0.237879, -0.695622, -0.677882,
		0.971261, -0.164524, -0.172001,
		27.698542, 41.392357, 27.812714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240526, 40.786503, 27.953867>,  <27.018660, 41.507526, 27.933113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240526, 40.786503, 27.953867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600323, 40.951630, 28.011141>,  <27.816200, 41.050705, 28.045506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600323, 40.951630, 28.011141>,  <27.240526, 40.786503, 27.953867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600323, 40.951630, 28.011141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, -0.647392, 0.740793,
		0.398506, -0.640679, -0.656296,
		0.899491, 0.412813, 0.143185,
		27.870171, 41.075474, 28.054096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747684, 40.188015, 28.146057>,  <27.240526, 40.786503, 27.953867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747684, 40.188015, 28.146057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896042, 40.526688, 28.298674>,  <27.985056, 40.729889, 28.390244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896042, 40.526688, 28.298674>,  <27.747684, 40.188015, 28.146057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896042, 40.526688, 28.298674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307590, -0.499652, 0.809775,
		0.876257, -0.182983, -0.445748,
		0.370895, 0.846679, 0.381540,
		28.007311, 40.780693, 28.413136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405794, 39.970901, 28.284824>,  <27.747684, 40.188015, 28.146057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405794, 39.970901, 28.284824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360485, 40.309010, 28.493700>,  <28.333300, 40.511875, 28.619026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360485, 40.309010, 28.493700>,  <28.405794, 39.970901, 28.284824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360485, 40.309010, 28.493700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296347, -0.472905, 0.829783,
		0.948339, 0.248742, -0.196927,
		-0.113274, 0.845274, 0.522189,
		28.326504, 40.562592, 28.650356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863411, 39.993111, 28.718830>,  <28.405794, 39.970901, 28.284824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863411, 39.993111, 28.718830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678440, 40.300728, 28.895342>,  <28.567457, 40.485298, 29.001249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678440, 40.300728, 28.895342>,  <28.863411, 39.993111, 28.718830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678440, 40.300728, 28.895342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386152, -0.273330, 0.881009,
		0.798151, 0.577806, -0.170573,
		-0.462429, 0.769046, 0.441279,
		28.539711, 40.531441, 29.027725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347878, 40.305592, 29.215714>,  <28.863411, 39.993111, 28.718830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347878, 40.305592, 29.215714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982611, 40.406425, 29.343826>,  <28.763451, 40.466927, 29.420694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.982611, 40.406425, 29.343826>,  <29.347878, 40.305592, 29.215714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982611, 40.406425, 29.343826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316169, -0.057814, 0.946939,
		0.257225, 0.965977, -0.026907,
		-0.913166, 0.252084, 0.320284,
		28.708660, 40.482052, 29.439911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359419, 40.795040, 29.729103>,  <29.347878, 40.305592, 29.215714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359419, 40.795040, 29.729103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008352, 40.616230, 29.798241>,  <28.797712, 40.508945, 29.839724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008352, 40.616230, 29.798241>,  <29.359419, 40.795040, 29.729103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008352, 40.616230, 29.798241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293355, -0.215865, 0.931314,
		-0.379007, 0.868086, 0.320593,
		-0.877665, -0.447022, 0.172844,
		28.745052, 40.482124, 29.850094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964411, 41.039875, 29.293858>,  <29.359419, 40.795040, 29.729103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964411, 41.039875, 29.293858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320211, 41.141319, 29.445894>,  <30.533691, 41.202187, 29.537115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320211, 41.141319, 29.445894>,  <29.964411, 41.039875, 29.293858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320211, 41.141319, 29.445894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252672, 0.420076, -0.871604,
		-0.380717, 0.871330, 0.309577,
		0.889501, 0.253613, 0.380091,
		30.587061, 41.217403, 29.559921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986782, 41.754726, 29.229906>,  <29.964411, 41.039875, 29.293858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986782, 41.754726, 29.229906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367603, 41.633881, 29.249174>,  <30.596096, 41.561375, 29.260735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367603, 41.633881, 29.249174>,  <29.986782, 41.754726, 29.229906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367603, 41.633881, 29.249174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218054, 0.559684, -0.799504,
		0.214580, 0.771674, 0.598727,
		0.952055, -0.302112, 0.048169,
		30.653219, 41.543247, 29.263624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342230, 42.331627, 29.324852>,  <29.986782, 41.754726, 29.229906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342230, 42.331627, 29.324852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607685, 42.067955, 29.183395>,  <30.766958, 41.909752, 29.098520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607685, 42.067955, 29.183395>,  <30.342230, 42.331627, 29.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607685, 42.067955, 29.183395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069963, 0.525372, -0.847991,
		0.744776, 0.538016, 0.394775,
		0.663637, -0.659183, -0.353643,
		30.806776, 41.870201, 29.077303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940681, 42.756256, 29.046299>,  <30.342230, 42.331627, 29.324852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940681, 42.756256, 29.046299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970043, 42.396336, 28.874268>,  <30.987659, 42.180382, 28.771048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970043, 42.396336, 28.874268>,  <30.940681, 42.756256, 29.046299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970043, 42.396336, 28.874268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217371, 0.435311, -0.873644,
		0.973325, -0.029359, 0.227544,
		0.073403, -0.899801, -0.430081,
		30.992064, 42.126396, 28.745243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595654, 42.755051, 28.711605>,  <30.940681, 42.756256, 29.046299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595654, 42.755051, 28.711605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357668, 42.478703, 28.547304>,  <31.214876, 42.312893, 28.448725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357668, 42.478703, 28.547304>,  <31.595654, 42.755051, 28.711605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357668, 42.478703, 28.547304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177627, 0.385387, -0.905498,
		0.783879, -0.611698, -0.106574,
		-0.594963, -0.690871, -0.410751,
		31.179178, 42.271442, 28.424078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040222, 42.498981, 28.154121>,  <31.595654, 42.755051, 28.711605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040222, 42.498981, 28.154121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662207, 42.394360, 28.075638>,  <31.435398, 42.331585, 28.028547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662207, 42.394360, 28.075638>,  <32.040222, 42.498981, 28.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662207, 42.394360, 28.075638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047708, 0.483355, -0.874124,
		0.323467, -0.835439, -0.444309,
		-0.945036, -0.261553, -0.196206,
		31.378696, 42.315895, 28.016775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121555, 42.139076, 27.498180>,  <32.040222, 42.498981, 28.154121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121555, 42.139076, 27.498180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746546, 42.265850, 27.555592>,  <31.521540, 42.341915, 27.590038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746546, 42.265850, 27.555592>,  <32.121555, 42.139076, 27.498180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746546, 42.265850, 27.555592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001584, 0.408642, -0.912693,
		-0.347915, -0.855900, -0.382610,
		-0.937525, 0.316933, 0.143529,
		31.465288, 42.360931, 27.598650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901218, 42.092541, 26.842955>,  <32.121555, 42.139076, 27.498180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901218, 42.092541, 26.842955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621004, 42.315742, 27.020891>,  <31.452875, 42.449661, 27.127653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621004, 42.315742, 27.020891>,  <31.901218, 42.092541, 26.842955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621004, 42.315742, 27.020891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063537, 0.572114, -0.817709,
		-0.710784, -0.601098, -0.365332,
		-0.700535, 0.558002, 0.444841,
		31.410843, 42.483143, 27.154343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474018, 42.070972, 26.328255>,  <31.901218, 42.092541, 26.842955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474018, 42.070972, 26.328255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383295, 42.378151, 26.567858>,  <31.328861, 42.562458, 26.711620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383295, 42.378151, 26.567858>,  <31.474018, 42.070972, 26.328255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383295, 42.378151, 26.567858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075280, 0.599374, -0.796921,
		-0.971025, -0.225843, -0.078132,
		-0.226810, 0.767949, 0.599009,
		31.315252, 42.608536, 26.747561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861200, 42.481560, 26.026281>,  <31.474018, 42.070972, 26.328255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861200, 42.481560, 26.026281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046782, 42.755672, 26.250828>,  <31.158131, 42.920139, 26.385555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046782, 42.755672, 26.250828>,  <30.861200, 42.481560, 26.026281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046782, 42.755672, 26.250828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117925, 0.675836, -0.727557,
		-0.877974, 0.271354, 0.394370,
		0.463955, 0.685282, 0.561367,
		31.185968, 42.961258, 26.419237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476719, 43.126133, 25.892776>,  <30.861200, 42.481560, 26.026281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476719, 43.126133, 25.892776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832495, 43.230259, 26.043045>,  <31.045961, 43.292736, 26.133205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832495, 43.230259, 26.043045>,  <30.476719, 43.126133, 25.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832495, 43.230259, 26.043045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111230, 0.673947, -0.730358,
		-0.443307, 0.691397, 0.570481,
		0.889442, 0.260318, 0.375670,
		31.099327, 43.308353, 26.155746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360788, 43.737709, 26.280916>,  <30.476719, 43.126133, 25.892776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360788, 43.737709, 26.280916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744791, 43.708023, 26.172932>,  <30.975193, 43.690212, 26.108141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744791, 43.708023, 26.172932>,  <30.360788, 43.737709, 26.280916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744791, 43.708023, 26.172932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174633, 0.594941, -0.784569,
		0.218841, 0.800336, 0.558186,
		0.960006, -0.074219, -0.269962,
		31.032793, 43.685757, 26.091944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521914, 44.367897, 26.114874>,  <30.360788, 43.737709, 26.280916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521914, 44.367897, 26.114874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836296, 44.189190, 25.943914>,  <31.024925, 44.081966, 25.841339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836296, 44.189190, 25.943914>,  <30.521914, 44.367897, 26.114874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836296, 44.189190, 25.943914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053043, 0.737445, -0.673321,
		0.616000, 0.506532, 0.603299,
		0.785959, -0.446767, -0.427398,
		31.072084, 44.055161, 25.815695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067974, 44.884624, 26.112967>,  <30.521914, 44.367897, 26.114874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067974, 44.884624, 26.112967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138552, 44.600025, 25.840895>,  <31.180899, 44.429268, 25.677652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138552, 44.600025, 25.840895>,  <31.067974, 44.884624, 26.112967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138552, 44.600025, 25.840895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080284, 0.699121, -0.710482,
		0.981031, 0.070753, 0.180478,
		0.176445, -0.711494, -0.680179,
		31.191484, 44.386578, 25.636841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533588, 45.205643, 25.742945>,  <31.067974, 44.884624, 26.112967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533588, 45.205643, 25.742945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410618, 44.904369, 25.510324>,  <31.336836, 44.723606, 25.370752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410618, 44.904369, 25.510324>,  <31.533588, 45.205643, 25.742945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410618, 44.904369, 25.510324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040328, 0.600286, -0.798768,
		0.950718, -0.269013, -0.154168,
		-0.307424, -0.753186, -0.581551,
		31.318390, 44.678413, 25.335859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997078, 45.123692, 25.270445>,  <31.533588, 45.205643, 25.742945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997078, 45.123692, 25.270445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683966, 44.939346, 25.103178>,  <31.496098, 44.828739, 25.002817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683966, 44.939346, 25.103178>,  <31.997078, 45.123692, 25.270445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683966, 44.939346, 25.103178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091287, 0.579664, -0.809726,
		0.615575, -0.672006, -0.411675,
		-0.782774, -0.460866, -0.418172,
		31.449131, 44.801090, 24.977728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132973, 45.066479, 24.603405>,  <31.997078, 45.123692, 25.270445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132973, 45.066479, 24.603405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733574, 45.048428, 24.615858>,  <31.493935, 45.037598, 24.623331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733574, 45.048428, 24.615858>,  <32.132973, 45.066479, 24.603405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733574, 45.048428, 24.615858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050744, 0.545651, -0.836475,
		0.020761, -0.836797, -0.547120,
		-0.998495, -0.045129, 0.031134,
		31.434025, 45.034889, 24.625198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022446, 44.909283, 23.951180>,  <32.132973, 45.066479, 24.603405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022446, 44.909283, 23.951180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672800, 45.023178, 24.108587>,  <31.463013, 45.091515, 24.203032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672800, 45.023178, 24.108587>,  <32.022446, 44.909283, 23.951180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672800, 45.023178, 24.108587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159603, 0.596805, -0.786353,
		-0.458757, -0.750166, -0.476228,
		-0.874110, 0.284738, 0.393517,
		31.410566, 45.108601, 24.226643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575951, 44.904446, 23.387138>,  <32.022446, 44.909283, 23.951180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575951, 44.904446, 23.387138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370327, 45.136959, 23.639441>,  <31.246954, 45.276466, 23.790823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370327, 45.136959, 23.639441>,  <31.575951, 44.904446, 23.387138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370327, 45.136959, 23.639441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388626, 0.497717, -0.775401,
		-0.764667, -0.643729, -0.029953,
		-0.514057, 0.581283, 0.630758,
		31.216110, 45.311344, 23.828669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927122, 44.875984, 23.245848>,  <31.575951, 44.904446, 23.387138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927122, 44.875984, 23.245848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979626, 45.235950, 23.412184>,  <31.011127, 45.451931, 23.511986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979626, 45.235950, 23.412184>,  <30.927122, 44.875984, 23.245848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979626, 45.235950, 23.412184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367705, 0.433743, -0.822594,
		-0.920633, -0.044933, 0.387836,
		0.131259, 0.899916, 0.415840,
		31.019003, 45.505924, 23.536936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264332, 45.361095, 23.030773>,  <30.927122, 44.875984, 23.245848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264332, 45.361095, 23.030773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567972, 45.606628, 23.117474>,  <30.750156, 45.753948, 23.169493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567972, 45.606628, 23.117474>,  <30.264332, 45.361095, 23.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567972, 45.606628, 23.117474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219724, 0.555020, -0.802293,
		-0.612772, 0.561394, 0.556189,
		0.759099, 0.613831, 0.216749,
		30.795702, 45.790779, 23.182499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056988, 46.120583, 22.825401>,  <30.264332, 45.361095, 23.030773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056988, 46.120583, 22.825401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450058, 46.150459, 22.893248>,  <30.685900, 46.168385, 22.933956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450058, 46.150459, 22.893248>,  <30.056988, 46.120583, 22.825401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450058, 46.150459, 22.893248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113903, 0.478562, -0.870634,
		-0.146201, 0.874871, 0.461764,
		0.982676, 0.074692, 0.169617,
		30.744862, 46.172867, 22.944132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267305, 46.755280, 22.452156>,  <30.056988, 46.120583, 22.825401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267305, 46.755280, 22.452156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589836, 46.524693, 22.505095>,  <30.783356, 46.386341, 22.536858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589836, 46.524693, 22.505095>,  <30.267305, 46.755280, 22.452156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589836, 46.524693, 22.505095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257152, 0.140175, -0.956151,
		0.532641, 0.805005, 0.261268,
		0.806329, -0.576471, 0.132345,
		30.831736, 46.351749, 22.544798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742794, 47.078674, 22.003153>,  <30.267305, 46.755280, 22.452156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742794, 47.078674, 22.003153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906357, 46.722851, 22.084614>,  <31.004496, 46.509357, 22.133490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906357, 46.722851, 22.084614>,  <30.742794, 47.078674, 22.003153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906357, 46.722851, 22.084614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342261, -0.057379, -0.937851,
		0.845962, 0.453197, 0.281000,
		0.408908, -0.889562, 0.203652,
		31.029030, 46.455982, 22.145710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366316, 47.157478, 21.727438>,  <30.742794, 47.078674, 22.003153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366316, 47.157478, 21.727438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272123, 46.769936, 21.758085>,  <31.215609, 46.537411, 21.776474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272123, 46.769936, 21.758085>,  <31.366316, 47.157478, 21.727438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272123, 46.769936, 21.758085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159644, -0.116322, -0.980297,
		0.958678, -0.218609, 0.182064,
		-0.235480, -0.968855, 0.076616,
		31.201479, 46.479279, 21.781071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657965, 46.908257, 21.116762>,  <31.366316, 47.157478, 21.727438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657965, 46.908257, 21.116762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425461, 46.617718, 21.263487>,  <31.285957, 46.443394, 21.351522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425461, 46.617718, 21.263487>,  <31.657965, 46.908257, 21.116762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425461, 46.617718, 21.263487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005168, -0.454074, -0.890949,
		0.813701, -0.515978, 0.267689,
		-0.581261, -0.726350, 0.366814,
		31.251083, 46.399815, 21.373531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970255, 46.192654, 20.949751>,  <31.657965, 46.908257, 21.116762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970255, 46.192654, 20.949751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574171, 46.165154, 20.998343>,  <31.336521, 46.148651, 21.027496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574171, 46.165154, 20.998343>,  <31.970255, 46.192654, 20.949751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574171, 46.165154, 20.998343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096336, -0.293169, -0.951195,
		0.101011, -0.953585, 0.283676,
		-0.990210, -0.068753, 0.121478,
		31.277107, 46.144527, 21.034786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816919, 45.708298, 20.451183>,  <31.970255, 46.192654, 20.949751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816919, 45.708298, 20.451183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477541, 45.896576, 20.547995>,  <31.273914, 46.009544, 20.606081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477541, 45.896576, 20.547995>,  <31.816919, 45.708298, 20.451183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477541, 45.896576, 20.547995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294825, -0.040536, -0.954691,
		-0.439561, -0.881362, 0.173166,
		-0.848448, 0.470699, 0.242029,
		31.223007, 46.037785, 20.620604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315609, 45.217541, 20.130720>,  <31.816919, 45.708298, 20.451183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315609, 45.217541, 20.130720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158272, 45.580170, 20.191912>,  <31.063869, 45.797749, 20.228626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158272, 45.580170, 20.191912>,  <31.315609, 45.217541, 20.130720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158272, 45.580170, 20.191912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400626, -0.019248, -0.916039,
		-0.827515, -0.421604, 0.370769,
		-0.393342, 0.906576, 0.152977,
		31.040270, 45.852142, 20.237804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513067, 45.186882, 19.994970>,  <31.315609, 45.217541, 20.130720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513067, 45.186882, 19.994970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662214, 45.555527, 19.951880>,  <30.751703, 45.776714, 19.926025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662214, 45.555527, 19.951880>,  <30.513067, 45.186882, 19.994970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662214, 45.555527, 19.951880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328545, 0.022556, -0.944219,
		-0.867772, 0.387462, 0.311201,
		0.372869, 0.921610, -0.107725,
		30.774075, 45.832008, 19.919561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996418, 45.531677, 19.620644>,  <30.513067, 45.186882, 19.994970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996418, 45.531677, 19.620644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284901, 45.805836, 19.580441>,  <30.457991, 45.970329, 19.556318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284901, 45.805836, 19.580441>,  <29.996418, 45.531677, 19.620644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284901, 45.805836, 19.580441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374444, 0.263645, -0.888979,
		-0.582800, 0.678771, 0.446783,
		0.721205, 0.685392, -0.100509,
		30.501263, 46.011452, 19.550287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630419, 46.059128, 19.378977>,  <29.996418, 45.531677, 19.620644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630419, 46.059128, 19.378977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013323, 46.157169, 19.317554>,  <30.243065, 46.215992, 19.280701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013323, 46.157169, 19.317554>,  <29.630419, 46.059128, 19.378977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013323, 46.157169, 19.317554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222894, 0.286833, -0.931689,
		-0.184314, 0.926095, 0.329205,
		0.957260, 0.245101, -0.153554,
		30.300501, 46.230701, 19.271488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680723, 46.830921, 19.114271>,  <29.630419, 46.059128, 19.378977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680723, 46.830921, 19.114271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959963, 46.564102, 19.010191>,  <30.127506, 46.404011, 18.947742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959963, 46.564102, 19.010191>,  <29.680723, 46.830921, 19.114271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959963, 46.564102, 19.010191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174683, 0.193757, -0.965372,
		0.694366, 0.719378, 0.018740,
		0.698099, -0.667048, -0.260202,
		30.169392, 46.363987, 18.932131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844585, 47.053307, 18.431614>,  <29.680723, 46.830921, 19.114271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844585, 47.053307, 18.431614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077084, 46.727818, 18.432943>,  <30.216581, 46.532524, 18.433741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077084, 46.727818, 18.432943>,  <29.844585, 47.053307, 18.431614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077084, 46.727818, 18.432943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204647, -0.150132, -0.967254,
		0.787576, 0.561530, -0.253789,
		0.581244, -0.813723, 0.003325,
		30.251457, 46.483700, 18.433941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312057, 47.077351, 17.889412>,  <29.844585, 47.053307, 18.431614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312057, 47.077351, 17.889412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258749, 46.687302, 17.960272>,  <30.226763, 46.453274, 18.002789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258749, 46.687302, 17.960272>,  <30.312057, 47.077351, 17.889412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258749, 46.687302, 17.960272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098287, -0.164860, -0.981408,
		0.986194, -0.148207, -0.073870,
		-0.133273, -0.975118, 0.177151,
		30.218767, 46.394768, 18.013416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508715, 46.811378, 17.282942>,  <30.312057, 47.077351, 17.889412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508715, 46.811378, 17.282942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296072, 46.506382, 17.430456>,  <30.168488, 46.323383, 17.518965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296072, 46.506382, 17.430456>,  <30.508715, 46.811378, 17.282942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296072, 46.506382, 17.430456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146148, -0.346298, -0.926671,
		0.834288, -0.546520, 0.072657,
		-0.531605, -0.762492, 0.368785,
		30.136591, 46.277634, 17.541092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842796, 46.288116, 17.030533>,  <30.508715, 46.811378, 17.282942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842796, 46.288116, 17.030533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477085, 46.145245, 17.106972>,  <30.257658, 46.059521, 17.152836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477085, 46.145245, 17.106972>,  <30.842796, 46.288116, 17.030533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477085, 46.145245, 17.106972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021396, -0.428506, -0.903286,
		0.404523, -0.829943, 0.384131,
		-0.914278, -0.357181, 0.191098,
		30.202803, 46.038090, 17.164301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786341, 45.561909, 16.692160>,  <30.842796, 46.288116, 17.030533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786341, 45.561909, 16.692160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421713, 45.715137, 16.751886>,  <30.202936, 45.807076, 16.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421713, 45.715137, 16.751886>,  <30.786341, 45.561909, 16.692160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421713, 45.715137, 16.751886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245422, -0.215603, -0.945137,
		-0.329867, -0.898202, 0.290552,
		-0.911568, 0.383078, 0.149318,
		30.148243, 45.830059, 16.796682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723576, 45.190010, 16.083424>,  <30.786341, 45.561909, 16.692160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723576, 45.190010, 16.083424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074728, 45.175861, 15.892396>,  <31.285419, 45.167370, 15.777780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074728, 45.175861, 15.892396>,  <30.723576, 45.190010, 16.083424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074728, 45.175861, 15.892396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431442, -0.374317, 0.820819,
		-0.207798, -0.926626, -0.313344,
		0.877882, -0.035375, -0.477568,
		31.338093, 45.165249, 15.749125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039370, 44.455952, 16.254066>,  <30.723576, 45.190010, 16.083424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039370, 44.455952, 16.254066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341967, 44.681183, 16.121002>,  <31.523525, 44.816322, 16.041164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341967, 44.681183, 16.121002>,  <31.039370, 44.455952, 16.254066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341967, 44.681183, 16.121002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542576, -0.256354, 0.799933,
		0.365147, -0.785636, -0.499443,
		0.756491, 0.563080, -0.332661,
		31.568914, 44.850105, 16.021204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747128, 44.107071, 16.245529>,  <31.039370, 44.455952, 16.254066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747128, 44.107071, 16.245529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814035, 44.501431, 16.243595>,  <31.854181, 44.738045, 16.242435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814035, 44.501431, 16.243595>,  <31.747128, 44.107071, 16.245529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814035, 44.501431, 16.243595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481914, -0.077484, 0.872786,
		0.860104, -0.148321, -0.488079,
		0.167271, 0.985899, -0.004834,
		31.864216, 44.797199, 16.242146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538937, 44.154411, 16.179150>,  <31.747128, 44.107071, 16.245529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538937, 44.154411, 16.179150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417946, 44.498360, 16.343651>,  <32.345352, 44.704727, 16.442350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417946, 44.498360, 16.343651>,  <32.538937, 44.154411, 16.179150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417946, 44.498360, 16.343651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508613, -0.219293, 0.832600,
		0.806114, 0.461011, -0.371011,
		-0.302478, 0.859872, 0.411251,
		32.327202, 44.756321, 16.467026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017174, 44.244835, 16.602482>,  <32.538937, 44.154411, 16.179150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017174, 44.244835, 16.602482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752102, 44.518375, 16.724600>,  <32.593060, 44.682499, 16.797871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752102, 44.518375, 16.724600>,  <33.017174, 44.244835, 16.602482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752102, 44.518375, 16.724600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372725, -0.052421, 0.926460,
		0.649567, 0.727734, -0.220151,
		-0.662676, 0.683853, 0.305296,
		32.553299, 44.723530, 16.816189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423218, 44.665684, 17.087420>,  <33.017174, 44.244835, 16.602482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423218, 44.665684, 17.087420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036392, 44.699089, 17.183601>,  <32.804298, 44.719131, 17.241310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036392, 44.699089, 17.183601>,  <33.423218, 44.665684, 17.087420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036392, 44.699089, 17.183601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250956, 0.154756, 0.955548,
		0.042590, 0.984417, -0.170617,
		-0.967061, 0.083514, 0.240454,
		32.746273, 44.724144, 17.255737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457775, 45.255131, 17.425854>,  <33.423218, 44.665684, 17.087420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457775, 45.255131, 17.425854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122341, 45.066799, 17.535469>,  <32.921082, 44.953800, 17.601238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122341, 45.066799, 17.535469>,  <33.457775, 45.255131, 17.425854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122341, 45.066799, 17.535469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224335, 0.159952, 0.961296,
		-0.496437, 0.867604, -0.028510,
		-0.838584, -0.470827, 0.274040,
		32.870766, 44.925552, 17.617682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119343, 45.685059, 18.021700>,  <33.457775, 45.255131, 17.425854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119343, 45.685059, 18.021700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983761, 45.311047, 18.063337>,  <32.902412, 45.086639, 18.088320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983761, 45.311047, 18.063337>,  <33.119343, 45.685059, 18.021700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983761, 45.311047, 18.063337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255291, 0.015078, 0.966747,
		-0.905504, 0.354255, 0.233593,
		-0.338953, -0.935027, 0.104092,
		32.882076, 45.030537, 18.094564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639870, 45.669899, 18.600891>,  <33.119343, 45.685059, 18.021700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639870, 45.669899, 18.600891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767296, 45.293392, 18.556108>,  <32.843754, 45.067490, 18.529240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767296, 45.293392, 18.556108>,  <32.639870, 45.669899, 18.600891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767296, 45.293392, 18.556108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099176, -0.084364, 0.991487,
		-0.942698, -0.326960, 0.066475,
		0.318568, -0.941265, -0.111957,
		32.862865, 45.011013, 18.522522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232277, 45.187351, 18.936527>,  <32.639870, 45.669899, 18.600891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232277, 45.187351, 18.936527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576965, 44.988319, 18.896845>,  <32.783779, 44.868900, 18.873035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576965, 44.988319, 18.896845>,  <32.232277, 45.187351, 18.936527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576965, 44.988319, 18.896845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067995, -0.307014, 0.949273,
		-0.502801, -0.811266, -0.298395,
		0.861724, -0.497584, -0.099205,
		32.835484, 44.839043, 18.867083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014820, 44.660267, 19.363111>,  <32.232277, 45.187351, 18.936527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014820, 44.660267, 19.363111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413609, 44.630676, 19.353565>,  <32.652882, 44.612923, 19.347837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413609, 44.630676, 19.353565>,  <32.014820, 44.660267, 19.363111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413609, 44.630676, 19.353565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007245, -0.394135, 0.919024,
		-0.077392, -0.916071, -0.393478,
		0.996975, -0.073975, -0.023866,
		32.712700, 44.608482, 19.346405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197201, 43.952610, 19.608704>,  <32.014820, 44.660267, 19.363111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197201, 43.952610, 19.608704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542412, 44.151428, 19.644766>,  <32.749538, 44.270718, 19.666403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542412, 44.151428, 19.644766>,  <32.197201, 43.952610, 19.608704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542412, 44.151428, 19.644766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020883, -0.213421, 0.976737,
		0.504720, -0.841071, -0.194568,
		0.863031, 0.497042, 0.090154,
		32.801323, 44.300541, 19.671812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514668, 43.640335, 20.126011>,  <32.197201, 43.952610, 19.608704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514668, 43.640335, 20.126011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736332, 43.971245, 20.089083>,  <32.869331, 44.169788, 20.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736332, 43.971245, 20.089083>,  <32.514668, 43.640335, 20.126011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736332, 43.971245, 20.089083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344275, -0.126805, 0.930266,
		0.757876, -0.547305, -0.355080,
		0.554165, 0.827271, -0.092321,
		32.902580, 44.219425, 20.061386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148773, 43.407093, 20.334526>,  <32.514668, 43.640335, 20.126011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148773, 43.407093, 20.334526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105465, 43.801434, 20.385714>,  <33.079479, 44.038036, 20.416426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105465, 43.801434, 20.385714>,  <33.148773, 43.407093, 20.334526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105465, 43.801434, 20.385714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283520, -0.092759, 0.954470,
		0.952835, 0.139622, -0.269466,
		-0.108270, 0.985851, 0.127969,
		33.072983, 44.097187, 20.424105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725983, 43.674519, 20.683348>,  <33.148773, 43.407093, 20.334526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725983, 43.674519, 20.683348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439655, 43.944641, 20.754416>,  <33.267860, 44.106716, 20.797056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439655, 43.944641, 20.754416>,  <33.725983, 43.674519, 20.683348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439655, 43.944641, 20.754416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249571, 0.009788, 0.968307,
		0.652166, 0.737471, -0.175544,
		-0.715817, 0.675308, 0.177668,
		33.224911, 44.147232, 20.807716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068401, 44.246304, 20.924789>,  <33.725983, 43.674519, 20.683348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068401, 44.246304, 20.924789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695469, 44.292927, 21.061708>,  <33.471710, 44.320900, 21.143860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695469, 44.292927, 21.061708>,  <34.068401, 44.246304, 20.924789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695469, 44.292927, 21.061708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356542, 0.138551, 0.923949,
		0.060268, 0.983472, -0.170734,
		-0.932334, 0.116558, 0.342299,
		33.415768, 44.327896, 21.164398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119560, 44.734684, 21.524578>,  <34.068401, 44.246304, 20.924789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119560, 44.734684, 21.524578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754738, 44.575775, 21.565229>,  <33.535843, 44.480431, 21.589621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754738, 44.575775, 21.565229>,  <34.119560, 44.734684, 21.524578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754738, 44.575775, 21.565229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096336, 0.033312, 0.994791,
		-0.398588, 0.917096, 0.007889,
		-0.912056, -0.397272, 0.101627,
		33.481121, 44.456593, 21.595718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716290, 45.168488, 22.131376>,  <34.119560, 44.734684, 21.524578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716290, 45.168488, 22.131376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575756, 44.796463, 22.088381>,  <33.491436, 44.573250, 22.062584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575756, 44.796463, 22.088381>,  <33.716290, 45.168488, 22.131376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575756, 44.796463, 22.088381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083239, -0.083322, 0.993040,
		-0.932542, 0.357839, -0.048143,
		-0.351337, -0.930059, -0.107487,
		33.470356, 44.517445, 22.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143932, 45.181690, 22.629028>,  <33.716290, 45.168488, 22.131376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143932, 45.181690, 22.629028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230160, 44.797363, 22.559338>,  <33.281895, 44.566765, 22.517523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230160, 44.797363, 22.559338>,  <33.143932, 45.181690, 22.629028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230160, 44.797363, 22.559338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275975, -0.231093, 0.932970,
		-0.936679, -0.153038, -0.314979,
		0.215569, -0.960820, -0.174226,
		33.294830, 44.509117, 22.507071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518902, 44.787601, 22.798878>,  <33.143932, 45.181690, 22.629028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518902, 44.787601, 22.798878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820641, 44.525089, 22.792421>,  <33.001686, 44.367584, 22.788548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820641, 44.525089, 22.792421>,  <32.518902, 44.787601, 22.798878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820641, 44.525089, 22.792421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194103, -0.246461, 0.949516,
		-0.627123, -0.713133, -0.313302,
		0.754348, -0.656276, -0.016140,
		33.046944, 44.328205, 22.787579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310364, 44.165760, 23.256310>,  <32.518902, 44.787601, 22.798878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310364, 44.165760, 23.256310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709320, 44.157345, 23.228699>,  <32.948696, 44.152298, 23.212132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709320, 44.157345, 23.228699>,  <32.310364, 44.165760, 23.256310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709320, 44.157345, 23.228699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054794, -0.401686, 0.914137,
		-0.046956, -0.915536, -0.399486,
		0.997393, -0.021035, -0.069028,
		33.008537, 44.151035, 23.207991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491898, 43.625000, 23.697151>,  <32.310364, 44.165760, 23.256310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491898, 43.625000, 23.697151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856167, 43.779858, 23.639462>,  <33.074726, 43.872772, 23.604849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856167, 43.779858, 23.639462>,  <32.491898, 43.625000, 23.697151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856167, 43.779858, 23.639462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268597, -0.289577, 0.918695,
		0.313903, -0.875366, -0.367695,
		0.910670, 0.387143, -0.144222,
		33.129368, 43.896000, 23.596195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974358, 43.068241, 23.880920>,  <32.491898, 43.625000, 23.697151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974358, 43.068241, 23.880920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177311, 43.412003, 23.906195>,  <33.299084, 43.618259, 23.921358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177311, 43.412003, 23.906195>,  <32.974358, 43.068241, 23.880920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177311, 43.412003, 23.906195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247813, -0.215746, 0.944480,
		0.825320, -0.463555, -0.322436,
		0.507382, 0.859402, 0.063185,
		33.329525, 43.669823, 23.925150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645260, 42.901546, 24.007111>,  <32.974358, 43.068241, 23.880920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645260, 42.901546, 24.007111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586460, 43.275063, 24.137608>,  <33.551182, 43.499172, 24.215906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586460, 43.275063, 24.137608>,  <33.645260, 42.901546, 24.007111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586460, 43.275063, 24.137608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216977, -0.291352, 0.931684,
		0.965045, 0.207744, -0.159782,
		-0.146999, 0.933786, 0.326244,
		33.542362, 43.555199, 24.235481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299335, 43.047604, 24.388250>,  <33.645260, 42.901546, 24.007111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299335, 43.047604, 24.388250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028339, 43.312874, 24.515505>,  <33.865742, 43.472034, 24.591858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028339, 43.312874, 24.515505>,  <34.299335, 43.047604, 24.388250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028339, 43.312874, 24.515505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213228, -0.236870, 0.947854,
		0.703950, 0.709993, 0.019069,
		-0.677486, 0.663176, 0.318135,
		33.825092, 43.511826, 24.610945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630257, 43.467197, 24.781746>,  <34.299335, 43.047604, 24.388250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630257, 43.467197, 24.781746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255318, 43.532509, 24.904856>,  <34.030354, 43.571693, 24.978722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255318, 43.532509, 24.904856>,  <34.630257, 43.467197, 24.781746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255318, 43.532509, 24.904856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268776, -0.223200, 0.936985,
		0.221681, 0.961001, 0.165331,
		-0.937346, 0.163275, 0.307773,
		33.974113, 43.581490, 24.997189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660172, 43.872780, 25.471390>,  <34.630257, 43.467197, 24.781746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660172, 43.872780, 25.471390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286350, 43.735519, 25.509039>,  <34.062057, 43.653164, 25.531628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286350, 43.735519, 25.509039>,  <34.660172, 43.872780, 25.471390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286350, 43.735519, 25.509039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210103, -0.318688, 0.924281,
		-0.287171, 0.883565, 0.369928,
		-0.934553, -0.343150, 0.094121,
		34.005985, 43.632576, 25.537275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277420, 44.139633, 26.078375>,  <34.660172, 43.872780, 25.471390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277420, 44.139633, 26.078375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159203, 43.767529, 25.991407>,  <34.088272, 43.544266, 25.939226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159203, 43.767529, 25.991407>,  <34.277420, 44.139633, 26.078375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159203, 43.767529, 25.991407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207430, -0.284642, 0.935923,
		-0.932538, 0.231507, 0.277088,
		-0.295544, -0.930260, -0.217418,
		34.070538, 43.488449, 25.926182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046314, 43.942276, 26.654564>,  <34.277420, 44.139633, 26.078375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046314, 43.942276, 26.654564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086029, 43.600513, 26.450550>,  <34.109856, 43.395458, 26.328142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086029, 43.600513, 26.450550>,  <34.046314, 43.942276, 26.654564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086029, 43.600513, 26.450550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253385, -0.473964, 0.843300,
		-0.962257, -0.212963, 0.169435,
		0.099285, -0.854403, -0.510037,
		34.115814, 43.344193, 26.297539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979137, 43.459660, 27.222137>,  <34.046314, 43.942276, 26.654564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979137, 43.459660, 27.222137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104122, 43.227535, 26.921310>,  <34.179115, 43.088261, 26.740814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104122, 43.227535, 26.921310>,  <33.979137, 43.459660, 27.222137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104122, 43.227535, 26.921310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454233, -0.604056, 0.654820,
		-0.834289, -0.546223, 0.074848,
		0.312466, -0.580307, -0.752070,
		34.197861, 43.053444, 26.695690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776234, 42.719650, 27.409758>,  <33.979137, 43.459660, 27.222137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776234, 42.719650, 27.409758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088577, 42.747051, 27.161381>,  <34.275982, 42.763493, 27.012354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088577, 42.747051, 27.161381>,  <33.776234, 42.719650, 27.409758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088577, 42.747051, 27.161381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554629, -0.533439, 0.638615,
		-0.287489, -0.843060, -0.454533,
		0.780856, 0.068502, -0.620943,
		34.322834, 42.767601, 26.975098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050724, 41.988934, 27.385227>,  <33.776234, 42.719650, 27.409758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050724, 41.988934, 27.385227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337837, 42.241844, 27.268599>,  <34.510105, 42.393589, 27.198622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337837, 42.241844, 27.268599>,  <34.050724, 41.988934, 27.385227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337837, 42.241844, 27.268599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637574, -0.428591, 0.640164,
		0.279795, -0.645398, -0.710758,
		0.717785, 0.632275, -0.291571,
		34.553173, 42.431526, 27.181128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595459, 41.463020, 27.227911>,  <34.050724, 41.988934, 27.385227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595459, 41.463020, 27.227911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740837, 41.830776, 27.288086>,  <34.828064, 42.051430, 27.324192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740837, 41.830776, 27.288086>,  <34.595459, 41.463020, 27.227911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740837, 41.830776, 27.288086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724935, -0.380524, 0.574170,
		0.585132, -0.099620, -0.804796,
		0.363442, 0.919390, 0.150439,
		34.849869, 42.106594, 27.333218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294060, 41.344070, 27.133432>,  <34.595459, 41.463020, 27.227911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294060, 41.344070, 27.133432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250763, 41.685341, 27.337540>,  <35.224785, 41.890102, 27.460005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250763, 41.685341, 27.337540>,  <35.294060, 41.344070, 27.133432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250763, 41.685341, 27.337540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731273, -0.279380, 0.622243,
		0.673442, 0.440497, -0.593665,
		-0.108238, 0.853176, 0.510270,
		35.218292, 41.941292, 27.490622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981602, 41.516621, 27.405300>,  <35.294060, 41.344070, 27.133432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981602, 41.516621, 27.405300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727596, 41.730534, 27.628286>,  <35.575195, 41.858883, 27.762077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727596, 41.730534, 27.628286>,  <35.981602, 41.516621, 27.405300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727596, 41.730534, 27.628286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526444, -0.228539, 0.818918,
		0.565347, 0.813496, -0.136409,
		-0.635012, 0.534785, 0.557463,
		35.537094, 41.890968, 27.795525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399624, 41.870262, 27.778057>,  <35.981602, 41.516621, 27.405300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399624, 41.870262, 27.778057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062077, 41.894562, 27.991297>,  <35.859547, 41.909142, 28.119240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062077, 41.894562, 27.991297>,  <36.399624, 41.870262, 27.778057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062077, 41.894562, 27.991297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518281, -0.164752, 0.839191,
		0.138812, 0.984462, 0.107542,
		-0.843870, 0.060753, 0.533098,
		35.808914, 41.912788, 28.151226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661060, 42.051491, 28.415842>,  <36.399624, 41.870262, 27.778057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661060, 42.051491, 28.415842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288109, 41.957119, 28.525394>,  <36.064339, 41.900494, 28.591125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288109, 41.957119, 28.525394>,  <36.661060, 42.051491, 28.415842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288109, 41.957119, 28.525394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333160, -0.266823, 0.904328,
		-0.140284, 0.934420, 0.327383,
		-0.932376, -0.235933, 0.273881,
		36.008396, 41.886337, 28.607559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534203, 42.347424, 29.116474>,  <36.661060, 42.051491, 28.415842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534203, 42.347424, 29.116474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275383, 42.046673, 29.065851>,  <36.120094, 41.866222, 29.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275383, 42.046673, 29.065851>,  <36.534203, 42.347424, 29.116474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275383, 42.046673, 29.065851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205087, -0.331499, 0.920895,
		-0.734352, 0.569905, 0.368695,
		-0.647044, -0.751876, -0.126557,
		36.081268, 41.821110, 29.027884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044594, 42.305885, 29.654509>,  <36.534203, 42.347424, 29.116474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044594, 42.305885, 29.654509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070415, 41.934795, 29.507448>,  <36.085911, 41.712143, 29.419212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070415, 41.934795, 29.507448>,  <36.044594, 42.305885, 29.654509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070415, 41.934795, 29.507448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485931, -0.292563, 0.823577,
		-0.871610, -0.231819, 0.431921,
		0.064557, -0.927721, -0.367649,
		36.089783, 41.656479, 29.397154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822525, 41.940220, 30.180082>,  <36.044594, 42.305885, 29.654509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822525, 41.940220, 30.180082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037388, 41.694057, 29.949350>,  <36.166306, 41.546360, 29.810911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037388, 41.694057, 29.949350>,  <35.822525, 41.940220, 30.180082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037388, 41.694057, 29.949350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434182, -0.384573, 0.814610,
		-0.723149, -0.688026, 0.060622,
		0.537160, -0.615406, -0.576832,
		36.198536, 41.509438, 29.776300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605541, 41.166435, 30.217062>,  <35.822525, 41.940220, 30.180082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605541, 41.166435, 30.217062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984081, 41.276646, 30.149536>,  <36.211205, 41.342773, 30.109020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984081, 41.276646, 30.149536>,  <35.605541, 41.166435, 30.217062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984081, 41.276646, 30.149536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277152, -0.423524, 0.862447,
		0.166131, -0.862967, -0.477167,
		0.946354, 0.275527, -0.168813,
		36.267986, 41.359303, 30.098892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099003, 40.695255, 30.339811>,  <35.605541, 41.166435, 30.217062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099003, 40.695255, 30.339811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378605, 40.980076, 30.366299>,  <36.546364, 41.150967, 30.382191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378605, 40.980076, 30.366299>,  <36.099003, 40.695255, 30.339811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378605, 40.980076, 30.366299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436510, -0.498185, 0.749180,
		0.566441, -0.494774, -0.659048,
		0.699002, 0.712047, 0.066218,
		36.588306, 41.193691, 30.386164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821594, 40.378139, 30.139166>,  <36.099003, 40.695255, 30.339811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821594, 40.378139, 30.139166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811829, 40.676880, 30.404984>,  <36.805969, 40.856125, 30.564474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811829, 40.676880, 30.404984>,  <36.821594, 40.378139, 30.139166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811829, 40.676880, 30.404984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498587, -0.567070, 0.655623,
		0.866495, 0.347343, -0.358523,
		-0.024418, 0.746850, 0.664544,
		36.804504, 40.900936, 30.604347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498539, 40.542007, 30.336460>,  <36.821594, 40.378139, 30.139166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498539, 40.542007, 30.336460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274792, 40.641064, 30.652885>,  <37.140545, 40.700497, 30.842741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274792, 40.641064, 30.652885>,  <37.498539, 40.542007, 30.336460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274792, 40.641064, 30.652885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618760, -0.510290, 0.597277,
		0.551584, 0.823575, 0.132208,
		-0.559367, 0.247643, 0.791063,
		37.106983, 40.715355, 30.890205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983997, 40.927612, 30.825087>,  <37.498539, 40.542007, 30.336460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983997, 40.927612, 30.825087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678612, 40.752747, 31.015247>,  <37.495380, 40.647827, 31.129343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678612, 40.752747, 31.015247>,  <37.983997, 40.927612, 30.825087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678612, 40.752747, 31.015247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645779, -0.527275, 0.552223,
		0.009257, 0.728609, 0.684867,
		-0.763468, -0.437161, 0.475401,
		37.449570, 40.621597, 31.157867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615623, 41.334354, 30.601675>,  <37.983997, 40.927612, 30.825087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615623, 41.334354, 30.601675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917252, 41.210236, 30.370125>,  <39.098228, 41.135765, 30.231195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917252, 41.210236, 30.370125>,  <38.615623, 41.334354, 30.601675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917252, 41.210236, 30.370125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030121, 0.896772, -0.441466,
		0.656105, 0.315459, 0.685574,
		0.754068, -0.310299, -0.578875,
		39.143471, 41.117146, 30.196463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234341, 41.778748, 30.680563>,  <38.615623, 41.334354, 30.601675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234341, 41.778748, 30.680563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250248, 41.623524, 30.312254>,  <39.259792, 41.530388, 30.091269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250248, 41.623524, 30.312254>,  <39.234341, 41.778748, 30.680563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250248, 41.623524, 30.312254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143550, 0.914164, -0.379076,
		0.988844, -0.117102, 0.092062,
		0.039769, -0.388062, -0.920775,
		39.262180, 41.507107, 30.036022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772373, 42.069908, 30.288555>,  <39.234341, 41.778748, 30.680563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772373, 42.069908, 30.288555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548500, 41.923149, 29.991331>,  <39.414177, 41.835094, 29.812998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548500, 41.923149, 29.991331>,  <39.772373, 42.069908, 30.288555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548500, 41.923149, 29.991331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060847, 0.912425, -0.404695,
		0.826468, -0.181289, -0.532996,
		-0.559686, -0.366899, -0.743059,
		39.380592, 41.813080, 29.768414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041584, 42.427261, 29.598896>,  <39.772373, 42.069908, 30.288555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041584, 42.427261, 29.598896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673721, 42.305325, 29.499863>,  <39.453003, 42.232162, 29.440443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673721, 42.305325, 29.499863>,  <40.041584, 42.427261, 29.598896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673721, 42.305325, 29.499863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176639, 0.884158, -0.432508,
		0.350752, -0.354026, -0.866971,
		-0.919659, -0.304844, -0.247585,
		39.397823, 42.213871, 29.425587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739883, 42.096893, 28.978714>,  <40.041584, 42.427261, 29.598896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739883, 42.096893, 28.978714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354836, 42.008789, 28.915649>,  <39.123806, 41.955925, 28.877810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354836, 42.008789, 28.915649>,  <39.739883, 42.096893, 28.978714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354836, 42.008789, 28.915649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177381, 0.952478, -0.247633,
		0.204714, -0.210408, -0.955940,
		-0.962615, -0.220260, -0.157664,
		39.066051, 41.942711, 28.868351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576485, 42.282021, 28.219812>,  <39.739883, 42.096893, 28.978714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576485, 42.282021, 28.219812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262745, 42.298100, 28.467419>,  <39.074501, 42.307747, 28.615982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262745, 42.298100, 28.467419>,  <39.576485, 42.282021, 28.219812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262745, 42.298100, 28.467419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225146, 0.911404, -0.344461,
		-0.578020, -0.409546, -0.705808,
		-0.784349, 0.040195, 0.619017,
		39.027439, 42.310158, 28.653124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015591, 42.665085, 27.897055>,  <39.576485, 42.282021, 28.219812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015591, 42.665085, 27.897055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919125, 42.702602, 28.283432>,  <38.861244, 42.725113, 28.515259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919125, 42.702602, 28.283432>,  <39.015591, 42.665085, 27.897055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919125, 42.702602, 28.283432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248558, 0.956152, -0.154896,
		-0.938115, -0.277447, -0.207277,
		-0.241164, 0.093790, 0.965942,
		38.846775, 42.730740, 28.573215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257236, 42.676163, 28.009403>,  <39.015591, 42.665085, 27.897055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257236, 42.676163, 28.009403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505989, 42.880920, 28.246458>,  <38.655243, 43.003777, 28.388691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505989, 42.880920, 28.246458>,  <38.257236, 42.676163, 28.009403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505989, 42.880920, 28.246458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385562, 0.858842, -0.337243,
		-0.681617, -0.018773, 0.731468,
		0.621885, 0.511897, 0.592640,
		38.692554, 43.034489, 28.424250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910946, 43.251621, 28.330420>,  <38.257236, 42.676163, 28.009403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910946, 43.251621, 28.330420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303352, 43.326687, 28.310894>,  <38.538795, 43.371727, 28.299179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303352, 43.326687, 28.310894>,  <37.910946, 43.251621, 28.330420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303352, 43.326687, 28.310894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187740, 0.982214, 0.002984,
		0.048507, 0.006238, 0.998803,
		0.981020, 0.187660, -0.048816,
		38.597660, 43.382984, 28.296249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426243, 43.441612, 28.718332>,  <37.910946, 43.251621, 28.330420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426243, 43.441612, 28.718332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801849, 43.483974, 28.849194>,  <38.027214, 43.509392, 28.927710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801849, 43.483974, 28.849194>,  <37.426243, 43.441612, 28.718332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801849, 43.483974, 28.849194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202011, 0.939808, 0.275595,
		-0.278274, -0.324877, 0.903891,
		0.939018, 0.105905, 0.327153,
		38.083553, 43.515747, 28.947340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377720, 43.664597, 29.393797>,  <37.426243, 43.441612, 28.718332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377720, 43.664597, 29.393797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773193, 43.703060, 29.347755>,  <38.010479, 43.726139, 29.320131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773193, 43.703060, 29.347755>,  <37.377720, 43.664597, 29.393797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773193, 43.703060, 29.347755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016611, 0.692498, 0.721229,
		0.149064, -0.714982, 0.683067,
		0.988688, 0.096162, -0.115103,
		38.069801, 43.731911, 29.313225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730164, 43.644276, 30.026525>,  <37.377720, 43.664597, 29.393797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730164, 43.644276, 30.026525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000774, 43.833313, 29.800619>,  <38.163143, 43.946735, 29.665075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000774, 43.833313, 29.800619>,  <37.730164, 43.644276, 30.026525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000774, 43.833313, 29.800619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121949, 0.684427, 0.718811,
		0.726250, -0.555168, 0.405401,
		0.676527, 0.472598, -0.564767,
		38.203735, 43.975090, 29.631189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378876, 43.790375, 30.363316>,  <37.730164, 43.644276, 30.026525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378876, 43.790375, 30.363316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321697, 44.069324, 30.082394>,  <38.287392, 44.236694, 29.913841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321697, 44.069324, 30.082394>,  <38.378876, 43.790375, 30.363316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321697, 44.069324, 30.082394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000235, 0.709616, 0.704588,
		0.989730, 0.100553, -0.101601,
		-0.142946, 0.697376, -0.702305,
		38.278812, 44.278538, 29.871702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665306, 44.373013, 30.690945>,  <38.378876, 43.790375, 30.363316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665306, 44.373013, 30.690945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432236, 44.522305, 30.402172>,  <38.292393, 44.611877, 30.228909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432236, 44.522305, 30.402172>,  <38.665306, 44.373013, 30.690945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432236, 44.522305, 30.402172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204894, 0.792154, 0.574901,
		0.786450, 0.482902, -0.385100,
		-0.582679, 0.373226, -0.721933,
		38.257431, 44.634274, 30.185593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738083, 45.108391, 30.782890>,  <38.665306, 44.373013, 30.690945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738083, 45.108391, 30.782890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412697, 45.067768, 30.553816>,  <38.217464, 45.043396, 30.416372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412697, 45.067768, 30.553816>,  <38.738083, 45.108391, 30.782890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412697, 45.067768, 30.553816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381594, 0.836280, 0.393727,
		0.438939, 0.538815, -0.719035,
		-0.813460, -0.101557, -0.572685,
		38.168659, 45.037300, 30.382010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578945, 45.800056, 30.403959>,  <38.738083, 45.108391, 30.782890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578945, 45.800056, 30.403959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267349, 45.572292, 30.508995>,  <38.080391, 45.435635, 30.572016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267349, 45.572292, 30.508995>,  <38.578945, 45.800056, 30.403959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267349, 45.572292, 30.508995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289185, 0.697825, 0.655296,
		-0.556372, 0.434530, -0.708261,
		-0.778988, -0.569407, 0.262590,
		38.033653, 45.401470, 30.587772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797531, 46.079842, 30.315973>,  <38.578945, 45.800056, 30.403959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797531, 46.079842, 30.315973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836704, 45.843807, 30.636526>,  <37.860210, 45.702187, 30.828857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836704, 45.843807, 30.636526>,  <37.797531, 46.079842, 30.315973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836704, 45.843807, 30.636526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430741, 0.700784, 0.568651,
		-0.897146, -0.400879, -0.185541,
		0.097936, -0.590083, 0.801381,
		37.866085, 45.666782, 30.876940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389778, 45.874123, 30.858761>,  <37.797531, 46.079842, 30.315973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389778, 45.874123, 30.858761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026012, 45.768936, 30.987638>,  <36.807751, 45.705826, 31.064964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026012, 45.768936, 30.987638>,  <37.389778, 45.874123, 30.858761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026012, 45.768936, 30.987638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332826, -0.924723, 0.184697,
		0.249370, 0.275201, 0.928482,
		-0.909418, -0.262965, 0.322193,
		36.753185, 45.690048, 31.084297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642754, 45.142780, 31.117470>,  <37.389778, 45.874123, 30.858761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642754, 45.142780, 31.117470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449368, 45.288757, 30.799204>,  <37.333336, 45.376343, 30.608244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449368, 45.288757, 30.799204>,  <37.642754, 45.142780, 31.117470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449368, 45.288757, 30.799204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729601, -0.334241, -0.596629,
		-0.483677, -0.868966, -0.104666,
		-0.483466, 0.364940, -0.795663,
		37.304329, 45.398239, 30.560505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556469, 44.659309, 30.602631>,  <37.642754, 45.142780, 31.117470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556469, 44.659309, 30.602631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518795, 45.008278, 30.410791>,  <37.496193, 45.217659, 30.295689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518795, 45.008278, 30.410791>,  <37.556469, 44.659309, 30.602631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518795, 45.008278, 30.410791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573165, -0.346375, -0.742635,
		-0.814009, -0.344831, -0.467419,
		-0.094182, 0.872420, -0.479598,
		37.490540, 45.270004, 30.266912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103657, 44.764046, 29.861774>,  <37.556469, 44.659309, 30.602631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103657, 44.764046, 29.861774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454456, 44.930695, 29.957518>,  <37.664936, 45.030685, 30.014963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454456, 44.930695, 29.957518>,  <37.103657, 44.764046, 29.861774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454456, 44.930695, 29.957518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461399, -0.591224, -0.661487,
		-0.134075, 0.690566, -0.710734,
		0.877003, 0.416621, 0.239358,
		37.717556, 45.055679, 30.029325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510719, 45.085678, 29.222795>,  <37.103657, 44.764046, 29.861774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510719, 45.085678, 29.222795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748814, 44.939774, 29.509193>,  <37.891670, 44.852230, 29.681032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748814, 44.939774, 29.509193>,  <37.510719, 45.085678, 29.222795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748814, 44.939774, 29.509193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416628, -0.621824, -0.663141,
		0.687109, 0.693027, -0.218162,
		0.595233, -0.364757, 0.715995,
		37.927383, 44.830345, 29.723991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249866, 45.187950, 28.938946>,  <37.510719, 45.085678, 29.222795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249866, 45.187950, 28.938946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235600, 44.898537, 29.214691>,  <38.227039, 44.724888, 29.380138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235600, 44.898537, 29.214691>,  <38.249866, 45.187950, 28.938946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235600, 44.898537, 29.214691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449928, -0.627563, -0.635397,
		0.892352, 0.287502, 0.347922,
		-0.035665, -0.723538, 0.689363,
		38.224899, 44.681477, 29.421499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864304, 44.858311, 28.842022>,  <38.249866, 45.187950, 28.938946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864304, 44.858311, 28.842022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649185, 44.595528, 29.053375>,  <38.520115, 44.437859, 29.180187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649185, 44.595528, 29.053375>,  <38.864304, 44.858311, 28.842022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649185, 44.595528, 29.053375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467574, -0.753930, -0.461481,
		0.701535, -0.001124, 0.712634,
		-0.537795, -0.656954, 0.528383,
		38.487846, 44.398441, 29.211889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015121, 44.176140, 28.553328>,  <38.864304, 44.858311, 28.842022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015121, 44.176140, 28.553328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797363, 44.055748, 28.866516>,  <38.666710, 43.983513, 29.054428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797363, 44.055748, 28.866516>,  <39.015121, 44.176140, 28.553328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797363, 44.055748, 28.866516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242645, -0.950009, -0.196485,
		0.802967, 0.083018, 0.590214,
		-0.544397, -0.300983, 0.782970,
		38.634045, 43.965454, 29.101406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410885, 43.659222, 29.092047>,  <39.015121, 44.176140, 28.553328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410885, 43.659222, 29.092047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013348, 43.615814, 29.083035>,  <38.774826, 43.589771, 29.077627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013348, 43.615814, 29.083035>,  <39.410885, 43.659222, 29.092047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013348, 43.615814, 29.083035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110798, -0.977963, -0.176952,
		-0.002831, -0.178358, 0.983962,
		-0.993839, -0.108520, -0.022531,
		38.715195, 43.583260, 29.076275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079960, 43.346756, 29.728891>,  <39.410885, 43.659222, 29.092047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079960, 43.346756, 29.728891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881268, 43.280548, 29.388102>,  <38.762051, 43.240822, 29.183628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881268, 43.280548, 29.388102>,  <39.079960, 43.346756, 29.728891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881268, 43.280548, 29.388102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039409, -0.984935, 0.168377,
		-0.867007, 0.050063, 0.495775,
		-0.496735, -0.165522, -0.851972,
		38.732246, 43.230892, 29.132509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485519, 42.883389, 29.880661>,  <39.079960, 43.346756, 29.728891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485519, 42.883389, 29.880661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637604, 42.832165, 29.514265>,  <38.728855, 42.801430, 29.294428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637604, 42.832165, 29.514265>,  <38.485519, 42.883389, 29.880661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637604, 42.832165, 29.514265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043227, -0.986826, 0.155905,
		-0.923890, -0.098872, -0.369664,
		0.380209, -0.128060, -0.915992,
		38.751667, 42.793747, 29.239468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057484, 42.393700, 29.400024>,  <38.485519, 42.883389, 29.880661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057484, 42.393700, 29.400024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446110, 42.373802, 29.307436>,  <38.679287, 42.361866, 29.251883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446110, 42.373802, 29.307436>,  <38.057484, 42.393700, 29.400024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446110, 42.373802, 29.307436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045826, -0.919683, 0.389979,
		-0.232276, -0.389499, -0.891257,
		0.971570, -0.049740, -0.231469,
		38.737579, 42.358879, 29.237995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218987, 41.636112, 29.289795>,  <38.057484, 42.393700, 29.400024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218987, 41.636112, 29.289795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578773, 41.809895, 29.308535>,  <38.794647, 41.914165, 29.319778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578773, 41.809895, 29.308535>,  <38.218987, 41.636112, 29.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578773, 41.809895, 29.308535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409057, -0.874854, 0.259428,
		0.153696, -0.214185, -0.964626,
		0.899472, 0.434460, 0.046848,
		38.848614, 41.940231, 29.322590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682201, 41.312931, 28.831255>,  <38.218987, 41.636112, 29.289795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682201, 41.312931, 28.831255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894676, 41.452614, 29.140034>,  <39.022160, 41.536423, 29.325300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.894676, 41.452614, 29.140034>,  <38.682201, 41.312931, 28.831255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894676, 41.452614, 29.140034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377221, -0.913301, 0.153579,
		0.758648, 0.209615, -0.616859,
		0.531185, 0.349204, 0.771945,
		39.054031, 41.557377, 29.371616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459293, 41.003010, 28.969690>,  <38.682201, 41.312931, 28.831255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459293, 41.003010, 28.969690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323463, 41.148285, 29.316744>,  <39.241966, 41.235451, 29.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323463, 41.148285, 29.316744>,  <39.459293, 41.003010, 28.969690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323463, 41.148285, 29.316744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237092, -0.859606, 0.452620,
		0.910208, 0.359406, 0.205789,
		-0.339571, 0.363188, 0.867632,
		39.221592, 41.257240, 29.577034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999680, 40.678986, 29.358343>,  <39.459293, 41.003010, 28.969690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999680, 40.678986, 29.358343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718262, 40.798805, 29.616117>,  <39.549412, 40.870697, 29.770782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718262, 40.798805, 29.616117>,  <39.999680, 40.678986, 29.358343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718262, 40.798805, 29.616117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089149, -0.862458, 0.498216,
		0.705040, 0.407966, 0.580071,
		-0.703542, 0.299549, 0.644437,
		39.507198, 40.888668, 29.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238091, 40.618614, 30.187950>,  <39.999680, 40.678986, 29.358343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238091, 40.618614, 30.187950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843163, 40.600723, 30.127014>,  <39.606205, 40.589989, 30.090452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843163, 40.600723, 30.127014>,  <40.238091, 40.618614, 30.187950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843163, 40.600723, 30.127014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035233, -0.873859, 0.484902,
		-0.154808, 0.484119, 0.861199,
		-0.987316, -0.044724, -0.152338,
		39.546967, 40.587307, 30.081312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916531, 40.719418, 30.398409>,  <40.238091, 40.618614, 30.187950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916531, 40.719418, 30.398409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016319, 40.982086, 30.113722>,  <41.076191, 41.139687, 29.942909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016319, 40.982086, 30.113722>,  <40.916531, 40.719418, 30.398409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016319, 40.982086, 30.113722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024572, 0.739012, 0.673244,
		0.968071, -0.150466, 0.200498,
		0.249471, 0.656674, -0.711719,
		41.091160, 41.179089, 29.900206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568222, 41.047703, 30.600916>,  <40.916531, 40.719418, 30.398409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568222, 41.047703, 30.600916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378410, 41.321259, 30.379244>,  <41.264523, 41.485394, 30.246241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378410, 41.321259, 30.379244>,  <41.568222, 41.047703, 30.600916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378410, 41.321259, 30.379244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262245, 0.710829, 0.652648,
		0.840268, 0.164369, -0.516654,
		-0.474528, 0.683890, -0.554182,
		41.236053, 41.526424, 30.212990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034519, 41.468567, 30.195988>,  <41.568222, 41.047703, 30.600916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034519, 41.468567, 30.195988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092888, 41.099209, 30.053974>,  <42.127907, 40.877594, 29.968767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092888, 41.099209, 30.053974>,  <42.034519, 41.468567, 30.195988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092888, 41.099209, 30.053974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946893, 0.234301, -0.220219,
		0.286534, -0.304044, 0.908546,
		0.145917, -0.923396, -0.355032,
		42.136662, 40.822189, 29.947464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642895, 41.172146, 30.561836>,  <42.034519, 41.468567, 30.195988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642895, 41.172146, 30.561836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606930, 41.058681, 30.179956>,  <42.585350, 40.990604, 29.950829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606930, 41.058681, 30.179956>,  <42.642895, 41.172146, 30.561836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606930, 41.058681, 30.179956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861742, 0.458424, -0.217368,
		0.499316, -0.842249, 0.203222,
		-0.089916, -0.283660, -0.954700,
		42.579956, 40.973583, 29.893547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210445, 40.857265, 30.386475>,  <42.642895, 41.172146, 30.561836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210445, 40.857265, 30.386475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052666, 40.996277, 30.046209>,  <42.957996, 41.079685, 29.842049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052666, 40.996277, 30.046209>,  <43.210445, 40.857265, 30.386475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052666, 40.996277, 30.046209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916029, 0.222059, -0.334036,
		0.072809, -0.910994, -0.405941,
		-0.394448, 0.347533, -0.850665,
		42.934330, 41.100536, 29.791010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613377, 40.547863, 29.755741>,  <43.210445, 40.857265, 30.386475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613377, 40.547863, 29.755741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450470, 40.904575, 29.676897>,  <43.352726, 41.118603, 29.629591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450470, 40.904575, 29.676897>,  <43.613377, 40.547863, 29.755741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450470, 40.904575, 29.676897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862618, 0.304702, -0.403791,
		-0.300035, -0.334482, -0.893365,
		-0.407271, 0.891784, -0.197109,
		43.328289, 41.172112, 29.617764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380268, 39.835300, 29.898903>,  <43.613377, 40.547863, 29.755741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380268, 39.835300, 29.898903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220055, 39.471321, 29.855896>,  <43.123924, 39.252934, 29.830091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.220055, 39.471321, 29.855896>,  <43.380268, 39.835300, 29.898903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220055, 39.471321, 29.855896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166318, -0.187592, 0.968064,
		-0.901060, 0.369862, 0.226479,
		-0.400536, -0.909951, -0.107518,
		43.099895, 39.198338, 29.823641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807514, 39.671772, 30.366215>,  <43.380268, 39.835300, 29.898903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807514, 39.671772, 30.366215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994755, 39.330471, 30.274263>,  <43.107098, 39.125690, 30.219093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994755, 39.330471, 30.274263>,  <42.807514, 39.671772, 30.366215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994755, 39.330471, 30.274263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289713, -0.097575, 0.952127,
		-0.834835, -0.512288, 0.201524,
		0.468099, -0.853253, -0.229876,
		43.135185, 39.074493, 30.205301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745647, 39.162807, 30.947617>,  <42.807514, 39.671772, 30.366215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745647, 39.162807, 30.947617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083820, 39.084461, 30.748869>,  <43.286724, 39.037453, 30.629622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083820, 39.084461, 30.748869>,  <42.745647, 39.162807, 30.947617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083820, 39.084461, 30.748869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484874, -0.108558, 0.867820,
		-0.223920, -0.974602, 0.003194,
		0.845433, -0.195871, -0.496868,
		43.337452, 39.025700, 30.599808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174515, 38.642937, 31.289692>,  <42.745647, 39.162807, 30.947617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174515, 38.642937, 31.289692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481983, 38.825378, 31.110306>,  <43.666462, 38.934841, 31.002674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481983, 38.825378, 31.110306>,  <43.174515, 38.642937, 31.289692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481983, 38.825378, 31.110306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509335, -0.012302, 0.860481,
		0.386950, -0.889843, -0.241765,
		0.768666, 0.456102, -0.448467,
		43.712582, 38.962208, 30.975765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.793442, 38.206905, 31.274475>,  <43.174515, 38.642937, 31.289692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.793442, 38.206905, 31.274475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908825, 38.589863, 31.279953>,  <43.978054, 38.819637, 31.283239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908825, 38.589863, 31.279953>,  <43.793442, 38.206905, 31.274475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908825, 38.589863, 31.279953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528372, -0.171093, 0.831595,
		0.798507, -0.232648, -0.555213,
		0.288462, 0.957393, 0.013694,
		43.995365, 38.877079, 31.284061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479465, 38.248085, 31.365725>,  <43.793442, 38.206905, 31.274475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479465, 38.248085, 31.365725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339912, 38.588440, 31.522837>,  <44.256180, 38.792652, 31.617104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339912, 38.588440, 31.522837>,  <44.479465, 38.248085, 31.365725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339912, 38.588440, 31.522837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659774, -0.074650, 0.747747,
		0.665568, 0.520019, -0.535349,
		-0.348879, 0.850886, 0.392780,
		44.235249, 38.843704, 31.640671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104908, 38.631542, 31.584301>,  <44.479465, 38.248085, 31.365725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104908, 38.631542, 31.584301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775787, 38.743008, 31.782429>,  <44.578316, 38.809887, 31.901306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.775787, 38.743008, 31.782429>,  <45.104908, 38.631542, 31.584301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775787, 38.743008, 31.782429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527137, 0.048446, 0.848398,
		0.212425, 0.959165, -0.186757,
		-0.822801, 0.278667, 0.495320,
		44.528946, 38.826607, 31.931025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499004, 39.061008, 32.097672>,  <45.104908, 38.631542, 31.584301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499004, 39.061008, 32.097672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126209, 38.963783, 32.205238>,  <44.902531, 38.905449, 32.269779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126209, 38.963783, 32.205238>,  <45.499004, 39.061008, 32.097672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126209, 38.963783, 32.205238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308857, -0.144144, 0.940122,
		-0.189743, 0.959242, 0.209412,
		-0.931990, -0.243060, 0.268918,
		44.846611, 38.890865, 32.285915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.243832, 39.601158, 32.570759>,  <45.499004, 39.061008, 32.097672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.243832, 39.601158, 32.570759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117722, 39.224541, 32.618256>,  <45.042057, 38.998569, 32.646751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.117722, 39.224541, 32.618256>,  <45.243832, 39.601158, 32.570759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117722, 39.224541, 32.618256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419191, -0.025915, 0.907528,
		-0.851400, 0.335893, 0.402857,
		-0.315272, -0.941544, 0.118740,
		45.023140, 38.942078, 32.653877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954487, 39.591145, 33.203262>,  <45.243832, 39.601158, 32.570759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954487, 39.591145, 33.203262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139652, 39.238693, 33.164650>,  <45.250751, 39.027222, 33.141483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139652, 39.238693, 33.164650>,  <44.954487, 39.591145, 33.203262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139652, 39.238693, 33.164650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548851, 0.199406, 0.811788,
		-0.696043, -0.428770, 0.575917,
		0.462912, -0.881132, -0.096536,
		45.278526, 38.974354, 33.135689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208778, 39.322201, 33.894260>,  <44.954487, 39.591145, 33.203262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208778, 39.322201, 33.894260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383400, 39.043926, 33.666073>,  <45.488174, 38.876961, 33.529160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383400, 39.043926, 33.666073>,  <45.208778, 39.322201, 33.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383400, 39.043926, 33.666073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787172, -0.011674, 0.616623,
		-0.435636, -0.718251, 0.542528,
		0.436557, -0.695686, -0.570473,
		45.514366, 38.835220, 33.494930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369175, 38.737320, 34.261784>,  <45.208778, 39.322201, 33.894260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369175, 38.737320, 34.261784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645077, 38.739719, 33.972176>,  <45.810619, 38.741161, 33.798412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.645077, 38.739719, 33.972176>,  <45.369175, 38.737320, 34.261784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645077, 38.739719, 33.972176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716637, -0.148296, 0.681498,
		-0.103277, -0.988925, -0.106591,
		0.689757, 0.006004, -0.724016,
		45.852005, 38.741520, 33.754971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605198, 38.074589, 34.261593>,  <45.369175, 38.737320, 34.261784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605198, 38.074589, 34.261593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869774, 38.343014, 34.127621>,  <46.028519, 38.504066, 34.047237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869774, 38.343014, 34.127621>,  <45.605198, 38.074589, 34.261593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869774, 38.343014, 34.127621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669539, -0.327103, 0.666874,
		0.337957, -0.665344, -0.665660,
		0.661440, 0.671060, -0.334927,
		46.068207, 38.544331, 34.027142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527653, 37.855934, 34.846821>,  <45.605198, 38.074589, 34.261593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527653, 37.855934, 34.846821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472603, 37.655037, 35.188301>,  <45.439571, 37.534500, 35.393188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472603, 37.655037, 35.188301>,  <45.527653, 37.855934, 34.846821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472603, 37.655037, 35.188301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752158, -0.613787, -0.239840,
		0.644451, 0.609112, 0.462239,
		-0.137627, -0.502243, 0.853705,
		45.431316, 37.504364, 35.444412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239670, 37.900860, 35.144955>,  <45.527653, 37.855934, 34.846821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239670, 37.900860, 35.144955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022835, 37.600330, 35.295502>,  <45.892735, 37.420013, 35.385830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.022835, 37.600330, 35.295502>,  <46.239670, 37.900860, 35.144955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022835, 37.600330, 35.295502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582622, -0.658798, -0.475959,
		0.605551, -0.038730, 0.794863,
		-0.542088, -0.751323, 0.376371,
		45.860207, 37.374935, 35.408413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707458, 37.293236, 35.106869>,  <46.239670, 37.900860, 35.144955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707458, 37.293236, 35.106869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378536, 37.093063, 35.215221>,  <46.181183, 36.972961, 35.280235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378536, 37.093063, 35.215221>,  <46.707458, 37.293236, 35.106869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378536, 37.093063, 35.215221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456012, -0.864268, -0.212352,
		0.340384, -0.051092, 0.938897,
		-0.822308, -0.500430, 0.270885,
		46.131844, 36.942936, 35.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.796547, 36.820515, 35.783058>,  <46.707458, 37.293236, 35.106869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.796547, 36.820515, 35.783058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532486, 36.679466, 35.517773>,  <46.374050, 36.594837, 35.358601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.532486, 36.679466, 35.517773>,  <46.796547, 36.820515, 35.783058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532486, 36.679466, 35.517773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609312, -0.767731, -0.198313,
		-0.439242, -0.535022, 0.721678,
		-0.660156, -0.352619, -0.663215,
		46.334438, 36.573681, 35.318810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497360, 36.090282, 35.923988>,  <46.796547, 36.820515, 35.783058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497360, 36.090282, 35.923988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540760, 36.198807, 35.541447>,  <46.566799, 36.263920, 35.311920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540760, 36.198807, 35.541447>,  <46.497360, 36.090282, 35.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540760, 36.198807, 35.541447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626355, -0.765713, -0.146161,
		-0.771950, -0.583160, -0.253015,
		0.108502, 0.271307, -0.956358,
		46.573311, 36.280197, 35.254539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.381420, 35.522320, 35.513199>,  <46.497360, 36.090282, 35.923988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.381420, 35.522320, 35.513199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609753, 35.758759, 35.285252>,  <46.746754, 35.900623, 35.148483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609753, 35.758759, 35.285252>,  <46.381420, 35.522320, 35.513199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609753, 35.758759, 35.285252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692750, -0.719289, -0.052162,
		-0.440733, -0.365000, -0.820079,
		0.570835, 0.591099, -0.569868,
		46.781002, 35.936089, 35.114292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.586067, 35.161385, 34.913239>,  <46.381420, 35.522320, 35.513199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.586067, 35.161385, 34.913239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857349, 35.446278, 34.985641>,  <47.020119, 35.617214, 35.029083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.857349, 35.446278, 34.985641>,  <46.586067, 35.161385, 34.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857349, 35.446278, 34.985641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725712, -0.687886, -0.012446,
		0.115646, 0.139797, -0.983404,
		0.678210, 0.712228, 0.181004,
		47.060814, 35.659946, 35.039944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183434, 35.293583, 34.476810>,  <46.586067, 35.161385, 34.913239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183434, 35.293583, 34.476810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330074, 35.344353, 34.845482>,  <47.418060, 35.374813, 35.066685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.330074, 35.344353, 34.845482>,  <47.183434, 35.293583, 34.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330074, 35.344353, 34.845482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542057, -0.834284, -0.100720,
		0.756158, 0.536527, -0.374652,
		0.366605, 0.126922, 0.921678,
		47.440056, 35.382431, 35.121986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845497, 35.137947, 34.413914>,  <47.183434, 35.293583, 34.476810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845497, 35.137947, 34.413914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783295, 35.087353, 34.805794>,  <47.745972, 35.056995, 35.040924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.783295, 35.087353, 34.805794>,  <47.845497, 35.137947, 34.413914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.783295, 35.087353, 34.805794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356701, -0.932044, -0.063711,
		0.921185, 0.339554, 0.190056,
		-0.155507, -0.126483, 0.979704,
		47.736641, 35.049408, 35.099705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.222130, 40.269070, 21.517076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.847275, 40.382610, 21.598269>,  <30.622362, 40.450733, 21.646984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.847275, 40.382610, 21.598269>,  <31.222130, 40.269070, 21.517076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847275, 40.382610, 21.598269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179579, -0.106453, 0.977967,
		0.299202, 0.952942, 0.048788,
		-0.937139, 0.283848, 0.202979,
		30.566133, 40.467766, 21.659163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277309, 40.861252, 22.011997>,  <31.222130, 40.269070, 21.517076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277309, 40.861252, 22.011997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922413, 40.680748, 22.050301>,  <30.709475, 40.572445, 22.073282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922413, 40.680748, 22.050301>,  <31.277309, 40.861252, 22.011997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922413, 40.680748, 22.050301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211439, -0.213322, 0.953828,
		-0.409993, 0.866523, 0.284681,
		-0.887242, -0.451256, 0.095756,
		30.656240, 40.545372, 22.079027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960655, 41.125935, 22.681952>,  <31.277309, 40.861252, 22.011997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960655, 41.125935, 22.681952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.752789, 40.798450, 22.584248>,  <30.628069, 40.601959, 22.525625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.752789, 40.798450, 22.584248>,  <30.960655, 41.125935, 22.681952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752789, 40.798450, 22.584248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048019, -0.257454, 0.965097,
		-0.853019, 0.513258, 0.094476,
		-0.519667, -0.818709, -0.244259,
		30.596889, 40.552837, 22.510969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496908, 41.103672, 23.139929>,  <30.960655, 41.125935, 22.681952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496908, 41.103672, 23.139929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.529419, 40.728558, 23.004906>,  <30.548925, 40.503487, 22.923891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.529419, 40.728558, 23.004906>,  <30.496908, 41.103672, 23.139929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529419, 40.728558, 23.004906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015911, -0.339857, 0.940343,
		-0.996564, -0.071059, -0.042544,
		0.081279, -0.937789, -0.337559,
		30.553802, 40.447220, 22.903639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111734, 40.726589, 23.612242>,  <30.496908, 41.103672, 23.139929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111734, 40.726589, 23.612242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.355698, 40.482368, 23.410156>,  <30.502075, 40.335838, 23.288904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.355698, 40.482368, 23.410156>,  <30.111734, 40.726589, 23.612242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355698, 40.482368, 23.410156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147768, -0.538718, 0.829426,
		-0.778574, -0.580528, -0.238349,
		0.609908, -0.610549, -0.505215,
		30.538670, 40.299206, 23.258593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895256, 40.118889, 23.841463>,  <30.111734, 40.726589, 23.612242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895256, 40.118889, 23.841463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.266411, 40.069275, 23.700811>,  <30.489103, 40.039509, 23.616421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.266411, 40.069275, 23.700811>,  <29.895256, 40.118889, 23.841463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266411, 40.069275, 23.700811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244732, -0.508889, 0.825311,
		-0.281305, -0.851850, -0.441837,
		0.927887, -0.124032, -0.351628,
		30.544777, 40.032066, 23.595324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995560, 39.333904, 24.014101>,  <29.895256, 40.118889, 23.841463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995560, 39.333904, 24.014101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.339302, 39.528351, 23.950607>,  <30.545547, 39.645020, 23.912512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.339302, 39.528351, 23.950607>,  <29.995560, 39.333904, 24.014101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339302, 39.528351, 23.950607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410238, -0.470020, 0.781528,
		0.305307, -0.736730, -0.603338,
		0.859356, 0.486118, -0.158735,
		30.597109, 39.674187, 23.902987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553806, 38.832886, 24.207254>,  <29.995560, 39.333904, 24.014101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553806, 38.832886, 24.207254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.747236, 39.183002, 24.208954>,  <30.863295, 39.393074, 24.209972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.747236, 39.183002, 24.208954>,  <30.553806, 38.832886, 24.207254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747236, 39.183002, 24.208954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289146, -0.164321, 0.943077,
		0.826165, -0.454822, -0.332549,
		0.483577, 0.875292, 0.004247,
		30.892309, 39.445591, 24.210228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347750, 38.688236, 24.331295>,  <30.553806, 38.832886, 24.207254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347750, 38.688236, 24.331295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.228283, 39.057930, 24.426443>,  <31.156603, 39.279747, 24.483532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.228283, 39.057930, 24.426443>,  <31.347750, 38.688236, 24.331295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228283, 39.057930, 24.426443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344670, -0.127961, 0.929962,
		0.889944, 0.359735, -0.280339,
		-0.298667, 0.924239, 0.237868,
		31.138683, 39.335201, 24.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946423, 38.980659, 24.665134>,  <31.347750, 38.688236, 24.331295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946423, 38.980659, 24.665134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.667625, 39.240646, 24.786285>,  <31.500347, 39.396641, 24.858976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.667625, 39.240646, 24.786285>,  <31.946423, 38.980659, 24.665134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667625, 39.240646, 24.786285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409671, 0.014271, 0.912122,
		0.588530, 0.759825, -0.276221,
		-0.696995, 0.649971, 0.302880,
		31.458527, 39.435638, 24.877150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230255, 39.574654, 25.018511>,  <31.946423, 38.980659, 24.665134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230255, 39.574654, 25.018511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.868738, 39.488346, 25.166351>,  <31.651829, 39.436562, 25.255056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.868738, 39.488346, 25.166351>,  <32.230255, 39.574654, 25.018511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868738, 39.488346, 25.166351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372477, 0.028734, 0.927596,
		-0.210767, 0.976022, 0.054399,
		-0.903791, -0.215769, 0.369602,
		31.597601, 39.423615, 25.277231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170601, 40.006771, 25.601719>,  <32.230255, 39.574654, 25.018511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170601, 40.006771, 25.601719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.907520, 39.711990, 25.664122>,  <31.749674, 39.535122, 25.701563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.907520, 39.711990, 25.664122>,  <32.170601, 40.006771, 25.601719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907520, 39.711990, 25.664122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426237, -0.193322, 0.883713,
		-0.621094, 0.647711, 0.441263,
		-0.657697, -0.736951, 0.156007,
		31.710211, 39.490906, 25.710924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928593, 40.165421, 26.247211>,  <32.170601, 40.006771, 25.601719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928593, 40.165421, 26.247211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848001, 39.777523, 26.192062>,  <31.799646, 39.544785, 26.158974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.848001, 39.777523, 26.192062>,  <31.928593, 40.165421, 26.247211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848001, 39.777523, 26.192062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334812, -0.200463, 0.920715,
		-0.920493, 0.139343, 0.365070,
		-0.201478, -0.969741, -0.137871,
		31.787558, 39.486599, 26.150702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655600, 39.975117, 26.855354>,  <31.928593, 40.165421, 26.247211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655600, 39.975117, 26.855354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.783310, 39.634251, 26.689522>,  <31.859936, 39.429729, 26.590021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.783310, 39.634251, 26.689522>,  <31.655600, 39.975117, 26.855354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783310, 39.634251, 26.689522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409779, -0.270321, 0.871211,
		-0.854486, -0.448042, 0.262892,
		0.319274, -0.852165, -0.414583,
		31.879091, 39.378601, 26.565147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695286, 39.595501, 27.420816>,  <31.655600, 39.975117, 26.855354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695286, 39.595501, 27.420816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.887634, 39.362259, 27.158899>,  <32.003044, 39.222313, 27.001749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.887634, 39.362259, 27.158899>,  <31.695286, 39.595501, 27.420816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887634, 39.362259, 27.158899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496683, -0.434267, 0.751478,
		-0.722544, -0.686588, 0.080791,
		0.480870, -0.583103, -0.654793,
		32.031895, 39.187328, 26.962461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804834, 38.859879, 27.663336>,  <31.695286, 39.595501, 27.420816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804834, 38.859879, 27.663336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110550, 38.855469, 27.405424>,  <32.293980, 38.852821, 27.250677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110550, 38.855469, 27.405424>,  <31.804834, 38.859879, 27.663336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110550, 38.855469, 27.405424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633208, -0.176481, 0.753593,
		-0.122101, -0.984242, -0.127901,
		0.764290, -0.011027, -0.644778,
		32.339836, 38.852161, 27.211990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217846, 38.244911, 27.887550>,  <31.804834, 38.859879, 27.663336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217846, 38.244911, 27.887550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438736, 38.476360, 27.647470>,  <32.571270, 38.615231, 27.503422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.438736, 38.476360, 27.647470>,  <32.217846, 38.244911, 27.887550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438736, 38.476360, 27.647470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769366, -0.076392, 0.634225,
		0.321128, -0.812009, -0.487359,
		0.552226, 0.578625, -0.600200,
		32.604404, 38.649948, 27.467411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830566, 37.838696, 27.767332>,  <32.217846, 38.244911, 27.887550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830566, 37.838696, 27.767332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915436, 38.224915, 27.707060>,  <32.966358, 38.456646, 27.670897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915436, 38.224915, 27.707060>,  <32.830566, 37.838696, 27.767332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915436, 38.224915, 27.707060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710482, -0.046544, 0.702174,
		0.670969, -0.256034, -0.695879,
		0.212169, 0.965546, -0.150679,
		32.979088, 38.514580, 27.661856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572292, 37.825935, 27.818874>,  <32.830566, 37.838696, 27.767332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572292, 37.825935, 27.818874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465534, 38.207470, 27.873962>,  <33.401478, 38.436390, 27.907015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.465534, 38.207470, 27.873962>,  <33.572292, 37.825935, 27.818874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465534, 38.207470, 27.873962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690814, 0.089712, 0.717446,
		0.671968, 0.286625, -0.682865,
		-0.266899, 0.953833, 0.137720,
		33.385464, 38.493622, 27.915279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210121, 38.333057, 27.816454>,  <33.572292, 37.825935, 27.818874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210121, 38.333057, 27.816454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918484, 38.519318, 28.017094>,  <33.743504, 38.631073, 28.137478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.918484, 38.519318, 28.017094>,  <34.210121, 38.333057, 27.816454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918484, 38.519318, 28.017094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657032, 0.270946, 0.703489,
		0.191671, 0.842473, -0.503489,
		-0.729089, 0.465647, 0.501600,
		33.699757, 38.659012, 28.167574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469975, 38.877464, 28.061911>,  <34.210121, 38.333057, 27.816454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469975, 38.877464, 28.061911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147358, 38.829643, 28.293497>,  <33.953789, 38.800949, 28.432449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.147358, 38.829643, 28.293497>,  <34.469975, 38.877464, 28.061911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147358, 38.829643, 28.293497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523215, 0.311552, 0.793210,
		-0.275212, 0.942678, -0.188725,
		-0.806539, -0.119557, 0.578966,
		33.905396, 38.793777, 28.467186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936340, 38.832458, 28.584169>,  <34.469975, 38.877464, 28.061911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936340, 38.832458, 28.584169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330795, 38.873402, 28.531918>,  <35.567467, 38.897968, 28.500566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.330795, 38.873402, 28.531918>,  <34.936340, 38.832458, 28.584169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330795, 38.873402, 28.531918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159046, 0.358201, -0.919998,
		-0.047376, 0.928017, 0.369513,
		0.986134, 0.102355, -0.130627,
		35.626637, 38.904110, 28.492729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016132, 39.576115, 28.524372>,  <34.936340, 38.832458, 28.584169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016132, 39.576115, 28.524372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326618, 39.383198, 28.361948>,  <35.512909, 39.267448, 28.264494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326618, 39.383198, 28.361948>,  <35.016132, 39.576115, 28.524372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326618, 39.383198, 28.361948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242948, 0.365511, -0.898542,
		0.581776, 0.796115, 0.166545,
		0.776217, -0.482288, -0.406060,
		35.559483, 39.238510, 28.240129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389896, 40.058990, 28.041210>,  <35.016132, 39.576115, 28.524372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389896, 40.058990, 28.041210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553219, 39.723904, 27.896145>,  <35.651211, 39.522854, 27.809105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.553219, 39.723904, 27.896145>,  <35.389896, 40.058990, 28.041210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553219, 39.723904, 27.896145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052769, 0.374964, -0.925537,
		0.911319, 0.397038, 0.108894,
		0.408305, -0.837713, -0.362663,
		35.675709, 39.472591, 27.787346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910858, 40.297413, 27.645533>,  <35.389896, 40.058990, 28.041210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910858, 40.297413, 27.645533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863743, 39.921078, 27.518446>,  <35.835472, 39.695274, 27.442194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863743, 39.921078, 27.518446>,  <35.910858, 40.297413, 27.645533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863743, 39.921078, 27.518446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112934, 0.305174, -0.945576,
		0.986596, -0.147262, 0.070306,
		-0.117791, -0.940841, -0.317714,
		35.828403, 39.638824, 27.423132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439812, 40.159851, 27.170938>,  <35.910858, 40.297413, 27.645533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439812, 40.159851, 27.170938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.164749, 39.884880, 27.077496>,  <35.999714, 39.719898, 27.021429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.164749, 39.884880, 27.077496>,  <36.439812, 40.159851, 27.170938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164749, 39.884880, 27.077496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123559, 0.206259, -0.970665,
		0.715450, -0.696344, -0.056896,
		-0.687652, -0.687432, -0.233608,
		35.958454, 39.678650, 27.007414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642952, 39.831757, 26.559013>,  <36.439812, 40.159851, 27.170938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642952, 39.831757, 26.559013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251476, 39.756214, 26.591284>,  <36.016590, 39.710888, 26.610645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251476, 39.756214, 26.591284>,  <36.642952, 39.831757, 26.559013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251476, 39.756214, 26.591284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083223, 0.005595, -0.996515,
		0.187750, -0.981988, -0.021193,
		-0.978685, -0.188859, 0.080674,
		35.957870, 39.699558, 26.615486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513138, 39.284706, 26.123220>,  <36.642952, 39.831757, 26.559013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513138, 39.284706, 26.123220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.157574, 39.463642, 26.162683>,  <35.944237, 39.571003, 26.186361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.157574, 39.463642, 26.162683>,  <36.513138, 39.284706, 26.123220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157574, 39.463642, 26.162683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166250, -0.114351, -0.979431,
		-0.426857, -0.887024, 0.176017,
		-0.888906, 0.447340, 0.098656,
		35.890903, 39.597843, 26.192280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125378, 39.038704, 25.579096>,  <36.513138, 39.284706, 26.123220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125378, 39.038704, 25.579096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917709, 39.360935, 25.693287>,  <35.793106, 39.554276, 25.761801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917709, 39.360935, 25.693287>,  <36.125378, 39.038704, 25.579096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917709, 39.360935, 25.693287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244941, 0.179766, -0.952727,
		-0.818818, -0.564556, 0.103990,
		-0.519174, 0.805581, 0.285478,
		35.761959, 39.602608, 25.778931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464645, 38.998016, 25.201082>,  <36.125378, 39.038704, 25.579096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464645, 38.998016, 25.201082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.476212, 39.383442, 25.307451>,  <35.483150, 39.614697, 25.371273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.476212, 39.383442, 25.307451>,  <35.464645, 38.998016, 25.201082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476212, 39.383442, 25.307451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287076, 0.262830, -0.921145,
		-0.957471, -0.049706, 0.284214,
		0.028913, 0.963561, 0.265922,
		35.484886, 39.672512, 25.387228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892788, 39.262104, 25.046074>,  <35.464645, 38.998016, 25.201082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892788, 39.262104, 25.046074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097000, 39.603527, 25.087631>,  <35.219528, 39.808380, 25.112566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.097000, 39.603527, 25.087631>,  <34.892788, 39.262104, 25.046074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097000, 39.603527, 25.087631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332964, 0.307646, -0.891341,
		-0.792776, 0.420464, 0.441267,
		0.510531, 0.853560, 0.103895,
		35.250160, 39.859596, 25.118799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381413, 39.750679, 24.914078>,  <34.892788, 39.262104, 25.046074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381413, 39.750679, 24.914078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739464, 39.921257, 24.862082>,  <34.954292, 40.023602, 24.830883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739464, 39.921257, 24.862082>,  <34.381413, 39.750679, 24.914078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739464, 39.921257, 24.862082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292944, 0.342829, -0.892554,
		-0.336057, 0.837028, 0.431798,
		0.895125, 0.426442, -0.129992,
		35.008003, 40.049191, 24.823084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280125, 40.497871, 24.724031>,  <34.381413, 39.750679, 24.914078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280125, 40.497871, 24.724031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653667, 40.424400, 24.601284>,  <34.877792, 40.380318, 24.527636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.653667, 40.424400, 24.601284>,  <34.280125, 40.497871, 24.724031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653667, 40.424400, 24.601284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210813, 0.410415, -0.887196,
		0.288902, 0.893209, 0.344549,
		0.933860, -0.183677, -0.306870,
		34.933826, 40.369297, 24.509224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513908, 41.109112, 24.358484>,  <34.280125, 40.497871, 24.724031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513908, 41.109112, 24.358484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778957, 40.839962, 24.226933>,  <34.937988, 40.678471, 24.148001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778957, 40.839962, 24.226933>,  <34.513908, 41.109112, 24.358484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778957, 40.839962, 24.226933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187652, 0.275955, -0.942675,
		0.725060, 0.686357, 0.056588,
		0.662627, -0.672877, -0.328880,
		34.977745, 40.638100, 24.128269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865242, 41.386745, 23.795845>,  <34.513908, 41.109112, 24.358484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865242, 41.386745, 23.795845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920273, 40.995991, 23.730404>,  <34.953293, 40.761539, 23.691139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.920273, 40.995991, 23.730404>,  <34.865242, 41.386745, 23.795845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920273, 40.995991, 23.730404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073699, 0.154619, -0.985222,
		0.987745, 0.147605, -0.050723,
		0.137581, -0.976886, -0.163603,
		34.961548, 40.702927, 23.681324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202198, 41.342697, 23.109947>,  <34.865242, 41.386745, 23.795845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202198, 41.342697, 23.109947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058693, 40.975395, 23.176994>,  <34.972591, 40.755013, 23.217222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058693, 40.975395, 23.176994>,  <35.202198, 41.342697, 23.109947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058693, 40.975395, 23.176994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482218, 0.028576, -0.875585,
		0.799222, -0.394954, -0.453052,
		-0.358762, -0.918257, 0.167616,
		34.951065, 40.699917, 23.227280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444279, 40.948463, 22.616428>,  <35.202198, 41.342697, 23.109947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444279, 40.948463, 22.616428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120335, 40.763325, 22.760590>,  <34.925968, 40.652241, 22.847086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120335, 40.763325, 22.760590>,  <35.444279, 40.948463, 22.616428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120335, 40.763325, 22.760590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413804, 0.015275, -0.910238,
		0.415799, -0.886305, -0.203900,
		-0.809863, -0.462851, 0.360405,
		34.877377, 40.624470, 22.868711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217323, 40.413017, 22.085627>,  <35.444279, 40.948463, 22.616428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217323, 40.413017, 22.085627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886261, 40.488194, 22.297157>,  <34.687622, 40.533298, 22.424076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886261, 40.488194, 22.297157>,  <35.217323, 40.413017, 22.085627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886261, 40.488194, 22.297157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506410, 0.156087, -0.848048,
		-0.241924, -0.969699, -0.034013,
		-0.827660, 0.187939, 0.528827,
		34.637962, 40.544575, 22.455805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600502, 39.937958, 21.865252>,  <35.217323, 40.413017, 22.085627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600502, 39.937958, 21.865252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460190, 40.273380, 22.031998>,  <34.376003, 40.474632, 22.132046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.460190, 40.273380, 22.031998>,  <34.600502, 39.937958, 21.865252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460190, 40.273380, 22.031998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598379, 0.141714, -0.788581,
		-0.720346, -0.526059, 0.452066,
		-0.350776, 0.838558, 0.416866,
		34.354958, 40.524948, 22.157057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881035, 39.888634, 21.794527>,  <34.600502, 39.937958, 21.865252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881035, 39.888634, 21.794527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.933548, 40.276611, 21.876480>,  <33.965057, 40.509396, 21.925652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.933548, 40.276611, 21.876480>,  <33.881035, 39.888634, 21.794527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933548, 40.276611, 21.876480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666681, 0.239340, -0.705870,
		-0.733689, -0.043918, 0.678064,
		0.131287, 0.969942, 0.204881,
		33.972935, 40.567593, 21.937944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.199707, 40.144989, 22.012493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399536, 40.478268, 21.917658>,  <33.519436, 40.678234, 21.860758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.399536, 40.478268, 21.917658>,  <33.199707, 40.144989, 22.012493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399536, 40.478268, 21.917658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593328, 0.129696, -0.794443,
		-0.631177, 0.537556, 0.559151,
		0.499577, 0.833194, -0.237086,
		33.549408, 40.728226, 21.846533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690739, 40.550304, 21.958969>,  <33.199707, 40.144989, 22.012493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690739, 40.550304, 21.958969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992813, 40.733028, 21.770916>,  <33.174057, 40.842663, 21.658085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992813, 40.733028, 21.770916>,  <32.690739, 40.550304, 21.958969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992813, 40.733028, 21.770916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617303, 0.254300, -0.744492,
		-0.220537, 0.852441, 0.474033,
		0.755183, 0.456810, -0.470132,
		33.219368, 40.870071, 21.629877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390781, 41.228481, 21.769012>,  <32.690739, 40.550304, 21.958969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390781, 41.228481, 21.769012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715305, 41.226437, 21.535177>,  <32.910019, 41.225208, 21.394876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715305, 41.226437, 21.535177>,  <32.390781, 41.228481, 21.769012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715305, 41.226437, 21.535177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539705, 0.377785, -0.752328,
		0.224697, 0.925879, 0.303742,
		0.811314, -0.005115, -0.584588,
		32.958698, 41.224903, 21.359800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325939, 41.826019, 21.347256>,  <32.390781, 41.228481, 21.769012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325939, 41.826019, 21.347256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554550, 41.552917, 21.165182>,  <32.691719, 41.389057, 21.055939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.554550, 41.552917, 21.165182>,  <32.325939, 41.826019, 21.347256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554550, 41.552917, 21.165182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416377, 0.236696, -0.877841,
		0.707093, 0.691242, -0.149006,
		0.571532, -0.682758, -0.455184,
		32.726009, 41.348091, 21.028627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512489, 42.179863, 20.728037>,  <32.325939, 41.826019, 21.347256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512489, 42.179863, 20.728037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553612, 41.790512, 20.646101>,  <32.578285, 41.556900, 20.596939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553612, 41.790512, 20.646101>,  <32.512489, 42.179863, 20.728037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553612, 41.790512, 20.646101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476858, 0.132493, -0.868937,
		0.872947, 0.187014, -0.450543,
		0.102809, -0.973381, -0.204839,
		32.584454, 41.498497, 20.584650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823185, 42.119862, 20.101500>,  <32.512489, 42.179863, 20.728037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823185, 42.119862, 20.101500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640308, 41.766407, 20.141817>,  <32.530582, 41.554333, 20.166008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.640308, 41.766407, 20.141817>,  <32.823185, 42.119862, 20.101500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640308, 41.766407, 20.141817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540329, 0.185951, -0.820650,
		0.706417, -0.429653, -0.562471,
		-0.457186, -0.883641, 0.100795,
		32.503151, 41.501316, 20.172056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973911, 41.843006, 19.465363>,  <32.823185, 42.119862, 20.101500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973911, 41.843006, 19.465363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653912, 41.638374, 19.590769>,  <32.461914, 41.515594, 19.666014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.653912, 41.638374, 19.590769>,  <32.973911, 41.843006, 19.465363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653912, 41.638374, 19.590769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320077, -0.078096, -0.944167,
		0.507500, -0.855680, -0.101268,
		-0.799996, -0.511579, 0.313518,
		32.413914, 41.484901, 19.684824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884846, 41.257080, 18.953735>,  <32.973911, 41.843006, 19.465363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884846, 41.257080, 18.953735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544228, 41.263752, 19.163340>,  <32.339855, 41.267754, 19.289103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544228, 41.263752, 19.163340>,  <32.884846, 41.257080, 18.953735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544228, 41.263752, 19.163340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519697, 0.104969, -0.847877,
		-0.069147, -0.994336, -0.080718,
		-0.851548, 0.016679, 0.524012,
		32.288765, 41.268753, 19.320543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474792, 40.726154, 18.703522>,  <32.884846, 41.257080, 18.953735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474792, 40.726154, 18.703522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220497, 40.977188, 18.883293>,  <32.067921, 41.127808, 18.991156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.220497, 40.977188, 18.883293>,  <32.474792, 40.726154, 18.703522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220497, 40.977188, 18.883293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617931, -0.064836, -0.783555,
		-0.462605, -0.775847, 0.429021,
		-0.635734, 0.627581, 0.449426,
		32.029778, 41.165462, 19.018122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857267, 40.485573, 18.412397>,  <32.474792, 40.726154, 18.703522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857267, 40.485573, 18.412397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765692, 40.840267, 18.573042>,  <31.710747, 41.053082, 18.669428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.765692, 40.840267, 18.573042>,  <31.857267, 40.485573, 18.412397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765692, 40.840267, 18.573042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414482, 0.284503, -0.864444,
		-0.880790, -0.364366, 0.302401,
		-0.228940, 0.886733, 0.401610,
		31.697010, 41.106289, 18.693525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297459, 40.670006, 18.067274>,  <31.857267, 40.485573, 18.412397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297459, 40.670006, 18.067274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403341, 41.027233, 18.212795>,  <31.466871, 41.241570, 18.300108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403341, 41.027233, 18.212795>,  <31.297459, 40.670006, 18.067274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403341, 41.027233, 18.212795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330227, 0.438400, -0.835916,
		-0.906025, 0.101134, 0.410964,
		0.264706, 0.893072, 0.363804,
		31.482754, 41.295155, 18.321936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752472, 41.040955, 17.985767>,  <31.297459, 40.670006, 18.067274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752472, 41.040955, 17.985767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038168, 41.318153, 18.024981>,  <31.209585, 41.484474, 18.048508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.038168, 41.318153, 18.024981>,  <30.752472, 41.040955, 17.985767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038168, 41.318153, 18.024981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326691, 0.453974, -0.828964,
		-0.618976, 0.560054, 0.550644,
		0.714242, 0.692999, 0.098034,
		31.252441, 41.526054, 18.054390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433084, 41.766785, 17.973795>,  <30.752472, 41.040955, 17.985767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433084, 41.766785, 17.973795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.819065, 41.818237, 17.882299>,  <31.050653, 41.849110, 17.827402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.819065, 41.818237, 17.882299>,  <30.433084, 41.766785, 17.973795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819065, 41.818237, 17.882299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261540, 0.542963, -0.797990,
		0.021549, 0.829846, 0.557575,
		0.964952, 0.128632, -0.228739,
		31.108551, 41.856827, 17.813679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566616, 42.480183, 17.772207>,  <30.433084, 41.766785, 17.973795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566616, 42.480183, 17.772207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889223, 42.308449, 17.609627>,  <31.082788, 42.205410, 17.512079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.889223, 42.308449, 17.609627>,  <30.566616, 42.480183, 17.772207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889223, 42.308449, 17.609627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121723, 0.552173, -0.824796,
		0.578542, 0.714688, 0.393078,
		0.806519, -0.429332, -0.406449,
		31.131178, 42.179649, 17.487692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003534, 43.074390, 17.531580>,  <30.566616, 42.480183, 17.772207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003534, 43.074390, 17.531580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099586, 42.748474, 17.320507>,  <31.157217, 42.552925, 17.193863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099586, 42.748474, 17.320507>,  <31.003534, 43.074390, 17.531580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099586, 42.748474, 17.320507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202161, 0.489695, -0.848133,
		0.949457, 0.310339, -0.047129,
		0.240130, -0.814794, -0.527683,
		31.171625, 42.504036, 17.162203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316652, 43.313751, 17.025452>,  <31.003534, 43.074390, 17.531580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316652, 43.313751, 17.025452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243080, 42.948792, 16.879196>,  <31.198936, 42.729816, 16.791443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243080, 42.948792, 16.879196>,  <31.316652, 43.313751, 17.025452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243080, 42.948792, 16.879196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436906, 0.409107, -0.801089,
		0.880502, 0.012408, -0.473880,
		-0.183928, -0.912402, -0.365641,
		31.187902, 42.675072, 16.769505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782364, 43.120373, 16.460178>,  <31.316652, 43.313751, 17.025452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782364, 43.120373, 16.460178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442692, 42.912315, 16.423639>,  <31.238890, 42.787479, 16.401716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442692, 42.912315, 16.423639>,  <31.782364, 43.120373, 16.460178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442692, 42.912315, 16.423639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180259, 0.448068, -0.875638,
		0.496392, -0.727105, -0.474250,
		-0.849177, -0.520147, -0.091350,
		31.187939, 42.756271, 16.396235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715601, 43.091293, 15.779230>,  <31.782364, 43.120373, 16.460178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715601, 43.091293, 15.779230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353134, 42.977459, 15.904370>,  <31.135654, 42.909161, 15.979454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.353134, 42.977459, 15.904370>,  <31.715601, 43.091293, 15.779230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353134, 42.977459, 15.904370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421505, 0.547215, -0.723111,
		0.034588, -0.787127, -0.615821,
		-0.906166, -0.284583, 0.312851,
		31.081284, 42.892082, 15.998225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328661, 42.843143, 15.091557>,  <31.715601, 43.091293, 15.779230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328661, 42.843143, 15.091557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.070221, 42.937817, 15.381808>,  <30.915157, 42.994621, 15.555959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.070221, 42.937817, 15.381808>,  <31.328661, 42.843143, 15.091557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070221, 42.937817, 15.381808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559472, 0.499827, -0.661184,
		-0.519177, -0.833160, -0.190524,
		-0.646101, 0.236679, 0.725628,
		30.876390, 43.008820, 15.599497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640402, 42.522499, 14.925841>,  <31.328661, 42.843143, 15.091557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640402, 42.522499, 14.925841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574652, 42.829170, 15.174095>,  <30.535202, 43.013172, 15.323048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574652, 42.829170, 15.174095>,  <30.640402, 42.522499, 14.925841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574652, 42.829170, 15.174095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660195, 0.381976, -0.646713,
		-0.732887, -0.516045, 0.443367,
		-0.164377, 0.766676, 0.620635,
		30.525339, 43.059174, 15.360286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905230, 42.562359, 14.899774>,  <30.640402, 42.522499, 14.925841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905230, 42.562359, 14.899774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036846, 42.911285, 15.044441>,  <30.115816, 43.120640, 15.131242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.036846, 42.911285, 15.044441>,  <29.905230, 42.562359, 14.899774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036846, 42.911285, 15.044441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524301, 0.487299, -0.698318,
		-0.785392, 0.040150, 0.617695,
		0.329039, 0.872312, 0.361670,
		30.135557, 43.172977, 15.152943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383778, 42.986542, 15.115135>,  <29.905230, 42.562359, 14.899774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383778, 42.986542, 15.115135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687304, 43.166172, 14.926442>,  <29.869419, 43.273949, 14.813227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687304, 43.166172, 14.926442>,  <29.383778, 42.986542, 15.115135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687304, 43.166172, 14.926442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631767, 0.331435, -0.700729,
		-0.158329, 0.829750, 0.535208,
		0.758816, 0.449073, -0.471733,
		29.914948, 43.300896, 14.784923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275320, 43.661304, 15.019678>,  <29.383778, 42.986542, 15.115135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275320, 43.661304, 15.019678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531439, 43.595707, 14.719511>,  <29.685110, 43.556347, 14.539411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.531439, 43.595707, 14.719511>,  <29.275320, 43.661304, 15.019678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531439, 43.595707, 14.719511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667839, 0.363799, -0.649339,
		0.379489, 0.916927, 0.123416,
		0.640295, -0.163995, -0.750418,
		29.723528, 43.546509, 14.494386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876747, 43.399040, 14.483315>,  <29.275320, 43.661304, 15.019678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876747, 43.399040, 14.483315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178583, 43.598625, 14.312843>,  <29.359684, 43.718376, 14.210560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.178583, 43.598625, 14.312843>,  <28.876747, 43.399040, 14.483315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178583, 43.598625, 14.312843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616108, -0.762257, 0.198432,
		-0.225849, -0.412308, -0.882607,
		0.754588, 0.498966, -0.426181,
		29.404959, 43.748314, 14.184989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419163, 43.651337, 15.068976>,  <28.876747, 43.399040, 14.483315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419163, 43.651337, 15.068976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.027349, 43.606400, 15.002174>,  <27.792261, 43.579437, 14.962093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.027349, 43.606400, 15.002174>,  <28.419163, 43.651337, 15.068976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027349, 43.606400, 15.002174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107511, -0.409418, 0.905990,
		-0.170157, 0.905404, 0.388961,
		-0.979535, -0.112343, -0.167006,
		27.733490, 43.572697, 14.952072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145323, 43.904686, 15.605683>,  <28.419163, 43.651337, 15.068976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145323, 43.904686, 15.605683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.822123, 43.697815, 15.492783>,  <27.628202, 43.573692, 15.425042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.822123, 43.697815, 15.492783>,  <28.145323, 43.904686, 15.605683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.822123, 43.697815, 15.492783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228477, -0.166531, 0.959201,
		-0.543079, 0.839522, 0.016394,
		-0.808000, -0.517176, -0.282251,
		27.579723, 43.542664, 15.408107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547153, 44.088421, 16.036545>,  <28.145323, 43.904686, 15.605683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547153, 44.088421, 16.036545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.475172, 43.726513, 15.882134>,  <27.431982, 43.509369, 15.789489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.475172, 43.726513, 15.882134>,  <27.547153, 44.088421, 16.036545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475172, 43.726513, 15.882134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204663, -0.349405, 0.914346,
		-0.962148, 0.243547, -0.122295,
		-0.179955, -0.904766, -0.386024,
		27.421185, 43.455082, 15.766327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844593, 43.811275, 16.262663>,  <27.547153, 44.088421, 16.036545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844593, 43.811275, 16.262663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.071199, 43.493103, 16.176554>,  <27.207163, 43.302200, 16.124889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.071199, 43.493103, 16.176554>,  <26.844593, 43.811275, 16.262663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071199, 43.493103, 16.176554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027821, -0.242624, 0.969721,
		-0.823580, -0.555354, -0.115321,
		0.566518, -0.795434, -0.215271,
		27.241156, 43.254475, 16.111973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817074, 43.478008, 16.965343>,  <26.844593, 43.811275, 16.262663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817074, 43.478008, 16.965343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.114864, 43.315121, 16.753710>,  <27.293539, 43.217388, 16.626730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.114864, 43.315121, 16.753710>,  <26.817074, 43.478008, 16.965343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114864, 43.315121, 16.753710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468642, -0.245698, 0.848533,
		-0.475531, -0.879663, 0.007922,
		0.744476, -0.407217, -0.529084,
		27.338207, 43.192955, 16.594984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915405, 42.802292, 17.205433>,  <26.817074, 43.478008, 16.965343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915405, 42.802292, 17.205433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.283455, 42.855370, 17.058046>,  <27.504284, 42.887215, 16.969614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.283455, 42.855370, 17.058046>,  <26.915405, 42.802292, 17.205433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283455, 42.855370, 17.058046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389056, -0.417410, 0.821221,
		-0.044829, -0.898978, -0.435695,
		0.920122, 0.132695, -0.368465,
		27.559492, 42.895180, 16.947506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257807, 42.138424, 17.317188>,  <26.915405, 42.802292, 17.205433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257807, 42.138424, 17.317188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.549366, 42.409603, 17.279057>,  <27.724302, 42.572311, 17.256178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.549366, 42.409603, 17.279057>,  <27.257807, 42.138424, 17.317188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549366, 42.409603, 17.279057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515231, -0.451520, 0.728468,
		0.450825, -0.580095, -0.678414,
		0.728899, 0.677952, -0.095327,
		27.768036, 42.612988, 17.250458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877037, 41.797268, 17.267311>,  <27.257807, 42.138424, 17.317188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877037, 41.797268, 17.267311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996080, 42.170620, 17.347546>,  <28.067507, 42.394630, 17.395687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.996080, 42.170620, 17.347546>,  <27.877037, 41.797268, 17.267311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996080, 42.170620, 17.347546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635316, -0.350457, 0.688152,
		0.712603, -0.077363, -0.697289,
		0.297607, 0.933378, 0.200586,
		28.085363, 42.450634, 17.407721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695286, 41.848198, 17.177893>,  <27.877037, 41.797268, 17.267311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695286, 41.848198, 17.177893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524849, 42.123901, 17.412283>,  <28.422586, 42.289322, 17.552917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524849, 42.123901, 17.412283>,  <28.695286, 41.848198, 17.177893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524849, 42.123901, 17.412283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500216, -0.360203, 0.787425,
		0.753810, 0.628629, -0.191299,
		-0.426092, 0.689259, 0.585975,
		28.397022, 42.330681, 17.588076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269440, 42.092350, 17.514563>,  <28.695286, 41.848198, 17.177893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269440, 42.092350, 17.514563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969471, 42.198624, 17.756895>,  <28.789490, 42.262386, 17.902294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969471, 42.198624, 17.756895>,  <29.269440, 42.092350, 17.514563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969471, 42.198624, 17.756895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531312, -0.303706, 0.790867,
		0.394112, 0.914974, 0.086597,
		-0.749922, 0.265680, 0.605830,
		28.744493, 42.278328, 17.938644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549330, 42.456707, 18.116125>,  <29.269440, 42.092350, 17.514563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549330, 42.456707, 18.116125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196196, 42.401199, 18.295610>,  <28.984316, 42.367893, 18.403301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.196196, 42.401199, 18.295610>,  <29.549330, 42.456707, 18.116125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196196, 42.401199, 18.295610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462598, -0.091611, 0.881822,
		-0.081263, 0.986078, 0.145073,
		-0.882836, -0.138770, 0.448713,
		28.931345, 42.359570, 18.430225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662302, 42.874363, 18.694145>,  <29.549330, 42.456707, 18.116125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662302, 42.874363, 18.694145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362022, 42.622650, 18.774603>,  <29.181854, 42.471622, 18.822878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.362022, 42.622650, 18.774603>,  <29.662302, 42.874363, 18.694145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362022, 42.622650, 18.774603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374422, -0.154414, 0.914311,
		-0.544297, 0.761685, 0.351534,
		-0.750699, -0.629279, 0.201144,
		29.136812, 42.433868, 18.834946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465391, 43.025742, 19.410913>,  <29.662302, 42.874363, 18.694145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465391, 43.025742, 19.410913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307081, 42.664532, 19.344093>,  <29.212095, 42.447807, 19.304001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307081, 42.664532, 19.344093>,  <29.465391, 43.025742, 19.410913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307081, 42.664532, 19.344093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387503, -0.329131, 0.861112,
		-0.832588, 0.276076, 0.480187,
		-0.395777, -0.903025, -0.167050,
		29.188349, 42.393623, 19.293978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156189, 42.762543, 20.068537>,  <29.465391, 43.025742, 19.410913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156189, 42.762543, 20.068537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.244892, 42.433449, 19.859182>,  <29.298113, 42.235992, 19.733570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.244892, 42.433449, 19.859182>,  <29.156189, 42.762543, 20.068537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244892, 42.433449, 19.859182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241782, -0.473596, 0.846905,
		-0.944651, -0.314352, 0.093898,
		0.221757, -0.822733, -0.523388,
		29.311419, 42.186630, 19.702166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809978, 42.187836, 20.439096>,  <29.156189, 42.762543, 20.068537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809978, 42.187836, 20.439096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088955, 42.013676, 20.211412>,  <29.256340, 41.909180, 20.074802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.088955, 42.013676, 20.211412>,  <28.809978, 42.187836, 20.439096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088955, 42.013676, 20.211412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262900, -0.583451, 0.768420,
		-0.666681, -0.685571, -0.292453,
		0.697438, -0.435405, -0.569212,
		29.298187, 41.883053, 20.040649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760067, 41.475487, 20.569246>,  <28.809978, 42.187836, 20.439096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760067, 41.475487, 20.569246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.126879, 41.497871, 20.411295>,  <29.346966, 41.511303, 20.316525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.126879, 41.497871, 20.411295>,  <28.760067, 41.475487, 20.569246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126879, 41.497871, 20.411295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309287, -0.724880, 0.615541,
		-0.251793, -0.686599, -0.682043,
		0.917029, 0.055958, -0.394876,
		29.401987, 41.514660, 20.292831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974850, 40.713604, 20.392027>,  <28.760067, 41.475487, 20.569246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974850, 40.713604, 20.392027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309200, 40.933121, 20.396723>,  <29.509811, 41.064831, 20.399540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.309200, 40.933121, 20.396723>,  <28.974850, 40.713604, 20.392027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309200, 40.933121, 20.396723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415304, -0.646256, 0.640215,
		0.358933, -0.530264, -0.768106,
		0.835876, 0.548792, 0.011742,
		29.559963, 41.097759, 20.400246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507141, 40.221058, 20.370607>,  <28.974850, 40.713604, 20.392027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507141, 40.221058, 20.370607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.665121, 40.560696, 20.510921>,  <29.759909, 40.764481, 20.595110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.665121, 40.560696, 20.510921>,  <29.507141, 40.221058, 20.370607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665121, 40.560696, 20.510921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416761, -0.505869, 0.755253,
		0.818734, -0.152093, -0.553663,
		0.394950, 0.849096, 0.350786,
		29.783606, 40.815426, 20.616158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229374, 40.002445, 20.517912>,  <29.507141, 40.221058, 20.370607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229374, 40.002445, 20.517912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150690, 40.335548, 20.724916>,  <30.103479, 40.535412, 20.849119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150690, 40.335548, 20.724916>,  <30.229374, 40.002445, 20.517912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150690, 40.335548, 20.724916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246345, -0.468915, 0.848194,
		0.949010, 0.294335, -0.112905,
		-0.196711, 0.832758, 0.517513,
		30.091677, 40.585377, 20.880171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820929, 40.120102, 20.956202>,  <30.229374, 40.002445, 20.517912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820929, 40.120102, 20.956202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550470, 40.359230, 21.128452>,  <30.388195, 40.502708, 21.231802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550470, 40.359230, 21.128452>,  <30.820929, 40.120102, 20.956202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550470, 40.359230, 21.128452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263689, -0.349407, 0.899101,
		0.687965, 0.721474, 0.078611,
		-0.676145, 0.597821, 0.430625,
		30.347628, 40.538578, 21.257639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.714958, 39.669010, 23.697214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.482861, 39.960365, 23.842962>,  <35.343601, 40.135178, 23.930410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.482861, 39.960365, 23.842962>,  <35.714958, 39.669010, 23.697214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482861, 39.960365, 23.842962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505301, -0.028908, 0.862459,
		0.638740, 0.684552, -0.351283,
		-0.580243, 0.728391, 0.364369,
		35.308788, 40.178883, 23.952272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161545, 40.252975, 23.988615>,  <35.714958, 39.669010, 23.697214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161545, 40.252975, 23.988615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798553, 40.254887, 24.156639>,  <35.580757, 40.256031, 24.257454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.798553, 40.254887, 24.156639>,  <36.161545, 40.252975, 23.988615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798553, 40.254887, 24.156639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419575, -0.039168, 0.906875,
		0.020784, 0.999221, 0.033540,
		-0.907483, 0.004776, 0.420062,
		35.526310, 40.256321, 24.282658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219391, 40.602959, 24.570402>,  <36.161545, 40.252975, 23.988615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219391, 40.602959, 24.570402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.860294, 40.444447, 24.647375>,  <35.644836, 40.349339, 24.693558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.860294, 40.444447, 24.647375>,  <36.219391, 40.602959, 24.570402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860294, 40.444447, 24.647375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300680, -0.231946, 0.925091,
		-0.321958, 0.888350, 0.327379,
		-0.897739, -0.396277, 0.192432,
		35.590973, 40.325565, 24.705105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071068, 40.858170, 25.217951>,  <36.219391, 40.602959, 24.570402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071068, 40.858170, 25.217951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.841194, 40.534477, 25.169149>,  <35.703270, 40.340263, 25.139868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.841194, 40.534477, 25.169149>,  <36.071068, 40.858170, 25.217951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841194, 40.534477, 25.169149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081659, -0.205041, 0.975341,
		-0.814288, 0.550554, 0.183916,
		-0.574688, -0.809227, -0.122005,
		35.668789, 40.291710, 25.132547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502422, 40.939278, 25.678455>,  <36.071068, 40.858170, 25.217951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502422, 40.939278, 25.678455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.506855, 40.547153, 25.599600>,  <35.509514, 40.311878, 25.552286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.506855, 40.547153, 25.599600>,  <35.502422, 40.939278, 25.678455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506855, 40.547153, 25.599600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113687, -0.197105, 0.973768,
		-0.993455, 0.011623, -0.113633,
		0.011080, -0.980313, -0.197137,
		35.510178, 40.253059, 25.540459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970848, 40.599709, 26.054413>,  <35.502422, 40.939278, 25.678455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970848, 40.599709, 26.054413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.172691, 40.264812, 25.970118>,  <35.293797, 40.063877, 25.919540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.172691, 40.264812, 25.970118>,  <34.970848, 40.599709, 26.054413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172691, 40.264812, 25.970118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048800, -0.271362, 0.961239,
		-0.861970, -0.474762, -0.177787,
		0.504605, -0.837236, -0.210737,
		35.324074, 40.013641, 25.906897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613724, 40.037697, 26.287449>,  <34.970848, 40.599709, 26.054413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613724, 40.037697, 26.287449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993443, 39.915466, 26.257875>,  <35.221272, 39.842129, 26.240131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.993443, 39.915466, 26.257875>,  <34.613724, 40.037697, 26.287449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993443, 39.915466, 26.257875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004792, -0.249199, 0.968441,
		-0.314360, -0.918978, -0.238027,
		0.949291, -0.305580, -0.073935,
		35.278229, 39.823792, 26.235695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698772, 39.401237, 26.563442>,  <34.613724, 40.037697, 26.287449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698772, 39.401237, 26.563442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080025, 39.520988, 26.580984>,  <35.308777, 39.592838, 26.591509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.080025, 39.520988, 26.580984>,  <34.698772, 39.401237, 26.563442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080025, 39.520988, 26.580984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070656, -0.361156, 0.929825,
		0.294207, -0.883142, -0.365380,
		0.953127, 0.299377, 0.043855,
		35.365963, 39.610802, 26.594141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981133, 38.826771, 26.751734>,  <34.698772, 39.401237, 26.563442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981133, 38.826771, 26.751734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.283806, 39.078815, 26.821459>,  <35.465408, 39.230042, 26.863295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.283806, 39.078815, 26.821459>,  <34.981133, 38.826771, 26.751734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283806, 39.078815, 26.821459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126114, -0.402295, 0.906782,
		0.641502, -0.664164, -0.383876,
		0.756684, 0.630114, 0.174313,
		35.510811, 39.267849, 26.873753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522884, 38.372723, 27.150471>,  <34.981133, 38.826771, 26.751734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522884, 38.372723, 27.150471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603325, 38.755554, 27.233957>,  <35.651588, 38.985252, 27.284048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.603325, 38.755554, 27.233957>,  <35.522884, 38.372723, 27.150471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603325, 38.755554, 27.233957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289431, -0.261609, 0.920755,
		0.935836, -0.124752, -0.329617,
		0.201097, 0.957078, 0.208715,
		35.663654, 39.042679, 27.296572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143650, 38.304394, 27.401308>,  <35.522884, 38.372723, 27.150471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143650, 38.304394, 27.401308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014549, 38.660900, 27.528727>,  <35.937088, 38.874805, 27.605177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014549, 38.660900, 27.528727>,  <36.143650, 38.304394, 27.401308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014549, 38.660900, 27.528727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347200, -0.201606, 0.915864,
		0.880502, 0.406194, -0.244380,
		-0.322750, 0.891270, 0.318545,
		35.917725, 38.928280, 27.624290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637638, 38.720966, 27.769808>,  <36.143650, 38.304394, 27.401308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637638, 38.720966, 27.769808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.313648, 38.898319, 27.923359>,  <36.119255, 39.004730, 28.015490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.313648, 38.898319, 27.923359>,  <36.637638, 38.720966, 27.769808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313648, 38.898319, 27.923359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361006, -0.138914, 0.922159,
		0.462191, 0.885505, -0.047546,
		-0.809972, 0.443378, 0.383877,
		36.070656, 39.031334, 28.038523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847298, 39.295143, 28.320913>,  <36.637638, 38.720966, 27.769808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847298, 39.295143, 28.320913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475338, 39.159847, 28.378717>,  <36.252163, 39.078671, 28.413399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475338, 39.159847, 28.378717>,  <36.847298, 39.295143, 28.320913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475338, 39.159847, 28.378717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271515, -0.366198, 0.890044,
		-0.248127, 0.866888, 0.432364,
		-0.929899, -0.338237, 0.144509,
		36.196369, 39.058376, 28.422070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545708, 39.515755, 29.071178>,  <36.847298, 39.295143, 28.320913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545708, 39.515755, 29.071178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378773, 39.178070, 28.936632>,  <36.278614, 38.975460, 28.855904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378773, 39.178070, 28.936632>,  <36.545708, 39.515755, 29.071178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378773, 39.178070, 28.936632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284270, -0.472839, 0.834035,
		-0.863147, 0.252452, 0.437315,
		-0.417333, -0.844211, -0.336366,
		36.253574, 38.924809, 28.835722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631649, 40.366241, 29.218189>,  <36.545708, 39.515755, 29.071178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631649, 40.366241, 29.218189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.469315, 40.701504, 29.363951>,  <36.371914, 40.902660, 29.451408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.469315, 40.701504, 29.363951>,  <36.631649, 40.366241, 29.218189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469315, 40.701504, 29.363951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473470, 0.148232, -0.868247,
		-0.781743, -0.524901, 0.336683,
		-0.405837, 0.838156, 0.364405,
		36.347565, 40.952950, 29.473272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087162, 40.497498, 28.784557>,  <36.631649, 40.366241, 29.218189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087162, 40.497498, 28.784557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101124, 40.836658, 28.996159>,  <36.109501, 41.040154, 29.123119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.101124, 40.836658, 28.996159>,  <36.087162, 40.497498, 28.784557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101124, 40.836658, 28.996159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574762, 0.450056, -0.683445,
		-0.817576, -0.280196, 0.503051,
		0.034903, 0.847903, 0.529001,
		36.111595, 41.091030, 29.154860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380936, 40.763092, 28.850378>,  <36.087162, 40.497498, 28.784557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380936, 40.763092, 28.850378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622959, 41.078762, 28.892544>,  <35.768173, 41.268166, 28.917843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622959, 41.078762, 28.892544>,  <35.380936, 40.763092, 28.850378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622959, 41.078762, 28.892544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588024, 0.532192, -0.609097,
		-0.536784, 0.306551, 0.786059,
		0.605054, 0.789175, 0.105413,
		35.804474, 41.315514, 28.924168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890648, 41.257874, 28.864008>,  <35.380936, 40.763092, 28.850378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890648, 41.257874, 28.864008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.239471, 41.436852, 28.784710>,  <35.448765, 41.544239, 28.737131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.239471, 41.436852, 28.784710>,  <34.890648, 41.257874, 28.864008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239471, 41.436852, 28.784710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456997, 0.599587, -0.657000,
		-0.175109, 0.663541, 0.727359,
		0.872061, 0.447448, -0.198243,
		35.501091, 41.571087, 28.725237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670784, 41.916447, 28.752071>,  <34.890648, 41.257874, 28.864008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670784, 41.916447, 28.752071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.036835, 41.931324, 28.591497>,  <35.256466, 41.940250, 28.495153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.036835, 41.931324, 28.591497>,  <34.670784, 41.916447, 28.752071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036835, 41.931324, 28.591497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360231, 0.522519, -0.772791,
		0.181019, 0.851816, 0.491571,
		0.915131, 0.037189, -0.401437,
		35.311375, 41.942482, 28.471066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744884, 42.641609, 28.572767>,  <34.670784, 41.916447, 28.752071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744884, 42.641609, 28.572767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.999310, 42.427223, 28.350718>,  <35.151966, 42.298592, 28.217487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.999310, 42.427223, 28.350718>,  <34.744884, 42.641609, 28.572767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999310, 42.427223, 28.350718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296164, 0.494743, -0.817017,
		0.712536, 0.684084, 0.155956,
		0.636066, -0.535965, -0.555123,
		35.190128, 42.266434, 28.184181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030327, 43.076656, 28.092793>,  <34.744884, 42.641609, 28.572767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030327, 43.076656, 28.092793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.089439, 42.723747, 27.914015>,  <35.124908, 42.512001, 27.806749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.089439, 42.723747, 27.914015>,  <35.030327, 43.076656, 28.092793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089439, 42.723747, 27.914015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308416, 0.388261, -0.868408,
		0.939702, 0.266179, -0.214729,
		0.147781, -0.882271, -0.446943,
		35.133774, 42.459064, 27.779932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551888, 43.185410, 27.470804>,  <35.030327, 43.076656, 28.092793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551888, 43.185410, 27.470804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.304955, 42.871719, 27.445818>,  <35.156796, 42.683506, 27.430826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.304955, 42.871719, 27.445818>,  <35.551888, 43.185410, 27.470804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304955, 42.871719, 27.445818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362196, 0.353802, -0.862345,
		0.698369, -0.509726, -0.502454,
		-0.617328, -0.784222, -0.062464,
		35.119755, 42.636452, 27.427078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551517, 43.089031, 26.735703>,  <35.551888, 43.185410, 27.470804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551517, 43.089031, 26.735703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.236549, 42.888199, 26.878746>,  <35.047569, 42.767700, 26.964573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.236549, 42.888199, 26.878746>,  <35.551517, 43.089031, 26.735703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236549, 42.888199, 26.878746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510336, 0.205605, -0.835036,
		0.345728, -0.840025, -0.418127,
		-0.787420, -0.502081, 0.357611,
		35.000324, 42.737576, 26.986029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312984, 42.656006, 26.182917>,  <35.551517, 43.089031, 26.735703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312984, 42.656006, 26.182917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.003674, 42.707657, 26.431231>,  <34.818089, 42.738647, 26.580219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.003674, 42.707657, 26.431231>,  <35.312984, 42.656006, 26.182917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003674, 42.707657, 26.431231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589069, 0.215954, -0.778692,
		-0.234612, -0.967827, -0.090927,
		-0.773275, 0.129128, 0.620783,
		34.771690, 42.746395, 26.617466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788151, 42.261189, 25.893076>,  <35.312984, 42.656006, 26.182917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788151, 42.261189, 25.893076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.583824, 42.519199, 26.120411>,  <34.461227, 42.674007, 26.256811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.583824, 42.519199, 26.120411>,  <34.788151, 42.261189, 25.893076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583824, 42.519199, 26.120411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612204, 0.191195, -0.767236,
		-0.603552, -0.739854, 0.297224,
		-0.510815, 0.645028, 0.568338,
		34.430580, 42.712708, 26.290913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060375, 42.271832, 25.612976>,  <34.788151, 42.261189, 25.893076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060375, 42.271832, 25.612976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.076786, 42.611679, 25.823296>,  <34.086632, 42.815586, 25.949488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.076786, 42.611679, 25.823296>,  <34.060375, 42.271832, 25.612976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076786, 42.611679, 25.823296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568647, 0.452556, -0.686901,
		-0.821558, -0.270813, 0.501699,
		0.041025, 0.849619, 0.525799,
		34.089092, 42.866566, 25.981035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408268, 42.467533, 25.660810>,  <34.060375, 42.271832, 25.612976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408268, 42.467533, 25.660810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.628757, 42.795803, 25.721008>,  <33.761051, 42.992764, 25.757128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.628757, 42.795803, 25.721008>,  <33.408268, 42.467533, 25.660810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628757, 42.795803, 25.721008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518544, 0.478270, -0.708780,
		-0.653652, 0.312661, 0.689189,
		0.551227, 0.820671, 0.150494,
		33.794125, 43.042004, 25.766157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882271, 42.992676, 25.684013>,  <33.408268, 42.467533, 25.660810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882271, 42.992676, 25.684013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.229263, 43.171707, 25.597158>,  <33.437458, 43.279125, 25.545046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.229263, 43.171707, 25.597158>,  <32.882271, 42.992676, 25.684013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229263, 43.171707, 25.597158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408967, 0.393119, -0.823531,
		-0.283233, 0.803201, 0.524068,
		0.867482, 0.447578, -0.217138,
		33.489510, 43.305981, 25.532017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288967, 43.415329, 25.807505>,  <32.882271, 42.992676, 25.684013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288967, 43.415329, 25.807505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.911308, 43.526154, 25.878860>,  <31.684713, 43.592648, 25.921675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.911308, 43.526154, 25.878860>,  <32.288967, 43.415329, 25.807505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911308, 43.526154, 25.878860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038582, -0.444680, 0.894858,
		0.327260, 0.851759, 0.409153,
		-0.944146, 0.277065, 0.178389,
		31.628065, 43.609272, 25.932377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284676, 43.729607, 26.506086>,  <32.288967, 43.415329, 25.807505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284676, 43.729607, 26.506086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916683, 43.594547, 26.426462>,  <31.695887, 43.513512, 26.378689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.916683, 43.594547, 26.426462>,  <32.284676, 43.729607, 26.506086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916683, 43.594547, 26.426462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044351, -0.414920, 0.908776,
		-0.389440, 0.844888, 0.366744,
		-0.919984, -0.337648, -0.199058,
		31.640688, 43.493252, 26.366745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809935, 43.842907, 27.109888>,  <32.284676, 43.729607, 26.506086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809935, 43.842907, 27.109888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.618038, 43.571579, 26.887276>,  <31.502901, 43.408783, 26.753708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.618038, 43.571579, 26.887276>,  <31.809935, 43.842907, 27.109888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618038, 43.571579, 26.887276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388767, -0.404293, 0.827893,
		-0.786581, 0.613535, -0.069754,
		-0.479740, -0.678323, -0.556531,
		31.474115, 43.368080, 26.720316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090418, 43.720535, 27.374401>,  <31.809935, 43.842907, 27.109888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090418, 43.720535, 27.374401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.173630, 43.376526, 27.188030>,  <31.223557, 43.170120, 27.076208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.173630, 43.376526, 27.188030>,  <31.090418, 43.720535, 27.374401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173630, 43.376526, 27.188030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307307, -0.509693, 0.803601,
		-0.928594, -0.023991, -0.370322,
		0.208030, -0.860021, -0.465925,
		31.236038, 43.118519, 27.048252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644037, 43.351486, 27.638330>,  <31.090418, 43.720535, 27.374401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644037, 43.351486, 27.638330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.903305, 43.082989, 27.494495>,  <31.058867, 42.921890, 27.408194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.903305, 43.082989, 27.494495>,  <30.644037, 43.351486, 27.638330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903305, 43.082989, 27.494495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298947, -0.658605, 0.690558,
		-0.700363, -0.340099, -0.627554,
		0.648168, -0.671247, -0.359591,
		31.097755, 42.881615, 27.386620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183256, 42.746586, 27.603657>,  <30.644037, 43.351486, 27.638330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183256, 42.746586, 27.603657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.565540, 42.629272, 27.613520>,  <30.794910, 42.558884, 27.619438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.565540, 42.629272, 27.613520>,  <30.183256, 42.746586, 27.603657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565540, 42.629272, 27.613520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221722, -0.662352, 0.715631,
		-0.193548, -0.689403, -0.698042,
		0.955708, -0.293280, 0.024659,
		30.852253, 42.541286, 27.620916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206533, 41.950180, 27.591402>,  <30.183256, 42.746586, 27.603657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206533, 41.950180, 27.591402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.554068, 42.071781, 27.747713>,  <30.762589, 42.144741, 27.841499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.554068, 42.071781, 27.747713>,  <30.206533, 41.950180, 27.591402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554068, 42.071781, 27.747713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181217, -0.539250, 0.822417,
		0.460745, -0.785360, -0.413429,
		0.868835, 0.304005, 0.390777,
		30.814718, 42.162983, 27.864946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405422, 41.332520, 27.941631>,  <30.206533, 41.950180, 27.591402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405422, 41.332520, 27.941631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650099, 41.619976, 28.073925>,  <30.796906, 41.792450, 28.153301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.650099, 41.619976, 28.073925>,  <30.405422, 41.332520, 27.941631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650099, 41.619976, 28.073925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110322, -0.336497, 0.935200,
		0.783367, -0.608540, -0.126550,
		0.611690, 0.718643, 0.330736,
		30.833607, 41.835567, 28.173145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113211, 41.028854, 28.069735>,  <30.405422, 41.332520, 27.941631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113211, 41.028854, 28.069735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.059034, 41.355759, 28.293787>,  <31.026527, 41.551899, 28.428219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.059034, 41.355759, 28.293787>,  <31.113211, 41.028854, 28.069735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059034, 41.355759, 28.293787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064241, -0.556908, 0.828086,
		0.988700, 0.148141, 0.022927,
		-0.135442, 0.817256, 0.560132,
		31.018402, 41.600937, 28.461826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666323, 41.043282, 28.556669>,  <31.113211, 41.028854, 28.069735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666323, 41.043282, 28.556669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.382578, 41.285580, 28.700827>,  <31.212330, 41.430958, 28.787321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.382578, 41.285580, 28.700827>,  <31.666323, 41.043282, 28.556669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382578, 41.285580, 28.700827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020054, -0.493756, 0.869369,
		0.704558, 0.623925, 0.338105,
		-0.709363, 0.605741, 0.360392,
		31.169769, 41.467300, 28.808945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879702, 41.298988, 29.252001>,  <31.666323, 41.043282, 28.556669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879702, 41.298988, 29.252001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.479975, 41.313477, 29.249144>,  <31.240139, 41.322170, 29.247429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.479975, 41.313477, 29.249144>,  <31.879702, 41.298988, 29.252001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479975, 41.313477, 29.249144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018210, -0.315245, 0.948836,
		0.032115, 0.948319, 0.315689,
		-0.999318, 0.036221, -0.007145,
		31.180180, 41.324345, 29.247000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861912, 41.493027, 29.941786>,  <31.879702, 41.298988, 29.252001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861912, 41.493027, 29.941786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.491964, 41.394123, 29.826214>,  <31.269997, 41.334782, 29.756870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.491964, 41.394123, 29.826214>,  <31.861912, 41.493027, 29.941786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491964, 41.394123, 29.826214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215838, -0.284234, 0.934144,
		-0.313098, 0.926323, 0.209512,
		-0.924869, -0.247258, -0.288929,
		31.214504, 41.319946, 29.739534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.603376, 46.635796, 23.734962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337517, 46.393028, 23.560654>,  <31.178001, 46.247368, 23.456068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337517, 46.393028, 23.560654>,  <31.603376, 46.635796, 23.734962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337517, 46.393028, 23.560654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136767, -0.474562, 0.869532,
		-0.734533, 0.637532, 0.232411,
		-0.664648, -0.606914, -0.435774,
		31.138123, 46.210953, 23.429922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035587, 46.643780, 24.173033>,  <31.603376, 46.635796, 23.734962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035587, 46.643780, 24.173033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016779, 46.300053, 23.969318>,  <31.005493, 46.093819, 23.847090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016779, 46.300053, 23.969318>,  <31.035587, 46.643780, 24.173033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016779, 46.300053, 23.969318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113709, -0.501929, 0.857402,
		-0.992401, 0.098227, -0.074110,
		-0.047022, -0.859313, -0.509284,
		31.002672, 46.042259, 23.816534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575470, 46.172043, 24.551205>,  <31.035587, 46.643780, 24.173033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575470, 46.172043, 24.551205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765299, 45.910427, 24.315573>,  <30.879196, 45.753460, 24.174192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765299, 45.910427, 24.315573>,  <30.575470, 46.172043, 24.551205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765299, 45.910427, 24.315573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059196, -0.644016, 0.762718,
		-0.878224, -0.396837, -0.266916,
		0.474573, -0.654037, -0.589082,
		30.907671, 45.714214, 24.138849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246235, 45.587112, 24.693100>,  <30.575470, 46.172043, 24.551205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246235, 45.587112, 24.693100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600842, 45.455585, 24.562891>,  <30.813606, 45.376667, 24.484766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600842, 45.455585, 24.562891>,  <30.246235, 45.587112, 24.693100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600842, 45.455585, 24.562891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017083, -0.726314, 0.687151,
		-0.462380, -0.603610, -0.649507,
		0.886517, -0.328820, -0.325522,
		30.866796, 45.356937, 24.465235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094824, 44.941067, 24.662676>,  <30.246235, 45.587112, 24.693100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094824, 44.941067, 24.662676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494751, 44.948608, 24.661318>,  <30.734707, 44.953133, 24.660503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494751, 44.948608, 24.661318>,  <30.094824, 44.941067, 24.662676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494751, 44.948608, 24.661318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017897, -0.856186, 0.516357,
		0.006830, -0.516323, -0.856366,
		0.999816, 0.018853, -0.003393,
		30.794697, 44.954266, 24.660299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273279, 44.311951, 24.836048>,  <30.094824, 44.941067, 24.662676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273279, 44.311951, 24.836048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630285, 44.487419, 24.877977>,  <30.844488, 44.592701, 24.903135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630285, 44.487419, 24.877977>,  <30.273279, 44.311951, 24.836048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630285, 44.487419, 24.877977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238360, -0.656075, 0.716066,
		0.382888, -0.614113, -0.690117,
		0.892514, 0.438669, 0.104822,
		30.898039, 44.619019, 24.909424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771952, 43.784901, 24.567247>,  <30.273279, 44.311951, 24.836048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771952, 43.784901, 24.567247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953178, 44.044376, 24.811850>,  <31.061914, 44.200062, 24.958611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953178, 44.044376, 24.811850>,  <30.771952, 43.784901, 24.567247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953178, 44.044376, 24.811850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241227, -0.749562, 0.616414,
		0.858219, -0.131765, -0.496082,
		0.453066, 0.648687, 0.611503,
		31.089098, 44.238983, 24.995300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505919, 43.559479, 24.611563>,  <30.771952, 43.784901, 24.567247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505919, 43.559479, 24.611563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413857, 43.798119, 24.919094>,  <31.358620, 43.941303, 25.103613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413857, 43.798119, 24.919094>,  <31.505919, 43.559479, 24.611563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413857, 43.798119, 24.919094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334390, -0.693449, 0.638209,
		0.913899, 0.403975, -0.039897,
		-0.230154, 0.596600, 0.768829,
		31.344810, 43.977100, 25.149742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023109, 43.444580, 25.124554>,  <31.505919, 43.559479, 24.611563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023109, 43.444580, 25.124554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746414, 43.637589, 25.339464>,  <31.580397, 43.753395, 25.468410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746414, 43.637589, 25.339464>,  <32.023109, 43.444580, 25.124554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746414, 43.637589, 25.339464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346643, -0.430815, 0.833209,
		0.633511, 0.762607, 0.130748,
		-0.691739, 0.482524, 0.537278,
		31.538893, 43.782345, 25.500648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750565, 43.667641, 25.273352>,  <32.023109, 43.444580, 25.124554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750565, 43.667641, 25.273352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138992, 43.634472, 25.183769>,  <33.372047, 43.614571, 25.130020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138992, 43.634472, 25.183769>,  <32.750565, 43.667641, 25.273352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138992, 43.634472, 25.183769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179006, 0.368014, -0.912427,
		0.158076, 0.926115, 0.342523,
		0.971066, -0.082920, -0.223955,
		33.430313, 43.609596, 25.116583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025688, 44.395870, 25.098310>,  <32.750565, 43.667641, 25.273352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025688, 44.395870, 25.098310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245518, 44.105717, 24.932522>,  <33.377415, 43.931625, 24.833048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245518, 44.105717, 24.932522>,  <33.025688, 44.395870, 25.098310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245518, 44.105717, 24.932522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183244, 0.379369, -0.906918,
		0.815100, 0.574370, 0.075570,
		0.549576, -0.725381, -0.414474,
		33.410389, 43.888103, 24.808180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343307, 44.781319, 24.666668>,  <33.025688, 44.395870, 25.098310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343307, 44.781319, 24.666668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400848, 44.411316, 24.526001>,  <33.435375, 44.189316, 24.441601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400848, 44.411316, 24.526001>,  <33.343307, 44.781319, 24.666668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400848, 44.411316, 24.526001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002189, 0.355065, -0.934839,
		0.989596, 0.135251, 0.049053,
		0.143855, -0.925006, -0.351667,
		33.444004, 44.133816, 24.420502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859035, 44.823898, 24.102001>,  <33.343307, 44.781319, 24.666668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859035, 44.823898, 24.102001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687702, 44.467834, 24.039839>,  <33.584904, 44.254196, 24.002542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687702, 44.467834, 24.039839>,  <33.859035, 44.823898, 24.102001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687702, 44.467834, 24.039839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208658, 0.069899, -0.975487,
		0.879201, -0.450257, 0.155799,
		-0.428330, -0.890159, -0.155405,
		33.559204, 44.200787, 23.993217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256138, 44.490242, 23.626896>,  <33.859035, 44.823898, 24.102001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256138, 44.490242, 23.626896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913582, 44.287621, 23.586895>,  <33.708050, 44.166050, 23.562895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913582, 44.287621, 23.586895>,  <34.256138, 44.490242, 23.626896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913582, 44.287621, 23.586895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060426, 0.094020, -0.993735,
		0.512780, -0.857068, -0.049908,
		-0.856391, -0.506552, -0.100001,
		33.656666, 44.135654, 23.556894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330254, 43.939243, 23.128330>,  <34.256138, 44.490242, 23.626896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330254, 43.939243, 23.128330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943951, 44.041702, 23.144810>,  <33.712170, 44.103180, 23.154697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943951, 44.041702, 23.144810>,  <34.330254, 43.939243, 23.128330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943951, 44.041702, 23.144810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064099, -0.081695, -0.994594,
		-0.251401, -0.963178, 0.095316,
		-0.965758, 0.256151, 0.041200,
		33.654224, 44.118546, 23.157169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897507, 43.395576, 22.845800>,  <34.330254, 43.939243, 23.128330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897507, 43.395576, 22.845800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685131, 43.733616, 22.820765>,  <33.557705, 43.936440, 22.805742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685131, 43.733616, 22.820765>,  <33.897507, 43.395576, 22.845800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685131, 43.733616, 22.820765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176483, -0.182513, -0.967235,
		-0.828830, -0.502494, 0.246048,
		-0.530937, 0.845097, -0.062590,
		33.525848, 43.987144, 22.801987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399796, 43.212830, 22.309130>,  <33.897507, 43.395576, 22.845800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399796, 43.212830, 22.309130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363525, 43.609657, 22.343956>,  <33.341763, 43.847752, 22.364853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363525, 43.609657, 22.343956>,  <33.399796, 43.212830, 22.309130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363525, 43.609657, 22.343956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259788, 0.060837, -0.963747,
		-0.961399, -0.110010, 0.252211,
		-0.090678, 0.992067, 0.087068,
		33.336323, 43.907276, 22.370077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868488, 43.378258, 21.926777>,  <33.399796, 43.212830, 22.309130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868488, 43.378258, 21.926777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058449, 43.725689, 21.983404>,  <33.172424, 43.934147, 22.017382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058449, 43.725689, 21.983404>,  <32.868488, 43.378258, 21.926777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058449, 43.725689, 21.983404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206279, 0.266254, -0.941572,
		-0.855520, 0.417954, 0.305614,
		0.474904, 0.868576, 0.141570,
		33.200920, 43.986263, 22.025875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389164, 43.903008, 21.783264>,  <32.868488, 43.378258, 21.926777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389164, 43.903008, 21.783264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749786, 44.062378, 21.715788>,  <32.966160, 44.158001, 21.675303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749786, 44.062378, 21.715788>,  <32.389164, 43.903008, 21.783264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749786, 44.062378, 21.715788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308260, 0.317918, -0.896607,
		-0.303598, 0.860342, 0.409439,
		0.901556, 0.398422, -0.168689,
		33.020252, 44.181904, 21.665180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176743, 44.522072, 21.489237>,  <32.389164, 43.903008, 21.783264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176743, 44.522072, 21.489237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562447, 44.469917, 21.396969>,  <32.793869, 44.438625, 21.341608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562447, 44.469917, 21.396969>,  <32.176743, 44.522072, 21.489237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562447, 44.469917, 21.396969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176633, 0.332599, -0.926379,
		0.197506, 0.934012, 0.297681,
		0.964257, -0.130385, -0.230668,
		32.851723, 44.430801, 21.327768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354229, 45.072701, 20.999666>,  <32.176743, 44.522072, 21.489237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354229, 45.072701, 20.999666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618416, 44.775425, 20.956860>,  <32.776928, 44.597057, 20.931175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618416, 44.775425, 20.956860>,  <32.354229, 45.072701, 20.999666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618416, 44.775425, 20.956860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034228, 0.172175, -0.984471,
		0.750075, 0.646547, 0.139154,
		0.660466, -0.743191, -0.107015,
		32.816555, 44.552467, 20.924755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010090, 45.380779, 20.695215>,  <32.354229, 45.072701, 20.999666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010090, 45.380779, 20.695215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994667, 44.989635, 20.612938>,  <32.985413, 44.754951, 20.563572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994667, 44.989635, 20.612938>,  <33.010090, 45.380779, 20.695215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994667, 44.989635, 20.612938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148625, 0.197945, -0.968880,
		0.988142, -0.067925, 0.137703,
		-0.038553, -0.977857, -0.205693,
		32.983101, 44.696278, 20.551229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537037, 45.333546, 20.122669>,  <33.010090, 45.380779, 20.695215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537037, 45.333546, 20.122669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332981, 44.989616, 20.114086>,  <33.210548, 44.783257, 20.108936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332981, 44.989616, 20.114086>,  <33.537037, 45.333546, 20.122669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332981, 44.989616, 20.114086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132195, -0.053731, -0.989766,
		0.849873, -0.507754, 0.141075,
		-0.510138, -0.859825, -0.021458,
		33.179939, 44.731670, 20.107649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.678389, 40.153023, 20.626938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.897032, 40.461273, 20.758003>,  <27.028217, 40.646221, 20.836641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.897032, 40.461273, 20.758003>,  <26.678389, 40.153023, 20.626938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897032, 40.461273, 20.758003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366808, -0.572097, 0.733592,
		0.752776, -0.280798, -0.595383,
		0.546608, 0.770621, 0.327662,
		27.061014, 40.692459, 20.856302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358381, 39.878727, 20.860825>,  <26.678389, 40.153023, 20.626938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358381, 39.878727, 20.860825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.317457, 40.221821, 21.062349>,  <27.292902, 40.427677, 21.183264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.317457, 40.221821, 21.062349>,  <27.358381, 39.878727, 20.860825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317457, 40.221821, 21.062349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525702, -0.383346, 0.759397,
		0.844494, 0.342551, -0.411690,
		-0.102312, 0.857732, 0.503813,
		27.286764, 40.479141, 21.213493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027594, 39.873322, 21.162914>,  <27.358381, 39.878727, 20.860825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027594, 39.873322, 21.162914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.777946, 40.122974, 21.350929>,  <27.628159, 40.272766, 21.463739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.777946, 40.122974, 21.350929>,  <28.027594, 39.873322, 21.162914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777946, 40.122974, 21.350929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373257, -0.290335, 0.881127,
		0.686409, 0.725371, -0.051760,
		-0.624116, 0.624133, 0.470039,
		27.590712, 40.310215, 21.491941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418547, 40.249554, 21.625271>,  <28.027594, 39.873322, 21.162914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418547, 40.249554, 21.625271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.038660, 40.251801, 21.750492>,  <27.810728, 40.253147, 21.825624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.038660, 40.251801, 21.750492>,  <28.418547, 40.249554, 21.625271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038660, 40.251801, 21.750492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293828, -0.329420, 0.897300,
		0.108167, 0.944167, 0.311205,
		-0.949719, 0.005618, 0.313055,
		27.753744, 40.253487, 21.844408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438520, 40.793842, 22.036266>,  <28.418547, 40.249554, 21.625271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438520, 40.793842, 22.036266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.153103, 40.533192, 22.139212>,  <27.981852, 40.376801, 22.200979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.153103, 40.533192, 22.139212>,  <28.438520, 40.793842, 22.036266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153103, 40.533192, 22.139212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363784, -0.030657, 0.930979,
		-0.598760, 0.757920, 0.258927,
		-0.713545, -0.651627, 0.257363,
		27.939039, 40.337704, 22.216421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236311, 40.969845, 22.781092>,  <28.438520, 40.793842, 22.036266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236311, 40.969845, 22.781092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.054420, 40.616417, 22.736309>,  <27.945286, 40.404362, 22.709440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.054420, 40.616417, 22.736309>,  <28.236311, 40.969845, 22.781092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054420, 40.616417, 22.736309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106243, -0.178619, 0.978165,
		-0.884271, 0.432904, 0.175096,
		-0.454728, -0.883566, -0.111955,
		27.918003, 40.351349, 22.702723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698904, 40.887875, 23.346245>,  <28.236311, 40.969845, 22.781092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698904, 40.887875, 23.346245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.782988, 40.516926, 23.222439>,  <27.833437, 40.294357, 23.148155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.782988, 40.516926, 23.222439>,  <27.698904, 40.887875, 23.346245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782988, 40.516926, 23.222439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218740, -0.263952, 0.939405,
		-0.952872, -0.265176, 0.147367,
		0.210209, -0.927368, -0.309517,
		27.846050, 40.238716, 23.129583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376858, 40.533459, 23.855675>,  <27.698904, 40.887875, 23.346245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376858, 40.533459, 23.855675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.629074, 40.280170, 23.676140>,  <27.780403, 40.128197, 23.568419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.629074, 40.280170, 23.676140>,  <27.376858, 40.533459, 23.855675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629074, 40.280170, 23.676140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236652, -0.393898, 0.888167,
		-0.739199, -0.666243, -0.098516,
		0.630541, -0.633218, -0.448836,
		27.818237, 40.090206, 23.541489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.266323, 39.960629, 24.196424>,  <27.376858, 40.533459, 23.855675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.266323, 39.960629, 24.196424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.626308, 39.916821, 24.027630>,  <27.842299, 39.890537, 23.926353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.626308, 39.916821, 24.027630>,  <27.266323, 39.960629, 24.196424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626308, 39.916821, 24.027630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373447, -0.305789, 0.875803,
		-0.224958, -0.945779, -0.234298,
		0.899962, -0.109521, -0.421988,
		27.896297, 39.883965, 23.901033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587950, 39.229095, 24.538956>,  <27.266323, 39.960629, 24.196424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587950, 39.229095, 24.538956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.888821, 39.449200, 24.393932>,  <28.069344, 39.581261, 24.306919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.888821, 39.449200, 24.393932>,  <27.587950, 39.229095, 24.538956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888821, 39.449200, 24.393932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469703, -0.061808, 0.880658,
		0.462180, -0.832704, -0.304948,
		0.752176, 0.550257, -0.362557,
		28.114473, 39.614277, 24.285166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167171, 38.885120, 24.717407>,  <27.587950, 39.229095, 24.538956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167171, 38.885120, 24.717407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.332918, 39.241436, 24.642792>,  <28.432367, 39.455223, 24.598022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.332918, 39.241436, 24.642792>,  <28.167171, 38.885120, 24.717407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332918, 39.241436, 24.642792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434802, -0.013703, 0.900422,
		0.799528, -0.454214, -0.392994,
		0.414369, 0.890787, -0.186537,
		28.457230, 39.508671, 24.586830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861275, 38.826321, 24.937195>,  <28.167171, 38.885120, 24.717407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861275, 38.826321, 24.937195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.775547, 39.216835, 24.949371>,  <28.724110, 39.451145, 24.956676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.775547, 39.216835, 24.949371>,  <28.861275, 38.826321, 24.937195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775547, 39.216835, 24.949371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410069, 0.061649, 0.909969,
		0.886516, 0.207507, -0.413558,
		-0.214321, 0.976289, 0.030439,
		28.711250, 39.509720, 24.958504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487337, 39.054939, 25.004089>,  <28.861275, 38.826321, 24.937195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487337, 39.054939, 25.004089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225250, 39.332203, 25.124235>,  <29.067999, 39.498562, 25.196323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225250, 39.332203, 25.124235>,  <29.487337, 39.054939, 25.004089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225250, 39.332203, 25.124235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473449, 0.066952, 0.878273,
		0.588674, 0.717668, -0.372044,
		-0.655217, 0.693160, 0.300366,
		29.028685, 39.540150, 25.214344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916508, 39.520779, 25.300907>,  <29.487337, 39.054939, 25.004089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916508, 39.520779, 25.300907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.548170, 39.606091, 25.431480>,  <29.327168, 39.657276, 25.509825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.548170, 39.606091, 25.431480>,  <29.916508, 39.520779, 25.300907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548170, 39.606091, 25.431480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334056, -0.000324, 0.942553,
		0.201132, 0.976991, -0.070948,
		-0.920843, 0.213278, 0.326435,
		29.271917, 39.670074, 25.529411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442112, 40.147137, 25.237467>,  <29.916508, 39.520779, 25.300907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442112, 40.147137, 25.237467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.771482, 39.938068, 25.149115>,  <30.969105, 39.812626, 25.096104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.771482, 39.938068, 25.149115>,  <30.442112, 40.147137, 25.237467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771482, 39.938068, 25.149115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159987, 0.159620, -0.974128,
		0.544405, 0.837459, 0.047814,
		0.823424, -0.522671, -0.220880,
		31.018509, 39.781269, 25.082851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781269, 40.562317, 24.735792>,  <30.442112, 40.147137, 25.237467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781269, 40.562317, 24.735792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.907469, 40.190868, 24.657700>,  <30.983189, 39.967999, 24.610844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.907469, 40.190868, 24.657700>,  <30.781269, 40.562317, 24.735792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907469, 40.190868, 24.657700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133741, 0.160171, -0.977987,
		0.939454, 0.334664, -0.073661,
		0.315499, -0.928625, -0.195231,
		31.002119, 39.912281, 24.599131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468443, 40.610390, 24.304680>,  <30.781269, 40.562317, 24.735792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468443, 40.610390, 24.304680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.294453, 40.253914, 24.253187>,  <31.190060, 40.040028, 24.222292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.294453, 40.253914, 24.253187>,  <31.468443, 40.610390, 24.304680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294453, 40.253914, 24.253187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044396, 0.121565, -0.991590,
		0.899348, -0.437031, -0.013312,
		-0.434974, -0.891193, -0.128732,
		31.163960, 39.986557, 24.214567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815315, 40.179005, 23.716076>,  <31.468443, 40.610390, 24.304680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815315, 40.179005, 23.716076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440790, 40.047062, 23.764271>,  <31.216076, 39.967896, 23.793188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440790, 40.047062, 23.764271>,  <31.815315, 40.179005, 23.716076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440790, 40.047062, 23.764271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196695, 0.208377, -0.958066,
		0.290918, -0.920746, -0.259987,
		-0.936310, -0.329857, 0.120485,
		31.159897, 39.948105, 23.800417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677134, 39.802082, 23.113262>,  <31.815315, 40.179005, 23.716076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677134, 39.802082, 23.113262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.321255, 39.883503, 23.276728>,  <31.107727, 39.932354, 23.374807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.321255, 39.883503, 23.276728>,  <31.677134, 39.802082, 23.113262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321255, 39.883503, 23.276728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343092, 0.292462, -0.892611,
		-0.301209, -0.934363, -0.190366,
		-0.889697, 0.203550, 0.408665,
		31.054346, 39.944569, 23.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284992, 39.436298, 22.642508>,  <31.677134, 39.802082, 23.113262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284992, 39.436298, 22.642508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.065861, 39.696705, 22.852673>,  <30.934381, 39.852951, 22.978771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.065861, 39.696705, 22.852673>,  <31.284992, 39.436298, 22.642508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065861, 39.696705, 22.852673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502386, 0.246182, -0.828856,
		-0.668949, -0.718030, 0.192197,
		-0.547828, 0.651020, 0.525411,
		30.901512, 39.892010, 23.010296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680746, 39.238201, 22.480274>,  <31.284992, 39.436298, 22.642508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680746, 39.238201, 22.480274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642506, 39.615612, 22.607151>,  <30.619562, 39.842060, 22.683277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.642506, 39.615612, 22.607151>,  <30.680746, 39.238201, 22.480274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642506, 39.615612, 22.607151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502087, 0.229442, -0.833826,
		-0.859517, -0.238972, 0.451800,
		-0.095599, 0.943530, 0.317194,
		30.613827, 39.898670, 22.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999725, 39.442467, 22.275801>,  <30.680746, 39.238201, 22.480274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999725, 39.442467, 22.275801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.197235, 39.783878, 22.342335>,  <30.315741, 39.988728, 22.382256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.197235, 39.783878, 22.342335>,  <29.999725, 39.442467, 22.275801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197235, 39.783878, 22.342335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564931, 0.460276, -0.684835,
		-0.661090, 0.244185, 0.709460,
		0.493774, 0.853534, 0.166336,
		30.345367, 40.039940, 22.392235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434874, 39.999348, 22.024508>,  <29.999725, 39.442467, 22.275801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434874, 39.999348, 22.024508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796133, 40.167576, 22.059027>,  <30.012888, 40.268513, 22.079739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.796133, 40.167576, 22.059027>,  <29.434874, 39.999348, 22.024508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796133, 40.167576, 22.059027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197460, 0.585381, -0.786345,
		-0.381229, 0.693145, 0.611731,
		0.903147, 0.420570, 0.086296,
		30.067078, 40.293747, 22.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282429, 40.648640, 21.910175>,  <29.434874, 39.999348, 22.024508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282429, 40.648640, 21.910175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.674173, 40.605438, 21.841835>,  <29.909220, 40.579517, 21.800831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.674173, 40.605438, 21.841835>,  <29.282429, 40.648640, 21.910175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674173, 40.605438, 21.841835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114743, 0.398791, -0.909835,
		0.166401, 0.910659, 0.378167,
		0.979359, -0.108006, -0.170851,
		29.967981, 40.573036, 21.790579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503744, 41.322842, 21.865194>,  <29.282429, 40.648640, 21.910175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503744, 41.322842, 21.865194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.749424, 41.074776, 21.669989>,  <29.896832, 40.925938, 21.552866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.749424, 41.074776, 21.669989>,  <29.503744, 41.322842, 21.865194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749424, 41.074776, 21.669989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085739, 0.562299, -0.822477,
		0.784479, 0.547007, 0.292192,
		0.614200, -0.620164, -0.488012,
		29.933683, 40.888725, 21.523584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964727, 41.721317, 21.563442>,  <29.503744, 41.322842, 21.865194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964727, 41.721317, 21.563442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.982758, 41.374741, 21.364546>,  <29.993576, 41.166794, 21.245209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.982758, 41.374741, 21.364546>,  <29.964727, 41.721317, 21.563442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982758, 41.374741, 21.364546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023862, 0.498537, -0.866540,
		0.998699, 0.027194, 0.043147,
		0.045075, -0.866442, -0.497239,
		29.996281, 41.114807, 21.215374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532949, 41.848171, 21.002621>,  <29.964727, 41.721317, 21.563442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532949, 41.848171, 21.002621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.300581, 41.538326, 20.902617>,  <30.161160, 41.352421, 20.842613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.300581, 41.538326, 20.902617>,  <30.532949, 41.848171, 21.002621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300581, 41.538326, 20.902617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215950, 0.442822, -0.870215,
		0.784790, -0.451537, -0.424523,
		-0.580922, -0.774612, -0.250013,
		30.126305, 41.305943, 20.827612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648010, 41.787636, 20.369417>,  <30.532949, 41.848171, 21.002621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648010, 41.787636, 20.369417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307650, 41.580357, 20.403923>,  <30.103434, 41.455990, 20.424627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.307650, 41.580357, 20.403923>,  <30.648010, 41.787636, 20.369417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307650, 41.580357, 20.403923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303849, 0.351520, -0.885500,
		0.428542, -0.779681, -0.456562,
		-0.850898, -0.518200, 0.086264,
		30.052380, 41.424896, 20.429802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182247, 41.336803, 20.099457>,  <30.648010, 41.787636, 20.369417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182247, 41.336803, 20.099457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.503668, 41.286411, 19.866756>,  <31.696520, 41.256176, 19.727137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.503668, 41.286411, 19.866756>,  <31.182247, 41.336803, 20.099457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503668, 41.286411, 19.866756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543805, -0.242043, 0.803550,
		-0.242043, -0.962052, -0.125983,
		-0.803550, 0.125983, 0.581753,
		31.744732, 41.248615, 19.692230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508587, 40.684387, 20.108622>,  <31.182247, 41.336803, 20.099457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508587, 40.684387, 20.108622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.805521, 40.933491, 20.009743>,  <31.983681, 41.082954, 19.950417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.805521, 40.933491, 20.009743>,  <31.508587, 40.684387, 20.108622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805521, 40.933491, 20.009743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480412, -0.237537, 0.844264,
		0.467057, -0.745482, -0.475514,
		0.742336, 0.622762, -0.247195,
		32.028221, 41.120319, 19.935585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001007, 40.317520, 20.272924>,  <31.508587, 40.684387, 20.108622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001007, 40.317520, 20.272924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.169434, 40.676743, 20.222006>,  <32.270489, 40.892277, 20.191454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.169434, 40.676743, 20.222006>,  <32.001007, 40.317520, 20.272924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169434, 40.676743, 20.222006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673816, -0.215755, 0.706698,
		0.607186, -0.383342, -0.695970,
		0.421066, 0.898053, -0.127299,
		32.295753, 40.946159, 20.183817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678440, 40.229961, 20.195860>,  <32.001007, 40.317520, 20.272924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678440, 40.229961, 20.195860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652126, 40.607357, 20.325785>,  <32.636337, 40.833794, 20.403740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.652126, 40.607357, 20.325785>,  <32.678440, 40.229961, 20.195860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652126, 40.607357, 20.325785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532097, -0.242203, 0.811301,
		0.844124, 0.226203, -0.486094,
		-0.065785, 0.943488, 0.324811,
		32.632389, 40.890404, 20.423227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379501, 40.379707, 20.420858>,  <32.678440, 40.229961, 20.195860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379501, 40.379707, 20.420858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.167946, 40.665928, 20.603401>,  <33.041012, 40.837662, 20.712927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.167946, 40.665928, 20.603401>,  <33.379501, 40.379707, 20.420858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167946, 40.665928, 20.603401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599509, -0.065613, 0.797674,
		0.600718, 0.695473, -0.394277,
		-0.528892, 0.715550, 0.456357,
		33.009277, 40.880592, 20.740309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924061, 40.860077, 20.537691>,  <33.379501, 40.379707, 20.420858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924061, 40.860077, 20.537691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.625870, 40.983177, 20.774179>,  <33.446953, 41.057037, 20.916073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.625870, 40.983177, 20.774179>,  <33.924061, 40.860077, 20.537691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625870, 40.983177, 20.774179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627205, 0.023744, 0.778492,
		0.225546, 0.951169, -0.210726,
		-0.745482, 0.307754, 0.591223,
		33.402225, 41.075504, 20.951546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218719, 41.333782, 21.043190>,  <33.924061, 40.860077, 20.537691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218719, 41.333782, 21.043190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888283, 41.212608, 21.233267>,  <33.690022, 41.139904, 21.347313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.888283, 41.212608, 21.233267>,  <34.218719, 41.333782, 21.043190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888283, 41.212608, 21.233267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484445, 0.049046, 0.873446,
		-0.287902, 0.951749, 0.106238,
		-0.826090, -0.302934, 0.475191,
		33.640457, 41.121727, 21.375824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189251, 41.796902, 21.550188>,  <34.218719, 41.333782, 21.043190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189251, 41.796902, 21.550188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993916, 41.459538, 21.639788>,  <33.876713, 41.257118, 21.693548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.993916, 41.459538, 21.639788>,  <34.189251, 41.796902, 21.550188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993916, 41.459538, 21.639788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437669, -0.014644, 0.899017,
		-0.754963, 0.537065, 0.376288,
		-0.488341, -0.843414, 0.224001,
		33.847412, 41.206512, 21.706987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999462, 41.878891, 22.309664>,  <34.189251, 41.796902, 21.550188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999462, 41.878891, 22.309664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967690, 41.494797, 22.202608>,  <33.948627, 41.264339, 22.138374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967690, 41.494797, 22.202608>,  <33.999462, 41.878891, 22.309664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967690, 41.494797, 22.202608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395956, -0.276789, 0.875561,
		-0.914828, -0.036427, 0.402198,
		-0.079430, -0.960240, -0.267638,
		33.943859, 41.206726, 22.122316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802773, 41.439690, 22.918840>,  <33.999462, 41.878891, 22.309664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802773, 41.439690, 22.918840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.969173, 41.160297, 22.685921>,  <34.069012, 40.992664, 22.546169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.969173, 41.160297, 22.685921>,  <33.802773, 41.439690, 22.918840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969173, 41.160297, 22.685921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408894, -0.428279, 0.805843,
		-0.812251, -0.573328, 0.107440,
		0.415998, -0.698479, -0.582300,
		34.093971, 40.950752, 22.511230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658592, 40.789467, 23.240601>,  <33.802773, 41.439690, 22.918840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658592, 40.789467, 23.240601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967995, 40.710300, 22.999762>,  <34.153637, 40.662800, 22.855257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967995, 40.710300, 22.999762>,  <33.658592, 40.789467, 23.240601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967995, 40.710300, 22.999762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530200, -0.318431, 0.785806,
		-0.347245, -0.927056, -0.141376,
		0.773504, -0.197910, -0.602098,
		34.200047, 40.650928, 22.819132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828739, 40.095154, 23.399410>,  <33.658592, 40.789467, 23.240601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828739, 40.095154, 23.399410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.156639, 40.254616, 23.234930>,  <34.353378, 40.350292, 23.136242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.156639, 40.254616, 23.234930>,  <33.828739, 40.095154, 23.399410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156639, 40.254616, 23.234930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562631, -0.426347, 0.708290,
		0.107050, -0.811973, -0.573794,
		0.819748, 0.398657, -0.411201,
		34.402565, 40.374214, 23.111570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324215, 39.581993, 23.527174>,  <33.828739, 40.095154, 23.399410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324215, 39.581993, 23.527174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534340, 39.911423, 23.441601>,  <34.660416, 40.109081, 23.390257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.534340, 39.911423, 23.441601>,  <34.324215, 39.581993, 23.527174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534340, 39.911423, 23.441601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622614, -0.200659, 0.756365,
		0.579995, -0.530530, -0.618178,
		0.525317, 0.823574, -0.213934,
		34.691936, 40.158497, 23.377420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041805, 39.434689, 23.548613>,  <34.324215, 39.581993, 23.527174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041805, 39.434689, 23.548613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011524, 39.830666, 23.596430>,  <34.993355, 40.068253, 23.625120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.011524, 39.830666, 23.596430>,  <35.041805, 39.434689, 23.548613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011524, 39.830666, 23.596430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470211, -0.070282, 0.879751,
		0.879302, 0.122808, -0.460159,
		-0.075699, 0.989939, 0.119544,
		34.988815, 40.127647, 23.632294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.972923, 44.949986, 19.645449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622353, 44.760178, 19.678205>,  <33.412010, 44.646294, 19.697859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.622353, 44.760178, 19.678205>,  <33.972923, 44.949986, 19.645449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622353, 44.760178, 19.678205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067956, -0.046479, -0.996605,
		0.476711, -0.879019, 0.008489,
		-0.876429, -0.474515, 0.081892,
		33.359425, 44.617825, 19.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009640, 44.403900, 19.214878>,  <33.972923, 44.949986, 19.645449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009640, 44.403900, 19.214878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614075, 44.450008, 19.252342>,  <33.376736, 44.477673, 19.274820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614075, 44.450008, 19.252342>,  <34.009640, 44.403900, 19.214878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614075, 44.450008, 19.252342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096468, -0.018992, -0.995155,
		-0.112934, -0.993152, 0.029901,
		-0.988909, 0.115272, 0.093662,
		33.317402, 44.484589, 19.280441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719620, 43.961929, 18.671064>,  <34.009640, 44.403900, 19.214878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719620, 43.961929, 18.671064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431011, 44.224297, 18.759764>,  <33.257847, 44.381718, 18.812984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431011, 44.224297, 18.759764>,  <33.719620, 43.961929, 18.671064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431011, 44.224297, 18.759764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281369, 0.014867, -0.959484,
		-0.632641, -0.754685, 0.173828,
		-0.721524, 0.655919, 0.221750,
		33.214554, 44.421074, 18.826288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138493, 43.795139, 18.259434>,  <33.719620, 43.961929, 18.671064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138493, 43.795139, 18.259434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044865, 44.169552, 18.364553>,  <32.988686, 44.394199, 18.427626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044865, 44.169552, 18.364553>,  <33.138493, 43.795139, 18.259434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044865, 44.169552, 18.364553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360308, 0.167540, -0.917665,
		-0.902988, -0.309490, 0.298041,
		-0.234074, 0.936027, 0.262799,
		32.974644, 44.450359, 18.443394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356850, 43.861698, 18.218550>,  <33.138493, 43.795139, 18.259434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356850, 43.861698, 18.218550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529125, 44.220860, 18.182169>,  <32.632492, 44.436356, 18.160341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529125, 44.220860, 18.182169>,  <32.356850, 43.861698, 18.218550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529125, 44.220860, 18.182169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474291, 0.139450, -0.869253,
		-0.767824, 0.417518, 0.485928,
		0.430691, 0.897905, -0.090952,
		32.658333, 44.490231, 18.154882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838982, 44.304771, 18.019041>,  <32.356850, 43.861698, 18.218550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838982, 44.304771, 18.019041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171566, 44.489372, 17.895306>,  <32.371117, 44.600132, 17.821064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171566, 44.489372, 17.895306>,  <31.838982, 44.304771, 18.019041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171566, 44.489372, 17.895306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428432, 0.178107, -0.885847,
		-0.353727, 0.869075, 0.345811,
		0.831459, 0.461504, -0.309339,
		32.421005, 44.627823, 17.802504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548759, 44.880161, 17.689888>,  <31.838982, 44.304771, 18.019041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548759, 44.880161, 17.689888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918585, 44.842648, 17.542164>,  <32.140480, 44.820141, 17.453529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918585, 44.842648, 17.542164>,  <31.548759, 44.880161, 17.689888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918585, 44.842648, 17.542164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351448, 0.164549, -0.921633,
		0.147204, 0.981900, 0.119176,
		0.924562, -0.093784, -0.369309,
		32.195953, 44.814514, 17.431372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690969, 45.480324, 17.403763>,  <31.548759, 44.880161, 17.689888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690969, 45.480324, 17.403763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.944454, 45.227142, 17.225874>,  <32.096546, 45.075233, 17.119141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.944454, 45.227142, 17.225874>,  <31.690969, 45.480324, 17.403763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944454, 45.227142, 17.225874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309532, 0.319388, -0.895645,
		0.708942, 0.705237, 0.006480,
		0.633712, -0.632955, -0.444721,
		32.134567, 45.037254, 17.092457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965971, 45.899502, 16.917818>,  <31.690969, 45.480324, 17.403763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965971, 45.899502, 16.917818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065678, 45.538895, 16.776327>,  <32.125504, 45.322529, 16.691433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.065678, 45.538895, 16.776327>,  <31.965971, 45.899502, 16.917818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065678, 45.538895, 16.776327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228075, 0.300336, -0.926164,
		0.941195, 0.311540, -0.130751,
		0.249268, -0.901522, -0.353729,
		32.140457, 45.268436, 16.670208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200283, 46.016376, 16.229395>,  <31.965971, 45.899502, 16.917818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200283, 46.016376, 16.229395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101959, 45.629078, 16.247614>,  <32.042965, 45.396698, 16.258545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.101959, 45.629078, 16.247614>,  <32.200283, 46.016376, 16.229395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101959, 45.629078, 16.247614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225657, 0.011465, -0.974139,
		0.942685, -0.249734, -0.221310,
		-0.245813, -0.968247, 0.045547,
		32.028214, 45.338604, 16.261278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599228, 45.617393, 15.646017>,  <32.200283, 46.016376, 16.229395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599228, 45.617393, 15.646017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286049, 45.399521, 15.766221>,  <32.098141, 45.268795, 15.838344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286049, 45.399521, 15.766221>,  <32.599228, 45.617393, 15.646017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286049, 45.399521, 15.766221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315588, -0.068512, -0.946420,
		0.536089, -0.835837, -0.118254,
		-0.782951, -0.544685, 0.300509,
		32.051163, 45.236115, 15.856374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450409, 45.107906, 15.087811>,  <32.599228, 45.617393, 15.646017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450409, 45.107906, 15.087811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112713, 45.143318, 15.299253>,  <31.910095, 45.164566, 15.426119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.112713, 45.143318, 15.299253>,  <32.450409, 45.107906, 15.087811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112713, 45.143318, 15.299253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532357, -0.252814, -0.807887,
		0.062115, -0.963456, 0.260566,
		-0.844238, 0.088532, 0.528606,
		31.859442, 45.169880, 15.457835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007153, 44.466106, 15.054555>,  <32.450409, 45.107906, 15.087811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007153, 44.466106, 15.054555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.751347, 44.763622, 15.132332>,  <31.597864, 44.942131, 15.178998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.751347, 44.763622, 15.132332>,  <32.007153, 44.466106, 15.054555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751347, 44.763622, 15.132332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500182, -0.210478, -0.839951,
		-0.583818, -0.634414, 0.506631,
		-0.639511, 0.743786, 0.194441,
		31.559492, 44.986759, 15.190664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280951, 44.290359, 15.019600>,  <32.007153, 44.466106, 15.054555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280951, 44.290359, 15.019600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268711, 44.683659, 14.947727>,  <31.261368, 44.919640, 14.904604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268711, 44.683659, 14.947727>,  <31.280951, 44.290359, 15.019600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268711, 44.683659, 14.947727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592604, -0.162609, -0.788910,
		-0.804912, 0.082340, 0.587653,
		-0.030599, 0.983249, -0.179681,
		31.259531, 44.978634, 14.893823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535423, 44.486149, 15.041741>,  <31.280951, 44.290359, 15.019600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535423, 44.486149, 15.041741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.321310, 44.148586, 15.027390>,  <30.192842, 43.946049, 15.018780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.321310, 44.148586, 15.027390>,  <30.535423, 44.486149, 15.041741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321310, 44.148586, 15.027390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544424, -0.377176, 0.749227,
		-0.645812, 0.381517, 0.661341,
		-0.535284, -0.843910, -0.035878,
		30.160725, 43.895412, 15.016627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485012, 44.327965, 15.753095>,  <30.535423, 44.486149, 15.041741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485012, 44.327965, 15.753095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371794, 43.987701, 15.575890>,  <30.303864, 43.783543, 15.469566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371794, 43.987701, 15.575890>,  <30.485012, 44.327965, 15.753095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371794, 43.987701, 15.575890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383407, -0.523744, 0.760718,
		-0.879139, 0.045464, 0.474393,
		-0.283045, -0.850662, -0.443012,
		30.286880, 43.732502, 15.442986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259430, 43.901337, 16.224463>,  <30.485012, 44.327965, 15.753095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259430, 43.901337, 16.224463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330845, 43.634800, 15.934881>,  <30.373693, 43.474876, 15.761132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.330845, 43.634800, 15.934881>,  <30.259430, 43.901337, 16.224463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330845, 43.634800, 15.934881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423595, -0.612045, 0.667808,
		-0.888083, -0.425892, 0.172987,
		0.178539, -0.666346, -0.723953,
		30.384407, 43.434895, 15.717695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007338, 43.308273, 16.517376>,  <30.259430, 43.901337, 16.224463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007338, 43.308273, 16.517376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257572, 43.205269, 16.222805>,  <30.407713, 43.143467, 16.046062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.257572, 43.205269, 16.222805>,  <30.007338, 43.308273, 16.517376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257572, 43.205269, 16.222805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395113, -0.709358, 0.583692,
		-0.672701, -0.656123, -0.342018,
		0.625587, -0.257514, -0.736429,
		30.445248, 43.128014, 16.001877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916338, 42.573292, 16.500526>,  <30.007338, 43.308273, 16.517376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916338, 42.573292, 16.500526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269007, 42.684490, 16.348015>,  <30.480608, 42.751209, 16.256508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269007, 42.684490, 16.348015>,  <29.916338, 42.573292, 16.500526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269007, 42.684490, 16.348015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465796, -0.641938, 0.609057,
		-0.075440, -0.714586, -0.695468,
		0.881670, 0.277999, -0.381279,
		30.533508, 42.767891, 16.233631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220352, 41.918125, 16.305456>,  <29.916338, 42.573292, 16.500526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220352, 41.918125, 16.305456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526531, 42.175442, 16.311935>,  <30.710239, 42.329834, 16.315823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526531, 42.175442, 16.311935>,  <30.220352, 41.918125, 16.305456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526531, 42.175442, 16.311935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525515, -0.639433, 0.561213,
		0.371381, -0.421068, -0.827513,
		0.765448, 0.643294, 0.016196,
		30.756166, 42.368431, 16.316793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852573, 41.506931, 16.368656>,  <30.220352, 41.918125, 16.305456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852573, 41.506931, 16.368656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966516, 41.876038, 16.472469>,  <31.034883, 42.097500, 16.534758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966516, 41.876038, 16.472469>,  <30.852573, 41.506931, 16.368656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966516, 41.876038, 16.472469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661781, -0.385188, 0.643176,
		0.693470, -0.011462, -0.720394,
		0.284860, 0.922767, 0.259531,
		31.051975, 42.152866, 16.550329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543505, 41.390541, 16.548264>,  <30.852573, 41.506931, 16.368656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543505, 41.390541, 16.548264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446676, 41.731323, 16.733982>,  <31.388580, 41.935795, 16.845413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.446676, 41.731323, 16.733982>,  <31.543505, 41.390541, 16.548264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446676, 41.731323, 16.733982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440099, -0.330057, 0.835090,
		0.864705, 0.406486, -0.295049,
		-0.242070, 0.851957, 0.464297,
		31.374056, 41.986912, 16.873272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113247, 41.579792, 16.962349>,  <31.543505, 41.390541, 16.548264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113247, 41.579792, 16.962349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813107, 41.779419, 17.135740>,  <31.633022, 41.899193, 17.239775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813107, 41.779419, 17.135740>,  <32.113247, 41.579792, 16.962349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813107, 41.779419, 17.135740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381618, -0.208403, 0.900520,
		0.539756, 0.841131, -0.034076,
		-0.750354, 0.499065, 0.433478,
		31.588001, 41.929138, 17.265783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378994, 42.039154, 17.528812>,  <32.113247, 41.579792, 16.962349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378994, 42.039154, 17.528812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004025, 41.948486, 17.634537>,  <31.779043, 41.894085, 17.697971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004025, 41.948486, 17.634537>,  <32.378994, 42.039154, 17.528812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004025, 41.948486, 17.634537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323134, -0.283537, 0.902879,
		-0.129717, 0.931786, 0.339039,
		-0.937421, -0.226674, 0.264312,
		31.722797, 41.880486, 17.713831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251797, 42.374142, 18.126989>,  <32.378994, 42.039154, 17.528812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251797, 42.374142, 18.126989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965017, 42.095318, 18.122982>,  <31.792950, 41.928024, 18.120577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.965017, 42.095318, 18.122982>,  <32.251797, 42.374142, 18.126989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965017, 42.095318, 18.122982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131924, -0.149773, 0.979880,
		-0.684532, 0.701199, 0.199338,
		-0.716946, -0.697056, -0.010019,
		31.749933, 41.886200, 18.119976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983271, 42.390659, 18.743929>,  <32.251797, 42.374142, 18.126989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983271, 42.390659, 18.743929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787357, 42.062473, 18.625978>,  <31.669809, 41.865562, 18.555208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787357, 42.062473, 18.625978>,  <31.983271, 42.390659, 18.743929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787357, 42.062473, 18.625978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139160, -0.407456, 0.902560,
		-0.860666, 0.401025, 0.313741,
		-0.489784, -0.820463, -0.294877,
		31.640423, 41.816334, 18.537516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326426, 42.275009, 19.003544>,  <31.983271, 42.390659, 18.743929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326426, 42.275009, 19.003544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.464544, 41.909653, 18.917305>,  <31.547415, 41.690437, 18.865562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.464544, 41.909653, 18.917305>,  <31.326426, 42.275009, 19.003544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464544, 41.909653, 18.917305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153704, -0.171586, 0.973105,
		-0.925822, -0.369147, 0.081145,
		0.345296, -0.913394, -0.215598,
		31.568132, 41.635635, 18.852625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206274, 41.948051, 19.683022>,  <31.326426, 42.275009, 19.003544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206274, 41.948051, 19.683022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.455946, 41.711216, 19.479128>,  <31.605749, 41.569115, 19.356791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.455946, 41.711216, 19.479128>,  <31.206274, 41.948051, 19.683022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455946, 41.711216, 19.479128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516543, -0.176750, 0.837820,
		-0.586161, -0.786250, 0.195516,
		0.624178, -0.592090, -0.509736,
		31.643200, 41.533588, 19.326206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537981, 41.572880, 19.665386>,  <31.206274, 41.948051, 19.683022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537981, 41.572880, 19.665386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.205078, 41.551289, 19.886089>,  <30.005337, 41.538334, 20.018511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.205078, 41.551289, 19.886089>,  <30.537981, 41.572880, 19.665386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205078, 41.551289, 19.886089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536839, 0.326922, -0.777770,
		-0.138397, -0.943508, -0.301062,
		-0.832256, -0.053981, 0.551757,
		29.955400, 41.535095, 20.051617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136131, 41.321655, 19.232800>,  <30.537981, 41.572880, 19.665386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136131, 41.321655, 19.232800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.881636, 41.486336, 19.493784>,  <29.728939, 41.585144, 19.650375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.881636, 41.486336, 19.493784>,  <30.136131, 41.321655, 19.232800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881636, 41.486336, 19.493784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502775, 0.420195, -0.755416,
		-0.585166, -0.808664, -0.060350,
		-0.636237, 0.411702, 0.652460,
		29.690765, 41.609848, 19.689522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533756, 41.110374, 19.068954>,  <30.136131, 41.321655, 19.232800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533756, 41.110374, 19.068954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.477419, 41.462292, 19.250563>,  <29.443617, 41.673443, 19.359528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.477419, 41.462292, 19.250563>,  <29.533756, 41.110374, 19.068954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477419, 41.462292, 19.250563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501707, 0.331920, -0.798824,
		-0.853495, -0.340296, 0.394646,
		-0.140846, 0.879788, 0.454021,
		29.435165, 41.726227, 19.386768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806892, 41.176472, 19.072523>,  <29.533756, 41.110374, 19.068954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806892, 41.176472, 19.072523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.919693, 41.554924, 19.136162>,  <28.987373, 41.781994, 19.174345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.919693, 41.554924, 19.136162>,  <28.806892, 41.176472, 19.072523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919693, 41.554924, 19.136162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641162, 0.309205, -0.702356,
		-0.713714, 0.096059, 0.693819,
		0.281999, 0.946132, 0.159095,
		29.004293, 41.838764, 19.183889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221926, 41.544987, 19.224537>,  <28.806892, 41.176472, 19.072523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221926, 41.544987, 19.224537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.494080, 41.798950, 19.078129>,  <28.657372, 41.951328, 18.990284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.494080, 41.798950, 19.078129>,  <28.221926, 41.544987, 19.224537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494080, 41.798950, 19.078129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657694, 0.308672, -0.687139,
		-0.323290, 0.708247, 0.627591,
		0.680384, 0.634908, -0.366019,
		28.698195, 41.989422, 18.968323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844292, 41.969944, 18.917879>,  <28.221926, 41.544987, 19.224537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844292, 41.969944, 18.917879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.193369, 42.110470, 18.782244>,  <28.402815, 42.194786, 18.700863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.193369, 42.110470, 18.782244>,  <27.844292, 41.969944, 18.917879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193369, 42.110470, 18.782244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464058, 0.380825, -0.799764,
		-0.151835, 0.855307, 0.495374,
		0.872695, 0.351315, -0.339090,
		28.455177, 42.215862, 18.680517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767685, 42.598808, 18.696949>,  <27.844292, 41.969944, 18.917879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767685, 42.598808, 18.696949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.076931, 42.501522, 18.462635>,  <28.262478, 42.443150, 18.322046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.076931, 42.501522, 18.462635>,  <27.767685, 42.598808, 18.696949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076931, 42.501522, 18.462635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363085, 0.587555, -0.723151,
		0.520062, 0.771767, 0.365938,
		0.773113, -0.243217, -0.585783,
		28.308865, 42.428558, 18.286900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648241, 43.167561, 19.150532>,  <27.767685, 42.598808, 18.696949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648241, 43.167561, 19.150532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.255238, 43.165855, 19.225002>,  <27.019436, 43.164833, 19.269684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.255238, 43.165855, 19.225002>,  <27.648241, 43.167561, 19.150532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255238, 43.165855, 19.225002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123051, -0.765263, 0.631848,
		0.139778, 0.643704, 0.752401,
		-0.982507, -0.004266, 0.186175,
		26.960485, 43.164577, 19.280855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632936, 43.126785, 19.822197>,  <27.648241, 43.167561, 19.150532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632936, 43.126785, 19.822197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265841, 43.009602, 19.714922>,  <27.045584, 42.939289, 19.650557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.265841, 43.009602, 19.714922>,  <27.632936, 43.126785, 19.822197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265841, 43.009602, 19.714922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050297, -0.755518, 0.653194,
		-0.393983, 0.585974, 0.708105,
		-0.917741, -0.292962, -0.268189,
		26.990519, 42.921711, 19.634466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422956, 42.930500, 20.445988>,  <27.632936, 43.126785, 19.822197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422956, 42.930500, 20.445988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.171619, 42.745609, 20.195700>,  <27.020817, 42.634674, 20.045527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.171619, 42.745609, 20.195700>,  <27.422956, 42.930500, 20.445988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171619, 42.745609, 20.195700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054872, -0.775998, 0.628344,
		-0.775998, 0.429151, 0.462230,
		-0.628344, -0.462230, -0.625722,
		26.983116, 42.606941, 20.007982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921156, 42.639988, 20.931276>,  <27.422956, 42.930500, 20.445988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921156, 42.639988, 20.931276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.908297, 42.438229, 20.586128>,  <26.900581, 42.317173, 20.379040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.908297, 42.438229, 20.586128>,  <26.921156, 42.639988, 20.931276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908297, 42.438229, 20.586128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160310, -0.849538, 0.502580,
		-0.986543, 0.154484, -0.053548,
		-0.032149, -0.504401, -0.862871,
		26.898651, 42.286907, 20.327267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419060, 42.185894, 21.046202>,  <26.921156, 42.639988, 20.931276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419060, 42.185894, 21.046202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.622293, 42.020817, 20.743801>,  <26.744234, 41.921772, 20.562361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.622293, 42.020817, 20.743801>,  <26.419060, 42.185894, 21.046202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622293, 42.020817, 20.743801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033451, -0.867619, 0.496103,
		-0.860652, -0.277356, -0.427027,
		0.508094, -0.412687, -0.755996,
		26.774719, 41.897011, 20.517000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140171, 41.573631, 21.042212>,  <26.419060, 42.185894, 21.046202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140171, 41.573631, 21.042212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.457640, 41.528255, 20.803141>,  <26.648121, 41.501030, 20.659698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.457640, 41.528255, 20.803141>,  <26.140171, 41.573631, 21.042212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457640, 41.528255, 20.803141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186085, -0.890098, 0.416050,
		-0.579187, -0.441426, -0.685336,
		0.793672, -0.113440, -0.597676,
		26.695742, 41.494225, 20.623838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184525, 40.829659, 20.816893>,  <26.140171, 41.573631, 21.042212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184525, 40.829659, 20.816893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.549219, 40.993740, 20.808172>,  <26.768036, 41.092190, 20.802940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.549219, 40.993740, 20.808172>,  <26.184525, 40.829659, 20.816893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549219, 40.993740, 20.808172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364373, -0.783094, 0.503981,
		0.189661, -0.467440, -0.863440,
		0.911735, 0.410199, -0.021800,
		26.822741, 41.116798, 20.801632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.920040, 46.122597, 16.937561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.302832, 46.013298, 16.898504>,  <29.532507, 45.947720, 16.875071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.302832, 46.013298, 16.898504>,  <28.920040, 46.122597, 16.937561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302832, 46.013298, 16.898504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161162, 0.220693, 0.961936,
		-0.241294, -0.936287, 0.255235,
		0.956977, -0.273244, -0.097642,
		29.589924, 45.931324, 16.869211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006639, 45.631962, 17.484228>,  <28.920040, 46.122597, 16.937561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006639, 45.631962, 17.484228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378284, 45.732456, 17.375689>,  <29.601271, 45.792755, 17.310564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.378284, 45.732456, 17.375689>,  <29.006639, 45.631962, 17.484228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378284, 45.732456, 17.375689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208346, 0.250596, 0.945406,
		0.305526, -0.934922, 0.180486,
		0.929110, 0.251242, -0.271351,
		29.657019, 45.807827, 17.294283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473108, 45.280228, 17.974073>,  <29.006639, 45.631962, 17.484228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473108, 45.280228, 17.974073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.683443, 45.587807, 17.828625>,  <29.809645, 45.772354, 17.741356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.683443, 45.587807, 17.828625>,  <29.473108, 45.280228, 17.974073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683443, 45.587807, 17.828625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225273, 0.286330, 0.931272,
		0.820211, -0.571612, -0.022659,
		0.525838, 0.768944, -0.363620,
		29.841194, 45.818489, 17.719540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126829, 45.104179, 18.146503>,  <29.473108, 45.280228, 17.974073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126829, 45.104179, 18.146503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135603, 45.503345, 18.122221>,  <30.140867, 45.742844, 18.107653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135603, 45.503345, 18.122221>,  <30.126829, 45.104179, 18.146503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135603, 45.503345, 18.122221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292178, 0.051670, 0.954967,
		0.956112, -0.038683, -0.290436,
		0.021934, 0.997915, -0.060704,
		30.142183, 45.802719, 18.104010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810228, 45.317314, 18.394064>,  <30.126829, 45.104179, 18.146503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810228, 45.317314, 18.394064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643139, 45.680222, 18.413565>,  <30.542885, 45.897964, 18.425264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643139, 45.680222, 18.413565>,  <30.810228, 45.317314, 18.394064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643139, 45.680222, 18.413565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338512, 0.105617, 0.935015,
		0.843158, 0.407082, -0.351239,
		-0.417725, 0.907265, 0.048750,
		30.517822, 45.952400, 18.428190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311459, 45.762230, 18.564022>,  <30.810228, 45.317314, 18.394064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311459, 45.762230, 18.564022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969490, 45.934479, 18.679726>,  <30.764309, 46.037827, 18.749147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.969490, 45.934479, 18.679726>,  <31.311459, 45.762230, 18.564022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969490, 45.934479, 18.679726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392906, 0.173423, 0.903077,
		0.338722, 0.885713, -0.317458,
		-0.854922, 0.430623, 0.289260,
		30.713013, 46.063667, 18.766504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552763, 46.212410, 18.980761>,  <31.311459, 45.762230, 18.564022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552763, 46.212410, 18.980761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.167479, 46.253582, 19.080065>,  <30.936308, 46.278286, 19.139647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.167479, 46.253582, 19.080065>,  <31.552763, 46.212410, 18.980761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167479, 46.253582, 19.080065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268671, 0.391341, 0.880152,
		-0.006560, 0.914471, -0.404598,
		-0.963210, 0.102930, 0.248259,
		30.878515, 46.284462, 19.154543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432108, 46.916138, 19.439613>,  <31.552763, 46.212410, 18.980761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432108, 46.916138, 19.439613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144354, 46.640282, 19.472786>,  <30.971701, 46.474766, 19.492689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.144354, 46.640282, 19.472786>,  <31.432108, 46.916138, 19.439613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144354, 46.640282, 19.472786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173063, -0.062325, 0.982937,
		-0.672706, 0.721463, 0.164188,
		-0.719386, -0.689642, 0.082933,
		30.928537, 46.433388, 19.497665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036169, 47.130665, 19.977135>,  <31.432108, 46.916138, 19.439613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036169, 47.130665, 19.977135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947849, 46.741154, 19.955175>,  <30.894857, 46.507446, 19.941999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947849, 46.741154, 19.955175>,  <31.036169, 47.130665, 19.977135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947849, 46.741154, 19.955175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039653, -0.047277, 0.998094,
		-0.974513, 0.222554, -0.028175,
		-0.220798, -0.973773, -0.054897,
		30.881609, 46.449020, 19.938705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532089, 47.077610, 20.361677>,  <31.036169, 47.130665, 19.977135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532089, 47.077610, 20.361677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665352, 46.702057, 20.327036>,  <30.745310, 46.476723, 20.306252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.665352, 46.702057, 20.327036>,  <30.532089, 47.077610, 20.361677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665352, 46.702057, 20.327036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046236, -0.108005, 0.993074,
		-0.941737, -0.326845, -0.079393,
		0.333156, -0.938886, -0.086601,
		30.765299, 46.420391, 20.301056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087334, 46.682739, 20.765743>,  <30.532089, 47.077610, 20.361677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087334, 46.682739, 20.765743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408245, 46.446892, 20.728441>,  <30.600792, 46.305382, 20.706060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.408245, 46.446892, 20.728441>,  <30.087334, 46.682739, 20.765743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408245, 46.446892, 20.728441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022401, -0.126373, 0.991730,
		-0.596530, -0.797732, -0.088178,
		0.802278, -0.589621, -0.093256,
		30.648928, 46.270004, 20.700464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023214, 46.068737, 21.222437>,  <30.087334, 46.682739, 20.765743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023214, 46.068737, 21.222437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418112, 46.084366, 21.160692>,  <30.655050, 46.093742, 21.123646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.418112, 46.084366, 21.160692>,  <30.023214, 46.068737, 21.222437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418112, 46.084366, 21.160692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157966, -0.118460, 0.980313,
		0.020021, -0.992189, -0.123122,
		0.987242, 0.039076, -0.154361,
		30.714285, 46.096088, 21.114384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742153, 45.435772, 20.988892>,  <30.023214, 46.068737, 21.222437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742153, 45.435772, 20.988892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345379, 45.441380, 21.039284>,  <29.107315, 45.444744, 21.069519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345379, 45.441380, 21.039284>,  <29.742153, 45.435772, 20.988892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345379, 45.441380, 21.039284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100725, 0.516184, -0.850534,
		-0.076956, -0.856363, -0.510607,
		-0.991934, 0.014023, 0.125981,
		29.047798, 45.445587, 21.077078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471273, 45.363552, 20.275146>,  <29.742153, 45.435772, 20.988892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471273, 45.363552, 20.275146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142048, 45.481331, 20.469412>,  <28.944513, 45.551998, 20.585970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142048, 45.481331, 20.469412>,  <29.471273, 45.363552, 20.275146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142048, 45.481331, 20.469412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318246, 0.469159, -0.823778,
		-0.470409, -0.832582, -0.292442,
		-0.823064, 0.294444, 0.485662,
		28.895128, 45.569664, 20.615110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874479, 45.203247, 19.763041>,  <29.471273, 45.363552, 20.275146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874479, 45.203247, 19.763041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.734299, 45.457027, 20.038620>,  <28.650190, 45.609295, 20.203968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.734299, 45.457027, 20.038620>,  <28.874479, 45.203247, 19.763041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734299, 45.457027, 20.038620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505063, 0.491456, -0.709495,
		-0.788731, -0.596605, 0.148209,
		-0.350449, 0.634456, 0.688949,
		28.629164, 45.647366, 20.245304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150856, 45.202122, 19.779354>,  <28.874479, 45.203247, 19.763041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150856, 45.202122, 19.779354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232958, 45.557259, 19.944086>,  <28.282219, 45.770340, 20.042925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.232958, 45.557259, 19.944086>,  <28.150856, 45.202122, 19.779354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232958, 45.557259, 19.944086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536122, 0.454039, -0.711633,
		-0.818806, -0.074726, 0.569186,
		0.205255, 0.887843, 0.411832,
		28.294535, 45.823612, 20.067636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543404, 45.563396, 19.980925>,  <28.150856, 45.202122, 19.779354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543404, 45.563396, 19.980925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827959, 45.837513, 19.918566>,  <27.998692, 46.001984, 19.881149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.827959, 45.837513, 19.918566>,  <27.543404, 45.563396, 19.980925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827959, 45.837513, 19.918566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610410, 0.492533, -0.620331,
		-0.348322, 0.536458, 0.768690,
		0.711387, 0.685291, -0.155899,
		28.041374, 46.043098, 19.871796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246536, 46.215725, 20.065687>,  <27.543404, 45.563396, 19.980925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246536, 46.215725, 20.065687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573614, 46.306957, 19.854273>,  <27.769861, 46.361698, 19.727425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573614, 46.306957, 19.854273>,  <27.246536, 46.215725, 20.065687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573614, 46.306957, 19.854273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571025, 0.437537, -0.694616,
		0.072825, 0.869793, 0.488013,
		0.817696, 0.228082, -0.528538,
		27.818922, 46.375381, 19.695711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240206, 46.895035, 19.905415>,  <27.246536, 46.215725, 20.065687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240206, 46.895035, 19.905415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485636, 46.755085, 19.622257>,  <27.632895, 46.671116, 19.452364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485636, 46.755085, 19.622257>,  <27.240206, 46.895035, 19.905415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485636, 46.755085, 19.622257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587166, 0.397259, -0.705281,
		0.527978, 0.848393, 0.038312,
		0.613575, -0.349878, -0.707892,
		27.669708, 46.650124, 19.409889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221083, 47.505516, 19.500229>,  <27.240206, 46.895035, 19.905415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221083, 47.505516, 19.500229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381433, 47.204758, 19.290869>,  <27.477644, 47.024303, 19.165253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381433, 47.204758, 19.290869>,  <27.221083, 47.505516, 19.500229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381433, 47.204758, 19.290869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547503, 0.261443, -0.794914,
		0.734533, 0.605226, -0.306860,
		0.400876, -0.751897, -0.523401,
		27.501696, 46.979187, 19.133848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390543, 47.781078, 18.851059>,  <27.221083, 47.505516, 19.500229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390543, 47.781078, 18.851059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373158, 47.384247, 18.803921>,  <27.362726, 47.146149, 18.775639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373158, 47.384247, 18.803921>,  <27.390543, 47.781078, 18.851059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373158, 47.384247, 18.803921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474280, 0.124309, -0.871554,
		0.879300, 0.018009, -0.475927,
		-0.043466, -0.992080, -0.117846,
		27.360117, 47.086624, 18.768566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305601, 47.854416, 18.139971>,  <27.390543, 47.781078, 18.851059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305601, 47.854416, 18.139971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263437, 47.468338, 18.235712>,  <27.238140, 47.236691, 18.293158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.263437, 47.468338, 18.235712>,  <27.305601, 47.854416, 18.139971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263437, 47.468338, 18.235712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656699, -0.113183, -0.745611,
		0.746750, -0.235777, -0.621911,
		-0.105408, -0.965193, 0.239354,
		27.231815, 47.178780, 18.307518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459654, 47.455627, 17.597887>,  <27.305601, 47.854416, 18.139971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459654, 47.455627, 17.597887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.196617, 47.266598, 17.832579>,  <27.038795, 47.153179, 17.973394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.196617, 47.266598, 17.832579>,  <27.459654, 47.455627, 17.597887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196617, 47.266598, 17.832579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648281, -0.041812, -0.760253,
		0.383807, -0.880299, -0.278865,
		-0.657590, -0.472573, 0.586729,
		26.999340, 47.124825, 18.008596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070669, 47.068657, 17.095449>,  <27.459654, 47.455627, 17.597887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070669, 47.068657, 17.095449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.875967, 46.980225, 17.433489>,  <26.759146, 46.927166, 17.636312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.875967, 46.980225, 17.433489>,  <27.070669, 47.068657, 17.095449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875967, 46.980225, 17.433489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863285, -0.026053, -0.504043,
		0.133452, -0.974907, -0.178176,
		-0.486753, -0.221082, 0.845099,
		26.729940, 46.913902, 17.687019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557158, 46.500690, 16.925213>,  <27.070669, 47.068657, 17.095449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557158, 46.500690, 16.925213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428062, 46.707558, 17.242294>,  <26.350605, 46.831676, 17.432543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.428062, 46.707558, 17.242294>,  <26.557158, 46.500690, 16.925213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428062, 46.707558, 17.242294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828189, 0.251138, -0.501032,
		-0.458196, -0.818209, 0.347262,
		-0.322738, 0.517169, 0.792702,
		26.331242, 46.862709, 17.480104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587177, 46.092087, 17.614414>,  <26.557158, 46.500690, 16.925213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587177, 46.092087, 17.614414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380770, 45.837154, 17.385492>,  <26.256926, 45.684196, 17.248138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380770, 45.837154, 17.385492>,  <26.587177, 46.092087, 17.614414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380770, 45.837154, 17.385492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053675, -0.642758, 0.764187,
		-0.854893, 0.425054, 0.297467,
		-0.516020, -0.637332, -0.572304,
		26.225964, 45.645954, 17.213800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030714, 45.782810, 17.883066>,  <26.587177, 46.092087, 17.614414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030714, 45.782810, 17.883066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089756, 45.493996, 17.612696>,  <26.125181, 45.320705, 17.450474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089756, 45.493996, 17.612696>,  <26.030714, 45.782810, 17.883066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089756, 45.493996, 17.612696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032393, -0.679516, 0.732946,
		-0.988516, -0.130081, -0.076911,
		0.147604, -0.722037, -0.675926,
		26.134037, 45.277386, 17.409918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.509811, 45.413410, 17.939077>,  <26.030714, 45.782810, 17.883066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.509811, 45.413410, 17.939077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.800680, 45.189186, 17.780588>,  <25.975203, 45.054653, 17.685495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.800680, 45.189186, 17.780588>,  <25.509811, 45.413410, 17.939077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.800680, 45.189186, 17.780588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142932, -0.688192, 0.711310,
		-0.671400, -0.460620, -0.580562,
		0.727181, -0.560554, -0.396215,
		26.018833, 45.021019, 17.661722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442757, 44.654530, 18.068117>,  <25.509811, 45.413410, 17.939077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442757, 44.654530, 18.068117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.822941, 44.601601, 17.955605>,  <26.051050, 44.569843, 17.888098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.822941, 44.601601, 17.955605>,  <25.442757, 44.654530, 18.068117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822941, 44.601601, 17.955605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122352, -0.672580, 0.729839,
		-0.285760, -0.728097, -0.623069,
		0.950458, -0.132325, -0.281281,
		26.108078, 44.561905, 17.871220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.486185, 43.923630, 17.962925>,  <25.442757, 44.654530, 18.068117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.486185, 43.923630, 17.962925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.851723, 44.070213, 18.032890>,  <26.071045, 44.158165, 18.074869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.851723, 44.070213, 18.032890>,  <25.486185, 43.923630, 17.962925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.851723, 44.070213, 18.032890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203515, -0.786083, 0.583657,
		0.351385, -0.497773, -0.792938,
		0.913844, 0.366463, 0.174913,
		26.125875, 44.180153, 18.085363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956257, 43.389942, 17.844404>,  <25.486185, 43.923630, 17.962925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956257, 43.389942, 17.844404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.162491, 43.621887, 18.096733>,  <26.286230, 43.761055, 18.248131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.162491, 43.621887, 18.096733>,  <25.956257, 43.389942, 17.844404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162491, 43.621887, 18.096733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285086, -0.810364, 0.511894,
		0.808022, -0.084087, -0.583121,
		0.515584, 0.579861, 0.630820,
		26.317165, 43.795845, 18.285978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642954, 43.027824, 17.976768>,  <25.956257, 43.389942, 17.844404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642954, 43.027824, 17.976768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597046, 43.291077, 18.274408>,  <26.569502, 43.449028, 18.452993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.597046, 43.291077, 18.274408>,  <26.642954, 43.027824, 17.976768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597046, 43.291077, 18.274408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346939, -0.675328, 0.650819,
		0.930839, 0.332852, -0.150826,
		-0.114769, 0.658135, 0.744101,
		26.562614, 43.488518, 18.497639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272482, 43.027218, 18.386461>,  <26.642954, 43.027824, 17.976768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272482, 43.027218, 18.386461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.018177, 43.197170, 18.644232>,  <26.865593, 43.299141, 18.798893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.018177, 43.197170, 18.644232>,  <27.272482, 43.027218, 18.386461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.018177, 43.197170, 18.644232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434406, -0.493159, 0.753714,
		0.638040, 0.759127, 0.128963,
		-0.635764, 0.424878, 0.644425,
		26.827448, 43.324635, 18.837559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081045, 43.228294, 18.500010>,  <27.272482, 43.027218, 18.386461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081045, 43.228294, 18.500010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176704, 42.959984, 18.219191>,  <28.234100, 42.799000, 18.050699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.176704, 42.959984, 18.219191>,  <28.081045, 43.228294, 18.500010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176704, 42.959984, 18.219191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366913, 0.606992, -0.704937,
		0.898990, 0.426174, -0.100955,
		0.239147, -0.670773, -0.702049,
		28.248449, 42.758751, 18.008575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339975, 43.622334, 17.813929>,  <28.081045, 43.228294, 18.500010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339975, 43.622334, 17.813929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248495, 43.258751, 17.674505>,  <28.193607, 43.040600, 17.590851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248495, 43.258751, 17.674505>,  <28.339975, 43.622334, 17.813929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248495, 43.258751, 17.674505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231777, 0.398594, -0.887357,
		0.945502, -0.122152, -0.301835,
		-0.228702, -0.908956, -0.348560,
		28.179884, 42.986065, 17.569937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732555, 43.554764, 17.163937>,  <28.339975, 43.622334, 17.813929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732555, 43.554764, 17.163937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454332, 43.267426, 17.169191>,  <28.287397, 43.095020, 17.172344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454332, 43.267426, 17.169191>,  <28.732555, 43.554764, 17.163937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454332, 43.267426, 17.169191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207116, 0.182968, -0.961054,
		0.687969, -0.671190, -0.276047,
		-0.695558, -0.718350, 0.013138,
		28.245665, 43.051922, 17.173134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760845, 43.064991, 16.552895>,  <28.732555, 43.554764, 17.163937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760845, 43.064991, 16.552895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380512, 43.023567, 16.669647>,  <28.152313, 42.998714, 16.739698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.380512, 43.023567, 16.669647>,  <28.760845, 43.064991, 16.552895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380512, 43.023567, 16.669647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288455, -0.046985, -0.956340,
		0.112751, -0.993513, 0.014803,
		-0.950832, -0.103558, 0.291881,
		28.095263, 42.992500, 16.757212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422979, 42.676975, 16.059015>,  <28.760845, 43.064991, 16.552895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422979, 42.676975, 16.059015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078430, 42.803455, 16.218042>,  <27.871700, 42.879341, 16.313459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.078430, 42.803455, 16.218042>,  <28.422979, 42.676975, 16.059015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078430, 42.803455, 16.218042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439328, -0.070807, -0.895532,
		-0.255017, -0.946046, 0.199907,
		-0.861370, 0.316201, 0.397568,
		27.820019, 42.898315, 16.337313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839085, 42.238216, 15.623178>,  <28.422979, 42.676975, 16.059015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839085, 42.238216, 15.623178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686468, 42.574432, 15.777021>,  <27.594898, 42.776161, 15.869328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686468, 42.574432, 15.777021>,  <27.839085, 42.238216, 15.623178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686468, 42.574432, 15.777021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602474, 0.089432, -0.793113,
		-0.701037, -0.534322, 0.472279,
		-0.381541, 0.840537, 0.384610,
		27.572006, 42.826591, 15.892405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113436, 42.308601, 15.289974>,  <27.839085, 42.238216, 15.623178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113436, 42.308601, 15.289974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206600, 42.665058, 15.445727>,  <27.262499, 42.878933, 15.539180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206600, 42.665058, 15.445727>,  <27.113436, 42.308601, 15.289974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206600, 42.665058, 15.445727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164675, 0.430753, -0.887319,
		-0.958454, 0.142544, 0.247075,
		0.232910, 0.891142, 0.389383,
		27.276474, 42.932400, 15.562542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.654606, 42.776459, 14.981166>,  <27.113436, 42.308601, 15.289974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.654606, 42.776459, 14.981166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941956, 43.025368, 15.105565>,  <27.114365, 43.174713, 15.180204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941956, 43.025368, 15.105565>,  <26.654606, 42.776459, 14.981166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941956, 43.025368, 15.105565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008987, 0.438718, -0.898580,
		-0.695600, 0.648310, 0.309571,
		0.718373, 0.622270, 0.310999,
		27.157467, 43.212048, 15.198865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467651, 43.461327, 14.760699>,  <26.654606, 42.776459, 14.981166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467651, 43.461327, 14.760699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.863953, 43.465557, 14.814806>,  <27.101734, 43.468098, 14.847270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.863953, 43.465557, 14.814806>,  <26.467651, 43.461327, 14.760699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863953, 43.465557, 14.814806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123719, 0.338863, -0.932666,
		-0.055705, 0.940776, 0.334420,
		0.990753, 0.010580, 0.135268,
		27.161179, 43.468731, 14.855387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.327000, 38.026073, 29.217070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484905, 38.392872, 29.194180>,  <33.579647, 38.612953, 29.180447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.484905, 38.392872, 29.194180>,  <33.327000, 38.026073, 29.217070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484905, 38.392872, 29.194180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417949, 0.123761, -0.900001,
		-0.818219, 0.379202, 0.432115,
		0.394761, 0.917000, -0.057223,
		33.603333, 38.667973, 29.177013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824696, 38.528679, 29.044031>,  <33.327000, 38.026073, 29.217070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824696, 38.528679, 29.044031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176708, 38.660892, 28.907629>,  <33.387917, 38.740219, 28.825787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.176708, 38.660892, 28.907629>,  <32.824696, 38.528679, 29.044031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176708, 38.660892, 28.907629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421145, 0.211294, -0.882038,
		-0.219492, 0.919838, 0.325150,
		0.880034, 0.330536, -0.341007,
		33.440720, 38.760052, 28.805326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726498, 39.230488, 28.783028>,  <32.824696, 38.528679, 29.044031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726498, 39.230488, 28.783028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033485, 39.064152, 28.587860>,  <33.217678, 38.964348, 28.470760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033485, 39.064152, 28.587860>,  <32.726498, 39.230488, 28.783028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033485, 39.064152, 28.587860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521535, 0.037611, -0.852401,
		0.372815, 0.908659, -0.188010,
		0.767470, -0.415842, -0.487920,
		33.263725, 38.939400, 28.441484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840820, 39.671513, 28.160612>,  <32.726498, 39.230488, 28.783028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840820, 39.671513, 28.160612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993614, 39.308655, 28.089977>,  <33.085289, 39.090942, 28.047596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993614, 39.308655, 28.089977>,  <32.840820, 39.671513, 28.160612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993614, 39.308655, 28.089977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474472, -0.028529, -0.879808,
		0.793072, 0.419858, -0.441311,
		0.381985, -0.907141, -0.176586,
		33.108208, 39.036514, 28.037001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054565, 39.781864, 27.519724>,  <32.840820, 39.671513, 28.160612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054565, 39.781864, 27.519724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050758, 39.384087, 27.561651>,  <33.048473, 39.145420, 27.586807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050758, 39.384087, 27.561651>,  <33.054565, 39.781864, 27.519724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050758, 39.384087, 27.561651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343757, -0.095178, -0.934223,
		0.939011, -0.044924, -0.340942,
		-0.009519, -0.994446, 0.104816,
		33.047901, 39.085754, 27.593096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288002, 39.504837, 26.837536>,  <33.054565, 39.781864, 27.519724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288002, 39.504837, 26.837536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065090, 39.243160, 27.042074>,  <32.931343, 39.086155, 27.164797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065090, 39.243160, 27.042074>,  <33.288002, 39.504837, 26.837536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065090, 39.243160, 27.042074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472458, -0.256595, -0.843174,
		0.682807, -0.711470, -0.166084,
		-0.557277, -0.654193, 0.511345,
		32.897907, 39.046902, 27.195478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275967, 38.936867, 26.389269>,  <33.288002, 39.504837, 26.837536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275967, 38.936867, 26.389269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959576, 38.939999, 26.633987>,  <32.769741, 38.941879, 26.780819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959576, 38.939999, 26.633987>,  <33.275967, 38.936867, 26.389269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959576, 38.939999, 26.633987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611480, -0.044817, -0.789990,
		0.021239, -0.998965, 0.040232,
		-0.790975, 0.007822, 0.611799,
		32.722282, 38.942348, 26.817528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679985, 38.357674, 26.256145>,  <33.275967, 38.936867, 26.389269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679985, 38.357674, 26.256145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501217, 38.671604, 26.427870>,  <32.393955, 38.859962, 26.530905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501217, 38.671604, 26.427870>,  <32.679985, 38.357674, 26.256145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501217, 38.671604, 26.427870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747248, -0.063680, -0.661488,
		-0.491816, -0.616434, 0.614920,
		-0.446921, 0.784827, 0.429309,
		32.367142, 38.907051, 26.556664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025265, 38.177452, 26.103544>,  <32.679985, 38.357674, 26.256145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025265, 38.177452, 26.103544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.969490, 38.545040, 26.251083>,  <31.936026, 38.765594, 26.339607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.969490, 38.545040, 26.251083>,  <32.025265, 38.177452, 26.103544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969490, 38.545040, 26.251083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663470, 0.189811, -0.723726,
		-0.735094, -0.345635, 0.583243,
		-0.139439, 0.918971, 0.368847,
		31.927658, 38.820732, 26.361738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383171, 38.242519, 25.935818>,  <32.025265, 38.177452, 26.103544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383171, 38.242519, 25.935818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490387, 38.618469, 26.020479>,  <31.554716, 38.844040, 26.071276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490387, 38.618469, 26.020479>,  <31.383171, 38.242519, 25.935818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490387, 38.618469, 26.020479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481233, 0.320938, -0.815729,
		-0.834607, 0.116794, 0.538321,
		0.268040, 0.939871, 0.211653,
		31.570799, 38.900429, 26.083975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789673, 38.595364, 25.934242>,  <31.383171, 38.242519, 25.935818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789673, 38.595364, 25.934242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087801, 38.855961, 25.877594>,  <31.266678, 39.012318, 25.843605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.087801, 38.855961, 25.877594>,  <30.789673, 38.595364, 25.934242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087801, 38.855961, 25.877594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465798, 0.356861, -0.809742,
		-0.477000, 0.669485, 0.569439,
		0.745321, 0.651491, -0.141622,
		31.311398, 39.051407, 25.835108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342894, 39.191280, 25.795774>,  <30.789673, 38.595364, 25.934242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342894, 39.191280, 25.795774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718676, 39.254448, 25.674128>,  <30.944145, 39.292347, 25.601139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.718676, 39.254448, 25.674128>,  <30.342894, 39.191280, 25.795774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718676, 39.254448, 25.674128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340572, 0.332208, -0.879573,
		-0.037868, 0.929893, 0.365876,
		0.939455, 0.157914, -0.304116,
		31.000513, 39.301823, 25.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035355, 39.959755, 25.911970>,  <30.342894, 39.191280, 25.795774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035355, 39.959755, 25.911970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.663258, 39.813320, 25.921957>,  <29.439999, 39.725460, 25.927950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.663258, 39.813320, 25.921957>,  <30.035355, 39.959755, 25.911970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663258, 39.813320, 25.921957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148856, -0.314300, 0.937581,
		-0.335390, 0.875896, 0.346871,
		-0.930245, -0.366089, 0.024969,
		29.384184, 39.703495, 25.929447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916565, 40.100109, 26.565702>,  <30.035355, 39.959755, 25.911970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916565, 40.100109, 26.565702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605652, 39.869717, 26.464447>,  <29.419104, 39.731483, 26.403694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.605652, 39.869717, 26.464447>,  <29.916565, 40.100109, 26.565702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605652, 39.869717, 26.464447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085095, -0.302405, 0.949373,
		-0.623369, 0.759473, 0.186042,
		-0.777284, -0.575979, -0.253138,
		29.372467, 39.696922, 26.388506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330313, 40.230610, 27.081724>,  <29.916565, 40.100109, 26.565702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330313, 40.230610, 27.081724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.253645, 39.878948, 26.907209>,  <29.207644, 39.667950, 26.802502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.253645, 39.878948, 26.907209>,  <29.330313, 40.230610, 27.081724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253645, 39.878948, 26.907209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000237, -0.444485, 0.895786,
		-0.981459, 0.171800, 0.084987,
		-0.191671, -0.879157, -0.436285,
		29.196144, 39.615200, 26.776323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825306, 39.959930, 27.458044>,  <29.330313, 40.230610, 27.081724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825306, 39.959930, 27.458044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.987329, 39.643047, 27.275471>,  <29.084543, 39.452915, 27.165928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.987329, 39.643047, 27.275471>,  <28.825306, 39.959930, 27.458044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987329, 39.643047, 27.275471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105190, -0.536285, 0.837456,
		-0.908219, -0.291207, -0.300560,
		0.405060, -0.792210, -0.456432,
		29.108847, 39.405384, 27.138540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387497, 39.397846, 27.631050>,  <28.825306, 39.959930, 27.458044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387497, 39.397846, 27.631050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.739132, 39.234653, 27.532455>,  <28.950113, 39.136738, 27.473299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.739132, 39.234653, 27.532455>,  <28.387497, 39.397846, 27.631050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739132, 39.234653, 27.532455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087223, -0.646068, 0.758280,
		-0.468612, -0.645095, -0.603536,
		0.879087, -0.407981, -0.246488,
		29.002857, 39.112259, 27.458509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231947, 38.831024, 27.973015>,  <28.387497, 39.397846, 27.631050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231947, 38.831024, 27.973015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616880, 38.787457, 27.873373>,  <28.847839, 38.761314, 27.813587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616880, 38.787457, 27.873373>,  <28.231947, 38.831024, 27.973015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616880, 38.787457, 27.873373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073870, -0.777018, 0.625129,
		-0.261649, -0.619983, -0.739703,
		0.962332, -0.108922, -0.249104,
		28.905581, 38.754780, 27.798641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343765, 38.137539, 28.043892>,  <28.231947, 38.831024, 27.973015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343765, 38.137539, 28.043892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.712345, 38.289627, 28.075796>,  <28.933493, 38.380878, 28.094938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.712345, 38.289627, 28.075796>,  <28.343765, 38.137539, 28.043892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712345, 38.289627, 28.075796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170129, -0.579493, 0.797022,
		0.349264, -0.720846, -0.598661,
		0.921450, 0.380221, 0.079759,
		28.988781, 38.403694, 28.099724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838455, 37.498127, 28.160389>,  <28.343765, 38.137539, 28.043892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838455, 37.498127, 28.160389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009733, 37.840126, 28.277433>,  <29.112499, 38.045326, 28.347660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009733, 37.840126, 28.277433>,  <28.838455, 37.498127, 28.160389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009733, 37.840126, 28.277433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063653, -0.294457, 0.953543,
		0.901442, -0.426928, -0.071661,
		0.428195, 0.855002, 0.292611,
		29.138191, 38.096626, 28.365217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494881, 37.330219, 28.434206>,  <28.838455, 37.498127, 28.160389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494881, 37.330219, 28.434206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.384491, 37.679462, 28.594967>,  <29.318256, 37.889008, 28.691423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.384491, 37.679462, 28.594967>,  <29.494881, 37.330219, 28.434206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384491, 37.679462, 28.594967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061813, -0.401155, 0.913922,
		0.959175, 0.277062, 0.056739,
		-0.275975, 0.873104, 0.401903,
		29.301699, 37.941395, 28.715538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804947, 37.319542, 29.152960>,  <29.494881, 37.330219, 28.434206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804947, 37.319542, 29.152960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592916, 37.657585, 29.180706>,  <29.465698, 37.860413, 29.197353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.592916, 37.657585, 29.180706>,  <29.804947, 37.319542, 29.152960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592916, 37.657585, 29.180706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123379, -0.004063, 0.992351,
		0.838925, 0.534581, -0.102115,
		-0.530077, 0.845108, 0.069364,
		29.433893, 37.911118, 29.201515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033752, 37.664474, 29.753504>,  <29.804947, 37.319542, 29.152960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033752, 37.664474, 29.753504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.683750, 37.850658, 29.700262>,  <29.473749, 37.962368, 29.668318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.683750, 37.850658, 29.700262>,  <30.033752, 37.664474, 29.753504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683750, 37.850658, 29.700262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113302, 0.070414, 0.991062,
		0.470670, 0.882265, -0.008875,
		-0.875004, 0.465457, -0.133104,
		29.421249, 37.990295, 29.660332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103823, 38.241100, 30.059441>,  <30.033752, 37.664474, 29.753504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103823, 38.241100, 30.059441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718494, 38.133770, 30.061125>,  <29.487297, 38.069370, 30.062136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.718494, 38.133770, 30.061125>,  <30.103823, 38.241100, 30.059441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718494, 38.133770, 30.061125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042203, -0.135982, 0.989812,
		-0.265021, 0.953682, 0.142318,
		-0.963319, -0.268327, 0.004210,
		29.429499, 38.053272, 30.062387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824539, 38.697533, 30.493456>,  <30.103823, 38.241100, 30.059441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824539, 38.697533, 30.493456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583433, 38.379646, 30.464888>,  <29.438770, 38.188915, 30.447746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.583433, 38.379646, 30.464888>,  <29.824539, 38.697533, 30.493456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583433, 38.379646, 30.464888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087631, -0.023036, 0.995887,
		-0.793092, 0.606545, -0.055756,
		-0.602766, -0.794715, -0.071421,
		29.402603, 38.141232, 30.443460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212700, 38.832436, 30.870579>,  <29.824539, 38.697533, 30.493456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212700, 38.832436, 30.870579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205194, 38.432831, 30.854433>,  <29.200691, 38.193069, 30.844746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.205194, 38.432831, 30.854433>,  <29.212700, 38.832436, 30.870579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205194, 38.432831, 30.854433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122540, -0.037771, 0.991745,
		-0.992286, 0.023555, -0.121710,
		-0.018763, -0.999009, -0.040366,
		29.199566, 38.133129, 30.842323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681068, 39.165260, 30.457319>,  <29.212700, 38.832436, 30.870579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681068, 39.165260, 30.457319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.653431, 39.554256, 30.546299>,  <28.636848, 39.787655, 30.599688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.653431, 39.554256, 30.546299>,  <28.681068, 39.165260, 30.457319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653431, 39.554256, 30.546299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330812, 0.188032, -0.924774,
		-0.941164, -0.137484, 0.308721,
		-0.069092, 0.972493, 0.222450,
		28.632704, 39.846004, 30.613033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052574, 39.392570, 30.129505>,  <28.681068, 39.165260, 30.457319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052574, 39.392570, 30.129505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.226265, 39.744789, 30.205498>,  <28.330479, 39.956120, 30.251093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.226265, 39.744789, 30.205498>,  <28.052574, 39.392570, 30.129505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226265, 39.744789, 30.205498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268272, 0.327741, -0.905878,
		-0.859929, 0.342388, 0.378539,
		0.434225, 0.880543, 0.189981,
		28.356533, 40.008953, 30.262491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611938, 39.952572, 29.993601>,  <28.052574, 39.392570, 30.129505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611938, 39.952572, 29.993601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.968819, 40.125679, 29.941927>,  <28.182947, 40.229542, 29.910923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.968819, 40.125679, 29.941927>,  <27.611938, 39.952572, 29.993601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968819, 40.125679, 29.941927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339876, 0.455006, -0.823076,
		-0.297420, 0.778256, 0.553044,
		0.892202, 0.432766, -0.129183,
		28.236479, 40.255508, 29.903172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427563, 40.583782, 29.749468>,  <27.611938, 39.952572, 29.993601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427563, 40.583782, 29.749468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.817131, 40.553391, 29.663950>,  <28.050871, 40.535156, 29.612638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.817131, 40.553391, 29.663950>,  <27.427563, 40.583782, 29.749468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817131, 40.553391, 29.663950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155370, 0.463362, -0.872442,
		0.165354, 0.882906, 0.439472,
		0.973919, -0.075981, -0.213796,
		28.109306, 40.530598, 29.599812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647537, 41.248127, 29.506680>,  <27.427563, 40.583782, 29.749468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647537, 41.248127, 29.506680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.936863, 41.006271, 29.373278>,  <28.110458, 40.861156, 29.293236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.936863, 41.006271, 29.373278>,  <27.647537, 41.248127, 29.506680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936863, 41.006271, 29.373278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042156, 0.520742, -0.852672,
		0.689230, 0.602692, 0.402150,
		0.723315, -0.604640, -0.333504,
		28.153858, 40.824879, 29.273226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200377, 41.707642, 29.286427>,  <27.647537, 41.248127, 29.506680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200377, 41.707642, 29.286427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.225531, 41.350048, 29.108957>,  <28.240623, 41.135494, 29.002476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.225531, 41.350048, 29.108957>,  <28.200377, 41.707642, 29.286427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225531, 41.350048, 29.108957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224177, 0.445845, -0.866584,
		0.972518, -0.044968, 0.228446,
		0.062883, -0.893980, -0.443673,
		28.244396, 41.081856, 28.975855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739895, 41.841427, 28.800964>,  <28.200377, 41.707642, 29.286427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739895, 41.841427, 28.800964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.512394, 41.533802, 28.684296>,  <28.375893, 41.349228, 28.614294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.512394, 41.533802, 28.684296>,  <28.739895, 41.841427, 28.800964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512394, 41.533802, 28.684296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080435, 0.300906, -0.950256,
		0.818567, -0.563920, -0.109281,
		-0.568751, -0.769058, -0.291671,
		28.341768, 41.303085, 28.596794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064011, 41.546181, 28.256193>,  <28.739895, 41.841427, 28.800964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064011, 41.546181, 28.256193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.692957, 41.411858, 28.190802>,  <28.470325, 41.331264, 28.151567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.692957, 41.411858, 28.190802>,  <29.064011, 41.546181, 28.256193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692957, 41.411858, 28.190802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055537, 0.308818, -0.949498,
		0.369338, -0.889866, -0.267820,
		-0.927634, -0.335812, -0.163479,
		28.414667, 41.311115, 28.141758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021343, 41.339031, 27.564583>,  <29.064011, 41.546181, 28.256193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021343, 41.339031, 27.564583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.626886, 41.352051, 27.629658>,  <28.390213, 41.359863, 27.668703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.626886, 41.352051, 27.629658>,  <29.021343, 41.339031, 27.564583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626886, 41.352051, 27.629658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140904, 0.353408, -0.924797,
		-0.087597, -0.934903, -0.343923,
		-0.986140, 0.032549, 0.162689,
		28.331045, 41.361816, 27.678465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737156, 41.037418, 27.005159>,  <29.021343, 41.339031, 27.564583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737156, 41.037418, 27.005159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.454609, 41.265045, 27.173544>,  <28.285080, 41.401619, 27.274574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.454609, 41.265045, 27.173544>,  <28.737156, 41.037418, 27.005159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454609, 41.265045, 27.173544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043881, 0.558362, -0.828436,
		-0.706483, -0.603653, -0.369438,
		-0.706368, 0.569064, 0.420962,
		28.242699, 41.435764, 27.299833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187950, 41.046303, 26.508465>,  <28.737156, 41.037418, 27.005159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187950, 41.046303, 26.508465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.126364, 41.353630, 26.756973>,  <28.089413, 41.538029, 26.906078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.126364, 41.353630, 26.756973>,  <28.187950, 41.046303, 26.508465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126364, 41.353630, 26.756973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177870, 0.596944, -0.782318,
		-0.971935, -0.230954, 0.044753,
		-0.153964, 0.768322, 0.621270,
		28.080175, 41.584126, 26.943354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528633, 41.435154, 26.334827>,  <28.187950, 41.046303, 26.508465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528633, 41.435154, 26.334827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.747671, 41.690121, 26.551653>,  <27.879093, 41.843102, 26.681749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.747671, 41.690121, 26.551653>,  <27.528633, 41.435154, 26.334827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747671, 41.690121, 26.551653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150450, 0.712274, -0.685587,
		-0.823108, 0.293870, 0.485937,
		0.547593, 0.637421, 0.542066,
		27.911949, 41.881348, 26.714273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127096, 42.065109, 26.328678>,  <27.528633, 41.435154, 26.334827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127096, 42.065109, 26.328678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.499670, 42.165733, 26.433861>,  <27.723215, 42.226109, 26.496971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.499670, 42.165733, 26.433861>,  <27.127096, 42.065109, 26.328678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499670, 42.165733, 26.433861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050399, 0.626454, -0.777827,
		-0.360403, 0.737747, 0.570822,
		0.931434, 0.251563, 0.262958,
		27.779100, 42.241203, 26.512749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180372, 42.850777, 26.299355>,  <27.127096, 42.065109, 26.328678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180372, 42.850777, 26.299355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.558306, 42.720367, 26.286716>,  <27.785067, 42.642124, 26.279135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.558306, 42.720367, 26.286716>,  <27.180372, 42.850777, 26.299355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558306, 42.720367, 26.286716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176541, 0.588119, -0.789272,
		0.275900, 0.740154, 0.613231,
		0.944835, -0.326020, -0.031594,
		27.841757, 42.622562, 26.277239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621204, 43.389004, 26.254429>,  <27.180372, 42.850777, 26.299355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621204, 43.389004, 26.254429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867933, 43.107399, 26.113630>,  <28.015970, 42.938438, 26.029152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.867933, 43.107399, 26.113630>,  <27.621204, 43.389004, 26.254429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867933, 43.107399, 26.113630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230850, 0.589350, -0.774193,
		0.752487, 0.396282, 0.526046,
		0.616824, -0.704008, -0.351996,
		28.052980, 42.896198, 26.008032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411499, 43.735695, 26.199253>,  <27.621204, 43.389004, 26.254429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411499, 43.735695, 26.199253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.377155, 43.415043, 25.962603>,  <28.356548, 43.222652, 25.820612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.377155, 43.415043, 25.962603>,  <28.411499, 43.735695, 26.199253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377155, 43.415043, 25.962603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025470, 0.595392, -0.803032,
		0.995982, -0.053879, -0.071537,
		-0.085859, -0.801627, -0.591627,
		28.351397, 43.174553, 25.785114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845522, 43.849400, 25.694496>,  <28.411499, 43.735695, 26.199253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845522, 43.849400, 25.694496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.633816, 43.550556, 25.533648>,  <28.506792, 43.371250, 25.437140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.633816, 43.550556, 25.533648>,  <28.845522, 43.849400, 25.694496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633816, 43.550556, 25.533648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134054, 0.394356, -0.909128,
		0.837799, -0.535076, -0.108566,
		-0.529266, -0.747113, -0.402120,
		28.475037, 43.326424, 25.413012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.277094, 43.627270, 25.174046>,  <28.845522, 43.849400, 25.694496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.277094, 43.627270, 25.174046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.912395, 43.497131, 25.073748>,  <28.693577, 43.419048, 25.013569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.912395, 43.497131, 25.073748>,  <29.277094, 43.627270, 25.174046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912395, 43.497131, 25.073748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101728, 0.412580, -0.905223,
		0.397958, -0.850841, -0.343072,
		-0.911746, -0.325341, -0.250744,
		28.638872, 43.399529, 24.998524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311152, 43.320881, 24.498035>,  <29.277094, 43.627270, 25.174046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311152, 43.320881, 24.498035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.927307, 43.422382, 24.546633>,  <28.697001, 43.483284, 24.575790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.927307, 43.422382, 24.546633>,  <29.311152, 43.320881, 24.498035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927307, 43.422382, 24.546633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019658, 0.491265, -0.870789,
		-0.280648, -0.833229, -0.476410,
		-0.959610, 0.253750, 0.121493,
		28.639423, 43.498508, 24.583080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872589, 43.014114, 23.920769>,  <29.311152, 43.320881, 24.498035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872589, 43.014114, 23.920769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.692684, 43.338566, 24.070318>,  <28.584742, 43.533237, 24.160048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.692684, 43.338566, 24.070318>,  <28.872589, 43.014114, 23.920769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692684, 43.338566, 24.070318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029607, 0.431911, -0.901430,
		-0.892657, -0.394362, -0.218273,
		-0.449764, 0.811130, 0.373873,
		28.557755, 43.581905, 24.182480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522640, 43.311844, 23.267782>,  <28.872589, 43.014114, 23.920769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522640, 43.311844, 23.267782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.504427, 43.601849, 23.542673>,  <28.493500, 43.775852, 23.707607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.504427, 43.601849, 23.542673>,  <28.522640, 43.311844, 23.267782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504427, 43.601849, 23.542673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005363, 0.687754, -0.725924,
		-0.998949, -0.036738, -0.027427,
		-0.045532, 0.725014, 0.687228,
		28.490767, 43.819351, 23.748842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919127, 43.623100, 23.078415>,  <28.522640, 43.311844, 23.267782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919127, 43.623100, 23.078415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.101776, 43.891090, 23.312553>,  <28.211365, 44.051884, 23.453035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.101776, 43.891090, 23.312553>,  <27.919127, 43.623100, 23.078415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101776, 43.891090, 23.312553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079573, 0.624549, -0.776921,
		-0.886095, 0.401338, 0.231872,
		0.456623, 0.669975, 0.585345,
		28.238764, 44.092083, 23.488157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554953, 44.203110, 23.050613>,  <27.919127, 43.623100, 23.078415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554953, 44.203110, 23.050613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.926184, 44.327469, 23.132605>,  <28.148922, 44.402084, 23.181799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.926184, 44.327469, 23.132605>,  <27.554953, 44.203110, 23.050613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926184, 44.327469, 23.132605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012487, 0.576109, -0.817277,
		-0.372179, 0.755937, 0.538556,
		0.928077, 0.310898, 0.204976,
		28.204607, 44.420738, 23.194098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548231, 44.927013, 22.881853>,  <27.554953, 44.203110, 23.050613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548231, 44.927013, 22.881853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.932175, 44.815262, 22.891819>,  <28.162540, 44.748211, 22.897799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.932175, 44.815262, 22.891819>,  <27.548231, 44.927013, 22.881853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932175, 44.815262, 22.891819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184703, 0.562745, -0.805731,
		0.211081, 0.777990, 0.591757,
		0.959859, -0.279374, 0.024912,
		28.220133, 44.731449, 22.899292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932234, 45.515965, 22.681732>,  <27.548231, 44.927013, 22.881853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932234, 45.515965, 22.681732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.213419, 45.233372, 22.648920>,  <28.382130, 45.063816, 22.629232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.213419, 45.233372, 22.648920>,  <27.932234, 45.515965, 22.681732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213419, 45.233372, 22.648920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341385, 0.436345, -0.832502,
		0.623940, 0.557214, 0.547916,
		0.702962, -0.706481, -0.082028,
		28.424307, 45.021427, 22.624311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534796, 45.891617, 22.594379>,  <27.932234, 45.515965, 22.681732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534796, 45.891617, 22.594379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559677, 45.526859, 22.432102>,  <28.574606, 45.308006, 22.334736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.559677, 45.526859, 22.432102>,  <28.534796, 45.891617, 22.594379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559677, 45.526859, 22.432102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338667, 0.401649, -0.850872,
		0.938848, -0.084466, 0.333812,
		0.062206, -0.911890, -0.405693,
		28.578339, 45.253292, 22.310394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254110, 45.882347, 22.300692>,  <28.534796, 45.891617, 22.594379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254110, 45.882347, 22.300692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.024481, 45.601509, 22.132166>,  <28.886703, 45.433006, 22.031052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.024481, 45.601509, 22.132166>,  <29.254110, 45.882347, 22.300692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024481, 45.601509, 22.132166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348771, 0.255861, -0.901606,
		0.740810, -0.664529, 0.097988,
		-0.574072, -0.702094, -0.421313,
		28.852259, 45.390881, 22.005772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624062, 45.485664, 21.748241>,  <29.254110, 45.882347, 22.300692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624062, 45.485664, 21.748241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236864, 45.445992, 21.656021>,  <29.004545, 45.422188, 21.600689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.236864, 45.445992, 21.656021>,  <29.624062, 45.485664, 21.748241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236864, 45.445992, 21.656021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203813, 0.225427, -0.952703,
		0.146463, -0.969199, -0.197997,
		-0.967992, -0.099182, -0.230552,
		28.946466, 45.416237, 21.586855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291111, 45.547863, 21.680742>,  <29.624062, 45.485664, 21.748241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291111, 45.547863, 21.680742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.606226, 45.774269, 21.583569>,  <30.795296, 45.910114, 21.525265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.606226, 45.774269, 21.583569>,  <30.291111, 45.547863, 21.680742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606226, 45.774269, 21.583569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313230, -0.028542, 0.949248,
		0.530357, -0.823899, -0.199778,
		0.787787, 0.566018, -0.242932,
		30.842562, 45.944073, 21.510689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947495, 45.199947, 21.905499>,  <30.291111, 45.547863, 21.680742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947495, 45.199947, 21.905499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047554, 45.583675, 21.853136>,  <31.107590, 45.813911, 21.821718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047554, 45.583675, 21.853136>,  <30.947495, 45.199947, 21.905499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047554, 45.583675, 21.853136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284693, 0.056350, 0.956961,
		0.925406, -0.276651, -0.259015,
		0.250149, 0.959317, -0.130907,
		31.122599, 45.871471, 21.813864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569029, 45.328312, 22.360291>,  <30.947495, 45.199947, 21.905499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569029, 45.328312, 22.360291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418842, 45.694576, 22.302904>,  <31.328730, 45.914337, 22.268473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.418842, 45.694576, 22.302904>,  <31.569029, 45.328312, 22.360291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418842, 45.694576, 22.302904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134694, 0.207057, 0.969013,
		0.916997, 0.344507, -0.201077,
		-0.375466, 0.915665, -0.143468,
		31.306202, 45.969276, 22.259863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984894, 45.794876, 22.658382>,  <31.569029, 45.328312, 22.360291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984894, 45.794876, 22.658382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615568, 45.945889, 22.630194>,  <31.393972, 46.036495, 22.613281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615568, 45.945889, 22.630194>,  <31.984894, 45.794876, 22.658382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615568, 45.945889, 22.630194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033509, 0.103598, 0.994054,
		0.382586, 0.920184, -0.083003,
		-0.923312, 0.377530, -0.070469,
		31.338575, 46.059147, 22.609053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999903, 46.194016, 23.272818>,  <31.984894, 45.794876, 22.658382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999903, 46.194016, 23.272818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615570, 46.175907, 23.163454>,  <31.384970, 46.165043, 23.097836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.615570, 46.175907, 23.163454>,  <31.999903, 46.194016, 23.272818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615570, 46.175907, 23.163454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271862, -0.037467, 0.961607,
		-0.053773, 0.998272, 0.023693,
		-0.960833, -0.045267, -0.273407,
		31.327320, 46.162327, 23.081432>
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
