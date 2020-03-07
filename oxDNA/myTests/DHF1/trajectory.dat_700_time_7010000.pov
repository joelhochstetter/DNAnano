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
	<2.496684, 0.112652, 1.966569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.388449, 0.496685, 1.994915>,  <2.323508, 0.727105, 2.011923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.388449, 0.496685, 1.994915>,  <2.496684, 0.112652, 1.966569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.388449, 0.496685, 1.994915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090278, 0.098592, -0.991024,
		-0.958453, -0.261761, -0.113353,
		-0.270587, 0.960084, 0.070865,
		2.307272, 0.784710, 2.016174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.904306, 0.341382, 1.601160>,  <2.496684, 0.112652, 1.966569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.904306, 0.341382, 1.601160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.132244, 0.666617, 1.648761>,  <2.269007, 0.861759, 1.677322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.132244, 0.666617, 1.648761>,  <1.904306, 0.341382, 1.601160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.132244, 0.666617, 1.648761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076994, 0.197008, -0.977374,
		-0.818136, 0.547791, 0.174867,
		0.569847, 0.813089, 0.119003,
		2.303198, 0.910544, 1.684462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.656841, 0.969857, 1.286936>,  <1.904306, 0.341382, 1.601160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.656841, 0.969857, 1.286936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.055092, 1.007109, 1.284010>,  <2.294042, 1.029460, 1.282254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.055092, 1.007109, 1.284010>,  <1.656841, 0.969857, 1.286936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.055092, 1.007109, 1.284010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045672, 0.416952, -0.907780,
		-0.081491, 0.904145, 0.419382,
		0.995627, 0.093130, -0.007316,
		2.353780, 1.035048, 1.281815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.953561, 1.639109, 1.053377>,  <1.656841, 0.969857, 1.286936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.953561, 1.639109, 1.053377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.240654, 1.373631, 0.969123>,  <2.412910, 1.214343, 0.918570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.240654, 1.373631, 0.969123>,  <1.953561, 1.639109, 1.053377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.240654, 1.373631, 0.969123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068321, 0.368163, -0.927248,
		0.692959, 0.651125, 0.309587,
		0.717732, -0.663696, -0.210636,
		2.455974, 1.174522, 0.905932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.426838, 2.052769, 0.630950>,  <1.953561, 1.639109, 1.053377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.426838, 2.052769, 0.630950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.547684, 1.676562, 0.568785>,  <2.620191, 1.450838, 0.531486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.547684, 1.676562, 0.568785>,  <2.426838, 2.052769, 0.630950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.547684, 1.676562, 0.568785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052723, 0.179267, -0.982387,
		0.951812, 0.288600, 0.103746,
		0.302115, -0.940518, -0.155412,
		2.638318, 1.394407, 0.522161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.978601, 2.080934, 0.138098>,  <2.426838, 2.052769, 0.630950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.978601, 2.080934, 0.138098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.843874, 1.704849, 0.117870>,  <2.763037, 1.479199, 0.105734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.843874, 1.704849, 0.117870>,  <2.978601, 2.080934, 0.138098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.843874, 1.704849, 0.117870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143317, 0.001888, -0.989675,
		0.930599, -0.340588, 0.134113,
		-0.336818, -0.940211, -0.050570,
		2.742828, 1.422786, 0.102699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.333239, 1.774123, -0.406630>,  <2.978601, 2.080934, 0.138098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.333239, 1.774123, -0.406630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.999264, 1.563046, -0.344126>,  <2.798878, 1.436399, -0.306623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.999264, 1.563046, -0.344126>,  <3.333239, 1.774123, -0.406630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.999264, 1.563046, -0.344126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091042, -0.147584, -0.984850,
		0.542761, -0.836516, 0.075181,
		-0.834938, -0.527693, 0.156261,
		2.748782, 1.404738, -0.297247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.441364, 1.221240, -0.768827>,  <3.333239, 1.774123, -0.406630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.441364, 1.221240, -0.768827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.043949, 1.266640, -0.768754>,  <2.805500, 1.293879, -0.768710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.043949, 1.266640, -0.768754>,  <3.441364, 1.221240, -0.768827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.043949, 1.266640, -0.768754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019454, -0.168707, -0.985474,
		-0.111817, -0.979110, 0.169825,
		-0.993539, 0.113496, 0.000183,
		2.745888, 1.300689, -0.768699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.565090, 2.175043, 3.341273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.300579, 1.894848, 3.233920>,  <2.141872, 1.726731, 3.169508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.300579, 1.894848, 3.233920>,  <2.565090, 2.175043, 3.341273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.300579, 1.894848, 3.233920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016590, -0.344032, 0.938812,
		-0.749957, 0.625268, 0.215880,
		-0.661278, -0.700487, -0.268382,
		2.102196, 1.684702, 3.153405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922453, 2.246228, 3.703346>,  <2.565090, 2.175043, 3.341273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922453, 2.246228, 3.703346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.035336, 1.875391, 3.604671>,  <2.103065, 1.652888, 3.545465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.035336, 1.875391, 3.604671>,  <1.922453, 2.246228, 3.703346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.035336, 1.875391, 3.604671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107473, -0.224971, 0.968420,
		-0.953315, -0.299806, 0.036149,
		0.282206, -0.927094, -0.246690,
		2.119997, 1.597262, 3.530664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.788127, 2.107402, 4.295984>,  <1.922453, 2.246228, 3.703346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.788127, 2.107402, 4.295984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.975418, 1.798064, 4.125010>,  <2.087792, 1.612461, 4.022426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.975418, 1.798064, 4.125010>,  <1.788127, 2.107402, 4.295984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.975418, 1.798064, 4.125010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251242, -0.347251, 0.903490,
		-0.847137, -0.530427, 0.031705,
		0.468226, -0.773346, -0.427434,
		2.115886, 1.566060, 3.996780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.500357, 1.517084, 4.526997>,  <1.788127, 2.107402, 4.295984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.500357, 1.517084, 4.526997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.874771, 1.419174, 4.425867>,  <2.099420, 1.360428, 4.365188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.874771, 1.419174, 4.425867>,  <1.500357, 1.517084, 4.526997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.874771, 1.419174, 4.425867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163863, -0.332638, 0.928709,
		-0.311415, -0.910737, -0.271254,
		0.936039, -0.244766, -0.252824,
		2.155582, 1.345742, 4.350019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.616251, 0.783792, 4.660834>,  <1.500357, 1.517084, 4.526997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.616251, 0.783792, 4.660834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959217, 0.987889, 4.687637>,  <2.164997, 1.110348, 4.703719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959217, 0.987889, 4.687637>,  <1.616251, 0.783792, 4.660834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.959217, 0.987889, 4.687637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127495, -0.336760, 0.932919,
		0.498581, -0.791356, -0.353797,
		0.857416, 0.510243, 0.067008,
		2.216442, 1.140962, 4.707739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.189753, 0.261290, 4.943423>,  <1.616251, 0.783792, 4.660834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.189753, 0.261290, 4.943423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.336788, 0.628798, 5.001035>,  <2.425009, 0.849302, 5.035603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.336788, 0.628798, 5.001035>,  <2.189753, 0.261290, 4.943423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.336788, 0.628798, 5.001035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303787, -0.265004, 0.915143,
		0.878973, -0.292640, -0.376522,
		0.367587, 0.918768, 0.144031,
		2.447064, 0.904428, 5.044245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.846641, 0.179332, 5.064628>,  <2.189753, 0.261290, 4.943423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.846641, 0.179332, 5.064628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.778160, 0.539849, 5.223807>,  <2.737072, 0.756159, 5.319314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.778160, 0.539849, 5.223807>,  <2.846641, 0.179332, 5.064628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.778160, 0.539849, 5.223807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335098, -0.326563, 0.883780,
		0.926498, 0.284656, -0.246113,
		-0.171201, 0.901292, 0.397947,
		2.726800, 0.810237, 5.343191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.316754, 0.270928, 5.651946>,  <2.846641, 0.179332, 5.064628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.316754, 0.270928, 5.651946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.045757, 0.554350, 5.730894>,  <2.883159, 0.724403, 5.778263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.045757, 0.554350, 5.730894>,  <3.316754, 0.270928, 5.651946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.045757, 0.554350, 5.730894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054567, -0.219179, 0.974158,
		0.733503, 0.670754, 0.109829,
		-0.677493, 0.708554, 0.197370,
		2.842510, 0.766916, 5.790105>
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
