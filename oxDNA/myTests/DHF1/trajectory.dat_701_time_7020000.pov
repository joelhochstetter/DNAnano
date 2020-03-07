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
	<5.801936, -0.058663, 2.250527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.754463, 0.303886, 2.088341>,  <5.725979, 0.521415, 1.991029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.754463, 0.303886, 2.088341>,  <5.801936, -0.058663, 2.250527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.754463, 0.303886, 2.088341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842343, -0.308109, -0.442184,
		-0.525712, 0.289063, 0.800044,
		-0.118682, 0.906373, -0.405467,
		5.718859, 0.575798, 1.966701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.048738, 0.131009, 2.170156>,  <5.801936, -0.058663, 2.250527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.048738, 0.131009, 2.170156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.235048, 0.355814, 1.896749>,  <5.346835, 0.490696, 1.732706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.235048, 0.355814, 1.896749>,  <5.048738, 0.131009, 2.170156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.235048, 0.355814, 1.896749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674143, -0.274994, -0.685499,
		-0.573222, 0.780077, 0.250790,
		0.465777, 0.562012, -0.683516,
		5.374781, 0.524417, 1.691695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.521244, 0.559621, 1.899292>,  <5.048738, 0.131009, 2.170156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.521244, 0.559621, 1.899292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.836199, 0.489197, 1.662979>,  <5.025172, 0.446943, 1.521191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.836199, 0.489197, 1.662979>,  <4.521244, 0.559621, 1.899292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.836199, 0.489197, 1.662979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615844, -0.267427, -0.741093,
		-0.027514, 0.947357, -0.318995,
		0.787388, -0.176060, -0.590782,
		5.072415, 0.436379, 1.485745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.277403, 0.797608, 1.321197>,  <4.521244, 0.559621, 1.899292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.277403, 0.797608, 1.321197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.573511, 0.539209, 1.246698>,  <4.751176, 0.384169, 1.201999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.573511, 0.539209, 1.246698>,  <4.277403, 0.797608, 1.321197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.573511, 0.539209, 1.246698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423119, -0.232374, -0.875770,
		0.522467, 0.727109, -0.445354,
		0.740269, -0.645999, -0.186246,
		4.795592, 0.345409, 1.190825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590574, 0.952882, 0.661566>,  <4.277403, 0.797608, 1.321197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590574, 0.952882, 0.661566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.627169, 0.569643, 0.770144>,  <4.649126, 0.339700, 0.835290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.627169, 0.569643, 0.770144>,  <4.590574, 0.952882, 0.661566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.627169, 0.569643, 0.770144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352032, -0.286102, -0.891190,
		0.931506, -0.014025, -0.363455,
		0.091486, -0.958096, 0.271443,
		4.654614, 0.282215, 0.851576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.118855, 0.718090, 0.185615>,  <4.590574, 0.952882, 0.661566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.118855, 0.718090, 0.185615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.908863, 0.411304, 0.333218>,  <4.782868, 0.227233, 0.421779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.908863, 0.411304, 0.333218>,  <5.118855, 0.718090, 0.185615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.908863, 0.411304, 0.333218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306090, -0.234416, -0.922691,
		0.794170, -0.597342, -0.111696,
		-0.524979, -0.766963, 0.369006,
		4.751369, 0.181216, 0.443919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.296049, 0.188280, -0.278649>,  <5.118855, 0.718090, 0.185615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.296049, 0.188280, -0.278649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.949940, 0.087673, -0.105194>,  <4.742274, 0.027309, -0.001121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.949940, 0.087673, -0.105194>,  <5.296049, 0.188280, -0.278649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.949940, 0.087673, -0.105194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322425, -0.383142, -0.865589,
		0.383856, -0.888786, 0.250427,
		-0.865273, -0.251518, 0.433638,
		4.690358, 0.012218, 0.024897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.312905, -0.477845, -0.397828>,  <5.296049, 0.188280, -0.278649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.312905, -0.477845, -0.397828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.944757, -0.331502, -0.342593>,  <4.723869, -0.243696, -0.309452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.944757, -0.331502, -0.342593>,  <5.312905, -0.477845, -0.397828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.944757, -0.331502, -0.342593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300240, -0.434868, -0.848968,
		-0.250551, -0.822823, 0.510084,
		-0.920369, 0.365857, 0.138088,
		4.668647, -0.221744, -0.301167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.670954, 4.540061, -1.504363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429737, 4.492468, -1.188849>,  <3.285007, 4.463912, -0.999540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429737, 4.492468, -1.188849>,  <3.670954, 4.540061, -1.504363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429737, 4.492468, -1.188849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720949, 0.341931, 0.602757,
		-0.341427, 0.932162, -0.120420,
		-0.603042, -0.118981, 0.788786,
		3.248824, 4.456773, -0.952213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.706181, 5.136142, -1.078206>,  <3.670954, 4.540061, -1.504363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.706181, 5.136142, -1.078206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601395, 4.826402, -0.847814>,  <3.538523, 4.640557, -0.709578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.601395, 4.826402, -0.847814>,  <3.706181, 5.136142, -1.078206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.601395, 4.826402, -0.847814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676645, 0.278182, 0.681738,
		-0.688132, 0.568326, 0.451087,
		-0.261965, -0.774351, 0.575981,
		3.522805, 4.594096, -0.675019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.496459, 5.374612, -0.422472>,  <3.706181, 5.136142, -1.078206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.496459, 5.374612, -0.422472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.668938, 5.013834, -0.412982>,  <3.772425, 4.797367, -0.407289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.668938, 5.013834, -0.412982>,  <3.496459, 5.374612, -0.422472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.668938, 5.013834, -0.412982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596644, 0.304767, 0.742384,
		-0.676820, -0.305959, 0.669555,
		0.431197, -0.901946, 0.023724,
		3.798297, 4.743250, -0.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.636499, 5.282300, 0.248794>,  <3.496459, 5.374612, -0.422472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.636499, 5.282300, 0.248794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.865818, 5.025178, 0.045567>,  <4.003409, 4.870905, -0.076369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.865818, 5.025178, 0.045567>,  <3.636499, 5.282300, 0.248794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.865818, 5.025178, 0.045567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601780, -0.090483, 0.793519,
		-0.556048, -0.760669, 0.334953,
		0.573298, -0.642803, -0.508068,
		4.037807, 4.832337, -0.106853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.655045, 4.549083, 0.593641>,  <3.636499, 5.282300, 0.248794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.655045, 4.549083, 0.593641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.989506, 4.668919, 0.409859>,  <4.190182, 4.740820, 0.299590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.989506, 4.668919, 0.409859>,  <3.655045, 4.549083, 0.593641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.989506, 4.668919, 0.409859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518249, -0.157182, 0.840662,
		0.179635, -0.941032, -0.286689,
		0.836151, 0.299588, -0.459454,
		4.240351, 4.758795, 0.272023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.173725, 4.128227, 0.915665>,  <3.655045, 4.549083, 0.593641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.173725, 4.128227, 0.915665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.369694, 4.440671, 0.760827>,  <4.487275, 4.628138, 0.667923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.369694, 4.440671, 0.760827>,  <4.173725, 4.128227, 0.915665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.369694, 4.440671, 0.760827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530268, 0.085432, 0.843515,
		0.691949, -0.618520, -0.372343,
		0.489921, 0.781111, -0.387096,
		4.516670, 4.675004, 0.644698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791943, 4.019722, 0.944954>,  <4.173725, 4.128227, 0.915665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791943, 4.019722, 0.944954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.778851, 4.419465, 0.950758>,  <4.770995, 4.659311, 0.954241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.778851, 4.419465, 0.950758>,  <4.791943, 4.019722, 0.944954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778851, 4.419465, 0.950758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418116, 0.000503, 0.908393,
		0.907804, 0.035800, -0.417865,
		-0.032731, 0.999359, 0.014512,
		4.769032, 4.719273, 0.955112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.436687, 4.255293, 1.157660>,  <4.791943, 4.019722, 0.944954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.436687, 4.255293, 1.157660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.211964, 4.583147, 1.202507>,  <5.077130, 4.779860, 1.229415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.211964, 4.583147, 1.202507>,  <5.436687, 4.255293, 1.157660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.211964, 4.583147, 1.202507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502700, 0.230604, 0.833135,
		0.657012, 0.524423, -0.541586,
		-0.561807, 0.819636, 0.112118,
		5.043422, 4.829038, 1.236142>
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
