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
	<3.067367, 1.777103, 3.952812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.831848, 1.834566, 4.270977>,  <2.690537, 1.869044, 4.461876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.831848, 1.834566, 4.270977>,  <3.067367, 1.777103, 3.952812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.831848, 1.834566, 4.270977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019152, -0.981323, 0.191413,
		0.808054, 0.127937, 0.575049,
		-0.588798, 0.143659, 0.795412,
		2.655209, 1.877664, 4.509601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.374828, 1.336417, 4.506645>,  <3.067367, 1.777103, 3.952812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.374828, 1.336417, 4.506645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.981827, 1.404902, 4.535965>,  <2.746026, 1.445992, 4.553557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.981827, 1.404902, 4.535965>,  <3.374828, 1.336417, 4.506645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.981827, 1.404902, 4.535965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172143, -0.985050, -0.006534,
		0.071085, -0.019037, 0.997288,
		-0.982504, 0.171212, 0.073300,
		2.687076, 1.456265, 4.557955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.101022, 1.077289, 5.128256>,  <3.374828, 1.336417, 4.506645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.101022, 1.077289, 5.128256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.859749, 1.084938, 4.809307>,  <2.714985, 1.089528, 4.617938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.859749, 1.084938, 4.809307>,  <3.101022, 1.077289, 5.128256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.859749, 1.084938, 4.809307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326848, -0.917845, 0.225236,
		-0.727557, 0.396478, 0.559880,
		-0.603184, 0.019124, -0.797373,
		2.678794, 1.090675, 4.570095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.329223, 0.928142, 5.256227>,  <3.101022, 1.077289, 5.128256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.329223, 0.928142, 5.256227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.422295, 0.817335, 4.883320>,  <2.478137, 0.750851, 4.659576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.422295, 0.817335, 4.883320>,  <2.329223, 0.928142, 5.256227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.422295, 0.817335, 4.883320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428858, -0.889572, 0.157296,
		-0.872893, 0.363211, -0.325786,
		0.232678, -0.277018, -0.932267,
		2.492098, 0.734230, 4.603640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.689892, 0.584361, 4.965368>,  <2.329223, 0.928142, 5.256227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.689892, 0.584361, 4.965368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.005783, 0.454159, 4.757378>,  <2.195318, 0.376038, 4.632583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.005783, 0.454159, 4.757378>,  <1.689892, 0.584361, 4.965368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005783, 0.454159, 4.757378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279568, -0.945447, 0.167248,
		-0.546051, 0.013289, -0.837647,
		0.789728, -0.325505, -0.519977,
		2.242702, 0.356507, 4.601385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.491468, 0.115118, 4.440607>,  <1.689892, 0.584361, 4.965368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.491468, 0.115118, 4.440607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876747, 0.038099, 4.515625>,  <2.107915, -0.008112, 4.560636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.876747, 0.038099, 4.515625>,  <1.491468, 0.115118, 4.440607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.876747, 0.038099, 4.515625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209926, -0.974641, 0.077501,
		0.167867, -0.114019, -0.979194,
		0.963199, -0.192548, 0.187546,
		2.165707, -0.019665, 4.571888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.787638, -0.285338, 3.861227>,  <1.491468, 0.115119, 4.440607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.787638, -0.285338, 3.861227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.011909, -0.344601, 4.187096>,  <2.146472, -0.380158, 4.382617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.011909, -0.344601, 4.187096>,  <1.787638, -0.285338, 3.861227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.011909, -0.344601, 4.187096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141040, -0.986573, -0.082351,
		0.815934, -0.068729, -0.574046,
		0.560678, -0.148157, 0.814672,
		2.180113, -0.389048, 4.431497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179682, -0.858854, 3.658673>,  <1.787638, -0.285338, 3.861227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179682, -0.858854, 3.658673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.147163, -0.832489, 4.056477>,  <2.127652, -0.816670, 4.295158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.147163, -0.832489, 4.056477>,  <2.179682, -0.858854, 3.658673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.147163, -0.832489, 4.056477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200225, -0.978549, 0.048487,
		0.976371, -0.195184, 0.092751,
		-0.081297, 0.065912, 0.994508,
		2.122774, -0.812715, 4.354829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.871060, 3.198835, 4.444500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.195343, 3.111118, 4.661633>,  <1.389913, 3.058488, 4.791912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.195343, 3.111118, 4.661633>,  <0.871060, 3.198835, 4.444500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.195343, 3.111118, 4.661633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402862, 0.881730, -0.245467,
		-0.424801, 0.417688, 0.803170,
		0.810708, -0.219292, 0.542830,
		1.438555, 3.045331, 4.824481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.069862, 3.790514, 4.972763>,  <0.871060, 3.198835, 4.444500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.069862, 3.790514, 4.972763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.399521, 3.584568, 4.878361>,  <1.597316, 3.461001, 4.821720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.399521, 3.584568, 4.878361>,  <1.069862, 3.790514, 4.972763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.399521, 3.584568, 4.878361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484546, 0.856696, -0.176883,
		0.293255, 0.031423, 0.955518,
		0.824146, -0.514864, -0.236004,
		1.646765, 3.430109, 4.807559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.478418, 4.052305, 5.423358>,  <1.069862, 3.790514, 4.972763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.478418, 4.052305, 5.423358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.719559, 3.940273, 5.124527>,  <1.864243, 3.873055, 4.945228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.719559, 3.940273, 5.124527>,  <1.478418, 4.052305, 5.423358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.719559, 3.940273, 5.124527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445656, 0.894879, 0.024131,
		0.661785, -0.347487, 0.664299,
		0.602852, -0.280079, -0.747078,
		1.900414, 3.856250, 4.900403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.220816, 4.133579, 5.639822>,  <1.478418, 4.052305, 5.423358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.220816, 4.133579, 5.639822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182678, 4.157810, 5.242382>,  <2.159796, 4.172349, 5.003918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.182678, 4.157810, 5.242382>,  <2.220816, 4.133579, 5.639822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.182678, 4.157810, 5.242382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411248, 0.911381, 0.016102,
		0.906523, -0.407080, -0.111808,
		-0.095345, 0.060578, -0.993599,
		2.154075, 4.175983, 4.944302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924648, 4.315680, 5.414622>,  <2.220816, 4.133579, 5.639822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924648, 4.315680, 5.414622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.683273, 4.426491, 5.115524>,  <2.538449, 4.492978, 4.936066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.683273, 4.426491, 5.115524>,  <2.924648, 4.315680, 5.414622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.683273, 4.426491, 5.115524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599686, 0.775719, -0.196560,
		0.525586, -0.567023, -0.634226,
		-0.603436, 0.277028, -0.747744,
		2.502243, 4.509599, 4.891201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.387264, 4.593485, 4.762877>,  <2.924648, 4.315680, 5.414622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.387264, 4.593485, 4.762877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015549, 4.739075, 4.737751>,  <2.792519, 4.826428, 4.722676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.015549, 4.739075, 4.737751>,  <3.387264, 4.593485, 4.762877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.015549, 4.739075, 4.737751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354609, 0.831627, -0.427375,
		-0.103316, -0.419429, -0.901890,
		-0.929289, 0.363973, -0.062813,
		2.736762, 4.848267, 4.718907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.363210, 4.926809, 4.008724>,  <3.387264, 4.593485, 4.762877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.363210, 4.926809, 4.008724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.019791, 5.056988, 4.167206>,  <2.813739, 5.135095, 4.262295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.019791, 5.056988, 4.167206>,  <3.363210, 4.926809, 4.008724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.019791, 5.056988, 4.167206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170438, 0.909937, -0.378107,
		-0.483576, -0.257094, -0.836694,
		-0.858548, 0.325448, 0.396206,
		2.762226, 5.154622, 4.286067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.019728, 5.397651, 3.490101>,  <3.363210, 4.926809, 4.008724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.019728, 5.397651, 3.490101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883041, 5.487366, 3.855160>,  <2.801030, 5.541195, 4.074195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.883041, 5.487366, 3.855160>,  <3.019728, 5.397651, 3.490101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.883041, 5.487366, 3.855160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183430, 0.968345, -0.169295,
		-0.921729, 0.109556, -0.372040,
		-0.341716, 0.224287, 0.912647,
		2.780527, 5.554652, 4.128954>
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
