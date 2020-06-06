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
	<24.462816, 35.017994, 35.404282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273932, 35.064129, 35.054718>,  <24.160601, 35.091812, 34.844982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.273932, 35.064129, 35.054718>,  <24.462816, 35.017994, 35.404282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273932, 35.064129, 35.054718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732264, 0.603239, -0.316057,
		0.490719, -0.789177, -0.369317,
		-0.472211, 0.115342, -0.873907,
		24.132269, 35.098732, 34.792545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403851, 34.432892, 35.794693>,  <24.462816, 35.017994, 35.404282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403851, 34.432892, 35.794693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644779, 34.295940, 35.506252>,  <24.789337, 34.213772, 35.333187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644779, 34.295940, 35.506252>,  <24.403851, 34.432892, 35.794693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644779, 34.295940, 35.506252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596536, -0.407199, 0.691616,
		-0.530425, -0.846739, -0.041025,
		0.602324, -0.342378, -0.721099,
		24.825476, 34.193226, 35.289921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512510, 33.756306, 35.882492>,  <24.403851, 34.432892, 35.794693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512510, 33.756306, 35.882492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879808, 33.825706, 35.740101>,  <25.100187, 33.867348, 35.654667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.879808, 33.825706, 35.740101>,  <24.512510, 33.756306, 35.882492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.879808, 33.825706, 35.740101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395575, -0.359915, 0.844974,
		0.018487, -0.916710, -0.399126,
		0.918248, 0.173506, -0.355974,
		25.155283, 33.877758, 35.633308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898525, 33.095848, 35.789280>,  <24.512510, 33.756306, 35.882492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898525, 33.095848, 35.789280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112459, 33.418015, 35.891468>,  <25.240820, 33.611313, 35.952782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112459, 33.418015, 35.891468>,  <24.898525, 33.095848, 35.789280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112459, 33.418015, 35.891468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382425, -0.500340, 0.776795,
		0.753462, -0.317758, -0.575608,
		0.534832, 0.805413, 0.255468,
		25.272909, 33.659637, 35.968109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495117, 32.884964, 35.873138>,  <24.898525, 33.095848, 35.789280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495117, 32.884964, 35.873138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491186, 33.221863, 36.088737>,  <25.488827, 33.424004, 36.218098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491186, 33.221863, 36.088737>,  <25.495117, 32.884964, 35.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491186, 33.221863, 36.088737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508272, -0.459989, 0.728059,
		0.861141, 0.281114, -0.423570,
		-0.009830, 0.842250, 0.538997,
		25.488237, 33.474537, 36.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203529, 33.102219, 35.958210>,  <25.495117, 32.884964, 35.873138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203529, 33.102219, 35.958210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956345, 33.233337, 36.244057>,  <25.808033, 33.312008, 36.415565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.956345, 33.233337, 36.244057>,  <26.203529, 33.102219, 35.958210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956345, 33.233337, 36.244057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575987, -0.429907, 0.695283,
		0.535129, 0.841267, 0.076860,
		-0.617962, 0.327796, 0.714614,
		25.770956, 33.331676, 36.458443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444212, 32.753746, 36.635719>,  <26.203529, 33.102219, 35.958210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444212, 32.753746, 36.635719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243320, 33.073021, 36.502655>,  <26.122786, 33.264587, 36.422817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243320, 33.073021, 36.502655>,  <26.444212, 32.753746, 36.635719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243320, 33.073021, 36.502655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064288, 0.349163, 0.934854,
		0.862341, 0.490898, -0.124046,
		-0.502230, 0.798188, -0.332656,
		26.092651, 33.312477, 36.402859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135027, 32.374390, 36.459652>,  <26.444212, 32.753746, 36.635719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135027, 32.374390, 36.459652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407343, 32.666252, 36.485332>,  <27.570732, 32.841370, 36.500740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407343, 32.666252, 36.485332>,  <27.135027, 32.374390, 36.459652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407343, 32.666252, 36.485332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475131, 0.373191, 0.796856,
		0.557473, -0.572997, 0.600749,
		0.680789, 0.729660, 0.064205,
		27.611580, 32.885151, 36.504593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316729, 32.328663, 37.145481>,  <27.135027, 32.374390, 36.459652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316729, 32.328663, 37.145481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433668, 32.686462, 37.010189>,  <27.503832, 32.901142, 36.929016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433668, 32.686462, 37.010189>,  <27.316729, 32.328663, 37.145481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433668, 32.686462, 37.010189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586307, 0.447062, 0.675558,
		0.755497, 0.000806, 0.655152,
		0.292349, 0.894503, -0.338226,
		27.521372, 32.954815, 36.908722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375128, 32.730923, 37.705578>,  <27.316729, 32.328663, 37.145481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375128, 32.730923, 37.705578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319162, 33.009872, 37.424412>,  <27.285583, 33.177242, 37.255711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319162, 33.009872, 37.424412>,  <27.375128, 32.730923, 37.705578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319162, 33.009872, 37.424412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559559, 0.529985, 0.637189,
		0.816896, 0.482472, 0.316072,
		-0.139912, 0.697378, -0.702914,
		27.277189, 33.219086, 37.213539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644888, 33.416553, 37.940430>,  <27.375128, 32.730923, 37.705578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644888, 33.416553, 37.940430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370867, 33.497345, 37.660458>,  <27.206453, 33.545822, 37.492474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370867, 33.497345, 37.660458>,  <27.644888, 33.416553, 37.940430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370867, 33.497345, 37.660458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622741, 0.336191, 0.706519,
		0.378016, 0.919880, -0.104525,
		-0.685053, 0.201983, -0.699932,
		27.165350, 33.557941, 37.450478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418951, 34.116802, 37.975441>,  <27.644888, 33.416553, 37.940430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418951, 34.116802, 37.975441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117081, 33.894154, 37.836510>,  <26.935959, 33.760563, 37.753151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117081, 33.894154, 37.836510>,  <27.418951, 34.116802, 37.975441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117081, 33.894154, 37.836510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625668, 0.451212, 0.636355,
		-0.197492, 0.697552, -0.688780,
		-0.754677, -0.556622, -0.347325,
		26.890678, 33.727165, 37.732311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808178, 34.544434, 37.830753>,  <27.418951, 34.116802, 37.975441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808178, 34.544434, 37.830753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688608, 34.170120, 37.905544>,  <26.616867, 33.945534, 37.950420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688608, 34.170120, 37.905544>,  <26.808178, 34.544434, 37.830753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688608, 34.170120, 37.905544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690243, 0.347324, 0.634768,
		-0.658945, 0.060687, -0.749739,
		-0.298925, -0.935779, 0.186978,
		26.598930, 33.889385, 37.961639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991776, 34.402065, 37.764454>,  <26.808178, 34.544434, 37.830753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991776, 34.402065, 37.764454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172745, 34.161823, 38.028145>,  <26.281326, 34.017677, 38.186359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172745, 34.161823, 38.028145>,  <25.991776, 34.402065, 37.764454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172745, 34.161823, 38.028145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646463, 0.288344, 0.706360,
		-0.614330, -0.745741, -0.257817,
		0.452421, -0.600607, 0.659232,
		26.308472, 33.981640, 38.225914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.139662, 34.455547, 37.061371>,  <25.991776, 34.402065, 37.764454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.139662, 34.455547, 37.061371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841093, 34.280193, 37.261642>,  <25.661951, 34.174980, 37.381805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841093, 34.280193, 37.261642>,  <26.139662, 34.455547, 37.061371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841093, 34.280193, 37.261642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097492, 0.816276, 0.569376,
		-0.658294, 0.376182, -0.652024,
		-0.746421, -0.438384, 0.500674,
		25.617167, 34.148678, 37.411846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000669, 33.717453, 37.004486>,  <26.139662, 34.455547, 37.061371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000669, 33.717453, 37.004486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354485, 33.845146, 37.140537>,  <26.566772, 33.921761, 37.222168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354485, 33.845146, 37.140537>,  <26.000669, 33.717453, 37.004486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354485, 33.845146, 37.140537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463383, -0.517565, -0.719307,
		-0.053590, 0.793861, -0.605733,
		0.884536, 0.319234, 0.340126,
		26.619844, 33.940918, 37.242577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460024, 33.865791, 36.471657>,  <26.000669, 33.717453, 37.004486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460024, 33.865791, 36.471657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693018, 33.802860, 36.790646>,  <26.832813, 33.765102, 36.982040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.693018, 33.802860, 36.790646>,  <26.460024, 33.865791, 36.471657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693018, 33.802860, 36.790646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623489, -0.542977, -0.562528,
		0.521511, 0.824878, -0.218182,
		0.582484, -0.157331, 0.797471,
		26.867764, 33.755661, 37.029888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113167, 34.038944, 36.252167>,  <26.460024, 33.865791, 36.471657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113167, 34.038944, 36.252167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181929, 33.792610, 36.559723>,  <27.223186, 33.644810, 36.744259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181929, 33.792610, 36.559723>,  <27.113167, 34.038944, 36.252167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181929, 33.792610, 36.559723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687148, -0.484320, -0.541536,
		0.705887, 0.621438, 0.339911,
		0.171905, -0.615832, 0.768895,
		27.233500, 33.607861, 36.790390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831526, 34.116879, 36.359432>,  <27.113167, 34.038944, 36.252167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831526, 34.116879, 36.359432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713821, 33.768188, 36.516155>,  <27.643198, 33.558975, 36.610188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713821, 33.768188, 36.516155>,  <27.831526, 34.116879, 36.359432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713821, 33.768188, 36.516155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817557, -0.441919, -0.369200,
		0.494985, 0.211681, 0.842722,
		-0.294263, -0.871721, 0.391805,
		27.625542, 33.506672, 36.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436186, 33.872334, 36.614513>,  <27.831526, 34.116879, 36.359432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436186, 33.872334, 36.614513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180355, 33.574074, 36.539730>,  <28.026857, 33.395119, 36.494858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180355, 33.574074, 36.539730>,  <28.436186, 33.872334, 36.614513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180355, 33.574074, 36.539730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732716, -0.517744, -0.441666,
		0.232528, -0.419469, 0.877483,
		-0.639577, -0.745645, -0.186962,
		27.988482, 33.350380, 36.483643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730766, 33.182735, 36.875137>,  <28.436186, 33.872334, 36.614513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730766, 33.182735, 36.875137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462273, 33.110676, 36.587528>,  <28.301176, 33.067440, 36.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462273, 33.110676, 36.587528>,  <28.730766, 33.182735, 36.875137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462273, 33.110676, 36.587528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644054, -0.621929, -0.445420,
		-0.366937, -0.762069, 0.533487,
		-0.671232, -0.180153, -0.719022,
		28.260902, 33.056629, 36.371822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300446, 32.900696, 36.436047>,  <28.730766, 33.182735, 36.875137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300446, 32.900696, 36.436047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932106, 32.824959, 36.299702>,  <28.711102, 32.779514, 36.217896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932106, 32.824959, 36.299702>,  <29.300446, 32.900696, 36.436047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932106, 32.824959, 36.299702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382412, -0.609273, -0.694656,
		-0.076146, -0.770022, 0.633457,
		-0.920849, -0.189347, -0.340859,
		28.655851, 32.768154, 36.197445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134455, 32.167103, 36.509090>,  <29.300446, 32.900696, 36.436047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134455, 32.167103, 36.509090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016804, 32.395153, 36.202251>,  <28.946213, 32.531982, 36.018147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016804, 32.395153, 36.202251>,  <29.134455, 32.167103, 36.509090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016804, 32.395153, 36.202251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652811, -0.466380, -0.596931,
		-0.698087, -0.676347, -0.235009,
		-0.294129, 0.570127, -0.767101,
		28.928564, 32.566193, 35.972122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955612, 31.642843, 35.969704>,  <29.134455, 32.167103, 36.509090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955612, 31.642843, 35.969704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084326, 31.997988, 35.838158>,  <29.161554, 32.211075, 35.759228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084326, 31.997988, 35.838158>,  <28.955612, 31.642843, 35.969704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084326, 31.997988, 35.838158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821579, -0.434479, -0.369103,
		-0.470598, -0.151419, -0.869258,
		0.321785, 0.887863, -0.328867,
		29.180861, 32.264347, 35.739498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128748, 31.565773, 35.286213>,  <28.955612, 31.642843, 35.969704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128748, 31.565773, 35.286213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341288, 31.868292, 35.438885>,  <29.468811, 32.049805, 35.530487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341288, 31.868292, 35.438885>,  <29.128748, 31.565773, 35.286213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341288, 31.868292, 35.438885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830603, -0.376482, -0.410316,
		-0.166627, 0.535045, -0.828229,
		0.531351, 0.756299, 0.381678,
		29.500692, 32.095181, 35.553387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552469, 31.839813, 34.682190>,  <29.128748, 31.565773, 35.286213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552469, 31.839813, 34.682190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739836, 31.854771, 35.035275>,  <29.852257, 31.863745, 35.247128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739836, 31.854771, 35.035275>,  <29.552469, 31.839813, 34.682190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739836, 31.854771, 35.035275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680173, -0.652908, -0.333281,
		0.563870, 0.756514, -0.331266,
		0.468418, 0.037391, 0.882715,
		29.880362, 31.865988, 35.300091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203390, 31.994705, 34.564487>,  <29.552469, 31.839813, 34.682190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203390, 31.994705, 34.564487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208685, 31.769672, 34.895142>,  <30.211863, 31.634653, 35.093533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208685, 31.769672, 34.895142>,  <30.203390, 31.994705, 34.564487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208685, 31.769672, 34.895142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727290, -0.561921, -0.394075,
		0.686203, 0.606420, 0.401721,
		0.013239, -0.562583, 0.826635,
		30.212656, 31.600897, 35.143131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757271, 32.049362, 35.119640>,  <30.203390, 31.994705, 34.564487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757271, 32.049362, 35.119640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597408, 31.707726, 34.986492>,  <30.501492, 31.502743, 34.906605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597408, 31.707726, 34.986492>,  <30.757271, 32.049362, 35.119640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597408, 31.707726, 34.986492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864258, -0.230062, -0.447358,
		0.305506, -0.466471, 0.830103,
		-0.399655, -0.854094, -0.332866,
		30.477512, 31.451498, 34.886631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134817, 31.403978, 35.367031>,  <30.757271, 32.049362, 35.119640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134817, 31.403978, 35.367031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947712, 31.370073, 35.015118>,  <30.835449, 31.349730, 34.803970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947712, 31.370073, 35.015118>,  <31.134817, 31.403978, 35.367031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947712, 31.370073, 35.015118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878024, -0.158707, -0.451538,
		-0.101352, -0.983681, 0.148664,
		-0.467763, -0.084766, -0.879780,
		30.807383, 31.344645, 34.751183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608604, 30.896944, 35.059776>,  <31.134817, 31.403978, 35.367031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608604, 30.896944, 35.059776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798738, 30.733089, 35.371227>,  <31.912819, 30.634777, 35.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798738, 30.733089, 35.371227>,  <31.608604, 30.896944, 35.059776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798738, 30.733089, 35.371227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634473, -0.772707, -0.019189,
		0.609509, -0.484895, -0.627197,
		0.475335, -0.409635, 0.778625,
		31.941339, 30.610199, 35.604816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611984, 30.251078, 34.886261>,  <31.608604, 30.896944, 35.059776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611984, 30.251078, 34.886261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638866, 30.290569, 35.283398>,  <31.654995, 30.314264, 35.521679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638866, 30.290569, 35.283398>,  <31.611984, 30.251078, 34.886261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638866, 30.290569, 35.283398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722003, -0.681979, 0.116690,
		0.688619, -0.724677, 0.025452,
		0.067205, 0.098731, 0.992842,
		31.659027, 30.320189, 35.581249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844700, 29.609360, 35.265667>,  <31.611984, 30.251078, 34.886261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844700, 29.609360, 35.265667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622702, 29.839838, 35.505661>,  <31.489502, 29.978125, 35.649658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622702, 29.839838, 35.505661>,  <31.844700, 29.609360, 35.265667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622702, 29.839838, 35.505661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652379, -0.748989, 0.115831,
		0.516120, -0.327129, 0.791585,
		-0.554997, 0.576196, 0.599981,
		31.456203, 30.012697, 35.685654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489851, 29.112558, 35.732738>,  <31.844700, 29.609360, 35.265667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489851, 29.112558, 35.732738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273531, 29.447781, 35.761574>,  <31.143738, 29.648914, 35.778873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273531, 29.447781, 35.761574>,  <31.489851, 29.112558, 35.732738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273531, 29.447781, 35.761574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840089, -0.533829, -0.096316,
		-0.042236, -0.112646, 0.992737,
		-0.540801, 0.838056, 0.072086,
		31.111290, 29.699198, 35.783199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115871, 29.149921, 36.418980>,  <31.489851, 29.112558, 35.732738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115871, 29.149921, 36.418980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915543, 29.360552, 36.144203>,  <30.795345, 29.486929, 35.979336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915543, 29.360552, 36.144203>,  <31.115871, 29.149921, 36.418980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915543, 29.360552, 36.144203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783177, -0.613603, 0.100628,
		-0.368524, 0.588397, 0.719708,
		-0.500824, 0.526575, -0.686946,
		30.765295, 29.518524, 35.938118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498276, 29.085461, 36.645996>,  <31.115871, 29.149921, 36.418980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498276, 29.085461, 36.645996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449760, 29.166498, 36.257305>,  <30.420650, 29.215120, 36.024090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449760, 29.166498, 36.257305>,  <30.498276, 29.085461, 36.645996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449760, 29.166498, 36.257305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733233, -0.678147, -0.049865,
		-0.669073, 0.706451, 0.230797,
		-0.121288, 0.202591, -0.971723,
		30.413374, 29.227276, 35.965790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781870, 29.384262, 36.402905>,  <30.498276, 29.085461, 36.645996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781870, 29.384262, 36.402905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965376, 29.130690, 36.153854>,  <30.075480, 28.978546, 36.004425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.965376, 29.130690, 36.153854>,  <29.781870, 29.384262, 36.402905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965376, 29.130690, 36.153854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734779, -0.664668, 0.135338,
		-0.499636, 0.395406, -0.770726,
		0.458764, -0.633933, -0.622628,
		30.103004, 28.940510, 35.967068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490238, 29.206305, 35.700871>,  <29.781870, 29.384262, 36.402905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490238, 29.206305, 35.700871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678833, 28.905807, 35.885624>,  <29.791990, 28.725510, 35.996475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678833, 28.905807, 35.885624>,  <29.490238, 29.206305, 35.700871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678833, 28.905807, 35.885624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875335, -0.462326, 0.141574,
		0.107182, -0.471050, -0.875571,
		0.471488, -0.751243, 0.461879,
		29.820280, 28.680435, 36.024189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842316, 29.246164, 34.936069>,  <29.490238, 29.206305, 35.700871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842316, 29.246164, 34.936069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071110, 29.064089, 35.209019>,  <30.208387, 28.954844, 35.372787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071110, 29.064089, 35.209019>,  <29.842316, 29.246164, 34.936069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071110, 29.064089, 35.209019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702508, 0.701306, -0.121046,
		-0.423454, 0.548610, 0.720912,
		0.571988, -0.455189, 0.682373,
		30.242706, 28.927532, 35.413731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225292, 29.881649, 34.739922>,  <29.842316, 29.246164, 34.936069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225292, 29.881649, 34.739922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233936, 29.773382, 35.124893>,  <30.239122, 29.708422, 35.355877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233936, 29.773382, 35.124893>,  <30.225292, 29.881649, 34.739922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233936, 29.773382, 35.124893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818972, 0.556933, 0.138239,
		-0.573426, 0.785217, 0.233702,
		0.021609, -0.270665, 0.962431,
		30.240419, 29.692183, 35.413624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196636, 30.438709, 35.186230>,  <30.225292, 29.881649, 34.739922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196636, 30.438709, 35.186230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355776, 30.177721, 35.444221>,  <30.451260, 30.021128, 35.599018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355776, 30.177721, 35.444221>,  <30.196636, 30.438709, 35.186230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355776, 30.177721, 35.444221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708748, 0.664985, 0.235523,
		-0.582573, 0.363425, 0.727001,
		0.397850, -0.652470, 0.644979,
		30.475130, 29.981979, 35.637714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382076, 30.751200, 35.856056>,  <30.196636, 30.438709, 35.186230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382076, 30.751200, 35.856056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616915, 30.427397, 35.854431>,  <30.757818, 30.233116, 35.853455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616915, 30.427397, 35.854431>,  <30.382076, 30.751200, 35.856056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616915, 30.427397, 35.854431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793620, 0.574572, 0.200089,
		-0.159637, -0.120699, 0.979769,
		0.587098, -0.809506, -0.004067,
		30.793045, 30.184546, 35.853210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736540, 30.725677, 36.483013>,  <30.382076, 30.751200, 35.856056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736540, 30.725677, 36.483013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958342, 30.514091, 36.226040>,  <31.091423, 30.387140, 36.071857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958342, 30.514091, 36.226040>,  <30.736540, 30.725677, 36.483013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958342, 30.514091, 36.226040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821201, 0.472805, 0.319508,
		0.134736, -0.704735, 0.696560,
		0.554505, -0.528966, -0.642432,
		31.124693, 30.355402, 36.033310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265345, 31.241070, 36.260914>,  <30.736540, 30.725677, 36.483013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265345, 31.241070, 36.260914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350752, 31.480551, 35.952118>,  <31.401997, 31.624239, 35.766842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350752, 31.480551, 35.952118>,  <31.265345, 31.241070, 36.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350752, 31.480551, 35.952118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888464, 0.209601, 0.408287,
		0.406252, -0.773060, -0.487173,
		0.213518, 0.598703, -0.771987,
		31.414808, 31.660162, 35.720520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980560, 31.170330, 35.852158>,  <31.265345, 31.241070, 36.260914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980560, 31.170330, 35.852158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882051, 31.557596, 35.834225>,  <31.822947, 31.789955, 35.823467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882051, 31.557596, 35.834225>,  <31.980560, 31.170330, 35.852158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882051, 31.557596, 35.834225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812739, 0.231495, 0.534663,
		0.528019, 0.095238, -0.843875,
		-0.246273, 0.968163, -0.044830,
		31.808170, 31.848045, 35.820774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444897, 31.772936, 35.631695>,  <31.980560, 31.170330, 35.852158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444897, 31.772936, 35.631695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172966, 31.985823, 35.833519>,  <32.009808, 32.113556, 35.954613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172966, 31.985823, 35.833519>,  <32.444897, 31.772936, 35.631695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172966, 31.985823, 35.833519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733172, 0.477068, 0.484630,
		0.017220, 0.699392, -0.714530,
		-0.679826, 0.532218, 0.504560,
		31.969019, 32.145489, 35.984886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134178, 31.964138, 35.250877>,  <32.444897, 31.772936, 35.631695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134178, 31.964138, 35.250877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337158, 31.623619, 35.197533>,  <33.458946, 31.419308, 35.165527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337158, 31.623619, 35.197533>,  <33.134178, 31.964138, 35.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337158, 31.623619, 35.197533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331533, 0.050034, 0.942116,
		-0.795348, -0.522292, 0.307623,
		0.507452, -0.851297, -0.133363,
		33.489395, 31.368229, 35.157524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047832, 31.527218, 35.928612>,  <33.134178, 31.964138, 35.250877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047832, 31.527218, 35.928612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367054, 31.363367, 35.751835>,  <33.558586, 31.265057, 35.645767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367054, 31.363367, 35.751835>,  <33.047832, 31.527218, 35.928612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367054, 31.363367, 35.751835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557446, 0.223352, 0.799605,
		-0.228833, -0.884487, 0.406593,
		0.798054, -0.409629, -0.441944,
		33.606468, 31.240479, 35.619251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145660, 30.741503, 35.954212>,  <33.047832, 31.527218, 35.928612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145660, 30.741503, 35.954212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489944, 30.707605, 35.753414>,  <33.696514, 30.687267, 35.632935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489944, 30.707605, 35.753414>,  <33.145660, 30.741503, 35.954212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489944, 30.707605, 35.753414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507913, 0.210056, 0.835404,
		0.034651, -0.974010, 0.223840,
		0.860711, -0.084744, -0.501991,
		33.748158, 30.682182, 35.602818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637379, 30.265385, 36.279163>,  <33.145660, 30.741503, 35.954212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637379, 30.265385, 36.279163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890686, 30.484348, 36.060326>,  <34.042671, 30.615726, 35.929024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890686, 30.484348, 36.060326>,  <33.637379, 30.265385, 36.279163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890686, 30.484348, 36.060326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586829, 0.121250, 0.800581,
		0.504580, -0.828036, -0.244451,
		0.633270, 0.547408, -0.547096,
		34.080666, 30.648571, 35.896198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260071, 30.106680, 36.495705>,  <33.637379, 30.265385, 36.279163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260071, 30.106680, 36.495705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287220, 30.480350, 36.355587>,  <34.303509, 30.704554, 36.271519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287220, 30.480350, 36.355587>,  <34.260071, 30.106680, 36.495705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287220, 30.480350, 36.355587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476234, 0.278181, 0.834156,
		0.876695, -0.223440, -0.426005,
		0.067877, 0.934179, -0.350290,
		34.307583, 30.760605, 36.250500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952873, 30.189329, 36.640781>,  <34.260071, 30.106680, 36.495705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952873, 30.189329, 36.640781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811913, 30.560406, 36.591457>,  <34.727337, 30.783051, 36.561863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811913, 30.560406, 36.591457>,  <34.952873, 30.189329, 36.640781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811913, 30.560406, 36.591457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579711, 0.319830, 0.749429,
		0.734677, 0.192611, -0.650500,
		-0.352398, 0.927691, -0.123313,
		34.706192, 30.838713, 36.554462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530029, 30.738497, 36.682404>,  <34.952873, 30.189329, 36.640781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530029, 30.738497, 36.682404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212681, 30.962046, 36.778923>,  <35.022270, 31.096174, 36.836834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212681, 30.962046, 36.778923>,  <35.530029, 30.738497, 36.682404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212681, 30.962046, 36.778923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569071, 0.540168, 0.619982,
		0.216148, 0.629191, -0.746591,
		-0.793372, 0.558871, 0.241298,
		34.974670, 31.129707, 36.851311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670902, 31.437557, 36.672768>,  <35.530029, 30.738497, 36.682404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670902, 31.437557, 36.672768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350086, 31.426521, 36.911419>,  <35.157597, 31.419899, 37.054611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350086, 31.426521, 36.911419>,  <35.670902, 31.437557, 36.672768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350086, 31.426521, 36.911419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481570, 0.561016, 0.673314,
		-0.353295, 0.827345, -0.436672,
		-0.802043, -0.027590, 0.596629,
		35.109474, 31.418243, 37.090408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598518, 32.113007, 36.822544>,  <35.670902, 31.437557, 36.672768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598518, 32.113007, 36.822544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449474, 31.868414, 37.101757>,  <35.360046, 31.721659, 37.269287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449474, 31.868414, 37.101757>,  <35.598518, 32.113007, 36.822544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449474, 31.868414, 37.101757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151958, 0.701847, 0.695931,
		-0.915462, 0.365383, -0.168596,
		-0.372610, -0.611479, 0.698037,
		35.337692, 31.684971, 37.311169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189583, 32.521729, 37.301544>,  <35.598518, 32.113007, 36.822544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189583, 32.521729, 37.301544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304016, 32.186970, 37.488201>,  <35.372677, 31.986115, 37.600197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304016, 32.186970, 37.488201>,  <35.189583, 32.521729, 37.301544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304016, 32.186970, 37.488201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183455, 0.525831, 0.830570,
		-0.940479, -0.152003, 0.303964,
		0.286083, -0.836897, 0.466647,
		35.389843, 31.935900, 37.628197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937214, 32.363609, 38.027424>,  <35.189583, 32.521729, 37.301544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937214, 32.363609, 38.027424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288429, 32.173149, 38.008121>,  <35.499157, 32.058872, 37.996540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288429, 32.173149, 38.008121>,  <34.937214, 32.363609, 38.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288429, 32.173149, 38.008121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316824, 0.502722, 0.804296,
		-0.358707, -0.721492, 0.592265,
		0.878039, -0.476151, -0.048256,
		35.551842, 32.030304, 37.993645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138371, 32.068478, 38.696884>,  <34.937214, 32.363609, 38.027424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138371, 32.068478, 38.696884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454132, 32.177254, 38.476742>,  <35.643589, 32.242519, 38.344658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454132, 32.177254, 38.476742>,  <35.138371, 32.068478, 38.696884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454132, 32.177254, 38.476742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391382, 0.467732, 0.792494,
		0.472978, -0.840980, 0.262763,
		0.789374, 0.271992, -0.550372,
		35.690952, 32.258835, 38.311634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747849, 31.730236, 38.989891>,  <35.138371, 32.068478, 38.696884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747849, 31.730236, 38.989891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789497, 32.085552, 38.810959>,  <35.814487, 32.298740, 38.703602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789497, 32.085552, 38.810959>,  <35.747849, 31.730236, 38.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789497, 32.085552, 38.810959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531350, 0.330521, 0.780015,
		0.840730, -0.318901, -0.437579,
		0.104118, 0.888289, -0.447327,
		35.820732, 32.352039, 38.676762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449123, 31.001694, 39.097160>,  <35.747849, 31.730236, 38.989891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449123, 31.001694, 39.097160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351772, 30.788563, 39.421349>,  <35.293362, 30.660685, 39.615860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351772, 30.788563, 39.421349>,  <35.449123, 31.001694, 39.097160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351772, 30.788563, 39.421349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804101, -0.356428, -0.475794,
		0.542391, -0.767498, -0.341700,
		-0.243380, -0.532828, 0.810469,
		35.278759, 30.628714, 39.664490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380878, 31.158268, 38.342213>,  <35.449123, 31.001694, 39.097160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380878, 31.158268, 38.342213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274380, 31.485233, 38.137882>,  <35.210480, 31.681414, 38.015285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274380, 31.485233, 38.137882>,  <35.380878, 31.158268, 38.342213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274380, 31.485233, 38.137882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507050, -0.569480, -0.646988,
		-0.819762, 0.086753, 0.566095,
		-0.266251, 0.817415, -0.510826,
		35.194504, 31.730457, 37.984634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589748, 31.032076, 38.121853>,  <35.380878, 31.158268, 38.342213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589748, 31.032076, 38.121853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737534, 31.330254, 37.899929>,  <34.826206, 31.509161, 37.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737534, 31.330254, 37.899929>,  <34.589748, 31.032076, 38.121853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737534, 31.330254, 37.899929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575467, -0.285236, -0.766471,
		-0.729612, 0.602456, 0.323594,
		0.369465, 0.745444, -0.554805,
		34.848373, 31.553886, 37.733486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988964, 31.475359, 37.752872>,  <34.589748, 31.032076, 38.121853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988964, 31.475359, 37.752872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347221, 31.458340, 37.575779>,  <34.562176, 31.448128, 37.469521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347221, 31.458340, 37.575779>,  <33.988964, 31.475359, 37.752872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347221, 31.458340, 37.575779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434482, -0.296622, -0.850436,
		-0.095143, 0.954047, -0.284152,
		0.895641, -0.042546, -0.442738,
		34.615913, 31.445576, 37.442959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973331, 31.794874, 37.058346>,  <33.988964, 31.475359, 37.752872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973331, 31.794874, 37.058346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272739, 31.536173, 36.999786>,  <34.452385, 31.380953, 36.964649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272739, 31.536173, 36.999786>,  <33.973331, 31.794874, 37.058346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272739, 31.536173, 36.999786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423565, -0.296454, -0.855984,
		0.510208, 0.702729, -0.495842,
		0.748519, -0.646751, -0.146398,
		34.497295, 31.342148, 36.955868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119415, 31.969236, 36.493073>,  <33.973331, 31.794874, 37.058346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119415, 31.969236, 36.493073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316547, 31.622122, 36.518578>,  <34.434826, 31.413853, 36.533878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316547, 31.622122, 36.518578>,  <34.119415, 31.969236, 36.493073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316547, 31.622122, 36.518578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225426, -0.198108, -0.953906,
		0.840419, 0.455738, -0.293255,
		0.492828, -0.867788, 0.063759,
		34.464397, 31.361786, 36.537704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550716, 31.994932, 35.944645>,  <34.119415, 31.969236, 36.493073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550716, 31.994932, 35.944645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461933, 31.618153, 36.045410>,  <34.408661, 31.392084, 36.105869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461933, 31.618153, 36.045410>,  <34.550716, 31.994932, 35.944645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461933, 31.618153, 36.045410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379679, -0.154473, -0.912130,
		0.898096, -0.298104, -0.323352,
		-0.221961, -0.941951, 0.251916,
		34.395344, 31.335567, 36.120983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877148, 31.441229, 35.451244>,  <34.550716, 31.994932, 35.944645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877148, 31.441229, 35.451244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543827, 31.298908, 35.620483>,  <34.343834, 31.213516, 35.722027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543827, 31.298908, 35.620483>,  <34.877148, 31.441229, 35.451244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543827, 31.298908, 35.620483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350860, -0.251057, -0.902146,
		0.427207, -0.900209, 0.084369,
		-0.833301, -0.355801, 0.423101,
		34.293835, 31.192167, 35.747414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677006, 30.712988, 35.146572>,  <34.877148, 31.441229, 35.451244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677006, 30.712988, 35.146572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336174, 30.867414, 35.287949>,  <34.131676, 30.960070, 35.372772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336174, 30.867414, 35.287949>,  <34.677006, 30.712988, 35.146572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336174, 30.867414, 35.287949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447651, -0.187574, -0.874314,
		-0.271251, -0.903198, 0.332651,
		-0.852075, 0.386070, 0.353438,
		34.080551, 30.983234, 35.393982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088425, 30.220764, 35.031593>,  <34.677006, 30.712988, 35.146572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088425, 30.220764, 35.031593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923920, 30.582077, 35.080486>,  <33.825214, 30.798864, 35.109821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923920, 30.582077, 35.080486>,  <34.088425, 30.220764, 35.031593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923920, 30.582077, 35.080486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585368, -0.158931, -0.795038,
		-0.698717, -0.398524, 0.594115,
		-0.411265, 0.903282, 0.122236,
		33.800541, 30.853062, 35.117157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446465, 30.067284, 34.961079>,  <34.088425, 30.220764, 35.031593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446465, 30.067284, 34.961079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522644, 30.452669, 34.885750>,  <33.568352, 30.683901, 34.840553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522644, 30.452669, 34.885750>,  <33.446465, 30.067284, 34.961079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522644, 30.452669, 34.885750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459216, -0.082115, -0.884521,
		-0.867670, 0.254933, 0.426800,
		0.190447, 0.963466, -0.188318,
		33.579777, 30.741709, 34.829254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947086, 30.189861, 34.552624>,  <33.446465, 30.067284, 34.961079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947086, 30.189861, 34.552624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184395, 30.509634, 34.514793>,  <33.326778, 30.701498, 34.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184395, 30.509634, 34.514793>,  <32.947086, 30.189861, 34.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184395, 30.509634, 34.514793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248497, 0.070122, -0.966091,
		-0.765692, 0.596651, 0.240257,
		0.593267, 0.799431, -0.094574,
		33.362373, 30.749464, 34.486420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544479, 30.718756, 34.293697>,  <32.947086, 30.189861, 34.552624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544479, 30.718756, 34.293697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918015, 30.832783, 34.207272>,  <33.142136, 30.901199, 34.155415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918015, 30.832783, 34.207272>,  <32.544479, 30.718756, 34.293697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918015, 30.832783, 34.207272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290396, 0.251500, -0.923265,
		-0.208850, 0.924924, 0.317642,
		0.933837, 0.285066, -0.216069,
		33.198166, 30.918303, 34.142452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522045, 31.396976, 33.904602>,  <32.544479, 30.718756, 34.293697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522045, 31.396976, 33.904602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869892, 31.216257, 33.824963>,  <33.078602, 31.107826, 33.777180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869892, 31.216257, 33.824963>,  <32.522045, 31.396976, 33.904602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869892, 31.216257, 33.824963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026769, 0.359513, -0.932756,
		0.492995, 0.816473, 0.300546,
		0.869620, -0.451798, -0.199094,
		33.130779, 31.080717, 33.765236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050663, 31.825577, 33.494522>,  <32.522045, 31.396976, 33.904602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050663, 31.825577, 33.494522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147568, 31.441225, 33.440830>,  <33.205711, 31.210613, 33.408615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147568, 31.441225, 33.440830>,  <33.050663, 31.825577, 33.494522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147568, 31.441225, 33.440830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187682, 0.182155, -0.965192,
		0.951884, 0.208639, 0.224470,
		0.242265, -0.960879, -0.134232,
		33.220249, 31.152962, 33.400562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655701, 31.805756, 33.045631>,  <33.050663, 31.825577, 33.494522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655701, 31.805756, 33.045631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490166, 31.441992, 33.029049>,  <33.390846, 31.223734, 33.019100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490166, 31.441992, 33.029049>,  <33.655701, 31.805756, 33.045631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490166, 31.441992, 33.029049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176669, -0.035555, -0.983628,
		0.893045, -0.414382, 0.175378,
		-0.413833, -0.909408, -0.041456,
		33.366016, 31.169168, 33.016613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081596, 31.367756, 32.654644>,  <33.655701, 31.805756, 33.045631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081596, 31.367756, 32.654644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722111, 31.193186, 32.637489>,  <33.506420, 31.088444, 32.627197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722111, 31.193186, 32.637489>,  <34.081596, 31.367756, 32.654644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722111, 31.193186, 32.637489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022490, 0.051796, -0.998404,
		0.437952, -0.898247, -0.036735,
		-0.898717, -0.436427, -0.042886,
		33.452496, 31.062258, 32.624622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160576, 30.882477, 32.045639>,  <34.081596, 31.367756, 32.654644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160576, 30.882477, 32.045639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771523, 30.945887, 32.113594>,  <33.538090, 30.983932, 32.154366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771523, 30.945887, 32.113594>,  <34.160576, 30.882477, 32.045639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771523, 30.945887, 32.113594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168250, 0.023794, -0.985457,
		-0.160264, -0.987068, 0.003530,
		-0.972629, 0.158527, 0.169888,
		33.479733, 30.993444, 32.164562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835911, 30.581398, 31.552179>,  <34.160576, 30.882477, 32.045639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835911, 30.581398, 31.552179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509785, 30.781282, 31.669174>,  <33.314110, 30.901213, 31.739370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509785, 30.781282, 31.669174>,  <33.835911, 30.581398, 31.552179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509785, 30.781282, 31.669174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239855, 0.168281, -0.956112,
		-0.527001, -0.849688, -0.017343,
		-0.815316, 0.499712, 0.292486,
		33.265190, 30.931196, 31.756920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252022, 30.330475, 31.083286>,  <33.835911, 30.581398, 31.552179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252022, 30.330475, 31.083286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112675, 30.675491, 31.230072>,  <33.029068, 30.882502, 31.318144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112675, 30.675491, 31.230072>,  <33.252022, 30.330475, 31.083286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112675, 30.675491, 31.230072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411049, 0.211265, -0.886795,
		-0.842424, -0.459771, 0.280950,
		-0.348368, 0.862542, 0.366963,
		33.008163, 30.934254, 31.340160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586494, 30.363489, 30.666374>,  <33.252022, 30.330475, 31.083286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586494, 30.363489, 30.666374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653854, 30.717649, 30.839676>,  <32.694271, 30.930145, 30.943657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653854, 30.717649, 30.839676>,  <32.586494, 30.363489, 30.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653854, 30.717649, 30.839676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468226, 0.458630, -0.755264,
		-0.867414, -0.075677, 0.491799,
		0.168398, 0.885399, 0.433256,
		32.704372, 30.983269, 30.969652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926268, 30.710949, 30.874466>,  <32.586494, 30.363489, 30.666374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926268, 30.710949, 30.874466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191376, 31.005970, 30.822695>,  <32.350441, 31.182981, 30.791632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191376, 31.005970, 30.822695>,  <31.926268, 30.710949, 30.874466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191376, 31.005970, 30.822695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611977, 0.433894, -0.661227,
		-0.431530, 0.517451, 0.738936,
		0.662772, 0.737551, -0.129429,
		32.390209, 31.227236, 30.783865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587223, 31.379984, 30.763391>,  <31.926268, 30.710949, 30.874466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587223, 31.379984, 30.763391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947004, 31.481474, 30.621063>,  <32.162872, 31.542368, 30.535666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947004, 31.481474, 30.621063>,  <31.587223, 31.379984, 30.763391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947004, 31.481474, 30.621063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436925, 0.505344, -0.744126,
		-0.008992, 0.824773, 0.565392,
		0.899453, 0.253725, -0.355820,
		32.216839, 31.557592, 30.514317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653406, 32.135330, 30.767450>,  <31.587223, 31.379984, 30.763391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653406, 32.135330, 30.767450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873396, 31.962605, 30.481495>,  <32.005390, 31.858969, 30.309921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873396, 31.962605, 30.481495>,  <31.653406, 32.135330, 30.767450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873396, 31.962605, 30.481495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434544, 0.583031, -0.686474,
		0.713232, 0.688193, 0.133008,
		0.549974, -0.431817, -0.714886,
		32.038387, 31.833059, 30.267029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774143, 32.640846, 30.288685>,  <31.653406, 32.135330, 30.767450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774143, 32.640846, 30.288685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875408, 32.321568, 30.070038>,  <31.936167, 32.130001, 29.938850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.875408, 32.321568, 30.070038>,  <31.774143, 32.640846, 30.288685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875408, 32.321568, 30.070038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157252, 0.523557, -0.837352,
		0.954557, 0.297944, 0.007029,
		0.253164, -0.798196, -0.546618,
		31.951357, 32.082108, 29.906052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154652, 32.887402, 29.768988>,  <31.774143, 32.640846, 30.288685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154652, 32.887402, 29.768988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015759, 32.536625, 29.636076>,  <31.932423, 32.326160, 29.556328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015759, 32.536625, 29.636076>,  <32.154652, 32.887402, 29.768988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015759, 32.536625, 29.636076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301022, 0.439805, -0.846143,
		0.888154, -0.193782, -0.416691,
		-0.347230, -0.876938, -0.332282,
		31.911589, 32.273544, 29.536392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353760, 32.791710, 29.035351>,  <32.154652, 32.887402, 29.768988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353760, 32.791710, 29.035351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051357, 32.530758, 29.056717>,  <31.869915, 32.374187, 29.069536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051357, 32.530758, 29.056717>,  <32.353760, 32.791710, 29.035351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051357, 32.530758, 29.056717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218637, 0.174760, -0.960030,
		0.616969, -0.737468, -0.274754,
		-0.756007, -0.652380, 0.053416,
		31.824554, 32.335045, 29.072742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322651, 32.505199, 28.347517>,  <32.353760, 32.791710, 29.035351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322651, 32.505199, 28.347517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974754, 32.430687, 28.530313>,  <31.766016, 32.385979, 28.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974754, 32.430687, 28.530313>,  <32.322651, 32.505199, 28.347517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974754, 32.430687, 28.530313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484965, 0.151146, -0.861373,
		0.091375, -0.970803, -0.221794,
		-0.869747, -0.186270, 0.456994,
		31.713831, 32.374802, 28.667412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900490, 32.185696, 27.880909>,  <32.322651, 32.505199, 28.347517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900490, 32.185696, 27.880909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637791, 32.333637, 28.143782>,  <31.480171, 32.422401, 28.301506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637791, 32.333637, 28.143782>,  <31.900490, 32.185696, 27.880909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637791, 32.333637, 28.143782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641649, 0.183778, -0.744656,
		-0.396191, -0.910732, 0.116621,
		-0.656749, 0.369856, 0.657182,
		31.440765, 32.444595, 28.340937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291203, 31.788548, 27.756071>,  <31.900490, 32.185696, 27.880909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291203, 31.788548, 27.756071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171377, 32.130466, 27.925581>,  <31.099482, 32.335617, 28.027287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171377, 32.130466, 27.925581>,  <31.291203, 31.788548, 27.756071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171377, 32.130466, 27.925581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577769, 0.190933, -0.793554,
		-0.759239, -0.482563, 0.436679,
		-0.299563, 0.854797, 0.423773,
		31.081509, 32.386906, 28.052713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568733, 31.818434, 27.576111>,  <31.291203, 31.788548, 27.756071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568733, 31.818434, 27.576111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651413, 32.197948, 27.671679>,  <30.701021, 32.425655, 27.729019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651413, 32.197948, 27.671679>,  <30.568733, 31.818434, 27.576111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651413, 32.197948, 27.671679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458101, 0.309623, -0.833233,
		-0.864534, 0.062778, 0.498638,
		0.206698, 0.948785, 0.238921,
		30.713423, 32.482582, 27.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933893, 32.093815, 27.710367>,  <30.568733, 31.818434, 27.576111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933893, 32.093815, 27.710367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190310, 32.389465, 27.627655>,  <30.344160, 32.566856, 27.578028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190310, 32.389465, 27.627655>,  <29.933893, 32.093815, 27.710367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190310, 32.389465, 27.627655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479646, 0.175475, -0.859737,
		-0.599169, 0.650310, 0.467006,
		0.641043, 0.739125, -0.206780,
		30.382622, 32.611202, 27.565620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527369, 32.532166, 27.413321>,  <29.933893, 32.093815, 27.710367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527369, 32.532166, 27.413321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882893, 32.666874, 27.288998>,  <30.096207, 32.747700, 27.214403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882893, 32.666874, 27.288998>,  <29.527369, 32.532166, 27.413321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882893, 32.666874, 27.288998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405638, 0.262553, -0.875513,
		-0.213241, 0.904242, 0.369966,
		0.888812, 0.336768, -0.310807,
		30.149536, 32.767906, 27.195755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455107, 33.159256, 26.987961>,  <29.527369, 32.532166, 27.413321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455107, 33.159256, 26.987961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835093, 33.080524, 26.890945>,  <30.063084, 33.033283, 26.832737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835093, 33.080524, 26.890945>,  <29.455107, 33.159256, 26.987961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835093, 33.080524, 26.890945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200944, 0.209373, -0.956966,
		0.239143, 0.957821, 0.159345,
		0.949964, -0.196832, -0.242539,
		30.120081, 33.021477, 26.818184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700985, 33.725994, 26.698221>,  <29.455107, 33.159256, 26.987961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700985, 33.725994, 26.698221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946566, 33.450943, 26.543184>,  <30.093914, 33.285912, 26.450163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946566, 33.450943, 26.543184>,  <29.700985, 33.725994, 26.698221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946566, 33.450943, 26.543184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134119, 0.393016, -0.909698,
		0.777867, 0.610493, 0.149068,
		0.613951, -0.687631, -0.387593,
		30.130751, 33.244652, 26.426907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161888, 34.080528, 26.194193>,  <29.700985, 33.725994, 26.698221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161888, 34.080528, 26.194193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134010, 33.696266, 26.086649>,  <30.117283, 33.465710, 26.022123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134010, 33.696266, 26.086649>,  <30.161888, 34.080528, 26.194193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134010, 33.696266, 26.086649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016689, 0.270601, -0.962547,
		0.997429, -0.062599, -0.034892,
		-0.069696, -0.960654, -0.268861,
		30.113102, 33.408070, 26.005991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650152, 34.071232, 25.654076>,  <30.161888, 34.080528, 26.194193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650152, 34.071232, 25.654076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381323, 33.777866, 25.613241>,  <30.220026, 33.601849, 25.588739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381323, 33.777866, 25.613241>,  <30.650152, 34.071232, 25.654076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381323, 33.777866, 25.613241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196605, 0.309654, -0.930301,
		0.713908, -0.605159, -0.352303,
		-0.672073, -0.733414, -0.102088,
		30.179701, 33.557842, 25.582615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901838, 33.640881, 25.042847>,  <30.650152, 34.071232, 25.654076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901838, 33.640881, 25.042847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509474, 33.614902, 25.116163>,  <30.274055, 33.599316, 25.160152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509474, 33.614902, 25.116163>,  <30.901838, 33.640881, 25.042847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509474, 33.614902, 25.116163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194370, 0.355647, -0.914186,
		-0.005813, -0.932361, -0.361482,
		-0.980911, -0.064947, 0.183291,
		30.215200, 33.595417, 25.171150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808220, 33.126999, 24.571953>,  <30.901838, 33.640881, 25.042847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808220, 33.126999, 24.571953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468046, 33.307343, 24.680387>,  <30.263941, 33.415546, 24.745447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468046, 33.307343, 24.680387>,  <30.808220, 33.126999, 24.571953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468046, 33.307343, 24.680387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094033, 0.376722, -0.921541,
		-0.517607, -0.809203, -0.277983,
		-0.850436, 0.450857, 0.271086,
		30.212915, 33.442600, 24.761713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306314, 32.914143, 24.069349>,  <30.808220, 33.126999, 24.571953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306314, 32.914143, 24.069349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145014, 33.246387, 24.222958>,  <30.048233, 33.445736, 24.315123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.145014, 33.246387, 24.222958>,  <30.306314, 32.914143, 24.069349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145014, 33.246387, 24.222958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256249, 0.300367, -0.918758,
		-0.878478, -0.468896, 0.091720,
		-0.403252, 0.830612, 0.384020,
		30.024038, 33.495571, 24.338163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641010, 32.953579, 23.727497>,  <30.306314, 32.914143, 24.069349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641010, 32.953579, 23.727497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694592, 33.319668, 23.879511>,  <29.726740, 33.539322, 23.970720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694592, 33.319668, 23.879511>,  <29.641010, 32.953579, 23.727497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694592, 33.319668, 23.879511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496140, 0.393905, -0.773747,
		-0.857848, -0.084907, 0.506841,
		0.133951, 0.915221, 0.380036,
		29.734777, 33.594234, 23.993523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178432, 33.394390, 23.342760>,  <29.641010, 32.953579, 23.727497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178432, 33.394390, 23.342760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370777, 33.682781, 23.542343>,  <29.486183, 33.855816, 23.662092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370777, 33.682781, 23.542343>,  <29.178432, 33.394390, 23.342760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370777, 33.682781, 23.542343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371134, 0.682944, -0.629164,
		-0.794377, 0.117359, 0.595980,
		0.480859, 0.720982, 0.498958,
		29.515036, 33.899075, 23.692030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762283, 33.896133, 23.826479>,  <29.178432, 33.394390, 23.342760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762283, 33.896133, 23.826479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097603, 34.052422, 23.674379>,  <29.298796, 34.146194, 23.583118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.097603, 34.052422, 23.674379>,  <28.762283, 33.896133, 23.826479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097603, 34.052422, 23.674379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523576, 0.771437, -0.361599,
		0.152055, 0.502218, 0.851267,
		0.838300, 0.390720, -0.380250,
		29.349092, 34.169636, 23.560305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607672, 34.637733, 23.795248>,  <28.762283, 33.896133, 23.826479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607672, 34.637733, 23.795248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930279, 34.606045, 23.560896>,  <29.123842, 34.587032, 23.420284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930279, 34.606045, 23.560896>,  <28.607672, 34.637733, 23.795248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930279, 34.606045, 23.560896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301624, 0.797177, -0.523003,
		0.508482, 0.598526, 0.619042,
		0.806517, -0.079219, -0.585880,
		29.172234, 34.582279, 23.385132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023180, 35.217594, 23.855730>,  <28.607672, 34.637733, 23.795248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023180, 35.217594, 23.855730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134823, 35.091835, 23.492798>,  <29.201809, 35.016380, 23.275038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134823, 35.091835, 23.492798>,  <29.023180, 35.217594, 23.855730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134823, 35.091835, 23.492798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142319, 0.920904, -0.362880,
		0.949655, 0.230414, 0.212287,
		0.279108, -0.314398, -0.907333,
		29.218555, 34.997517, 23.220598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468107, 35.669037, 23.621046>,  <29.023180, 35.217594, 23.855730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468107, 35.669037, 23.621046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364525, 35.475636, 23.286581>,  <29.302376, 35.359596, 23.085901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364525, 35.475636, 23.286581>,  <29.468107, 35.669037, 23.621046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364525, 35.475636, 23.286581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144836, 0.875343, -0.461300,
		0.954968, 0.001650, -0.296704,
		-0.258956, -0.483500, -0.836164,
		29.286839, 35.330585, 23.035732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564791, 36.132179, 23.062689>,  <29.468107, 35.669037, 23.621046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564791, 36.132179, 23.062689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344501, 35.868893, 22.857374>,  <29.212328, 35.710922, 22.734186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344501, 35.868893, 22.857374>,  <29.564791, 36.132179, 23.062689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344501, 35.868893, 22.857374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261994, 0.720178, -0.642419,
		0.792505, -0.219317, -0.569066,
		-0.550722, -0.658212, -0.513285,
		29.179285, 35.671429, 22.703388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663012, 36.412884, 22.344738>,  <29.564791, 36.132179, 23.062689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663012, 36.412884, 22.344738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332319, 36.189869, 22.374857>,  <29.133904, 36.056061, 22.392927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332319, 36.189869, 22.374857>,  <29.663012, 36.412884, 22.344738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332319, 36.189869, 22.374857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506943, 0.680202, -0.529466,
		0.243981, -0.475896, -0.844983,
		-0.826730, -0.557538, 0.075296,
		29.084301, 36.022606, 22.397446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441542, 36.239658, 21.679762>,  <29.663012, 36.412884, 22.344738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441542, 36.239658, 21.679762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121597, 36.225002, 21.919388>,  <28.929630, 36.216209, 22.063164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121597, 36.225002, 21.919388>,  <29.441542, 36.239658, 21.679762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121597, 36.225002, 21.919388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459987, 0.678581, -0.572660,
		-0.385530, -0.733611, -0.559626,
		-0.799861, -0.036643, 0.599065,
		28.881639, 36.214008, 22.099108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942507, 36.296593, 21.213428>,  <29.441542, 36.239658, 21.679762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942507, 36.296593, 21.213428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739588, 36.372047, 21.549776>,  <28.617836, 36.417320, 21.751585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739588, 36.372047, 21.549776>,  <28.942507, 36.296593, 21.213428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739588, 36.372047, 21.549776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495848, 0.734154, -0.463846,
		-0.704828, -0.652252, -0.278899,
		-0.507299, 0.188640, 0.840870,
		28.587399, 36.428638, 21.802036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156403, 36.227013, 21.002003>,  <28.942507, 36.296593, 21.213428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156403, 36.227013, 21.002003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185719, 36.424721, 21.348488>,  <28.203308, 36.543346, 21.556379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185719, 36.424721, 21.348488>,  <28.156403, 36.227013, 21.002003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185719, 36.424721, 21.348488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738549, 0.610572, -0.285913,
		-0.670204, -0.618785, 0.409795,
		0.073290, 0.494274, 0.866211,
		28.207706, 36.573002, 21.608351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464128, 36.374664, 21.132528>,  <28.156403, 36.227013, 21.002003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464128, 36.374664, 21.132528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643669, 36.647591, 21.363342>,  <27.751394, 36.811348, 21.501831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643669, 36.647591, 21.363342>,  <27.464128, 36.374664, 21.132528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643669, 36.647591, 21.363342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518424, 0.724793, -0.453774,
		-0.727851, -0.095471, 0.679057,
		0.448854, 0.682319, 0.577036,
		27.778326, 36.852287, 21.536453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825085, 36.815338, 21.350857>,  <27.464128, 36.374664, 21.132528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825085, 36.815338, 21.350857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188547, 36.982204, 21.357944>,  <27.406624, 37.082325, 21.362198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188547, 36.982204, 21.357944>,  <26.825085, 36.815338, 21.350857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188547, 36.982204, 21.357944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373706, 0.831449, -0.411139,
		-0.186248, 0.366962, 0.911400,
		0.908656, 0.417169, 0.017720,
		27.461143, 37.107357, 21.363260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813177, 37.470509, 21.848526>,  <26.825085, 36.815338, 21.350857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813177, 37.470509, 21.848526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067541, 37.475807, 21.539865>,  <27.220160, 37.478989, 21.354670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067541, 37.475807, 21.539865>,  <26.813177, 37.470509, 21.848526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067541, 37.475807, 21.539865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348818, 0.896834, -0.272056,
		0.688438, 0.442168, 0.574927,
		0.635908, 0.013251, -0.771651,
		27.258314, 37.479782, 21.308371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079334, 38.179081, 21.822687>,  <26.813177, 37.470509, 21.848526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079334, 38.179081, 21.822687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135775, 38.030289, 21.455706>,  <27.169638, 37.941013, 21.235518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135775, 38.030289, 21.455706>,  <27.079334, 38.179081, 21.822687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135775, 38.030289, 21.455706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151239, 0.907748, -0.391305,
		0.978375, 0.193968, 0.071825,
		0.141100, -0.371981, -0.917454,
		27.178104, 37.918694, 21.180470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401012, 37.914024, 22.447966>,  <27.079334, 38.179081, 21.822687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401012, 37.914024, 22.447966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310509, 38.302036, 22.412525>,  <27.256207, 38.534843, 22.391262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310509, 38.302036, 22.412525>,  <27.401012, 37.914024, 22.447966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310509, 38.302036, 22.412525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839034, -0.240289, -0.488142,
		-0.494802, -0.036108, 0.868255,
		-0.226258, 0.970030, -0.088599,
		27.242632, 38.593044, 22.385946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657993, 37.867710, 22.540876>,  <27.401012, 37.914024, 22.447966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657993, 37.867710, 22.540876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775404, 38.201496, 22.354324>,  <26.845850, 38.401768, 22.242393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775404, 38.201496, 22.354324>,  <26.657993, 37.867710, 22.540876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775404, 38.201496, 22.354324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721081, -0.127025, -0.681107,
		-0.627601, 0.536223, 0.564431,
		0.293529, 0.834464, -0.466381,
		26.863462, 38.451836, 22.214411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079395, 38.131504, 22.157381>,  <26.657993, 37.867710, 22.540876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079395, 38.131504, 22.157381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383320, 38.336117, 21.996868>,  <26.565674, 38.458885, 21.900560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383320, 38.336117, 21.996868>,  <26.079395, 38.131504, 22.157381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383320, 38.336117, 21.996868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494870, 0.054737, -0.867241,
		-0.421655, 0.857521, 0.294730,
		0.759810, 0.511530, -0.401281,
		26.611263, 38.489574, 21.876484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234535, 38.907494, 22.313374>,  <26.079395, 38.131504, 22.157381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234535, 38.907494, 22.313374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342045, 38.775646, 21.951355>,  <26.406549, 38.696537, 21.734144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342045, 38.775646, 21.951355>,  <26.234535, 38.907494, 22.313374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342045, 38.775646, 21.951355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373512, 0.830432, -0.413366,
		0.887834, 0.449148, 0.100081,
		0.268773, -0.329619, -0.905048,
		26.422676, 38.676762, 21.679840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646257, 39.303848, 22.028210>,  <26.234535, 38.907494, 22.313374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646257, 39.303848, 22.028210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450840, 39.128193, 21.726618>,  <26.333590, 39.022800, 21.545662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450840, 39.128193, 21.726618>,  <26.646257, 39.303848, 22.028210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450840, 39.128193, 21.726618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174982, 0.895876, -0.408397,
		0.854814, -0.067586, -0.514515,
		-0.488543, -0.439134, -0.753981,
		26.304277, 38.996452, 21.500423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708143, 40.030613, 22.139952>,  <26.646257, 39.303848, 22.028210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708143, 40.030613, 22.139952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885134, 40.385632, 22.088602>,  <26.991329, 40.598640, 22.057793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885134, 40.385632, 22.088602>,  <26.708143, 40.030613, 22.139952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885134, 40.385632, 22.088602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342026, -0.299351, -0.890734,
		-0.828994, 0.350223, -0.436019,
		0.442478, 0.887543, -0.128375,
		27.017878, 40.651894, 22.050089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231596, 39.725098, 22.625050>,  <26.708143, 40.030613, 22.139952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231596, 39.725098, 22.625050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172401, 39.329536, 22.619694>,  <27.136885, 39.092201, 22.616480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172401, 39.329536, 22.619694>,  <27.231596, 39.725098, 22.625050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172401, 39.329536, 22.619694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424814, -0.075785, 0.902103,
		-0.893104, 0.127809, 0.431313,
		-0.147985, -0.988899, -0.013389,
		27.128006, 39.032867, 22.615677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893654, 39.474602, 23.360407>,  <27.231596, 39.725098, 22.625050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893654, 39.474602, 23.360407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121395, 39.227016, 23.143990>,  <27.258039, 39.078465, 23.014139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121395, 39.227016, 23.143990>,  <26.893654, 39.474602, 23.360407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121395, 39.227016, 23.143990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649192, -0.065262, 0.757820,
		-0.504369, -0.782707, 0.364666,
		0.569352, -0.618959, -0.541043,
		27.292200, 39.041328, 22.981676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.055216, 38.989517, 23.846359>,  <26.893654, 39.474602, 23.360407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.055216, 38.989517, 23.846359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305643, 38.910007, 23.544756>,  <27.455900, 38.862301, 23.363794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.305643, 38.910007, 23.544756>,  <27.055216, 38.989517, 23.846359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305643, 38.910007, 23.544756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684018, -0.324254, 0.653437,
		-0.374377, -0.924850, -0.067038,
		0.626068, -0.198776, -0.754007,
		27.493464, 38.850376, 23.318554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220442, 38.240204, 23.842640>,  <27.055216, 38.989517, 23.846359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220442, 38.240204, 23.842640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491377, 38.496227, 23.697565>,  <27.653938, 38.649841, 23.610519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491377, 38.496227, 23.697565>,  <27.220442, 38.240204, 23.842640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491377, 38.496227, 23.697565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643576, -0.276690, 0.713619,
		0.356405, -0.716777, -0.599338,
		0.677337, 0.640057, -0.362686,
		27.694578, 38.688244, 23.588758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727530, 37.828991, 23.718079>,  <27.220442, 38.240204, 23.842640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727530, 37.828991, 23.718079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903877, 38.188011, 23.715672>,  <28.009686, 38.403423, 23.714228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903877, 38.188011, 23.715672>,  <27.727530, 37.828991, 23.718079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903877, 38.188011, 23.715672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673939, -0.326590, 0.662680,
		0.592824, -0.296210, -0.748879,
		0.440869, 0.897551, -0.006017,
		28.036139, 38.457275, 23.713867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558458, 37.728874, 23.644922>,  <27.727530, 37.828991, 23.718079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558458, 37.728874, 23.644922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487165, 38.088615, 23.804619>,  <28.444389, 38.304459, 23.900436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.487165, 38.088615, 23.804619>,  <28.558458, 37.728874, 23.644922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.487165, 38.088615, 23.804619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645207, -0.199523, 0.737494,
		0.742927, 0.389040, -0.544709,
		-0.178233, 0.899354, 0.399243,
		28.433695, 38.358421, 23.924391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157413, 37.851322, 23.931686>,  <28.558458, 37.728874, 23.644922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157413, 37.851322, 23.931686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930202, 38.126911, 24.111757>,  <28.793877, 38.292267, 24.219799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930202, 38.126911, 24.111757>,  <29.157413, 37.851322, 23.931686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930202, 38.126911, 24.111757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530369, -0.111826, 0.840359,
		0.629329, 0.716104, -0.301892,
		-0.568026, 0.688977, 0.450175,
		28.759794, 38.333603, 24.246809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625862, 38.382668, 24.369474>,  <29.157413, 37.851322, 23.931686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625862, 38.382668, 24.369474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254660, 38.399063, 24.517597>,  <29.031939, 38.408901, 24.606470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254660, 38.399063, 24.517597>,  <29.625862, 38.382668, 24.369474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254660, 38.399063, 24.517597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370764, 0.003945, 0.928719,
		0.036605, 0.999152, -0.018857,
		-0.928005, 0.040987, 0.370306,
		28.976257, 38.411358, 24.628689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607346, 39.024109, 24.671631>,  <29.625862, 38.382668, 24.369474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607346, 39.024109, 24.671631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328451, 38.791496, 24.839289>,  <29.161114, 38.651928, 24.939882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328451, 38.791496, 24.839289>,  <29.607346, 39.024109, 24.671631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328451, 38.791496, 24.839289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510060, 0.008378, 0.860098,
		-0.503689, 0.813479, 0.290775,
		-0.697235, -0.581534, 0.419143,
		29.119280, 38.617035, 24.965031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443319, 39.332138, 25.293161>,  <29.607346, 39.024109, 24.671631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443319, 39.332138, 25.293161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302191, 38.959354, 25.326574>,  <29.217514, 38.735683, 25.346622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302191, 38.959354, 25.326574>,  <29.443319, 39.332138, 25.293161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302191, 38.959354, 25.326574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410804, -0.074072, 0.908710,
		-0.840689, 0.354928, 0.408985,
		-0.352821, -0.931955, 0.083534,
		29.196344, 38.679768, 25.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223635, 39.284897, 25.944603>,  <29.443319, 39.332138, 25.293161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223635, 39.284897, 25.944603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235052, 38.898563, 25.841562>,  <29.241903, 38.666763, 25.779737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235052, 38.898563, 25.841562>,  <29.223635, 39.284897, 25.944603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235052, 38.898563, 25.841562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407109, -0.224131, 0.885453,
		-0.912933, -0.130147, 0.386800,
		0.028545, -0.965830, -0.257601,
		29.243616, 38.608814, 25.764282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006668, 38.932846, 26.416187>,  <29.223635, 39.284897, 25.944603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006668, 38.932846, 26.416187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222488, 38.645664, 26.240265>,  <29.351980, 38.473354, 26.134710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222488, 38.645664, 26.240265>,  <29.006668, 38.932846, 26.416187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222488, 38.645664, 26.240265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393337, -0.246919, 0.885617,
		-0.744426, -0.650828, 0.149171,
		0.539551, -0.717951, -0.439808,
		29.384354, 38.430279, 26.108322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045282, 38.434673, 26.926075>,  <29.006668, 38.932846, 26.416187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045282, 38.434673, 26.926075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319057, 38.302193, 26.666275>,  <29.483322, 38.222706, 26.510395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319057, 38.302193, 26.666275>,  <29.045282, 38.434673, 26.926075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319057, 38.302193, 26.666275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614485, -0.217381, 0.758389,
		-0.392370, -0.918177, 0.054736,
		0.684437, -0.331203, -0.649500,
		29.524389, 38.202831, 26.471424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203190, 37.755482, 26.992519>,  <29.045282, 38.434673, 26.926075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203190, 37.755482, 26.992519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526976, 37.948257, 26.858355>,  <29.721247, 38.063923, 26.777855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526976, 37.948257, 26.858355>,  <29.203190, 37.755482, 26.992519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526976, 37.948257, 26.858355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482684, -0.220897, 0.847479,
		0.334344, -0.847902, -0.411434,
		0.809464, 0.481941, -0.335412,
		29.769815, 38.092838, 26.757730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530327, 37.609879, 27.600948>,  <29.203190, 37.755482, 26.992519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530327, 37.609879, 27.600948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828465, 37.841850, 27.469410>,  <30.007347, 37.981033, 27.390488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828465, 37.841850, 27.469410>,  <29.530327, 37.609879, 27.600948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828465, 37.841850, 27.469410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503996, -0.167263, 0.847355,
		0.436406, -0.797308, -0.416953,
		0.745344, 0.579933, -0.328846,
		30.052069, 38.015831, 27.370756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131853, 37.164513, 27.404867>,  <29.530327, 37.609879, 27.600948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131853, 37.164513, 27.404867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293024, 37.526405, 27.460165>,  <30.389727, 37.743542, 27.493343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293024, 37.526405, 27.460165>,  <30.131853, 37.164513, 27.404867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293024, 37.526405, 27.460165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587962, -0.371635, 0.718462,
		0.701392, -0.208204, -0.681689,
		0.402927, 0.904731, 0.138246,
		30.413902, 37.797825, 27.501638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826141, 37.037083, 27.533768>,  <30.131853, 37.164513, 27.404867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826141, 37.037083, 27.533768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779493, 37.400932, 27.693260>,  <30.751505, 37.619244, 27.788956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779493, 37.400932, 27.693260>,  <30.826141, 37.037083, 27.533768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779493, 37.400932, 27.693260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470306, -0.303025, 0.828847,
		0.874764, 0.284185, -0.392463,
		-0.116620, 0.909623, 0.398729,
		30.744507, 37.673820, 27.812880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538301, 37.294544, 27.651802>,  <30.826141, 37.037083, 27.533768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538301, 37.294544, 27.651802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268059, 37.484829, 27.877102>,  <31.105913, 37.598999, 28.012281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268059, 37.484829, 27.877102>,  <31.538301, 37.294544, 27.651802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268059, 37.484829, 27.877102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294502, -0.526244, 0.797706,
		0.675889, 0.704813, 0.215435,
		-0.675606, 0.475715, 0.563252,
		31.065376, 37.627544, 28.046078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917461, 37.319366, 28.223032>,  <31.538301, 37.294544, 27.651802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917461, 37.319366, 28.223032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541517, 37.409618, 28.325607>,  <31.315950, 37.463768, 28.387152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541517, 37.409618, 28.325607>,  <31.917461, 37.319366, 28.223032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541517, 37.409618, 28.325607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148633, -0.405799, 0.901796,
		0.307530, 0.885675, 0.347858,
		-0.939858, 0.225626, 0.256436,
		31.259560, 37.477306, 28.402538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897139, 37.821899, 28.866488>,  <31.917461, 37.319366, 28.223032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897139, 37.821899, 28.866488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569563, 37.593086, 28.848064>,  <31.373018, 37.455799, 28.837009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569563, 37.593086, 28.848064>,  <31.897139, 37.821899, 28.866488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569563, 37.593086, 28.848064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151517, -0.292931, 0.944052,
		-0.553518, 0.766142, 0.326564,
		-0.818938, -0.572030, -0.046059,
		31.323881, 37.421478, 28.834248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587072, 38.069908, 29.425592>,  <31.897139, 37.821899, 28.866488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587072, 38.069908, 29.425592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417458, 37.716270, 29.347042>,  <31.315689, 37.504086, 29.299911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417458, 37.716270, 29.347042>,  <31.587072, 38.069908, 29.425592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417458, 37.716270, 29.347042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087418, -0.255778, 0.962775,
		-0.901415, 0.391086, 0.185745,
		-0.424038, -0.884098, -0.196375,
		31.290247, 37.451042, 29.288130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085773, 37.960461, 29.925930>,  <31.587072, 38.069908, 29.425592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085773, 37.960461, 29.925930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109592, 37.592274, 29.771429>,  <31.123884, 37.371361, 29.678728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109592, 37.592274, 29.771429>,  <31.085773, 37.960461, 29.925930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109592, 37.592274, 29.771429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006587, -0.387292, 0.921934,
		-0.998204, -0.052355, -0.029125,
		0.059548, -0.920469, -0.386252,
		31.127457, 37.316132, 29.655554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579634, 37.506355, 30.202530>,  <31.085773, 37.960461, 29.925930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579634, 37.506355, 30.202530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820286, 37.221092, 30.058613>,  <30.964678, 37.049934, 29.972263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820286, 37.221092, 30.058613>,  <30.579634, 37.506355, 30.202530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820286, 37.221092, 30.058613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186025, -0.563138, 0.805152,
		-0.776812, -0.417472, -0.471465,
		0.601629, -0.713156, -0.359792,
		31.000774, 37.007145, 29.950676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222012, 36.942905, 30.129553>,  <30.579634, 37.506355, 30.202530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222012, 36.942905, 30.129553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596491, 36.804134, 30.152071>,  <30.821178, 36.720871, 30.165581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.596491, 36.804134, 30.152071>,  <30.222012, 36.942905, 30.129553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596491, 36.804134, 30.152071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259899, -0.575525, 0.775387,
		-0.236606, -0.740548, -0.628973,
		0.936200, -0.346930, 0.056295,
		30.877350, 36.700054, 30.168959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124098, 36.178440, 30.345772>,  <30.222012, 36.942905, 30.129553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124098, 36.178440, 30.345772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506840, 36.261581, 30.426987>,  <30.736485, 36.311466, 30.475716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506840, 36.261581, 30.426987>,  <30.124098, 36.178440, 30.345772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506840, 36.261581, 30.426987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043164, -0.589329, 0.806739,
		0.287339, -0.780697, -0.554931,
		0.956856, 0.207854, 0.203035,
		30.793896, 36.323936, 30.487898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416126, 35.569851, 30.594061>,  <30.124098, 36.178440, 30.345772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416126, 35.569851, 30.594061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657070, 35.863186, 30.720154>,  <30.801638, 36.039188, 30.795809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657070, 35.863186, 30.720154>,  <30.416126, 35.569851, 30.594061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657070, 35.863186, 30.720154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006564, -0.399452, 0.916731,
		0.798196, -0.550134, -0.245429,
		0.602362, 0.733342, 0.315230,
		30.837778, 36.083187, 30.814722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015812, 35.230824, 30.882048>,  <30.416126, 35.569851, 30.594061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015812, 35.230824, 30.882048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007177, 35.593502, 31.050541>,  <31.001997, 35.811108, 31.151638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007177, 35.593502, 31.050541>,  <31.015812, 35.230824, 30.882048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007177, 35.593502, 31.050541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288699, -0.397731, 0.870898,
		0.957177, 0.140410, -0.253176,
		-0.021586, 0.906694, 0.421235,
		31.000702, 35.865509, 31.176912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514215, 35.301075, 31.299263>,  <31.015812, 35.230824, 30.882048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514215, 35.301075, 31.299263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293932, 35.602131, 31.443621>,  <31.161762, 35.782764, 31.530235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293932, 35.602131, 31.443621>,  <31.514215, 35.301075, 31.299263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293932, 35.602131, 31.443621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228997, -0.279545, 0.932424,
		0.802671, 0.596139, -0.018406,
		-0.550709, 0.752644, 0.360896,
		31.128719, 35.827923, 31.551889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868361, 35.459846, 31.851284>,  <31.514215, 35.301075, 31.299263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868361, 35.459846, 31.851284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509737, 35.608147, 31.948217>,  <31.294563, 35.697128, 32.006378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509737, 35.608147, 31.948217>,  <31.868361, 35.459846, 31.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509737, 35.608147, 31.948217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126055, -0.310915, 0.942041,
		0.424610, 0.875143, 0.232018,
		-0.896558, 0.370753, 0.242334,
		31.240770, 35.719372, 32.020916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927176, 35.743340, 32.528004>,  <31.868361, 35.459846, 31.851284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927176, 35.743340, 32.528004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532099, 35.696213, 32.486858>,  <31.295052, 35.667938, 32.462173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532099, 35.696213, 32.486858>,  <31.927176, 35.743340, 32.528004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532099, 35.696213, 32.486858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050058, -0.384931, 0.921587,
		-0.148173, 0.915395, 0.374296,
		-0.987694, -0.117818, -0.102859,
		31.235790, 35.660866, 32.456001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764589, 35.915264, 33.143982>,  <31.927176, 35.743340, 32.528004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764589, 35.915264, 33.143982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463133, 35.704525, 32.986778>,  <31.282259, 35.578083, 32.892456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463133, 35.704525, 32.986778>,  <31.764589, 35.915264, 33.143982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463133, 35.704525, 32.986778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117319, -0.480507, 0.869108,
		-0.646733, 0.701102, 0.300320,
		-0.753640, -0.526847, -0.393013,
		31.237041, 35.546471, 32.868874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262224, 35.869064, 33.654099>,  <31.764589, 35.915264, 33.143982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262224, 35.869064, 33.654099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131266, 35.579750, 33.410896>,  <31.052691, 35.406162, 33.264977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131266, 35.579750, 33.410896>,  <31.262224, 35.869064, 33.654099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131266, 35.579750, 33.410896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094989, -0.615016, 0.782772,
		-0.940101, 0.314030, 0.132649,
		-0.327395, -0.723285, -0.608006,
		31.033047, 35.362766, 33.228493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628273, 35.588749, 33.995266>,  <31.262224, 35.869064, 33.654099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628273, 35.588749, 33.995266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780525, 35.310371, 33.751698>,  <30.871876, 35.143345, 33.605556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780525, 35.310371, 33.751698>,  <30.628273, 35.588749, 33.995266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780525, 35.310371, 33.751698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141108, -0.607061, 0.782027,
		-0.913898, -0.383586, -0.132862,
		0.380630, -0.695945, -0.608919,
		30.894714, 35.101589, 33.569023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330044, 35.028511, 34.263363>,  <30.628273, 35.588749, 33.995266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330044, 35.028511, 34.263363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662659, 34.919895, 34.069534>,  <30.862228, 34.854725, 33.953236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.662659, 34.919895, 34.069534>,  <30.330044, 35.028511, 34.263363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.662659, 34.919895, 34.069534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271854, -0.561810, 0.781322,
		-0.484395, -0.781433, -0.393349,
		0.831539, -0.271535, -0.484574,
		30.912121, 34.838432, 33.924160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481813, 34.305889, 34.510853>,  <30.330044, 35.028511, 34.263363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481813, 34.305889, 34.510853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823030, 34.379959, 34.315701>,  <31.027761, 34.424400, 34.198608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823030, 34.379959, 34.315701>,  <30.481813, 34.305889, 34.510853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823030, 34.379959, 34.315701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429069, -0.781011, 0.453785,
		-0.297012, -0.596433, -0.745688,
		0.853043, 0.185172, -0.487881,
		31.078943, 34.435513, 34.169334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702463, 33.682892, 34.150082>,  <30.481813, 34.305889, 34.510853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702463, 33.682892, 34.150082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022516, 33.914360, 34.213230>,  <31.214548, 34.053242, 34.251122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022516, 33.914360, 34.213230>,  <30.702463, 33.682892, 34.150082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022516, 33.914360, 34.213230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437198, -0.742835, 0.507006,
		0.410666, -0.336649, -0.847361,
		0.800132, 0.578675, 0.157875,
		31.262556, 34.087963, 34.260593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228376, 33.314293, 33.997253>,  <30.702463, 33.682892, 34.150082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228376, 33.314293, 33.997253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418585, 33.583122, 34.224300>,  <31.532711, 33.744419, 34.360531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418585, 33.583122, 34.224300>,  <31.228376, 33.314293, 33.997253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418585, 33.583122, 34.224300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568386, -0.727202, 0.384858,
		0.671428, 0.139620, -0.727798,
		0.475522, 0.672074, 0.567621,
		31.561241, 33.784744, 34.394588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881058, 33.105659, 33.893734>,  <31.228376, 33.314293, 33.997253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881058, 33.105659, 33.893734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874933, 33.352383, 34.208519>,  <31.871260, 33.500416, 34.397388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874933, 33.352383, 34.208519>,  <31.881058, 33.105659, 33.893734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874933, 33.352383, 34.208519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669565, -0.578208, 0.466217,
		0.742595, 0.534061, -0.404143,
		-0.015310, 0.616810, 0.786963,
		31.870340, 33.537426, 34.444607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531918, 33.057579, 34.100979>,  <31.881058, 33.105659, 33.893734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531918, 33.057579, 34.100979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394970, 33.245506, 34.426445>,  <32.312801, 33.358265, 34.621723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394970, 33.245506, 34.426445>,  <32.531918, 33.057579, 34.100979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394970, 33.245506, 34.426445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726712, -0.416503, 0.546273,
		0.595545, 0.778327, -0.198828,
		-0.342367, 0.469821, 0.813666,
		32.292259, 33.386452, 34.670544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051933, 33.598358, 34.319271>,  <32.531918, 33.057579, 34.100979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051933, 33.598358, 34.319271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837410, 33.438351, 34.616554>,  <32.708694, 33.342346, 34.794926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837410, 33.438351, 34.616554>,  <33.051933, 33.598358, 34.319271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837410, 33.438351, 34.616554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843787, -0.274824, 0.460972,
		0.019854, 0.874333, 0.484921,
		-0.536310, -0.400018, 0.743207,
		32.676517, 33.318344, 34.839516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305817, 33.852665, 33.755013>,  <33.051933, 33.598358, 34.319271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305817, 33.852665, 33.755013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661972, 33.985714, 33.879322>,  <33.875664, 34.065544, 33.953907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661972, 33.985714, 33.879322>,  <33.305817, 33.852665, 33.755013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661972, 33.985714, 33.879322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071769, 0.776736, -0.625723,
		-0.449515, 0.534831, 0.715466,
		0.890385, 0.332621, 0.310771,
		33.929089, 34.085499, 33.972553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281311, 34.641273, 33.973469>,  <33.305817, 33.852665, 33.755013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281311, 34.641273, 33.973469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669163, 34.575230, 33.901299>,  <33.901875, 34.535603, 33.857994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669163, 34.575230, 33.901299>,  <33.281311, 34.641273, 33.973469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669163, 34.575230, 33.901299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016827, 0.781028, -0.624270,
		0.243993, 0.602275, 0.760087,
		0.969631, -0.165107, -0.180430,
		33.960052, 34.525696, 33.847168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638142, 35.274090, 33.922916>,  <33.281311, 34.641273, 33.973469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638142, 35.274090, 33.922916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890442, 35.025497, 33.737045>,  <34.041821, 34.876343, 33.625523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890442, 35.025497, 33.737045>,  <33.638142, 35.274090, 33.922916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890442, 35.025497, 33.737045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167449, 0.693717, -0.700513,
		0.757706, 0.364037, 0.541626,
		0.630748, -0.621477, -0.464675,
		34.079666, 34.839054, 33.597641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041992, 35.716305, 33.529213>,  <33.638142, 35.274090, 33.922916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041992, 35.716305, 33.529213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168518, 35.382313, 33.349098>,  <34.244434, 35.181919, 33.241028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168518, 35.382313, 33.349098>,  <34.041992, 35.716305, 33.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168518, 35.382313, 33.349098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141537, 0.510884, -0.847918,
		0.938036, 0.204478, 0.279781,
		0.316316, -0.834977, -0.450287,
		34.263412, 35.131821, 33.214012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592823, 35.945976, 33.234005>,  <34.041992, 35.716305, 33.529213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592823, 35.945976, 33.234005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493198, 35.609962, 33.041210>,  <34.433422, 35.408356, 32.925533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493198, 35.609962, 33.041210>,  <34.592823, 35.945976, 33.234005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493198, 35.609962, 33.041210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069799, 0.480811, -0.874042,
		0.965969, -0.251332, -0.061118,
		-0.249061, -0.840032, -0.481991,
		34.418480, 35.357952, 32.896614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124657, 35.852882, 32.710457>,  <34.592823, 35.945976, 33.234005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124657, 35.852882, 32.710457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784847, 35.674187, 32.598217>,  <34.580963, 35.566971, 32.530872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784847, 35.674187, 32.598217>,  <35.124657, 35.852882, 32.710457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784847, 35.674187, 32.598217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025012, 0.497188, -0.867283,
		0.526968, -0.743790, -0.411195,
		-0.849517, -0.446745, -0.280605,
		34.529991, 35.540165, 32.514038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201672, 35.759327, 32.028465>,  <35.124657, 35.852882, 32.710457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201672, 35.759327, 32.028465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805367, 35.733063, 32.075916>,  <34.567581, 35.717304, 32.104385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805367, 35.733063, 32.075916>,  <35.201672, 35.759327, 32.028465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805367, 35.733063, 32.075916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134853, 0.567796, -0.812048,
		-0.014039, -0.820547, -0.571407,
		-0.990766, -0.065656, 0.118624,
		34.508137, 35.713367, 32.111504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964363, 35.691875, 31.344839>,  <35.201672, 35.759327, 32.028465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964363, 35.691875, 31.344839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622250, 35.772297, 31.535864>,  <34.416981, 35.820549, 31.650478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622250, 35.772297, 31.535864>,  <34.964363, 35.691875, 31.344839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622250, 35.772297, 31.535864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283762, 0.589417, -0.756351,
		-0.433553, -0.782408, -0.447067,
		-0.855284, 0.201058, 0.477561,
		34.365665, 35.832615, 31.679132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360382, 35.609947, 30.981293>,  <34.964363, 35.691875, 31.344839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360382, 35.609947, 30.981293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280552, 35.903008, 31.241568>,  <34.232655, 36.078842, 31.397734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280552, 35.903008, 31.241568>,  <34.360382, 35.609947, 30.981293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280552, 35.903008, 31.241568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390745, 0.549462, -0.738519,
		-0.898604, -0.401642, 0.176620,
		-0.199574, 0.732649, 0.650689,
		34.220680, 36.122803, 31.436773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797543, 35.913830, 30.699654>,  <34.360382, 35.609947, 30.981293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797543, 35.913830, 30.699654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903549, 36.196274, 30.962309>,  <33.967155, 36.365742, 31.119902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903549, 36.196274, 30.962309>,  <33.797543, 35.913830, 30.699654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903549, 36.196274, 30.962309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266580, 0.708100, -0.653857,
		-0.926661, -0.001762, 0.375895,
		0.265019, 0.706110, 0.656638,
		33.983055, 36.408108, 31.159300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249668, 36.435173, 30.727743>,  <33.797543, 35.913830, 30.699654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249668, 36.435173, 30.727743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586266, 36.623661, 30.833450>,  <33.788223, 36.736752, 30.896873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586266, 36.623661, 30.833450>,  <33.249668, 36.435173, 30.727743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586266, 36.623661, 30.833450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219620, 0.745267, -0.629559,
		-0.493607, 0.471734, 0.730629,
		0.841498, 0.471216, 0.264267,
		33.838715, 36.765026, 30.912731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067135, 37.126789, 30.718849>,  <33.249668, 36.435173, 30.727743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067135, 37.126789, 30.718849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466850, 37.141647, 30.721247>,  <33.706680, 37.150562, 30.722685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466850, 37.141647, 30.721247>,  <33.067135, 37.126789, 30.718849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466850, 37.141647, 30.721247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021285, 0.689358, -0.724108,
		-0.031032, 0.723468, 0.689661,
		0.999292, 0.037150, 0.005993,
		33.766640, 37.152794, 30.723045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214474, 37.833927, 30.854834>,  <33.067135, 37.126789, 30.718849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214474, 37.833927, 30.854834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550083, 37.704872, 30.679590>,  <33.751450, 37.627441, 30.574444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550083, 37.704872, 30.679590>,  <33.214474, 37.833927, 30.854834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550083, 37.704872, 30.679590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105777, 0.693129, -0.713010,
		0.533708, 0.644577, 0.547426,
		0.839027, -0.322634, -0.438110,
		33.801792, 37.608082, 30.548157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734268, 38.346367, 30.882977>,  <33.214474, 37.833927, 30.854834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734268, 38.346367, 30.882977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771637, 38.116966, 30.557432>,  <33.794060, 37.979324, 30.362106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771637, 38.116966, 30.557432>,  <33.734268, 38.346367, 30.882977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771637, 38.116966, 30.557432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007418, 0.817814, -0.575435,
		0.995599, 0.047720, 0.080655,
		0.093421, -0.573501, -0.813861,
		33.799664, 37.944916, 30.313274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208824, 38.700451, 30.340572>,  <33.734268, 38.346367, 30.882977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208824, 38.700451, 30.340572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019836, 38.422348, 30.123907>,  <33.906445, 38.255486, 29.993908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019836, 38.422348, 30.123907>,  <34.208824, 38.700451, 30.340572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019836, 38.422348, 30.123907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060158, 0.587712, -0.806831,
		0.879294, -0.413785, -0.235848,
		-0.472465, -0.695253, -0.541664,
		33.878098, 38.213772, 29.961409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429153, 38.900913, 29.760391>,  <34.208824, 38.700451, 30.340572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429153, 38.900913, 29.760391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153393, 38.641590, 29.631136>,  <33.987934, 38.485996, 29.553583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153393, 38.641590, 29.631136>,  <34.429153, 38.900913, 29.760391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153393, 38.641590, 29.631136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059415, 0.495198, -0.866746,
		0.721936, -0.578338, -0.379911,
		-0.689404, -0.648308, -0.323140,
		33.946571, 38.447098, 29.534195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583530, 38.792858, 29.078327>,  <34.429153, 38.900913, 29.760391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583530, 38.792858, 29.078327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205196, 38.665134, 29.101807>,  <33.978195, 38.588501, 29.115894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205196, 38.665134, 29.101807>,  <34.583530, 38.792858, 29.078327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205196, 38.665134, 29.101807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209205, 0.461173, -0.862295,
		0.248265, -0.827866, -0.502993,
		-0.945831, -0.319306, 0.058701,
		33.921448, 38.569344, 29.119417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420197, 38.549778, 28.416868>,  <34.583530, 38.792858, 29.078327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420197, 38.549778, 28.416868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077965, 38.628475, 28.608402>,  <33.872627, 38.675694, 28.723322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077965, 38.628475, 28.608402>,  <34.420197, 38.549778, 28.416868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077965, 38.628475, 28.608402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331477, 0.502274, -0.798651,
		-0.397635, -0.842029, -0.364517,
		-0.855575, 0.196743, 0.478836,
		33.821293, 38.687496, 28.752052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866825, 38.341190, 28.058687>,  <34.420197, 38.549778, 28.416868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866825, 38.341190, 28.058687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660355, 38.590385, 28.293787>,  <33.536472, 38.739902, 28.434847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660355, 38.590385, 28.293787>,  <33.866825, 38.341190, 28.058687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660355, 38.590385, 28.293787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397696, 0.433436, -0.808685,
		-0.758552, -0.651169, 0.024030,
		-0.516176, 0.622986, 0.587751,
		33.505501, 38.777283, 28.470112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206104, 38.156242, 28.011896>,  <33.866825, 38.341190, 28.058687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206104, 38.156242, 28.011896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218906, 38.541348, 28.119270>,  <33.226585, 38.772411, 28.183695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218906, 38.541348, 28.119270>,  <33.206104, 38.156242, 28.011896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218906, 38.541348, 28.119270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521229, 0.245238, -0.817422,
		-0.852817, -0.113757, 0.509669,
		0.032003, 0.962766, 0.268437,
		33.228508, 38.830177, 28.199800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572575, 38.375076, 28.007668>,  <33.206104, 38.156242, 28.011896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572575, 38.375076, 28.007668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786095, 38.709675, 27.958126>,  <32.914207, 38.910435, 27.928402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786095, 38.709675, 27.958126>,  <32.572575, 38.375076, 28.007668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786095, 38.709675, 27.958126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586805, 0.260970, -0.766522,
		-0.608867, 0.481846, 0.630163,
		0.533799, 0.836492, -0.123854,
		32.946236, 38.960621, 27.920969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185734, 38.971226, 28.133007>,  <32.572575, 38.375076, 28.007668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185734, 38.971226, 28.133007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493954, 39.032768, 27.885592>,  <32.678886, 39.069695, 27.737143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.493954, 39.032768, 27.885592>,  <32.185734, 38.971226, 28.133007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493954, 39.032768, 27.885592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633556, 0.291079, -0.716853,
		0.069754, 0.944247, 0.321763,
		0.770545, 0.153852, -0.618538,
		32.725117, 39.078922, 27.700029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107582, 39.706093, 27.880383>,  <32.185734, 38.971226, 28.133007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107582, 39.706093, 27.880383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357208, 39.510872, 27.636301>,  <32.506985, 39.393742, 27.489853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357208, 39.510872, 27.636301>,  <32.107582, 39.706093, 27.880383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357208, 39.510872, 27.636301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526839, 0.313908, -0.789875,
		0.577045, 0.814415, -0.061223,
		0.624067, -0.488048, -0.610204,
		32.544430, 39.364456, 27.453239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187157, 40.138981, 27.291996>,  <32.107582, 39.706093, 27.880383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187157, 40.138981, 27.291996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328129, 39.797577, 27.138468>,  <32.412712, 39.592735, 27.046350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328129, 39.797577, 27.138468>,  <32.187157, 40.138981, 27.291996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328129, 39.797577, 27.138468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513113, 0.166753, -0.841967,
		0.782628, 0.493679, -0.379176,
		0.352433, -0.853507, -0.383819,
		32.433857, 39.541523, 27.023323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294144, 40.340252, 26.629009>,  <32.187157, 40.138981, 27.291996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294144, 40.340252, 26.629009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302776, 39.941666, 26.596544>,  <32.307957, 39.702515, 26.577066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302776, 39.941666, 26.596544>,  <32.294144, 40.340252, 26.629009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302776, 39.941666, 26.596544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533018, 0.057209, -0.844167,
		0.845828, 0.061482, -0.529901,
		0.021586, -0.996467, -0.081160,
		32.309254, 39.642727, 26.572197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689873, 40.093975, 26.032032>,  <32.294144, 40.340252, 26.629009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689873, 40.093975, 26.032032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427876, 39.801029, 26.106461>,  <32.270676, 39.625263, 26.151117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427876, 39.801029, 26.106461>,  <32.689873, 40.093975, 26.032032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427876, 39.801029, 26.106461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252842, -0.019629, -0.967309,
		0.712075, -0.680629, -0.172315,
		-0.654996, -0.732365, 0.186069,
		32.231377, 39.581318, 26.162281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763557, 39.538811, 25.491207>,  <32.689873, 40.093975, 26.032032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763557, 39.538811, 25.491207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389996, 39.492054, 25.626356>,  <32.165859, 39.464001, 25.707445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389996, 39.492054, 25.626356>,  <32.763557, 39.538811, 25.491207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389996, 39.492054, 25.626356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325441, -0.113329, -0.938746,
		0.148019, -0.986658, 0.067799,
		-0.933905, -0.116888, 0.337874,
		32.109825, 39.456989, 25.727718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469151, 39.085678, 24.994898>,  <32.763557, 39.538811, 25.491207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469151, 39.085678, 24.994898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155247, 39.229401, 25.196907>,  <31.966904, 39.315636, 25.318113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155247, 39.229401, 25.196907>,  <32.469151, 39.085678, 24.994898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155247, 39.229401, 25.196907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574836, -0.117251, -0.809825,
		-0.231762, -0.925824, 0.298557,
		-0.784761, 0.359308, 0.505023,
		31.919819, 39.337193, 25.348413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909452, 38.572578, 24.877352>,  <32.469151, 39.085678, 24.994898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909452, 38.572578, 24.877352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773420, 38.941505, 24.950752>,  <31.691801, 39.162861, 24.994793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773420, 38.941505, 24.950752>,  <31.909452, 38.572578, 24.877352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773420, 38.941505, 24.950752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515613, -0.019695, -0.856595,
		-0.786441, -0.385926, 0.482258,
		-0.340080, 0.922320, 0.183499,
		31.671396, 39.218201, 25.005802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295368, 38.455231, 24.591204>,  <31.909452, 38.572578, 24.877352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295368, 38.455231, 24.591204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330833, 38.849068, 24.651503>,  <31.352112, 39.085369, 24.687683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330833, 38.849068, 24.651503>,  <31.295368, 38.455231, 24.591204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330833, 38.849068, 24.651503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400716, 0.173815, -0.899564,
		-0.911902, 0.019349, 0.409951,
		0.088661, 0.984588, 0.150749,
		31.357431, 39.144444, 24.696728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679907, 38.774780, 24.310787>,  <31.295368, 38.455231, 24.591204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679907, 38.774780, 24.310787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940760, 39.076992, 24.335752>,  <31.097271, 39.258320, 24.350731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940760, 39.076992, 24.335752>,  <30.679907, 38.774780, 24.310787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940760, 39.076992, 24.335752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325834, 0.353668, -0.876784,
		-0.684513, 0.551442, 0.476816,
		0.652131, 0.755533, 0.062412,
		31.136398, 39.303654, 24.354477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309107, 39.321468, 24.153044>,  <30.679907, 38.774780, 24.310787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309107, 39.321468, 24.153044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688244, 39.414234, 24.065582>,  <30.915726, 39.469894, 24.013105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688244, 39.414234, 24.065582>,  <30.309107, 39.321468, 24.153044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688244, 39.414234, 24.065582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293834, 0.369938, -0.881367,
		-0.123512, 0.899646, 0.418787,
		0.947843, 0.231914, -0.218655,
		30.972597, 39.483807, 23.999987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244810, 39.920219, 23.768690>,  <30.309107, 39.321468, 24.153044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244810, 39.920219, 23.768690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615288, 39.794411, 23.685509>,  <30.837574, 39.718925, 23.635601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615288, 39.794411, 23.685509>,  <30.244810, 39.920219, 23.768690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615288, 39.794411, 23.685509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106505, 0.310828, -0.944480,
		0.361693, 0.896919, 0.254389,
		0.926193, -0.314518, -0.207951,
		30.893147, 39.700054, 23.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575319, 40.420609, 23.332905>,  <30.244810, 39.920219, 23.768690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575319, 40.420609, 23.332905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796343, 40.099304, 23.243961>,  <30.928957, 39.906521, 23.190596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796343, 40.099304, 23.243961>,  <30.575319, 40.420609, 23.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796343, 40.099304, 23.243961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260734, 0.086802, -0.961500,
		0.791641, 0.589263, -0.161475,
		0.552560, -0.803265, -0.222357,
		30.962111, 39.858326, 23.177254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068909, 40.631718, 22.788164>,  <30.575319, 40.420609, 23.332905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068909, 40.631718, 22.788164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080109, 40.232548, 22.764994>,  <31.086828, 39.993046, 22.751091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080109, 40.232548, 22.764994>,  <31.068909, 40.631718, 22.788164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080109, 40.232548, 22.764994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079924, 0.055528, -0.995253,
		0.996408, 0.032496, -0.078204,
		0.027999, -0.997928, -0.057926,
		31.088509, 39.933170, 22.747616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585175, 40.546894, 22.374094>,  <31.068909, 40.631718, 22.788164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585175, 40.546894, 22.374094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359451, 40.216675, 22.376270>,  <31.224016, 40.018543, 22.377577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359451, 40.216675, 22.376270>,  <31.585175, 40.546894, 22.374094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359451, 40.216675, 22.376270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214026, 0.139928, -0.966754,
		0.797338, -0.546713, -0.255651,
		-0.564309, -0.825546, 0.005441,
		31.190159, 39.969009, 22.377903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653448, 40.301903, 21.713465>,  <31.585175, 40.546894, 22.374094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653448, 40.301903, 21.713465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327959, 40.093243, 21.816019>,  <31.132666, 39.968044, 21.877552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327959, 40.093243, 21.816019>,  <31.653448, 40.301903, 21.713465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327959, 40.093243, 21.816019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317593, 0.029595, -0.947765,
		0.486817, -0.852644, -0.189756,
		-0.813722, -0.521653, 0.256386,
		31.083843, 39.936745, 21.892935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346634, 39.606548, 21.607355>,  <31.653448, 40.301903, 21.713465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346634, 39.606548, 21.607355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674509, 39.655506, 21.383522>,  <31.871233, 39.684879, 21.249222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674509, 39.655506, 21.383522>,  <31.346634, 39.606548, 21.607355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674509, 39.655506, 21.383522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511036, 0.285054, 0.810917,
		0.258763, -0.950665, 0.171107,
		0.819685, 0.122394, -0.559585,
		31.920414, 39.692223, 21.215647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902136, 39.460903, 22.076687>,  <31.346634, 39.606548, 21.607355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902136, 39.460903, 22.076687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121719, 39.600616, 21.772938>,  <32.253468, 39.684444, 21.590689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121719, 39.600616, 21.772938>,  <31.902136, 39.460903, 22.076687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121719, 39.600616, 21.772938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718812, 0.266365, 0.642152,
		0.426561, -0.898362, -0.104843,
		0.548958, 0.349279, -0.759374,
		32.286407, 39.705399, 21.545126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526588, 39.032085, 22.001486>,  <31.902136, 39.460903, 22.076687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526588, 39.032085, 22.001486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605335, 39.388359, 21.837572>,  <32.652584, 39.602123, 21.739223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605335, 39.388359, 21.837572>,  <32.526588, 39.032085, 22.001486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605335, 39.388359, 21.837572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760885, 0.124788, 0.636774,
		0.618301, -0.437159, -0.653142,
		0.196867, 0.890685, -0.409785,
		32.664394, 39.655563, 21.714636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169300, 38.975571, 21.850636>,  <32.526588, 39.032085, 22.001486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169300, 38.975571, 21.850636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104588, 39.370270, 21.855484>,  <33.065762, 39.607090, 21.858393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104588, 39.370270, 21.855484>,  <33.169300, 38.975571, 21.850636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104588, 39.370270, 21.855484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738115, 0.112846, 0.665171,
		0.654991, 0.116557, -0.746593,
		-0.161780, 0.986752, 0.012119,
		33.056053, 39.666294, 21.859119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846134, 39.309204, 21.896782>,  <33.169300, 38.975571, 21.850636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846134, 39.309204, 21.896782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609669, 39.617954, 21.990368>,  <33.467789, 39.803204, 22.046520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609669, 39.617954, 21.990368>,  <33.846134, 39.309204, 21.896782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609669, 39.617954, 21.990368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658140, 0.293956, 0.693139,
		0.466240, 0.563740, -0.681776,
		-0.591162, 0.771873, 0.233965,
		33.432320, 39.849518, 22.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330257, 39.886139, 21.821232>,  <33.846134, 39.309204, 21.896782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330257, 39.886139, 21.821232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008862, 39.945869, 22.051748>,  <33.816025, 39.981709, 22.190058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008862, 39.945869, 22.051748>,  <34.330257, 39.886139, 21.821232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008862, 39.945869, 22.051748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587541, 0.354922, 0.727204,
		-0.095948, 0.922894, -0.372909,
		-0.803486, 0.149325, 0.576292,
		33.767815, 39.990665, 22.224636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485806, 40.490788, 22.178123>,  <34.330257, 39.886139, 21.821232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485806, 40.490788, 22.178123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205032, 40.308498, 22.397072>,  <34.036568, 40.199127, 22.528440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205032, 40.308498, 22.397072>,  <34.485806, 40.490788, 22.178123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205032, 40.308498, 22.397072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475556, 0.272242, 0.836499,
		-0.530226, 0.847469, 0.025625,
		-0.701931, -0.455719, 0.547369,
		33.994453, 40.171783, 22.561283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435886, 40.941280, 22.798859>,  <34.485806, 40.490788, 22.178123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435886, 40.941280, 22.798859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256210, 40.602848, 22.913666>,  <34.148407, 40.399788, 22.982550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256210, 40.602848, 22.913666>,  <34.435886, 40.941280, 22.798859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256210, 40.602848, 22.913666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404135, 0.094092, 0.909847,
		-0.796809, 0.524686, 0.299666,
		-0.449188, -0.846080, 0.287018,
		34.121452, 40.349026, 22.999771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005585, 41.040462, 23.369804>,  <34.435886, 40.941280, 22.798859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005585, 41.040462, 23.369804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088856, 40.649319, 23.378275>,  <34.138817, 40.414631, 23.383356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088856, 40.649319, 23.378275>,  <34.005585, 41.040462, 23.369804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088856, 40.649319, 23.378275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165162, 0.056483, 0.984648,
		-0.964045, -0.201486, 0.173264,
		0.208179, -0.977861, 0.021174,
		34.151310, 40.355961, 23.384626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765438, 40.882359, 24.063120>,  <34.005585, 41.040462, 23.369804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765438, 40.882359, 24.063120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979446, 40.562347, 23.954525>,  <34.107849, 40.370338, 23.889368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979446, 40.562347, 23.954525>,  <33.765438, 40.882359, 24.063120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979446, 40.562347, 23.954525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310456, -0.112685, 0.943885,
		-0.785731, -0.589280, 0.188087,
		0.535018, -0.800032, -0.271485,
		34.139954, 40.322338, 23.873079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619476, 40.235107, 24.543341>,  <33.765438, 40.882359, 24.063120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619476, 40.235107, 24.543341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982655, 40.163124, 24.391943>,  <34.200562, 40.119934, 24.301105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982655, 40.163124, 24.391943>,  <33.619476, 40.235107, 24.543341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982655, 40.163124, 24.391943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345810, -0.188512, 0.919173,
		-0.236769, -0.965441, -0.108924,
		0.907941, -0.179965, -0.378492,
		34.255035, 40.109135, 24.278395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893749, 39.578129, 24.884357>,  <33.619476, 40.235107, 24.543341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893749, 39.578129, 24.884357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218002, 39.768772, 24.748285>,  <34.412552, 39.883160, 24.666641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218002, 39.768772, 24.748285>,  <33.893749, 39.578129, 24.884357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218002, 39.768772, 24.748285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484277, -0.219095, 0.847038,
		0.329176, -0.851375, -0.408417,
		0.810629, 0.476611, -0.340181,
		34.461189, 39.911755, 24.646231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455990, 39.201313, 25.193707>,  <33.893749, 39.578129, 24.884357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455990, 39.201313, 25.193707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637039, 39.529373, 25.053717>,  <34.745670, 39.726208, 24.969723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637039, 39.529373, 25.053717>,  <34.455990, 39.201313, 25.193707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637039, 39.529373, 25.053717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620568, -0.007886, 0.784113,
		0.640331, -0.572093, -0.512529,
		0.452627, 0.820151, -0.349973,
		34.772827, 39.775417, 24.948725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219589, 39.122772, 25.326206>,  <34.455990, 39.201313, 25.193707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219589, 39.122772, 25.326206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158955, 39.512539, 25.259836>,  <35.122574, 39.746399, 25.220015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158955, 39.512539, 25.259836>,  <35.219589, 39.122772, 25.326206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158955, 39.512539, 25.259836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665082, 0.224729, 0.712153,
		0.731224, -0.002404, -0.682134,
		-0.151584, 0.974418, -0.165926,
		35.113480, 39.804863, 25.210058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880993, 39.365116, 25.254515>,  <35.219589, 39.122772, 25.326206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880993, 39.365116, 25.254515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622910, 39.642960, 25.381779>,  <35.468060, 39.809666, 25.458138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622910, 39.642960, 25.381779>,  <35.880993, 39.365116, 25.254515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622910, 39.642960, 25.381779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509933, 0.081424, 0.856352,
		0.568920, 0.714768, -0.406738,
		-0.645212, 0.694605, 0.318160,
		35.429344, 39.851341, 25.477226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415115, 39.870903, 25.585545>,  <35.880993, 39.365116, 25.254515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415115, 39.870903, 25.585545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047832, 39.946644, 25.724707>,  <35.827461, 39.992088, 25.808205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047832, 39.946644, 25.724707>,  <36.415115, 39.870903, 25.585545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047832, 39.946644, 25.724707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348321, -0.032191, 0.936822,
		0.188592, 0.981381, -0.036398,
		-0.918208, 0.189355, 0.347907,
		35.772369, 40.003448, 25.829079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451660, 40.289242, 26.211157>,  <36.415115, 39.870903, 25.585545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451660, 40.289242, 26.211157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076992, 40.153244, 26.244740>,  <35.852192, 40.071644, 26.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076992, 40.153244, 26.244740>,  <36.451660, 40.289242, 26.211157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076992, 40.153244, 26.244740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140890, -0.146365, 0.979146,
		-0.320616, 0.928968, 0.184998,
		-0.936673, -0.339994, 0.083955,
		35.795990, 40.051247, 26.269926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199474, 40.633701, 26.781101>,  <36.451660, 40.289242, 26.211157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199474, 40.633701, 26.781101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984268, 40.296864, 26.766027>,  <35.855145, 40.094761, 26.756983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.984268, 40.296864, 26.766027>,  <36.199474, 40.633701, 26.781101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984268, 40.296864, 26.766027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134731, -0.130040, 0.982312,
		-0.832098, 0.523422, 0.183419,
		-0.538015, -0.842092, -0.037685,
		35.822865, 40.044235, 26.754723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868500, 40.542675, 27.463419>,  <36.199474, 40.633701, 26.781101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868500, 40.542675, 27.463419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825153, 40.179607, 27.301233>,  <35.799145, 39.961769, 27.203922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825153, 40.179607, 27.301233>,  <35.868500, 40.542675, 27.463419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825153, 40.179607, 27.301233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083072, -0.414709, 0.906154,
		-0.990634, 0.064512, 0.120341,
		-0.108364, -0.907664, -0.405466,
		35.792645, 39.907307, 27.179594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571617, 40.233295, 27.988495>,  <35.868500, 40.542675, 27.463419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571617, 40.233295, 27.988495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662788, 39.921741, 27.754782>,  <35.717491, 39.734810, 27.614553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662788, 39.921741, 27.754782>,  <35.571617, 40.233295, 27.988495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662788, 39.921741, 27.754782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022545, -0.604138, 0.796560,
		-0.973416, -0.168388, -0.155261,
		0.227930, -0.778885, -0.584282,
		35.731167, 39.688076, 27.579496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098763, 39.640259, 28.186039>,  <35.571617, 40.233295, 27.988495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098763, 39.640259, 28.186039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426743, 39.493614, 28.010185>,  <35.623531, 39.405628, 27.904673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.426743, 39.493614, 28.010185>,  <35.098763, 39.640259, 28.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426743, 39.493614, 28.010185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039527, -0.729915, 0.682394,
		-0.571064, -0.576909, -0.584005,
		0.819954, -0.366607, -0.439632,
		35.672729, 39.383633, 27.878296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029709, 38.892868, 28.016891>,  <35.098763, 39.640259, 28.186039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029709, 38.892868, 28.016891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422825, 38.964905, 28.033358>,  <35.658695, 39.008129, 28.043238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422825, 38.964905, 28.033358>,  <35.029709, 38.892868, 28.016891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422825, 38.964905, 28.033358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120074, -0.792055, 0.598524,
		0.140397, -0.583279, -0.800047,
		0.982787, 0.180096, 0.041165,
		35.717663, 39.018932, 28.045708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367279, 38.215034, 28.059689>,  <35.029709, 38.892868, 28.016891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367279, 38.215034, 28.059689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665035, 38.453945, 28.179117>,  <35.843689, 38.597290, 28.250774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665035, 38.453945, 28.179117>,  <35.367279, 38.215034, 28.059689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665035, 38.453945, 28.179117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217669, -0.639756, 0.737111,
		0.631271, -0.483709, -0.606236,
		0.744391, 0.597276, 0.298571,
		35.888351, 38.633129, 28.268688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901409, 37.811195, 28.145447>,  <35.367279, 38.215034, 28.059689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901409, 37.811195, 28.145447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966442, 38.129208, 28.379194>,  <36.005463, 38.320015, 28.519444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966442, 38.129208, 28.379194>,  <35.901409, 37.811195, 28.145447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966442, 38.129208, 28.379194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220736, -0.606547, 0.763791,
		0.961687, 0.004810, -0.274109,
		0.162586, 0.795033, 0.584370,
		36.015217, 38.367718, 28.554504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586803, 37.686298, 28.487183>,  <35.901409, 37.811195, 28.145447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586803, 37.686298, 28.487183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398277, 37.949066, 28.722578>,  <36.285160, 38.106728, 28.863815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398277, 37.949066, 28.722578>,  <36.586803, 37.686298, 28.487183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398277, 37.949066, 28.722578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367114, -0.460574, 0.808146,
		0.801927, 0.596937, -0.024086,
		-0.471319, 0.656916, 0.588490,
		36.256882, 38.146141, 28.899124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040081, 37.813313, 29.073326>,  <36.586803, 37.686298, 28.487183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040081, 37.813313, 29.073326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697414, 37.970459, 29.207060>,  <36.491814, 38.064747, 29.287300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697414, 37.970459, 29.207060>,  <37.040081, 37.813313, 29.073326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697414, 37.970459, 29.207060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246087, -0.258388, 0.934172,
		0.453391, 0.882549, 0.124673,
		-0.856667, 0.392865, 0.334334,
		36.440414, 38.088318, 29.307360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240311, 38.049725, 29.639324>,  <37.040081, 37.813313, 29.073326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240311, 38.049725, 29.639324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841904, 38.028107, 29.667706>,  <36.602859, 38.015137, 29.684734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841904, 38.028107, 29.667706>,  <37.240311, 38.049725, 29.639324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841904, 38.028107, 29.667706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083943, -0.299160, 0.950503,
		-0.030147, 0.952671, 0.302505,
		-0.996014, -0.054048, 0.070951,
		36.543098, 38.011894, 29.688992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018379, 38.445576, 30.321827>,  <37.240311, 38.049725, 29.639324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018379, 38.445576, 30.321827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735088, 38.171425, 30.254103>,  <36.565113, 38.006935, 30.213469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735088, 38.171425, 30.254103>,  <37.018379, 38.445576, 30.321827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735088, 38.171425, 30.254103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028379, -0.267265, 0.963205,
		-0.705414, 0.677363, 0.208735,
		-0.708228, -0.685382, -0.169310,
		36.522621, 37.965809, 30.203310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392807, 38.602955, 30.819592>,  <37.018379, 38.445576, 30.321827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392807, 38.602955, 30.819592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362606, 38.226841, 30.686832>,  <36.344486, 38.001171, 30.607178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362606, 38.226841, 30.686832>,  <36.392807, 38.602955, 30.819592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362606, 38.226841, 30.686832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186736, -0.340291, 0.921592,
		-0.979505, 0.007603, 0.201278,
		-0.075500, -0.940289, -0.331897,
		36.339954, 37.944756, 30.587263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169479, 38.224663, 31.366879>,  <36.392807, 38.602955, 30.819592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169479, 38.224663, 31.366879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287540, 37.917919, 31.138906>,  <36.358376, 37.733875, 31.002123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287540, 37.917919, 31.138906>,  <36.169479, 38.224663, 31.366879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287540, 37.917919, 31.138906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315837, -0.484661, 0.815690,
		-0.901738, -0.420758, 0.099152,
		0.295154, -0.766854, -0.569928,
		36.376087, 37.687862, 30.967928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989033, 37.604805, 31.772285>,  <36.169479, 38.224663, 31.366879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989033, 37.604805, 31.772285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269341, 37.471798, 31.519825>,  <36.437527, 37.391994, 31.368349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269341, 37.471798, 31.519825>,  <35.989033, 37.604805, 31.772285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269341, 37.471798, 31.519825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314847, -0.649738, 0.691890,
		-0.640153, -0.683571, -0.350621,
		0.700767, -0.332524, -0.631152,
		36.479572, 37.372040, 31.330481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085533, 36.880390, 31.846220>,  <35.989033, 37.604805, 31.772285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085533, 36.880390, 31.846220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420410, 37.007278, 31.668015>,  <36.621334, 37.083412, 31.561090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420410, 37.007278, 31.668015>,  <36.085533, 36.880390, 31.846220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420410, 37.007278, 31.668015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540615, -0.603265, 0.586350,
		-0.082760, -0.731738, -0.676543,
		0.837190, 0.317223, -0.445515,
		36.671566, 37.102444, 31.534361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390530, 36.338505, 31.562571>,  <36.085533, 36.880390, 31.846220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390530, 36.338505, 31.562571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676285, 36.612400, 31.620237>,  <36.847740, 36.776737, 31.654837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676285, 36.612400, 31.620237>,  <36.390530, 36.338505, 31.562571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676285, 36.612400, 31.620237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512617, -0.652358, 0.558258,
		0.476307, -0.324912, -0.817046,
		0.714391, 0.684734, 0.144168,
		36.890602, 36.817822, 31.663488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002022, 35.949768, 31.415588>,  <36.390530, 36.338505, 31.562571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002022, 35.949768, 31.415588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083599, 36.263817, 31.649508>,  <37.132545, 36.452248, 31.789860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083599, 36.263817, 31.649508>,  <37.002022, 35.949768, 31.415588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083599, 36.263817, 31.649508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382776, -0.613749, 0.690503,
		0.901050, 0.083025, -0.425695,
		0.203941, 0.785123, 0.584799,
		37.144783, 36.499355, 31.824947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613453, 35.917587, 31.620676>,  <37.002022, 35.949768, 31.415588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613453, 35.917587, 31.620676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477604, 36.165169, 31.903957>,  <37.396095, 36.313717, 32.073925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477604, 36.165169, 31.903957>,  <37.613453, 35.917587, 31.620676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477604, 36.165169, 31.903957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438183, -0.562137, 0.701426,
		0.832258, 0.548542, -0.080301,
		-0.339622, 0.618954, 0.708204,
		37.375717, 36.350853, 32.116417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191761, 36.099781, 32.074024>,  <37.613453, 35.917587, 31.620676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191761, 36.099781, 32.074024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862396, 36.179298, 32.286617>,  <37.664776, 36.227009, 32.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862396, 36.179298, 32.286617>,  <38.191761, 36.099781, 32.074024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862396, 36.179298, 32.286617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504097, -0.173768, 0.845985,
		0.260531, 0.964513, 0.042871,
		-0.823413, 0.198794, 0.531480,
		37.615372, 36.238937, 32.446060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416977, 36.232105, 32.783836>,  <38.191761, 36.099781, 32.074024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416977, 36.232105, 32.783836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023193, 36.176880, 32.827255>,  <37.786922, 36.143745, 32.853306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023193, 36.176880, 32.827255>,  <38.416977, 36.232105, 32.783836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023193, 36.176880, 32.827255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156551, -0.409731, 0.898673,
		-0.079599, 0.901698, 0.424976,
		-0.984457, -0.138064, 0.108547,
		37.727856, 36.135460, 32.859821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105652, 36.642460, 33.381340>,  <38.416977, 36.232105, 32.783836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105652, 36.642460, 33.381340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897457, 36.316490, 33.279362>,  <37.772541, 36.120911, 33.218174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897457, 36.316490, 33.279362>,  <38.105652, 36.642460, 33.381340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897457, 36.316490, 33.279362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146242, -0.379244, 0.913667,
		-0.841254, 0.438265, 0.316567,
		-0.520484, -0.814922, -0.254948,
		37.741310, 36.072014, 33.202877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842770, 36.365356, 34.022884>,  <38.105652, 36.642460, 33.381340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842770, 36.365356, 34.022884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715775, 36.053562, 33.806881>,  <37.639580, 35.866486, 33.677280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715775, 36.053562, 33.806881>,  <37.842770, 36.365356, 34.022884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715775, 36.053562, 33.806881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106320, -0.595138, 0.796559,
		-0.942284, 0.195482, 0.271822,
		-0.317485, -0.779485, -0.540006,
		37.620529, 35.819717, 33.644878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201180, 36.013855, 34.390602>,  <37.842770, 36.365356, 34.022884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201180, 36.013855, 34.390602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379547, 35.748734, 34.149990>,  <37.486568, 35.589661, 34.005623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379547, 35.748734, 34.149990>,  <37.201180, 36.013855, 34.390602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379547, 35.748734, 34.149990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206436, -0.577774, 0.789659,
		-0.870943, -0.476302, -0.120813,
		0.445918, -0.662808, -0.601534,
		37.513321, 35.549892, 33.969528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915359, 35.293629, 34.644821>,  <37.201180, 36.013855, 34.390602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915359, 35.293629, 34.644821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242409, 35.251316, 34.418438>,  <37.438637, 35.225929, 34.282608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242409, 35.251316, 34.418438>,  <36.915359, 35.293629, 34.644821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242409, 35.251316, 34.418438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454600, -0.484611, 0.747322,
		-0.353323, -0.868310, -0.348139,
		0.817620, -0.105782, -0.565958,
		37.487694, 35.219582, 34.248650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966927, 34.642799, 34.472908>,  <36.915359, 35.293629, 34.644821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966927, 34.642799, 34.472908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333305, 34.802147, 34.453545>,  <37.553131, 34.897755, 34.441925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333305, 34.802147, 34.453545>,  <36.966927, 34.642799, 34.472908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333305, 34.802147, 34.453545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332162, -0.684916, 0.648505,
		0.225187, -0.610076, -0.759670,
		0.915947, 0.398368, -0.048410,
		37.608089, 34.921658, 34.439022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504253, 34.071186, 34.464016>,  <36.966927, 34.642799, 34.472908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504253, 34.071186, 34.464016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709686, 34.390823, 34.589031>,  <37.832947, 34.582607, 34.664040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709686, 34.390823, 34.589031>,  <37.504253, 34.071186, 34.464016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709686, 34.390823, 34.589031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473442, -0.567693, 0.673482,
		0.715603, -0.197919, -0.669881,
		0.513581, 0.799095, 0.312539,
		37.863762, 34.630550, 34.682793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163704, 33.802174, 34.502987>,  <37.504253, 34.071186, 34.464016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163704, 33.802174, 34.502987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193943, 34.139908, 34.715164>,  <38.212086, 34.342548, 34.842472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193943, 34.139908, 34.715164>,  <38.163704, 33.802174, 34.502987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193943, 34.139908, 34.715164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681765, -0.431970, 0.590422,
		0.727654, 0.317004, -0.608299,
		0.075601, 0.844340, 0.530447,
		38.216621, 34.393211, 34.874298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892673, 33.941914, 34.573277>,  <38.163704, 33.802174, 34.502987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892673, 33.941914, 34.573277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712147, 34.164486, 34.852333>,  <38.603832, 34.298031, 35.019768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712147, 34.164486, 34.852333>,  <38.892673, 33.941914, 34.573277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712147, 34.164486, 34.852333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630507, -0.354398, 0.690552,
		0.631486, 0.751523, -0.190888,
		-0.451316, 0.556430, 0.697638,
		38.576752, 34.331413, 35.061626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381207, 34.318012, 34.890923>,  <38.892673, 33.941914, 34.573277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381207, 34.318012, 34.890923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090828, 34.317181, 35.166019>,  <38.916599, 34.316681, 35.331078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090828, 34.317181, 35.166019>,  <39.381207, 34.318012, 34.890923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090828, 34.317181, 35.166019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609497, -0.465203, 0.641950,
		0.318604, 0.885202, 0.338983,
		-0.725951, -0.002082, 0.687743,
		38.873043, 34.316555, 35.372341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690857, 34.508060, 35.654720>,  <39.381207, 34.318012, 34.890923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690857, 34.508060, 35.654720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344604, 34.317989, 35.717815>,  <39.136852, 34.203945, 35.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344604, 34.317989, 35.717815>,  <39.690857, 34.508060, 35.654720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344604, 34.317989, 35.717815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434042, -0.555177, 0.709497,
		-0.249564, 0.682631, 0.686828,
		-0.865636, -0.475177, 0.157739,
		39.084915, 34.175438, 35.765137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588684, 34.460995, 36.372658>,  <39.690857, 34.508060, 35.654720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588684, 34.460995, 36.372658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338181, 34.173061, 36.252895>,  <39.187878, 34.000301, 36.181038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338181, 34.173061, 36.252895>,  <39.588684, 34.460995, 36.372658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338181, 34.173061, 36.252895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314611, -0.584726, 0.747740,
		-0.713315, 0.374084, 0.592657,
		-0.626260, -0.719831, -0.299402,
		39.150303, 33.957111, 36.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094147, 34.270565, 36.959476>,  <39.588684, 34.460995, 36.372658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094147, 34.270565, 36.959476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127186, 33.975143, 36.691833>,  <39.147007, 33.797890, 36.531246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127186, 33.975143, 36.691833>,  <39.094147, 34.270565, 36.959476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127186, 33.975143, 36.691833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304739, -0.620528, 0.722550,
		-0.948848, -0.263583, 0.173815,
		0.082594, -0.738558, -0.669111,
		39.151962, 33.753574, 36.491100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865074, 33.588509, 37.312630>,  <39.094147, 34.270565, 36.959476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865074, 33.588509, 37.312630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117077, 33.495605, 37.016209>,  <39.268276, 33.439865, 36.838356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117077, 33.495605, 37.016209>,  <38.865074, 33.588509, 37.312630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117077, 33.495605, 37.016209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427487, -0.692934, 0.580601,
		-0.648346, -0.682568, -0.337263,
		0.630002, -0.232255, -0.741050,
		39.306076, 33.425930, 36.793892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842739, 32.908253, 37.270336>,  <38.865074, 33.588509, 37.312630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842739, 32.908253, 37.270336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191643, 32.991161, 37.093159>,  <39.400986, 33.040909, 36.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191643, 32.991161, 37.093159>,  <38.842739, 32.908253, 37.270336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191643, 32.991161, 37.093159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420634, -0.779992, 0.463335,
		-0.249454, -0.590466, -0.767543,
		0.872261, 0.207274, -0.442943,
		39.453320, 33.053345, 36.960278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013783, 32.254292, 37.132404>,  <38.842739, 32.908253, 37.270336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013783, 32.254292, 37.132404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330750, 32.495567, 37.096096>,  <39.520927, 32.640335, 37.074310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330750, 32.495567, 37.096096>,  <39.013783, 32.254292, 37.132404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330750, 32.495567, 37.096096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522034, -0.593632, 0.612439,
		0.315534, -0.532690, -0.785290,
		0.792413, 0.603194, -0.090771,
		39.568474, 32.676525, 37.068863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520687, 31.785978, 36.991550>,  <39.013783, 32.254292, 37.132404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520687, 31.785978, 36.991550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607899, 32.109379, 37.210197>,  <39.660225, 32.303417, 37.341385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607899, 32.109379, 37.210197>,  <39.520687, 31.785978, 36.991550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607899, 32.109379, 37.210197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418820, -0.583409, 0.695862,
		0.881506, 0.077215, -0.465816,
		0.218030, 0.808500, 0.546618,
		39.673309, 32.351929, 37.374184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174622, 31.897669, 36.946991>,  <39.520687, 31.785978, 36.991550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174622, 31.897669, 36.946991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014076, 32.001778, 37.298256>,  <39.917747, 32.064243, 37.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014076, 32.001778, 37.298256>,  <40.174622, 31.897669, 36.946991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014076, 32.001778, 37.298256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505165, -0.736857, 0.449277,
		0.764012, 0.623940, 0.164269,
		-0.401365, 0.260270, 0.878161,
		39.893665, 32.079857, 37.561703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639629, 31.865965, 37.541046>,  <40.174622, 31.897669, 36.946991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639629, 31.865965, 37.541046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430607, 32.098427, 37.790588>,  <40.305191, 32.237904, 37.940311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430607, 32.098427, 37.790588>,  <40.639629, 31.865965, 37.541046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430607, 32.098427, 37.790588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635718, -0.222007, 0.739307,
		0.568151, 0.782926, -0.253438,
		-0.522558, 0.581154, 0.623854,
		40.273838, 32.272774, 37.977745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103287, 32.111694, 37.994572>,  <40.639629, 31.865965, 37.541046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103287, 32.111694, 37.994572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769096, 32.168076, 38.207027>,  <40.568581, 32.201904, 38.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769096, 32.168076, 38.207027>,  <41.103287, 32.111694, 37.994572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769096, 32.168076, 38.207027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481634, -0.277561, 0.831257,
		0.264596, 0.950311, 0.164006,
		-0.835474, 0.140956, 0.531144,
		40.518456, 32.210361, 38.366371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260212, 32.439213, 38.583488>,  <41.103287, 32.111694, 37.994572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260212, 32.439213, 38.583488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901089, 32.294331, 38.683685>,  <40.685616, 32.207401, 38.743805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901089, 32.294331, 38.683685>,  <41.260212, 32.439213, 38.583488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901089, 32.294331, 38.683685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330166, -0.177191, 0.927143,
		-0.291430, 0.915101, 0.278672,
		-0.897808, -0.362206, 0.250497,
		40.631748, 32.185669, 38.758835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093002, 32.735138, 39.331730>,  <41.260212, 32.439213, 38.583488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093002, 32.735138, 39.331730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847942, 32.426250, 39.264404>,  <40.700905, 32.240917, 39.224010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847942, 32.426250, 39.264404>,  <41.093002, 32.735138, 39.331730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847942, 32.426250, 39.264404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128103, -0.307169, 0.942994,
		-0.779900, 0.556168, 0.287112,
		-0.612654, -0.772221, -0.168314,
		40.664146, 32.194584, 39.213909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705219, 32.700882, 39.992970>,  <41.093002, 32.735138, 39.331730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705219, 32.700882, 39.992970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690487, 32.348125, 39.804966>,  <40.681648, 32.136471, 39.692165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690487, 32.348125, 39.804966>,  <40.705219, 32.700882, 39.992970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690487, 32.348125, 39.804966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018944, -0.470861, 0.882004,
		-0.999142, 0.023583, 0.034050,
		-0.036833, -0.881892, -0.470010,
		40.679436, 32.083557, 39.663963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165462, 32.228500, 40.332890>,  <40.705219, 32.700882, 39.992970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165462, 32.228500, 40.332890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381748, 31.958845, 40.131626>,  <40.511520, 31.797052, 40.010868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381748, 31.958845, 40.131626>,  <40.165462, 32.228500, 40.332890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381748, 31.958845, 40.131626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101619, -0.646108, 0.756451,
		-0.835046, -0.357892, -0.417865,
		0.540714, -0.674134, -0.503162,
		40.543961, 31.756605, 39.980679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775570, 31.707127, 40.347408>,  <40.165462, 32.228500, 40.332890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775570, 31.707127, 40.347408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162609, 31.611441, 40.315094>,  <40.394833, 31.554029, 40.295708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162609, 31.611441, 40.315094>,  <39.775570, 31.707127, 40.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162609, 31.611441, 40.315094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075093, -0.578118, 0.812490,
		-0.241062, -0.780100, -0.577350,
		0.967600, -0.239216, -0.080783,
		40.452888, 31.539677, 40.290859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750217, 31.102068, 40.730427>,  <39.775570, 31.707127, 40.347408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750217, 31.102068, 40.730427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129406, 31.223499, 40.692097>,  <40.356918, 31.296358, 40.669098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129406, 31.223499, 40.692097>,  <39.750217, 31.102068, 40.730427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129406, 31.223499, 40.692097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214124, -0.385306, 0.897603,
		0.235571, -0.871424, -0.430264,
		0.947975, 0.303579, -0.095826,
		40.413799, 31.314573, 40.663349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265415, 30.969339, 41.306942>,  <39.750217, 31.102068, 40.730427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265415, 30.969339, 41.306942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520142, 31.254314, 41.189026>,  <40.672977, 31.425299, 41.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520142, 31.254314, 41.189026>,  <40.265415, 30.969339, 41.306942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520142, 31.254314, 41.189026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476921, 0.664400, 0.575430,
		0.605818, -0.225848, 0.762874,
		0.636813, 0.712437, -0.294794,
		40.711185, 31.468046, 41.100586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717140, 31.031511, 41.851864>,  <40.265415, 30.969339, 41.306942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717140, 31.031511, 41.851864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915627, 30.853039, 41.553951>,  <41.034718, 30.745956, 41.375206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915627, 30.853039, 41.553951>,  <40.717140, 31.031511, 41.851864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915627, 30.853039, 41.553951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329317, 0.697007, -0.636970,
		0.803319, 0.561342, 0.198930,
		0.496214, -0.446180, -0.744779,
		41.064491, 30.719185, 41.330517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192959, 31.457874, 41.455116>,  <40.717140, 31.031511, 41.851864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192959, 31.457874, 41.455116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085033, 31.173754, 41.195065>,  <41.020279, 31.003281, 41.039032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085033, 31.173754, 41.195065>,  <41.192959, 31.457874, 41.455116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085033, 31.173754, 41.195065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360090, 0.700614, -0.616016,
		0.893050, 0.067899, -0.444805,
		-0.269809, -0.710303, -0.650133,
		41.004089, 30.960663, 41.000023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515491, 31.461735, 40.745655>,  <41.192959, 31.457874, 41.455116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515491, 31.461735, 40.745655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197453, 31.268265, 40.599297>,  <41.006630, 31.152184, 40.511482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197453, 31.268265, 40.599297>,  <41.515491, 31.461735, 40.745655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197453, 31.268265, 40.599297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032561, 0.568391, -0.822114,
		0.605608, -0.665574, -0.436177,
		-0.795097, -0.483676, -0.365894,
		40.958923, 31.123163, 40.489529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669811, 31.031765, 40.068573>,  <41.515491, 31.461735, 40.745655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669811, 31.031765, 40.068573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288441, 31.151339, 40.084644>,  <41.059616, 31.223082, 40.094288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288441, 31.151339, 40.084644>,  <41.669811, 31.031765, 40.068573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288441, 31.151339, 40.084644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095197, 0.424631, -0.900348,
		-0.286204, -0.854592, -0.433313,
		-0.953428, 0.298933, 0.040176,
		41.002411, 31.241018, 40.096699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317242, 30.841763, 39.458347>,  <41.669811, 31.031765, 40.068573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317242, 30.841763, 39.458347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070671, 31.120024, 39.605907>,  <40.922729, 31.286980, 39.694443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070671, 31.120024, 39.605907>,  <41.317242, 30.841763, 39.458347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070671, 31.120024, 39.605907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207744, 0.308212, -0.928358,
		-0.759512, -0.648901, -0.045473,
		-0.616428, 0.695652, 0.368896,
		40.885742, 31.328720, 39.716576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719746, 30.860153, 39.100697>,  <41.317242, 30.841763, 39.458347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719746, 30.860153, 39.100697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659531, 31.220537, 39.263477>,  <40.623402, 31.436768, 39.361145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659531, 31.220537, 39.263477>,  <40.719746, 30.860153, 39.100697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659531, 31.220537, 39.263477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386469, 0.325256, -0.863047,
		-0.909934, -0.287197, 0.299229,
		-0.150539, 0.900958, 0.406954,
		40.614368, 31.490826, 39.385563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024673, 31.020359, 38.913258>,  <40.719746, 30.860153, 39.100697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024673, 31.020359, 38.913258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206203, 31.365986, 39.000370>,  <40.315121, 31.573362, 39.052635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206203, 31.365986, 39.000370>,  <40.024673, 31.020359, 38.913258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206203, 31.365986, 39.000370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494661, 0.447569, -0.744978,
		-0.741182, 0.230366, 0.630540,
		0.453828, 0.864068, 0.217777,
		40.342350, 31.625206, 39.065704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563244, 31.525856, 39.040092>,  <40.024673, 31.020359, 38.913258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563244, 31.525856, 39.040092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898968, 31.718622, 38.939438>,  <40.100403, 31.834282, 38.879044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898968, 31.718622, 38.939438>,  <39.563244, 31.525856, 39.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898968, 31.718622, 38.939438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495691, 0.488238, -0.718271,
		-0.223286, 0.727585, 0.648662,
		0.839305, 0.481916, -0.251641,
		40.150761, 31.863197, 38.863945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385769, 32.274597, 38.989658>,  <39.563244, 31.525856, 39.040092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385769, 32.274597, 38.989658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732784, 32.242558, 38.793312>,  <39.940994, 32.223331, 38.675503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732784, 32.242558, 38.793312>,  <39.385769, 32.274597, 38.989658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732784, 32.242558, 38.793312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428587, 0.380356, -0.819538,
		0.252353, 0.921365, 0.295644,
		0.867543, -0.080103, -0.490869,
		39.993046, 32.218525, 38.646049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616535, 32.965511, 38.863701>,  <39.385769, 32.274597, 38.989658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616535, 32.965511, 38.863701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783638, 32.737087, 38.581036>,  <39.883900, 32.600033, 38.411434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783638, 32.737087, 38.581036>,  <39.616535, 32.965511, 38.863701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783638, 32.737087, 38.581036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378349, 0.597797, -0.706747,
		0.826034, 0.562614, 0.033675,
		0.417756, -0.571056, -0.706665,
		39.908966, 32.565769, 38.369038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140362, 33.288746, 38.401459>,  <39.616535, 32.965511, 38.863701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140362, 33.288746, 38.401459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931538, 32.998272, 38.222523>,  <39.806244, 32.823986, 38.115162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931538, 32.998272, 38.222523>,  <40.140362, 33.288746, 38.401459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931538, 32.998272, 38.222523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406313, 0.672895, -0.618160,
		0.749909, -0.140958, -0.646350,
		-0.522060, -0.726184, -0.447337,
		39.774918, 32.780418, 38.088322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314846, 33.322006, 37.718426>,  <40.140362, 33.288746, 38.401459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314846, 33.322006, 37.718426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937073, 33.190929, 37.708126>,  <39.710407, 33.112286, 37.701946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937073, 33.190929, 37.708126>,  <40.314846, 33.322006, 37.718426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937073, 33.190929, 37.708126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237268, 0.733851, -0.636526,
		0.227478, -0.595048, -0.770825,
		-0.944435, -0.327688, -0.025749,
		39.653744, 33.092625, 37.700401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711311, 33.414337, 37.167404>,  <40.314846, 33.322006, 37.718426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711311, 33.414337, 37.167404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383034, 33.191353, 37.117271>,  <40.186069, 33.057564, 37.087193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383034, 33.191353, 37.117271>,  <40.711311, 33.414337, 37.167404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383034, 33.191353, 37.117271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226447, 0.518727, -0.824405,
		0.524595, -0.648193, -0.551948,
		-0.820684, -0.557466, -0.125340,
		40.136826, 33.024117, 37.079674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640995, 33.361095, 36.471592>,  <40.711311, 33.414337, 37.167404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640995, 33.361095, 36.471592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286228, 33.270187, 36.632454>,  <40.073368, 33.215641, 36.728973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286228, 33.270187, 36.632454>,  <40.640995, 33.361095, 36.471592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286228, 33.270187, 36.632454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460952, 0.492169, -0.738440,
		-0.030103, -0.840308, -0.541273,
		-0.886915, -0.227272, 0.402157,
		40.020153, 33.202007, 36.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198456, 33.100155, 35.955353>,  <40.640995, 33.361095, 36.471592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198456, 33.100155, 35.955353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931515, 33.245872, 36.215176>,  <39.771351, 33.333305, 36.371071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.931515, 33.245872, 36.215176>,  <40.198456, 33.100155, 35.955353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931515, 33.245872, 36.215176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422538, 0.533013, -0.733047,
		-0.613270, -0.763665, -0.201779,
		-0.667354, 0.364297, 0.649559,
		39.731308, 33.355160, 36.410042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565781, 33.114407, 35.630711>,  <40.198456, 33.100155, 35.955353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565781, 33.114407, 35.630711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520172, 33.357662, 35.944950>,  <39.492805, 33.503616, 36.133495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520172, 33.357662, 35.944950>,  <39.565781, 33.114407, 35.630711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520172, 33.357662, 35.944950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407089, 0.692726, -0.595323,
		-0.906244, -0.387690, 0.168579,
		-0.114021, 0.608134, 0.785603,
		39.485966, 33.540104, 36.180630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024246, 32.702213, 35.715858>,  <39.565781, 33.114407, 35.630711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024246, 32.702213, 35.715858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074226, 33.029533, 35.940277>,  <39.104214, 33.225925, 36.074928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074226, 33.029533, 35.940277>,  <39.024246, 32.702213, 35.715858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074226, 33.029533, 35.940277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545653, 0.528959, -0.649973,
		-0.828644, -0.224924, 0.512600,
		0.124950, 0.818298, 0.561049,
		39.111710, 33.275024, 36.108593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339146, 33.008247, 35.905285>,  <39.024246, 32.702213, 35.715858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339146, 33.008247, 35.905285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614227, 33.295792, 35.945889>,  <38.779278, 33.468319, 35.970253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614227, 33.295792, 35.945889>,  <38.339146, 33.008247, 35.905285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614227, 33.295792, 35.945889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549033, 0.606456, -0.575130,
		-0.474998, 0.339787, 0.811740,
		0.687706, 0.718857, 0.101511,
		38.820538, 33.511448, 35.976341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907043, 33.627270, 36.116322>,  <38.339146, 33.008247, 35.905285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907043, 33.627270, 36.116322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252579, 33.793385, 36.002258>,  <38.459900, 33.893051, 35.933819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252579, 33.793385, 36.002258>,  <37.907043, 33.627270, 36.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252579, 33.793385, 36.002258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492363, 0.576277, -0.652291,
		-0.106557, 0.703877, 0.702284,
		0.863843, 0.415285, -0.285157,
		38.511730, 33.917969, 35.916710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969677, 34.309834, 36.313026>,  <37.907043, 33.627270, 36.116322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969677, 34.309834, 36.313026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246197, 34.308014, 36.024006>,  <38.412109, 34.306923, 35.850594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246197, 34.308014, 36.024006>,  <37.969677, 34.309834, 36.313026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246197, 34.308014, 36.024006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562210, 0.624771, -0.541830,
		0.453893, 0.780795, 0.429349,
		0.691304, -0.004548, -0.722550,
		38.453587, 34.306648, 35.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872032, 35.002354, 36.003262>,  <37.969677, 34.309834, 36.313026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872032, 35.002354, 36.003262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111389, 34.800591, 35.754265>,  <38.255005, 34.679535, 35.604866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111389, 34.800591, 35.754265>,  <37.872032, 35.002354, 36.003262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111389, 34.800591, 35.754265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349170, 0.535107, -0.769247,
		0.721113, 0.677670, 0.144082,
		0.598395, -0.504405, -0.622494,
		38.290909, 34.649269, 35.567516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301304, 35.504185, 35.602680>,  <37.872032, 35.002354, 36.003262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301304, 35.504185, 35.602680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302101, 35.167881, 35.386116>,  <38.302582, 34.966099, 35.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.302101, 35.167881, 35.386116>,  <38.301304, 35.504185, 35.602680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302101, 35.167881, 35.386116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199938, 0.530145, -0.823997,
		0.979807, 0.109894, -0.167040,
		0.001997, -0.840755, -0.541412,
		38.302700, 34.915653, 35.223694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554600, 35.727825, 34.942192>,  <38.301304, 35.504185, 35.602680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554600, 35.727825, 34.942192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349442, 35.392975, 34.866135>,  <38.226345, 35.192062, 34.820499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349442, 35.392975, 34.866135>,  <38.554600, 35.727825, 34.942192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349442, 35.392975, 34.866135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286960, 0.375942, -0.881091,
		0.809069, -0.397344, -0.433041,
		-0.512895, -0.837129, -0.190141,
		38.195572, 35.141838, 34.809093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831039, 35.431965, 34.327705>,  <38.554600, 35.727825, 34.942192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831039, 35.431965, 34.327705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450031, 35.336731, 34.403618>,  <38.221424, 35.279591, 34.449165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450031, 35.336731, 34.403618>,  <38.831039, 35.431965, 34.327705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450031, 35.336731, 34.403618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285845, 0.484648, -0.826686,
		0.104846, -0.841684, -0.529694,
		-0.952523, -0.238085, 0.189777,
		38.164276, 35.265305, 34.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431057, 35.862698, 34.513699>,  <38.831039, 35.431965, 34.327705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431057, 35.862698, 34.513699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802608, 35.957077, 34.399498>,  <40.025539, 36.013702, 34.330978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802608, 35.957077, 34.399498>,  <39.431057, 35.862698, 34.513699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802608, 35.957077, 34.399498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308406, -0.919581, 0.243427,
		-0.205108, -0.314165, -0.926947,
		0.928880, 0.235947, -0.285504,
		40.081272, 36.027863, 34.313847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763844, 35.277340, 34.748951>,  <39.431057, 35.862698, 34.513699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763844, 35.277340, 34.748951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056625, 35.536640, 34.665031>,  <40.232292, 35.692223, 34.614681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056625, 35.536640, 34.665031>,  <39.763844, 35.277340, 34.748951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056625, 35.536640, 34.665031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674653, -0.646442, 0.356309,
		0.095355, -0.402343, -0.910510,
		0.731950, 0.648254, -0.209800,
		40.276211, 35.731117, 34.602093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207943, 34.915630, 34.437489>,  <39.763844, 35.277340, 34.748951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207943, 34.915630, 34.437489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448128, 35.214310, 34.551952>,  <40.592239, 35.393517, 34.620628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448128, 35.214310, 34.551952>,  <40.207943, 34.915630, 34.437489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448128, 35.214310, 34.551952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688830, -0.664745, 0.289182,
		0.406154, 0.023471, -0.913503,
		0.600460, 0.746701, 0.286156,
		40.628265, 35.438320, 34.637798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917812, 34.834106, 34.241230>,  <40.207943, 34.915630, 34.437489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917812, 34.834106, 34.241230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960148, 35.093403, 34.542847>,  <40.985550, 35.248981, 34.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960148, 35.093403, 34.542847>,  <40.917812, 34.834106, 34.241230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960148, 35.093403, 34.542847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742314, -0.556064, 0.373849,
		0.661640, 0.520164, -0.540057,
		0.105843, 0.648245, 0.754039,
		40.991901, 35.287876, 34.769058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212303, 34.118500, 34.223209>,  <40.917812, 34.834106, 34.241230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212303, 34.118500, 34.223209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536987, 33.951599, 34.059734>,  <41.731796, 33.851460, 33.961647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536987, 33.951599, 34.059734>,  <41.212303, 34.118500, 34.223209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536987, 33.951599, 34.059734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569441, 0.720966, 0.394898,
		0.129880, -0.553268, 0.822816,
		0.811707, -0.417256, -0.408692,
		41.780499, 33.826424, 33.937126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727516, 33.596638, 34.465744>,  <41.212303, 34.118500, 34.223209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727516, 33.596638, 34.465744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671021, 33.639278, 34.859432>,  <41.637123, 33.664864, 35.095646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671021, 33.639278, 34.859432>,  <41.727516, 33.596638, 34.465744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671021, 33.639278, 34.859432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783231, 0.620083, 0.045233,
		-0.605475, 0.777260, -0.171073,
		-0.141238, 0.106602, 0.984219,
		41.628651, 33.671261, 35.154697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961895, 34.246288, 34.598846>,  <41.727516, 33.596638, 34.465744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961895, 34.246288, 34.598846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968822, 34.028595, 34.934349>,  <41.972977, 33.897980, 35.135651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968822, 34.028595, 34.934349>,  <41.961895, 34.246288, 34.598846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968822, 34.028595, 34.934349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918143, 0.340793, 0.202171,
		-0.395870, 0.766595, 0.505587,
		0.017317, -0.544235, 0.838754,
		41.974018, 33.865326, 35.185974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140228, 34.694138, 35.259926>,  <41.961895, 34.246288, 34.598846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140228, 34.694138, 35.259926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244057, 34.307968, 35.250294>,  <42.306355, 34.076267, 35.244514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244057, 34.307968, 35.250294>,  <42.140228, 34.694138, 35.259926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244057, 34.307968, 35.250294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945971, 0.249168, 0.207496,
		-0.194321, -0.076639, 0.977939,
		0.259573, -0.965423, -0.024080,
		42.321930, 34.018341, 35.243069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852482, 34.916912, 35.440292>,  <42.140228, 34.694138, 35.259926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852482, 34.916912, 35.440292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894680, 34.550411, 35.285706>,  <42.919998, 34.330513, 35.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894680, 34.550411, 35.285706>,  <42.852482, 34.916912, 35.440292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894680, 34.550411, 35.285706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993865, 0.084168, 0.071749,
		-0.033212, -0.391664, 0.919509,
		0.105495, -0.916251, -0.386466,
		42.926327, 34.275536, 35.169765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421494, 34.683937, 35.808826>,  <42.852482, 34.916912, 35.440292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421494, 34.683937, 35.808826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388161, 34.455162, 35.482403>,  <43.368160, 34.317898, 35.286549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.388161, 34.455162, 35.482403>,  <43.421494, 34.683937, 35.808826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388161, 34.455162, 35.482403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954024, 0.190812, -0.231147,
		0.287914, -0.797797, 0.529740,
		-0.083328, -0.571935, -0.816055,
		43.363163, 34.283581, 35.237587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903198, 34.086357, 35.641354>,  <43.421494, 34.683937, 35.808826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903198, 34.086357, 35.641354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786957, 34.179451, 35.270111>,  <43.717213, 34.235306, 35.047363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.786957, 34.179451, 35.270111>,  <43.903198, 34.086357, 35.641354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.786957, 34.179451, 35.270111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953883, 0.146724, -0.261878,
		0.075228, -0.961409, -0.264641,
		-0.290601, 0.232736, -0.928108,
		43.699776, 34.249271, 34.991680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231663, 33.654938, 35.167553>,  <43.903198, 34.086357, 35.641354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231663, 33.654938, 35.167553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116608, 33.991978, 34.985439>,  <44.047573, 34.194202, 34.876171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116608, 33.991978, 34.985439>,  <44.231663, 33.654938, 35.167553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116608, 33.991978, 34.985439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936265, 0.147287, -0.318925,
		-0.201670, -0.518001, -0.831266,
		-0.287639, 0.842604, -0.455283,
		44.030315, 34.244759, 34.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477928, 33.638382, 34.478443>,  <44.231663, 33.654938, 35.167553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477928, 33.638382, 34.478443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448093, 34.014103, 34.612400>,  <44.430191, 34.239536, 34.692776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.448093, 34.014103, 34.612400>,  <44.477928, 33.638382, 34.478443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448093, 34.014103, 34.612400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868981, 0.225966, -0.440241,
		-0.489192, 0.258178, -0.833088,
		-0.074589, 0.939299, 0.334893,
		44.425716, 34.295895, 34.712868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448677, 34.204334, 33.920925>,  <44.477928, 33.638382, 34.478443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448677, 34.204334, 33.920925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626923, 34.272926, 34.272385>,  <44.733871, 34.314079, 34.483261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.626923, 34.272926, 34.272385>,  <44.448677, 34.204334, 33.920925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626923, 34.272926, 34.272385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864154, 0.173934, -0.472213,
		-0.233800, 0.969713, -0.070673,
		0.445618, 0.171476, 0.878647,
		44.760609, 34.324368, 34.535980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667614, 34.940762, 33.998524>,  <44.448677, 34.204334, 33.920925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667614, 34.940762, 33.998524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873634, 34.658203, 34.192730>,  <44.997246, 34.488667, 34.309254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873634, 34.658203, 34.192730>,  <44.667614, 34.940762, 33.998524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873634, 34.658203, 34.192730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799105, 0.190797, -0.570112,
		0.310091, 0.681614, 0.662757,
		0.515048, -0.706399, 0.485516,
		45.028149, 34.446285, 34.338387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277206, 35.124119, 34.449036>,  <44.667614, 34.940762, 33.998524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277206, 35.124119, 34.449036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332985, 34.770241, 34.271107>,  <45.366451, 34.557915, 34.164349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332985, 34.770241, 34.271107>,  <45.277206, 35.124119, 34.449036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332985, 34.770241, 34.271107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808917, 0.360875, -0.464137,
		0.571145, -0.295102, 0.765969,
		0.139451, -0.884694, -0.444825,
		45.374821, 34.504833, 34.137661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979408, 35.478897, 34.598503>,  <45.277206, 35.124119, 34.449036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979408, 35.478897, 34.598503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947392, 35.123737, 34.779716>,  <45.928181, 34.910641, 34.888443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.947392, 35.123737, 34.779716>,  <45.979408, 35.478897, 34.598503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.947392, 35.123737, 34.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881074, 0.149527, 0.448720,
		-0.466157, 0.435067, 0.770334,
		-0.080038, -0.887895, 0.453030,
		45.923382, 34.857368, 34.915627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321480, 35.641045, 35.175278>,  <45.979408, 35.478897, 34.598503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321480, 35.641045, 35.175278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384129, 35.248363, 35.131939>,  <46.421719, 35.012756, 35.105938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.384129, 35.248363, 35.131939>,  <46.321480, 35.641045, 35.175278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384129, 35.248363, 35.131939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980900, 0.141799, 0.133147,
		-0.115347, -0.127127, 0.985157,
		0.156621, -0.981698, -0.108343,
		46.431114, 34.953854, 35.099438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.792431, 35.268806, 35.758430>,  <46.321480, 35.641045, 35.175278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.792431, 35.268806, 35.758430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849186, 35.106262, 35.397377>,  <46.883240, 35.008736, 35.180744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849186, 35.106262, 35.397377>,  <46.792431, 35.268806, 35.758430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849186, 35.106262, 35.397377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976300, 0.207984, 0.059831,
		0.163420, -0.889729, 0.426236,
		0.141884, -0.406357, -0.902631,
		46.891750, 34.984356, 35.126587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.317841, 34.655464, 35.591671>,  <46.792431, 35.268806, 35.758430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.317841, 34.655464, 35.591671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312412, 34.927700, 35.298656>,  <47.309155, 35.091042, 35.122849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.312412, 34.927700, 35.298656>,  <47.317841, 34.655464, 35.591671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.312412, 34.927700, 35.298656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999902, 0.006666, -0.012331,
		-0.003509, -0.732630, -0.680618,
		-0.013571, 0.680594, -0.732535,
		47.308342, 35.131878, 35.078896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.942486, 34.517830, 35.035442>,  <47.317841, 34.655464, 35.591671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.942486, 34.517830, 35.035442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827808, 34.900986, 35.041817>,  <47.759003, 35.130878, 35.045639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827808, 34.900986, 35.041817>,  <47.942486, 34.517830, 35.035442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827808, 34.900986, 35.041817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905738, 0.265588, 0.330306,
		0.312166, 0.109126, -0.943739,
		-0.286691, 0.957891, 0.015932,
		47.741802, 35.188354, 35.046597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.840996, 32.785557, 25.359280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.542877, 32.518890, 25.363243>,  <33.364006, 32.358891, 25.365622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.542877, 32.518890, 25.363243>,  <33.840996, 32.785557, 25.359280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542877, 32.518890, 25.363243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252064, -0.267974, 0.929867,
		-0.617253, 0.695521, 0.367762,
		-0.745293, -0.666663, 0.009908,
		33.319290, 32.318890, 25.366215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361259, 32.894123, 25.894112>,  <33.840996, 32.785557, 25.359280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361259, 32.894123, 25.894112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328533, 32.505741, 25.804174>,  <33.308895, 32.272713, 25.750212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328533, 32.505741, 25.804174>,  <33.361259, 32.894123, 25.894112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328533, 32.505741, 25.804174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351126, -0.239218, 0.905255,
		-0.932747, -0.004880, 0.360500,
		-0.081820, -0.970954, -0.224843,
		33.303986, 32.214455, 25.736721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043610, 32.591736, 26.478813>,  <33.361259, 32.894123, 25.894112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043610, 32.591736, 26.478813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.185513, 32.251144, 26.324341>,  <33.270653, 32.046791, 26.231657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.185513, 32.251144, 26.324341>,  <33.043610, 32.591736, 26.478813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185513, 32.251144, 26.324341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399657, -0.235305, 0.885949,
		-0.845235, -0.468637, 0.256823,
		0.354756, -0.851476, -0.386182,
		33.291939, 31.995701, 26.208487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727745, 32.155701, 26.927694>,  <33.043610, 32.591736, 26.478813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727745, 32.155701, 26.927694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019173, 31.947901, 26.749121>,  <33.194031, 31.823219, 26.641977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.019173, 31.947901, 26.749121>,  <32.727745, 32.155701, 26.927694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019173, 31.947901, 26.749121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411881, -0.188498, 0.891528,
		-0.547305, -0.833417, 0.076640,
		0.728568, -0.519504, -0.446435,
		33.237743, 31.792049, 26.615191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678078, 31.527805, 27.342960>,  <32.727745, 32.155701, 26.927694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678078, 31.527805, 27.342960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037289, 31.573889, 27.173124>,  <33.252815, 31.601538, 27.071222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.037289, 31.573889, 27.173124>,  <32.678078, 31.527805, 27.342960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037289, 31.573889, 27.173124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438452, -0.313711, 0.842227,
		-0.036167, -0.942504, -0.332233,
		0.898027, 0.115207, -0.424588,
		33.306698, 31.608450, 27.045748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936970, 30.939371, 27.456812>,  <32.678078, 31.527805, 27.342960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936970, 30.939371, 27.456812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240307, 31.193419, 27.398100>,  <33.422310, 31.345848, 27.362873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.240307, 31.193419, 27.398100>,  <32.936970, 30.939371, 27.456812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240307, 31.193419, 27.398100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473733, -0.382287, 0.793369,
		0.447772, -0.671177, -0.590781,
		0.758338, 0.635121, -0.146781,
		33.467808, 31.383955, 27.354065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544590, 30.563015, 27.570879>,  <32.936970, 30.939371, 27.456812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544590, 30.563015, 27.570879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684212, 30.935186, 27.615536>,  <33.767986, 31.158489, 27.642330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684212, 30.935186, 27.615536>,  <33.544590, 30.563015, 27.570879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684212, 30.935186, 27.615536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448640, -0.270516, 0.851788,
		0.822729, -0.247233, -0.511852,
		0.349054, 0.930428, 0.111643,
		33.788929, 31.214315, 27.649029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175735, 30.501591, 27.924519>,  <33.544590, 30.563015, 27.570879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175735, 30.501591, 27.924519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094013, 30.891211, 27.963488>,  <34.044979, 31.124983, 27.986868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094013, 30.891211, 27.963488>,  <34.175735, 30.501591, 27.924519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094013, 30.891211, 27.963488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499140, 0.018047, 0.866333,
		0.842091, 0.225624, -0.489873,
		-0.204306, 0.974047, 0.097421,
		34.032722, 31.183424, 27.992714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675327, 30.802307, 28.318367>,  <34.175735, 30.501591, 27.924519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675327, 30.802307, 28.318367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447048, 31.130772, 28.318764>,  <34.310081, 31.327850, 28.319002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.447048, 31.130772, 28.318764>,  <34.675327, 30.802307, 28.318367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447048, 31.130772, 28.318764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464875, 0.322086, 0.824713,
		0.676903, 0.471120, -0.565551,
		-0.570695, 0.821161, 0.000991,
		34.275841, 31.377121, 28.319061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087738, 31.331306, 28.299429>,  <34.675327, 30.802307, 28.318367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087738, 31.331306, 28.299429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739796, 31.438929, 28.464815>,  <34.531029, 31.503502, 28.564047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739796, 31.438929, 28.464815>,  <35.087738, 31.331306, 28.299429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739796, 31.438929, 28.464815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453359, 0.105632, 0.885047,
		0.194450, 0.957315, -0.213863,
		-0.869859, 0.269054, 0.413467,
		34.478836, 31.519644, 28.588856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135490, 31.948708, 28.634514>,  <35.087738, 31.331306, 28.299429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135490, 31.948708, 28.634514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846413, 31.757446, 28.834145>,  <34.672966, 31.642689, 28.953922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.846413, 31.757446, 28.834145>,  <35.135490, 31.948708, 28.634514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846413, 31.757446, 28.834145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477451, 0.176730, 0.860701,
		-0.499750, 0.860311, 0.100574,
		-0.722696, -0.478155, 0.499077,
		34.629604, 31.614000, 28.983868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077824, 32.420143, 29.178392>,  <35.135490, 31.948708, 28.634514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077824, 32.420143, 29.178392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898804, 32.079369, 29.287132>,  <34.791393, 31.874903, 29.352377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.898804, 32.079369, 29.287132>,  <35.077824, 32.420143, 29.178392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898804, 32.079369, 29.287132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361622, 0.105615, 0.926323,
		-0.817882, 0.512879, 0.260813,
		-0.447546, -0.851939, 0.271849,
		34.764542, 31.823788, 29.368687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677288, 32.520226, 29.746021>,  <35.077824, 32.420143, 29.178392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677288, 32.520226, 29.746021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742134, 32.125599, 29.754021>,  <34.781044, 31.888823, 29.758820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742134, 32.125599, 29.754021>,  <34.677288, 32.520226, 29.746021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742134, 32.125599, 29.754021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306460, 0.069601, 0.949336,
		-0.937977, -0.147776, 0.313627,
		0.162117, -0.986569, 0.019997,
		34.790768, 31.829628, 29.760019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437149, 32.207123, 30.469370>,  <34.677288, 32.520226, 29.746021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437149, 32.207123, 30.469370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687851, 31.942905, 30.304028>,  <34.838272, 31.784374, 30.204823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.687851, 31.942905, 30.304028>,  <34.437149, 32.207123, 30.469370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687851, 31.942905, 30.304028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504215, -0.060658, 0.861445,
		-0.594095, -0.748334, 0.295038,
		0.626752, -0.660543, -0.413357,
		34.875877, 31.744743, 30.180019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439907, 31.624212, 30.989115>,  <34.437149, 32.207123, 30.469370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439907, 31.624212, 30.989115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.761806, 31.586876, 30.754623>,  <34.954948, 31.564474, 30.613928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.761806, 31.586876, 30.754623>,  <34.439907, 31.624212, 30.989115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761806, 31.586876, 30.754623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580161, -0.085383, 0.810014,
		-0.125664, -0.991966, -0.014557,
		0.804749, -0.093345, -0.586229,
		35.003231, 31.558874, 30.578754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781849, 31.195234, 31.378460>,  <34.439907, 31.624212, 30.989115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781849, 31.195234, 31.378460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048061, 31.328171, 31.111143>,  <35.207790, 31.407932, 30.950752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048061, 31.328171, 31.111143>,  <34.781849, 31.195234, 31.378460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048061, 31.328171, 31.111143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711019, -0.010020, 0.703101,
		0.226975, -0.943105, -0.242971,
		0.665533, 0.332344, -0.668292,
		35.247723, 31.427874, 30.910656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336769, 30.813604, 31.492884>,  <34.781849, 31.195234, 31.378460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336769, 30.813604, 31.492884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.487320, 31.131519, 31.302454>,  <35.577652, 31.322269, 31.188196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.487320, 31.131519, 31.302454>,  <35.336769, 30.813604, 31.492884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487320, 31.131519, 31.302454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731587, 0.060312, 0.679075,
		0.568435, -0.603881, -0.558758,
		0.376380, 0.794789, -0.476075,
		35.600235, 31.369957, 31.159632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040497, 30.696238, 31.559738>,  <35.336769, 30.813604, 31.492884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040497, 30.696238, 31.559738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020451, 31.079262, 31.446199>,  <36.008423, 31.309076, 31.378077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020451, 31.079262, 31.446199>,  <36.040497, 30.696238, 31.559738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020451, 31.079262, 31.446199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808911, 0.205608, 0.550807,
		0.585792, -0.202002, -0.784884,
		-0.050114, 0.957559, -0.283845,
		36.005417, 31.366529, 31.361046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730553, 30.912773, 31.416918>,  <36.040497, 30.696238, 31.559738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730553, 30.912773, 31.416918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561600, 31.273926, 31.448898>,  <36.460228, 31.490618, 31.468086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.561600, 31.273926, 31.448898>,  <36.730553, 30.912773, 31.416918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561600, 31.273926, 31.448898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812903, 0.338312, 0.474061,
		0.400972, 0.265231, -0.876854,
		-0.422386, 0.902883, 0.079953,
		36.434883, 31.544790, 31.472885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325989, 31.481855, 31.335457>,  <36.730553, 30.912773, 31.416918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325989, 31.481855, 31.335457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021767, 31.643095, 31.539049>,  <36.839233, 31.739840, 31.661205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021767, 31.643095, 31.539049>,  <37.325989, 31.481855, 31.335457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021767, 31.643095, 31.539049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647204, 0.408183, 0.643827,
		0.051770, 0.819083, -0.571335,
		-0.760557, 0.403101, 0.508982,
		36.793598, 31.764025, 31.691744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577641, 32.178444, 31.462425>,  <37.325989, 31.481855, 31.335457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577641, 32.178444, 31.462425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300682, 32.093296, 31.738184>,  <37.134506, 32.042206, 31.903639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300682, 32.093296, 31.738184>,  <37.577641, 32.178444, 31.462425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300682, 32.093296, 31.738184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555994, 0.451539, 0.697842,
		-0.459841, 0.866486, -0.194289,
		-0.692399, -0.212872, 0.689397,
		37.092960, 32.029434, 31.945004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678314, 32.680492, 31.911829>,  <37.577641, 32.178444, 31.462425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678314, 32.680492, 31.911829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469837, 32.415390, 32.126904>,  <37.344749, 32.256329, 32.255947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469837, 32.415390, 32.126904>,  <37.678314, 32.680492, 31.911829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469837, 32.415390, 32.126904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499332, 0.274124, 0.821903,
		-0.692114, 0.696858, 0.188063,
		-0.521197, -0.662756, 0.537688,
		37.313477, 32.216564, 32.288212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433907, 32.924030, 32.726898>,  <37.678314, 32.680492, 31.911829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433907, 32.924030, 32.726898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485497, 32.527702, 32.710667>,  <37.516449, 32.289906, 32.700928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.485497, 32.527702, 32.710667>,  <37.433907, 32.924030, 32.726898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485497, 32.527702, 32.710667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661611, 0.055496, 0.747791,
		-0.738672, -0.123296, 0.662693,
		0.128976, -0.990817, -0.040581,
		37.524189, 32.230457, 32.698494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276836, 32.834721, 32.742386>,  <37.433907, 32.924030, 32.726898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276836, 32.834721, 32.742386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.609322, 33.022217, 32.622814>,  <38.808815, 33.134716, 32.551071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.609322, 33.022217, 32.622814>,  <38.276836, 32.834721, 32.742386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609322, 33.022217, 32.622814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417308, 0.170786, -0.892573,
		-0.367333, 0.866667, 0.337570,
		0.831216, 0.468743, -0.298931,
		38.858688, 33.162838, 32.533134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089909, 33.450153, 32.504017>,  <38.276836, 32.834721, 32.742386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089909, 33.450153, 32.504017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444248, 33.371025, 32.336147>,  <38.656853, 33.323547, 32.235424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.444248, 33.371025, 32.336147>,  <38.089909, 33.450153, 32.504017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444248, 33.371025, 32.336147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338663, 0.342575, -0.876328,
		0.317131, 0.918426, 0.236475,
		0.885853, -0.197825, -0.419678,
		38.710003, 33.311676, 32.210243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238117, 34.025421, 32.016548>,  <38.089909, 33.450153, 32.504017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238117, 34.025421, 32.016548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500828, 33.764362, 31.865452>,  <38.658455, 33.607727, 31.774794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.500828, 33.764362, 31.865452>,  <38.238117, 34.025421, 32.016548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500828, 33.764362, 31.865452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312441, 0.220390, -0.924018,
		0.686312, 0.724896, -0.059168,
		0.656777, -0.652651, -0.377744,
		38.697861, 33.568565, 31.752129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643898, 34.383896, 31.394398>,  <38.238117, 34.025421, 32.016548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643898, 34.383896, 31.394398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643192, 33.984955, 31.365294>,  <38.642769, 33.745590, 31.347832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.643192, 33.984955, 31.365294>,  <38.643898, 34.383896, 31.394398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643192, 33.984955, 31.365294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122843, 0.072427, -0.989780,
		0.992424, 0.007188, -0.122646,
		-0.001769, -0.997348, -0.072761,
		38.642662, 33.685749, 31.343466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800316, 34.304905, 30.691750>,  <38.643898, 34.383896, 31.394398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800316, 34.304905, 30.691750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.716690, 33.929508, 30.801674>,  <38.666515, 33.704269, 30.867628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.716690, 33.929508, 30.801674>,  <38.800316, 34.304905, 30.691750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716690, 33.929508, 30.801674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242827, -0.222396, -0.944233,
		0.947274, -0.264136, -0.181397,
		-0.209064, -0.938495, 0.274809,
		38.653973, 33.647961, 30.884117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991982, 33.854507, 29.994678>,  <38.800316, 34.304905, 30.691750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991982, 33.854507, 29.994678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735733, 33.679802, 30.247295>,  <38.581982, 33.574978, 30.398865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.735733, 33.679802, 30.247295>,  <38.991982, 33.854507, 29.994678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735733, 33.679802, 30.247295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661192, -0.104419, -0.742915,
		0.390420, -0.893497, -0.221889,
		-0.640623, -0.436760, 0.631540,
		38.543545, 33.548775, 30.436758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757286, 33.287090, 29.556536>,  <38.991982, 33.854507, 29.994678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757286, 33.287090, 29.556536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488495, 33.370663, 29.840729>,  <38.327221, 33.420807, 30.011246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.488495, 33.370663, 29.840729>,  <38.757286, 33.287090, 29.556536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488495, 33.370663, 29.840729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718480, 0.048635, -0.693846,
		-0.179522, -0.976720, 0.117433,
		-0.671981, 0.208934, 0.710484,
		38.286900, 33.433342, 30.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238773, 32.800663, 29.501928>,  <38.757286, 33.287090, 29.556536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238773, 32.800663, 29.501928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079453, 33.107677, 29.702824>,  <37.983860, 33.291885, 29.823360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.079453, 33.107677, 29.702824>,  <38.238773, 32.800663, 29.501928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079453, 33.107677, 29.702824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750398, 0.042228, -0.659636,
		-0.527503, -0.639614, 0.559137,
		-0.398301, 0.767535, 0.502240,
		37.959961, 33.337936, 29.853497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596394, 32.626137, 29.638468>,  <38.238773, 32.800663, 29.501928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596394, 32.626137, 29.638468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569839, 33.023529, 29.675554>,  <37.553905, 33.261963, 29.697805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.569839, 33.023529, 29.675554>,  <37.596394, 32.626137, 29.638468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569839, 33.023529, 29.675554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929680, -0.027843, -0.367316,
		-0.362338, -0.110581, 0.925464,
		-0.066386, 0.993477, 0.092716,
		37.549923, 33.321571, 29.703369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917896, 32.778370, 29.931488>,  <37.596394, 32.626137, 29.638468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917896, 32.778370, 29.931488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058136, 33.093159, 29.728413>,  <37.142281, 33.282032, 29.606567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058136, 33.093159, 29.728413>,  <36.917896, 32.778370, 29.931488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058136, 33.093159, 29.728413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905665, 0.146897, -0.397734,
		-0.238430, 0.599241, 0.764239,
		0.350604, 0.786976, -0.507687,
		37.163319, 33.329250, 29.576107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385685, 33.326447, 29.956299>,  <36.917896, 32.778370, 29.931488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385685, 33.326447, 29.956299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614063, 33.430378, 29.644785>,  <36.751091, 33.492737, 29.457876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.614063, 33.430378, 29.644785>,  <36.385685, 33.326447, 29.956299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614063, 33.430378, 29.644785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815466, 0.289285, -0.501327,
		0.095031, 0.921305, 0.377048,
		0.570950, 0.259829, -0.778785,
		36.785347, 33.508327, 29.411150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089252, 33.930702, 29.711794>,  <36.385685, 33.326447, 29.956299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089252, 33.930702, 29.711794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306976, 33.786915, 29.408609>,  <36.437611, 33.700642, 29.226698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.306976, 33.786915, 29.408609>,  <36.089252, 33.930702, 29.711794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306976, 33.786915, 29.408609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743619, 0.211441, -0.634290,
		0.388273, 0.908885, -0.152220,
		0.544311, -0.359472, -0.757961,
		36.470268, 33.679073, 29.181221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033424, 34.463795, 29.233118>,  <36.089252, 33.930702, 29.711794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033424, 34.463795, 29.233118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.144070, 34.159550, 28.998186>,  <36.210457, 33.977005, 28.857227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.144070, 34.159550, 28.998186>,  <36.033424, 34.463795, 29.233118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144070, 34.159550, 28.998186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698027, 0.261035, -0.666798,
		0.660487, 0.594418, -0.458720,
		0.276614, -0.760610, -0.587330,
		36.227055, 33.931366, 28.821987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112362, 34.757015, 28.603300>,  <36.033424, 34.463795, 29.233118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112362, 34.757015, 28.603300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.090397, 34.367836, 28.513544>,  <36.077217, 34.134327, 28.459690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.090397, 34.367836, 28.513544>,  <36.112362, 34.757015, 28.603300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090397, 34.367836, 28.513544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471140, 0.223385, -0.853303,
		0.880347, 0.058862, -0.470663,
		-0.054912, -0.972951, -0.224389,
		36.073925, 34.075951, 28.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381264, 34.705158, 27.828274>,  <36.112362, 34.757015, 28.603300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381264, 34.705158, 27.828274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155342, 34.382763, 27.899120>,  <36.019787, 34.189323, 27.941628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155342, 34.382763, 27.899120>,  <36.381264, 34.705158, 27.828274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155342, 34.382763, 27.899120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433656, 0.107288, -0.894668,
		0.702093, -0.582122, -0.410121,
		-0.564807, -0.805992, 0.177115,
		35.985901, 34.140965, 27.952255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458931, 34.187820, 27.252354>,  <36.381264, 34.705158, 27.828274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458931, 34.187820, 27.252354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109196, 34.078697, 27.412905>,  <35.899353, 34.013226, 27.509235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109196, 34.078697, 27.412905>,  <36.458931, 34.187820, 27.252354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109196, 34.078697, 27.412905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424799, 0.030279, -0.904781,
		0.234676, -0.961593, -0.142361,
		-0.874342, -0.272805, 0.401378,
		35.846893, 33.996857, 27.533318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134640, 33.882156, 26.750948>,  <36.458931, 34.187820, 27.252354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134640, 33.882156, 26.750948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833679, 33.949696, 27.005627>,  <35.653103, 33.990219, 27.158434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833679, 33.949696, 27.005627>,  <36.134640, 33.882156, 26.750948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833679, 33.949696, 27.005627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602329, 0.214894, -0.768778,
		-0.266627, -0.961931, -0.059986,
		-0.752403, 0.168846, 0.636696,
		35.607960, 34.000351, 27.196636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.438148, 33.474472, 26.340925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294109, 33.700260, 26.638031>,  <35.207684, 33.835732, 26.816296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294109, 33.700260, 26.638031>,  <35.438148, 33.474472, 26.340925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294109, 33.700260, 26.638031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779088, 0.256006, -0.572262,
		-0.513177, -0.784751, 0.347584,
		-0.360099, 0.564470, 0.742766,
		35.186081, 33.869602, 26.860861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791241, 33.223701, 26.499269>,  <35.438148, 33.474472, 26.340925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791241, 33.223701, 26.499269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791630, 33.605751, 26.617758>,  <34.791862, 33.834980, 26.688850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791630, 33.605751, 26.617758>,  <34.791241, 33.223701, 26.499269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791630, 33.605751, 26.617758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770958, 0.189377, -0.608078,
		-0.636885, -0.227780, 0.736542,
		0.000976, 0.955119, 0.296220,
		34.791924, 33.892288, 26.706623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121872, 33.351177, 26.678234>,  <34.791241, 33.223701, 26.499269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121872, 33.351177, 26.678234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298149, 33.704098, 26.612095>,  <34.403915, 33.915848, 26.572411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.298149, 33.704098, 26.612095>,  <34.121872, 33.351177, 26.678234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298149, 33.704098, 26.612095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722788, 0.239534, -0.648229,
		-0.532325, 0.405181, 0.743275,
		0.440690, 0.882299, -0.165350,
		34.430355, 33.968788, 26.562490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594242, 33.940712, 26.586538>,  <34.121872, 33.351177, 26.678234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594242, 33.940712, 26.586538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916599, 34.104294, 26.415291>,  <34.110012, 34.202442, 26.312542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916599, 34.104294, 26.415291>,  <33.594242, 33.940712, 26.586538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916599, 34.104294, 26.415291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584454, 0.433980, -0.685620,
		-0.094595, 0.802754, 0.588760,
		0.805894, 0.408959, -0.428120,
		34.158367, 34.226982, 26.286854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288403, 34.613968, 26.353094>,  <33.594242, 33.940712, 26.586538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288403, 34.613968, 26.353094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622757, 34.540916, 26.146044>,  <33.823372, 34.497086, 26.021814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622757, 34.540916, 26.146044>,  <33.288403, 34.613968, 26.353094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622757, 34.540916, 26.146044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409258, 0.421064, -0.809452,
		0.365779, 0.888455, 0.277223,
		0.835890, -0.182625, -0.517624,
		33.873524, 34.486130, 25.990757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328846, 35.177162, 25.865366>,  <33.288403, 34.613968, 26.353094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328846, 35.177162, 25.865366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577206, 34.892738, 25.733372>,  <33.726219, 34.722084, 25.654175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577206, 34.892738, 25.733372>,  <33.328846, 35.177162, 25.865366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577206, 34.892738, 25.733372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140044, 0.313565, -0.939183,
		0.771283, 0.629346, 0.095112,
		0.620895, -0.711056, -0.329984,
		33.763474, 34.679420, 25.634377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904346, 35.432327, 25.587814>,  <33.328846, 35.177162, 25.865366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904346, 35.432327, 25.587814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864899, 35.076077, 25.410246>,  <33.841228, 34.862328, 25.303705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864899, 35.076077, 25.410246>,  <33.904346, 35.432327, 25.587814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864899, 35.076077, 25.410246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191497, 0.454742, -0.869792,
		0.976526, -0.000770, -0.215398,
		-0.098620, -0.890623, -0.443920,
		33.835312, 34.808891, 25.277069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145779, 35.522152, 24.894634>,  <33.904346, 35.432327, 25.587814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145779, 35.522152, 24.894634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.978470, 35.162457, 24.843369>,  <33.878086, 34.946640, 24.812609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.978470, 35.162457, 24.843369>,  <34.145779, 35.522152, 24.894634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978470, 35.162457, 24.843369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144492, 0.205174, -0.968001,
		0.896758, -0.386365, -0.215750,
		-0.418267, -0.899237, -0.128164,
		33.852989, 34.892685, 24.804920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490032, 35.263702, 24.408684>,  <34.145779, 35.522152, 24.894634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490032, 35.263702, 24.408684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131157, 35.087208, 24.401047>,  <33.915833, 34.981312, 24.396465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.131157, 35.087208, 24.401047>,  <34.490032, 35.263702, 24.408684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131157, 35.087208, 24.401047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094537, 0.234091, -0.967607,
		0.431413, -0.866320, -0.251737,
		-0.897187, -0.441237, -0.019091,
		33.862000, 34.954838, 24.395319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505486, 34.956394, 23.763508>,  <34.490032, 35.263702, 24.408684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505486, 34.956394, 23.763508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114578, 34.930546, 23.844271>,  <33.880032, 34.915039, 23.892729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114578, 34.930546, 23.844271>,  <34.505486, 34.956394, 23.763508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114578, 34.930546, 23.844271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211182, 0.380171, -0.900485,
		-0.018572, -0.922656, -0.385176,
		-0.977270, -0.064618, 0.201909,
		33.821396, 34.911160, 23.904844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198761, 34.597641, 23.187630>,  <34.505486, 34.956394, 23.763508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198761, 34.597641, 23.187630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916908, 34.822052, 23.361410>,  <33.747799, 34.956699, 23.465679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916908, 34.822052, 23.361410>,  <34.198761, 34.597641, 23.187630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916908, 34.822052, 23.361410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343808, 0.265660, -0.900678,
		-0.620719, -0.784012, 0.005693,
		-0.704630, 0.561025, 0.434450,
		33.705521, 34.990360, 23.491745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647964, 34.555523, 22.719120>,  <34.198761, 34.597641, 23.187630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647964, 34.555523, 22.719120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557919, 34.872620, 22.945705>,  <33.503891, 35.062878, 23.081656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557919, 34.872620, 22.945705>,  <33.647964, 34.555523, 22.719120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557919, 34.872620, 22.945705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414400, 0.448279, -0.792035,
		-0.881814, -0.413039, 0.227601,
		-0.225112, 0.792745, 0.566462,
		33.490383, 35.110443, 23.115644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998093, 34.817219, 22.472769>,  <33.647964, 34.555523, 22.719120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998093, 34.817219, 22.472769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.161823, 35.126808, 22.666019>,  <33.260063, 35.312561, 22.781969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.161823, 35.126808, 22.666019>,  <32.998093, 34.817219, 22.472769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161823, 35.126808, 22.666019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267175, 0.607987, -0.747642,
		-0.872391, 0.176953, 0.455654,
		0.409329, 0.773976, 0.483125,
		33.284622, 35.359001, 22.810957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511803, 35.494270, 22.689558>,  <32.998093, 34.817219, 22.472769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511803, 35.494270, 22.689558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.889721, 35.625320, 22.687334>,  <33.116470, 35.703949, 22.685999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.889721, 35.625320, 22.687334>,  <32.511803, 35.494270, 22.689558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889721, 35.625320, 22.687334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203660, 0.573849, -0.793234,
		-0.256691, 0.750574, 0.608892,
		0.944792, 0.327623, -0.005560,
		33.173157, 35.723606, 22.685665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422245, 36.187889, 22.620262>,  <32.511803, 35.494270, 22.689558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422245, 36.187889, 22.620262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806519, 36.127415, 22.527115>,  <33.037083, 36.091129, 22.471228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806519, 36.127415, 22.527115>,  <32.422245, 36.187889, 22.620262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806519, 36.127415, 22.527115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045924, 0.740650, -0.670320,
		0.273817, 0.654660, 0.704588,
		0.960685, -0.151187, -0.232867,
		33.094723, 36.082058, 22.457254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721684, 36.785645, 22.651705>,  <32.422245, 36.187889, 22.620262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721684, 36.785645, 22.651705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966976, 36.563366, 22.427153>,  <33.114151, 36.430000, 22.292421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.966976, 36.563366, 22.427153>,  <32.721684, 36.785645, 22.651705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966976, 36.563366, 22.427153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008675, 0.715393, -0.698668,
		0.789852, 0.423579, 0.443526,
		0.613236, -0.555692, -0.561380,
		33.150948, 36.396660, 22.258739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158066, 37.295784, 22.399454>,  <32.721684, 36.785645, 22.651705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158066, 37.295784, 22.399454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232819, 37.004768, 22.135403>,  <33.277672, 36.830158, 21.976973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232819, 37.004768, 22.135403>,  <33.158066, 37.295784, 22.399454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232819, 37.004768, 22.135403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237780, 0.685483, -0.688167,
		0.953172, -0.028359, 0.301097,
		0.186881, -0.727536, -0.660127,
		33.288883, 36.786507, 21.937365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838902, 37.480976, 22.009785>,  <33.158066, 37.295784, 22.399454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838902, 37.480976, 22.009785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644035, 37.213364, 21.785261>,  <33.527115, 37.052795, 21.650547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644035, 37.213364, 21.785261>,  <33.838902, 37.480976, 22.009785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644035, 37.213364, 21.785261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247658, 0.510516, -0.823431,
		0.837458, -0.540160, -0.083015,
		-0.487165, -0.669030, -0.561310,
		33.497887, 37.012653, 21.616867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272911, 37.243801, 21.485502>,  <33.838902, 37.480976, 22.009785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272911, 37.243801, 21.485502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894497, 37.193817, 21.365902>,  <33.667450, 37.163826, 21.294142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894497, 37.193817, 21.365902>,  <34.272911, 37.243801, 21.485502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894497, 37.193817, 21.365902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170259, 0.593397, -0.786697,
		0.275730, -0.795151, -0.540100,
		-0.946037, -0.124959, -0.298999,
		33.610687, 37.156330, 21.276203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296497, 37.473625, 20.703823>,  <34.272911, 37.243801, 21.485502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296497, 37.473625, 20.703823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901913, 37.442150, 20.761377>,  <33.665161, 37.423267, 20.795910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901913, 37.442150, 20.761377>,  <34.296497, 37.473625, 20.703823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901913, 37.442150, 20.761377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162987, 0.567519, -0.807067,
		-0.018154, -0.819592, -0.572660,
		-0.986461, -0.078685, 0.143886,
		33.605976, 37.418545, 20.804543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922298, 37.128029, 20.120277>,  <34.296497, 37.473625, 20.703823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922298, 37.128029, 20.120277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655018, 37.364487, 20.300968>,  <33.494648, 37.506359, 20.409382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655018, 37.364487, 20.300968>,  <33.922298, 37.128029, 20.120277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655018, 37.364487, 20.300968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123213, 0.510863, -0.850786,
		-0.733705, -0.624157, -0.268524,
		-0.668203, 0.591141, 0.451727,
		33.454556, 37.541828, 20.436485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310780, 37.102036, 19.769396>,  <33.922298, 37.128029, 20.120277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310780, 37.102036, 19.769396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298222, 37.464081, 19.939003>,  <33.290688, 37.681309, 20.040768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.298222, 37.464081, 19.939003>,  <33.310780, 37.102036, 19.769396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298222, 37.464081, 19.939003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158422, 0.414360, -0.896219,
		-0.986872, -0.095307, 0.130382,
		-0.031391, 0.905109, 0.424019,
		33.288803, 37.735615, 20.066208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590706, 37.558926, 19.531904>,  <33.310780, 37.102036, 19.769396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590706, 37.558926, 19.531904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927803, 37.756161, 19.618290>,  <33.130062, 37.874500, 19.670122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.927803, 37.756161, 19.618290>,  <32.590706, 37.558926, 19.531904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927803, 37.756161, 19.618290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126733, 0.571654, -0.810649,
		-0.523180, 0.655801, 0.544250,
		0.842747, 0.493089, 0.215966,
		33.180626, 37.904087, 19.683081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803543, 37.666832, 19.778301>,  <32.590706, 37.558926, 19.531904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803543, 37.666832, 19.778301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487595, 37.549114, 19.563084>,  <31.298025, 37.478485, 19.433952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487595, 37.549114, 19.563084>,  <31.803543, 37.666832, 19.778301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487595, 37.549114, 19.563084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002835, -0.875576, 0.483071,
		-0.613264, 0.383090, 0.690760,
		-0.789873, -0.294291, -0.538046,
		31.250633, 37.460827, 19.401670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284470, 37.522556, 20.246178>,  <31.803543, 37.666832, 19.778301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284470, 37.522556, 20.246178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127928, 37.353149, 19.919380>,  <31.034002, 37.251507, 19.723303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.127928, 37.353149, 19.919380>,  <31.284470, 37.522556, 20.246178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127928, 37.353149, 19.919380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061054, -0.873897, 0.482261,
		-0.918212, 0.238616, 0.316147,
		-0.391355, -0.423516, -0.816992,
		31.010521, 37.226093, 19.674282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632856, 37.219856, 20.521225>,  <31.284470, 37.522556, 20.246178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632856, 37.219856, 20.521225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702299, 37.020748, 20.181322>,  <30.743965, 36.901283, 19.977381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.702299, 37.020748, 20.181322>,  <30.632856, 37.219856, 20.521225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702299, 37.020748, 20.181322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133162, -0.866801, 0.480546,
		-0.975771, 0.029729, -0.216767,
		0.173608, -0.497768, -0.849757,
		30.754381, 36.871418, 19.926395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113741, 36.692974, 20.558367>,  <30.632856, 37.219856, 20.521225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113741, 36.692974, 20.558367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398174, 36.565338, 20.307753>,  <30.568834, 36.488758, 20.157383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.398174, 36.565338, 20.307753>,  <30.113741, 36.692974, 20.558367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398174, 36.565338, 20.307753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082097, -0.847318, 0.524702,
		-0.698300, -0.424542, -0.576316,
		0.711082, -0.319085, -0.626536,
		30.611498, 36.469612, 20.119791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853033, 36.105595, 20.341568>,  <30.113741, 36.692974, 20.558367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853033, 36.105595, 20.341568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251928, 36.122250, 20.316971>,  <30.491266, 36.132244, 20.302212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251928, 36.122250, 20.316971>,  <29.853033, 36.105595, 20.341568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251928, 36.122250, 20.316971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070678, -0.786341, 0.613736,
		-0.022801, -0.616388, -0.787112,
		0.997239, 0.041637, -0.061494,
		30.551100, 36.134739, 20.298523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031855, 35.425045, 20.508572>,  <29.853033, 36.105595, 20.341568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031855, 35.425045, 20.508572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394567, 35.589413, 20.546286>,  <30.612196, 35.688034, 20.568914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.394567, 35.589413, 20.546286>,  <30.031855, 35.425045, 20.508572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394567, 35.589413, 20.546286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282996, -0.759027, 0.586337,
		0.312500, -0.504999, -0.804562,
		0.906784, 0.410918, 0.094283,
		30.666603, 35.712688, 20.574570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413551, 34.830780, 20.427267>,  <30.031855, 35.425045, 20.508572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413551, 34.830780, 20.427267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707001, 35.072731, 20.551151>,  <30.883070, 35.217903, 20.625483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707001, 35.072731, 20.551151>,  <30.413551, 34.830780, 20.427267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707001, 35.072731, 20.551151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353204, -0.728758, 0.586651,
		0.580558, -0.320988, -0.748278,
		0.733621, 0.604879, 0.309712,
		30.927088, 35.254196, 20.644064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029825, 34.426529, 20.412472>,  <30.413551, 34.830780, 20.427267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029825, 34.426529, 20.412472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074175, 34.715446, 20.685528>,  <31.100784, 34.888798, 20.849361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.074175, 34.715446, 20.685528>,  <31.029825, 34.426529, 20.412472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074175, 34.715446, 20.685528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449060, -0.649170, 0.613941,
		0.886596, 0.238477, -0.396329,
		0.110874, 0.722293, 0.682642,
		31.107437, 34.932133, 20.890320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727234, 34.362434, 20.645565>,  <31.029825, 34.426529, 20.412472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727234, 34.362434, 20.645565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500820, 34.543682, 20.921041>,  <31.364973, 34.652431, 21.086327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.500820, 34.543682, 20.921041>,  <31.727234, 34.362434, 20.645565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500820, 34.543682, 20.921041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342534, -0.630603, 0.696427,
		0.749852, 0.630099, 0.201734,
		-0.566032, 0.453117, 0.688689,
		31.331011, 34.679619, 21.127647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197006, 34.387451, 21.334732>,  <31.727234, 34.362434, 20.645565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197006, 34.387451, 21.334732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819670, 34.466923, 21.441044>,  <31.593267, 34.514606, 21.504831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819670, 34.466923, 21.441044>,  <32.197006, 34.387451, 21.334732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819670, 34.466923, 21.441044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186493, -0.345056, 0.919868,
		0.274464, 0.917314, 0.288453,
		-0.943340, 0.198676, 0.265778,
		31.536667, 34.526527, 21.520777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277119, 34.798115, 21.967747>,  <32.197006, 34.387451, 21.334732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277119, 34.798115, 21.967747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927366, 34.604492, 21.954155>,  <31.717516, 34.488319, 21.945999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.927366, 34.604492, 21.954155>,  <32.277119, 34.798115, 21.967747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927366, 34.604492, 21.954155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262981, -0.531562, 0.805160,
		-0.407805, 0.695077, 0.592084,
		-0.874377, -0.484055, -0.033981,
		31.665052, 34.459274, 21.943960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051514, 34.797939, 22.646486>,  <32.277119, 34.798115, 21.967747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051514, 34.797939, 22.646486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843685, 34.497360, 22.483820>,  <31.718988, 34.317013, 22.386219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843685, 34.497360, 22.483820>,  <32.051514, 34.797939, 22.646486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843685, 34.497360, 22.483820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180187, -0.561613, 0.807542,
		-0.835213, 0.346298, 0.427197,
		-0.519569, -0.751444, -0.406668,
		31.687815, 34.271927, 22.361820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682737, 34.730518, 23.163719>,  <32.051514, 34.797939, 22.646486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682737, 34.730518, 23.163719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629425, 34.399807, 22.945114>,  <31.597437, 34.201382, 22.813951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.629425, 34.399807, 22.945114>,  <31.682737, 34.730518, 23.163719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629425, 34.399807, 22.945114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077104, -0.558411, 0.825973,
		-0.988074, 0.067948, 0.138174,
		-0.133281, -0.826777, -0.546513,
		31.589441, 34.151775, 22.781160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271738, 34.272923, 23.551880>,  <31.682737, 34.730518, 23.163719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271738, 34.272923, 23.551880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418642, 34.016933, 23.281898>,  <31.506784, 33.863342, 23.119909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418642, 34.016933, 23.281898>,  <31.271738, 34.272923, 23.551880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418642, 34.016933, 23.281898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056984, -0.708819, 0.703085,
		-0.928372, -0.296675, -0.223852,
		0.367258, -0.639969, -0.674954,
		31.528820, 33.824944, 23.079412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997757, 33.615410, 23.666954>,  <31.271738, 34.272923, 23.551880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997757, 33.615410, 23.666954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.330740, 33.533836, 23.460876>,  <31.530529, 33.484890, 23.337231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.330740, 33.533836, 23.460876>,  <30.997757, 33.615410, 23.666954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330740, 33.533836, 23.460876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242109, -0.702464, 0.669274,
		-0.498395, -0.681875, -0.535397,
		0.832458, -0.203938, -0.515192,
		31.580477, 33.472656, 23.306318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084015, 32.899143, 23.695406>,  <30.997757, 33.615410, 23.666954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084015, 32.899143, 23.695406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443111, 33.054329, 23.611938>,  <31.658569, 33.147438, 23.561859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.443111, 33.054329, 23.611938>,  <31.084015, 32.899143, 23.695406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443111, 33.054329, 23.611938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400810, -0.522828, 0.752332,
		0.182780, -0.759036, -0.624864,
		0.897744, 0.387963, -0.208667,
		31.712435, 33.170719, 23.549339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499186, 32.236980, 23.699673>,  <31.084015, 32.899143, 23.695406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499186, 32.236980, 23.699673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747719, 32.548729, 23.732002>,  <31.896839, 32.735779, 23.751400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.747719, 32.548729, 23.732002>,  <31.499186, 32.236980, 23.699673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747719, 32.548729, 23.732002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632019, -0.559469, 0.536234,
		0.463141, -0.282098, -0.840191,
		0.621331, 0.779369, 0.080822,
		31.934118, 32.782539, 23.756248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231609, 31.971889, 23.534355>,  <31.499186, 32.236980, 23.699673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231609, 31.971889, 23.534355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237118, 32.296116, 23.768549>,  <32.240421, 32.490650, 23.909065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237118, 32.296116, 23.768549>,  <32.231609, 31.971889, 23.534355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237118, 32.296116, 23.768549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563188, -0.490114, 0.665288,
		0.826214, 0.320579, -0.463249,
		0.013768, 0.810566, 0.585485,
		32.241249, 32.539288, 23.944195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793072, 31.874434, 23.871557>,  <32.231609, 31.971889, 23.534355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793072, 31.874434, 23.871557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.658398, 32.171852, 24.102654>,  <32.577595, 32.350304, 24.241312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.658398, 32.171852, 24.102654>,  <32.793072, 31.874434, 23.871557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658398, 32.171852, 24.102654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647353, -0.262791, 0.715455,
		0.683799, 0.614883, -0.392860,
		-0.336681, 0.743546, 0.577742,
		32.557392, 32.394917, 24.275976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401203, 32.291531, 24.102013>,  <32.793072, 31.874434, 23.871557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401203, 32.291531, 24.102013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105560, 32.324810, 24.369385>,  <32.928173, 32.344776, 24.529808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105560, 32.324810, 24.369385>,  <33.401203, 32.291531, 24.102013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105560, 32.324810, 24.369385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652494, -0.157960, 0.741148,
		0.167245, 0.983935, 0.062466,
		-0.739108, 0.083195, 0.668430,
		32.883827, 32.349770, 24.569914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693836, 32.605274, 24.683924>,  <33.401203, 32.291531, 24.102013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693836, 32.605274, 24.683924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357681, 32.491909, 24.868719>,  <33.155991, 32.423889, 24.979597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357681, 32.491909, 24.868719>,  <33.693836, 32.605274, 24.683924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357681, 32.491909, 24.868719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515459, -0.154495, 0.842872,
		-0.167502, 0.946473, 0.275920,
		-0.840384, -0.283408, 0.461989,
		33.105568, 32.406887, 25.007317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.578480, 33.913685, 28.488100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.336090, 33.782108, 28.777813>,  <37.190655, 33.703163, 28.951641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.336090, 33.782108, 28.777813>,  <37.578480, 33.913685, 28.488100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336090, 33.782108, 28.777813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747859, 0.074726, 0.659638,
		-0.271108, 0.941388, 0.200723,
		-0.605976, -0.328946, 0.724284,
		37.154297, 33.683426, 28.995098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651905, 34.410782, 29.077566>,  <37.578480, 33.913685, 28.488100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651905, 34.410782, 29.077566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480606, 34.088081, 29.240421>,  <37.377827, 33.894463, 29.338135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.480606, 34.088081, 29.240421>,  <37.651905, 34.410782, 29.077566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480606, 34.088081, 29.240421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729140, -0.042334, 0.683054,
		-0.533818, 0.589375, 0.606363,
		-0.428245, -0.806750, 0.407138,
		37.352131, 33.846058, 29.362562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522385, 34.568913, 29.853561>,  <37.651905, 34.410782, 29.077566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522385, 34.568913, 29.853561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.552593, 34.173225, 29.803364>,  <37.570717, 33.935814, 29.773245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.552593, 34.173225, 29.803364>,  <37.522385, 34.568913, 29.853561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552593, 34.173225, 29.803364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571681, -0.060165, 0.818267,
		-0.816993, -0.133539, 0.560972,
		0.075520, -0.989216, -0.125496,
		37.575249, 33.876461, 29.765715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371902, 34.219460, 30.591478>,  <37.522385, 34.568913, 29.853561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371902, 34.219460, 30.591478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551674, 33.953426, 30.352922>,  <37.659538, 33.793808, 30.209789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551674, 33.953426, 30.352922>,  <37.371902, 34.219460, 30.591478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551674, 33.953426, 30.352922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613702, -0.255259, 0.747136,
		-0.649139, -0.701792, 0.293440,
		0.449430, -0.665080, -0.596390,
		37.686504, 33.753902, 30.174006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413315, 33.566105, 30.981026>,  <37.371902, 34.219460, 30.591478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413315, 33.566105, 30.981026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679840, 33.530209, 30.684925>,  <37.839756, 33.508671, 30.507265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.679840, 33.530209, 30.684925>,  <37.413315, 33.566105, 30.981026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679840, 33.530209, 30.684925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704062, -0.251276, 0.664197,
		-0.245609, -0.963747, -0.104250,
		0.666313, -0.089734, -0.740253,
		37.879734, 33.503288, 30.462849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680126, 33.015144, 31.153490>,  <37.413315, 33.566105, 30.981026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680126, 33.015144, 31.153490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.972012, 33.174408, 30.931139>,  <38.147141, 33.269966, 30.797729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.972012, 33.174408, 30.931139>,  <37.680126, 33.015144, 31.153490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972012, 33.174408, 30.931139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682706, -0.379184, 0.624606,
		0.037911, -0.835280, -0.548516,
		0.729709, 0.398155, -0.555875,
		38.190926, 33.293854, 30.764376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246563, 32.473129, 31.146154>,  <37.680126, 33.015144, 31.153490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246563, 32.473129, 31.146154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375492, 32.842609, 31.063313>,  <38.452850, 33.064297, 31.013607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375492, 32.842609, 31.063313>,  <38.246563, 32.473129, 31.146154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375492, 32.842609, 31.063313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729183, -0.102752, 0.676560,
		0.603656, -0.369088, -0.706664,
		0.322321, 0.923697, -0.207106,
		38.472187, 33.119717, 31.001181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912331, 32.450493, 31.143490>,  <38.246563, 32.473129, 31.146154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912331, 32.450493, 31.143490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834026, 32.837402, 31.208054>,  <38.787045, 33.069550, 31.246792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834026, 32.837402, 31.208054>,  <38.912331, 32.450493, 31.143490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834026, 32.837402, 31.208054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496220, -0.044262, 0.867068,
		0.845839, 0.249833, -0.471318,
		-0.195761, 0.967277, 0.161410,
		38.775299, 33.127586, 31.256477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478275, 32.595406, 31.503151>,  <38.912331, 32.450493, 31.143490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478275, 32.595406, 31.503151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252884, 32.919647, 31.566917>,  <39.117649, 33.114193, 31.605177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.252884, 32.919647, 31.566917>,  <39.478275, 32.595406, 31.503151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252884, 32.919647, 31.566917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424283, 0.118379, 0.897758,
		0.708856, 0.573503, -0.410630,
		-0.563477, 0.810605, 0.159414,
		39.083839, 33.162830, 31.614742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870022, 33.249641, 31.641104>,  <39.478275, 32.595406, 31.503151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870022, 33.249641, 31.641104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509808, 33.266048, 31.814238>,  <39.293678, 33.275894, 31.918118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.509808, 33.266048, 31.814238>,  <39.870022, 33.249641, 31.641104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509808, 33.266048, 31.814238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434502, 0.120241, 0.892608,
		-0.015429, 0.991897, -0.126105,
		-0.900538, 0.041021, 0.432837,
		39.239647, 33.278355, 31.944088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925411, 33.846649, 32.046329>,  <39.870022, 33.249641, 31.641104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925411, 33.846649, 32.046329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635029, 33.620686, 32.203232>,  <39.460800, 33.485107, 32.297375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635029, 33.620686, 32.203232>,  <39.925411, 33.846649, 32.046329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635029, 33.620686, 32.203232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423149, 0.082736, 0.902275,
		-0.542156, 0.820995, 0.178978,
		-0.725955, -0.564908, 0.392259,
		39.417244, 33.451214, 32.320911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849422, 33.948227, 32.789738>,  <39.925411, 33.846649, 32.046329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849422, 33.948227, 32.789738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.668537, 33.594963, 32.739880>,  <39.560005, 33.383007, 32.709965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.668537, 33.594963, 32.739880>,  <39.849422, 33.948227, 32.789738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668537, 33.594963, 32.739880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556380, -0.388553, 0.734485,
		-0.697096, 0.262795, 0.667080,
		-0.452215, -0.883156, -0.124645,
		39.532871, 33.330017, 32.702488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541107, 34.611053, 32.815872>,  <39.849422, 33.948227, 32.789738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541107, 34.611053, 32.815872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483677, 34.980808, 32.957233>,  <39.449219, 35.202660, 33.042049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483677, 34.980808, 32.957233>,  <39.541107, 34.611053, 32.815872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483677, 34.980808, 32.957233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471425, -0.250098, 0.845700,
		0.870140, 0.288029, -0.399871,
		-0.143579, 0.924387, 0.353404,
		39.440601, 35.258125, 33.063255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748154, 34.540852, 32.950661>,  <39.541107, 34.611053, 32.815872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748154, 34.540852, 32.950661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817276, 34.273861, 32.660942>,  <38.858749, 34.113667, 32.487110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817276, 34.273861, 32.660942>,  <38.748154, 34.540852, 32.950661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817276, 34.273861, 32.660942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972315, -0.233039, -0.017225,
		-0.157293, 0.707223, -0.689271,
		0.172809, -0.667479, -0.724299,
		38.869118, 34.073616, 32.443653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603065, 34.914772, 33.568695>,  <38.748154, 34.540852, 32.950661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603065, 34.914772, 33.568695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247906, 34.957111, 33.747772>,  <38.034809, 34.982513, 33.855221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.247906, 34.957111, 33.747772>,  <38.603065, 34.914772, 33.568695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247906, 34.957111, 33.747772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367971, 0.420663, -0.829241,
		-0.276104, -0.901021, -0.334556,
		-0.887898, 0.105850, 0.447697,
		37.981537, 34.988865, 33.882080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025494, 34.590073, 33.182995>,  <38.603065, 34.914772, 33.568695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025494, 34.590073, 33.182995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890881, 34.883709, 33.418915>,  <37.810112, 35.059891, 33.560467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890881, 34.883709, 33.418915>,  <38.025494, 34.590073, 33.182995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890881, 34.883709, 33.418915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469740, 0.411968, -0.780786,
		-0.816144, -0.539808, 0.206192,
		-0.336530, 0.734091, 0.589795,
		37.789921, 35.103935, 33.595852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343903, 34.747299, 32.961723>,  <38.025494, 34.590073, 33.182995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343903, 34.747299, 32.961723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400883, 35.083431, 33.170933>,  <37.435070, 35.285110, 33.296459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400883, 35.083431, 33.170933>,  <37.343903, 34.747299, 32.961723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400883, 35.083431, 33.170933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457300, 0.524512, -0.718168,
		-0.877830, -0.136879, 0.458997,
		0.142448, 0.840329, 0.523027,
		37.443619, 35.335529, 33.327839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804741, 35.225304, 32.847126>,  <37.343903, 34.747299, 32.961723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804741, 35.225304, 32.847126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090900, 35.474876, 32.972935>,  <37.262596, 35.624619, 33.048420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.090900, 35.474876, 32.972935>,  <36.804741, 35.225304, 32.847126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090900, 35.474876, 32.972935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344683, 0.706685, -0.617892,
		-0.607787, 0.333627, 0.720617,
		0.715394, 0.623931, 0.314518,
		37.305519, 35.662056, 33.067291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473122, 35.881054, 32.985779>,  <36.804741, 35.225304, 32.847126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473122, 35.881054, 32.985779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864380, 35.952293, 32.942848>,  <37.099133, 35.995037, 32.917088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.864380, 35.952293, 32.942848>,  <36.473122, 35.881054, 32.985779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864380, 35.952293, 32.942848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200081, 0.665600, -0.718988,
		-0.056610, 0.724747, 0.686685,
		0.978142, 0.178095, -0.107328,
		37.157822, 36.005722, 32.910648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597099, 36.676323, 33.107113>,  <36.473122, 35.881054, 32.985779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597099, 36.676323, 33.107113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906151, 36.529572, 32.899864>,  <37.091579, 36.441521, 32.775517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.906151, 36.529572, 32.899864>,  <36.597099, 36.676323, 33.107113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906151, 36.529572, 32.899864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109643, 0.726746, -0.678099,
		0.625323, 0.580725, 0.521278,
		0.772626, -0.366876, -0.518123,
		37.137939, 36.419510, 32.744427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876892, 37.290886, 32.917545>,  <36.597099, 36.676323, 33.107113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876892, 37.290886, 32.917545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076229, 37.026112, 32.693581>,  <37.195831, 36.867249, 32.559200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076229, 37.026112, 32.693581>,  <36.876892, 37.290886, 32.917545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076229, 37.026112, 32.693581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010257, 0.641273, -0.767244,
		0.866922, 0.388090, 0.312782,
		0.498338, -0.661933, -0.559914,
		37.225731, 36.827530, 32.525608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308189, 37.664047, 32.526737>,  <36.876892, 37.290886, 32.917545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308189, 37.664047, 32.526737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254990, 37.323143, 32.324368>,  <37.223068, 37.118599, 32.202946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.254990, 37.323143, 32.324368>,  <37.308189, 37.664047, 32.526737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254990, 37.323143, 32.324368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111147, 0.520062, -0.846866,
		0.984864, -0.056404, -0.163896,
		-0.133003, -0.852264, -0.505921,
		37.215088, 37.067463, 32.172592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671246, 37.802616, 31.937962>,  <37.308189, 37.664047, 32.526737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671246, 37.802616, 31.937962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433578, 37.495647, 31.841602>,  <37.290977, 37.311466, 31.783787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433578, 37.495647, 31.841602>,  <37.671246, 37.802616, 31.937962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433578, 37.495647, 31.841602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143042, 0.395535, -0.907243,
		0.791523, -0.504592, -0.344787,
		-0.594163, -0.767423, -0.240897,
		37.255329, 37.265419, 31.769333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847569, 37.423870, 31.170408>,  <37.671246, 37.802616, 31.937962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847569, 37.423870, 31.170408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.468849, 37.337669, 31.266018>,  <37.241619, 37.285950, 31.323383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.468849, 37.337669, 31.266018>,  <37.847569, 37.423870, 31.170408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468849, 37.337669, 31.266018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289824, 0.248045, -0.924379,
		0.139913, -0.944476, -0.297305,
		-0.946798, -0.215498, 0.239027,
		37.184811, 37.273018, 31.337725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495449, 37.319515, 30.502529>,  <37.847569, 37.423870, 31.170408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495449, 37.319515, 30.502529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.177826, 37.289391, 30.743793>,  <36.987251, 37.271317, 30.888552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.177826, 37.289391, 30.743793>,  <37.495449, 37.319515, 30.502529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177826, 37.289391, 30.743793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607837, 0.104011, -0.787221,
		-0.003450, -0.991721, -0.128367,
		-0.794055, -0.075310, 0.603163,
		36.939610, 37.266796, 30.924742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962723, 36.790237, 30.252098>,  <37.495449, 37.319515, 30.502529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962723, 36.790237, 30.252098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.767075, 37.045269, 30.490173>,  <36.649685, 37.198288, 30.633018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.767075, 37.045269, 30.490173>,  <36.962723, 36.790237, 30.252098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767075, 37.045269, 30.490173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542530, 0.311919, -0.779979,
		-0.682951, -0.704413, 0.193341,
		-0.489121, 0.637581, 0.595190,
		36.620338, 37.236542, 30.668730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185471, 36.757977, 30.066315>,  <36.962723, 36.790237, 30.252098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185471, 36.757977, 30.066315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.235188, 37.122181, 30.224062>,  <36.265018, 37.340702, 30.318710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.235188, 37.122181, 30.224062>,  <36.185471, 36.757977, 30.066315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235188, 37.122181, 30.224062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388993, 0.410345, -0.824804,
		-0.912818, -0.050891, 0.405184,
		0.124290, 0.910509, 0.394367,
		36.272476, 37.395332, 30.342373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534531, 37.115932, 29.957264>,  <36.185471, 36.757977, 30.066315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534531, 37.115932, 29.957264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821728, 37.385387, 30.027359>,  <35.994045, 37.547058, 30.069416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.821728, 37.385387, 30.027359>,  <35.534531, 37.115932, 29.957264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821728, 37.385387, 30.027359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217501, 0.456280, -0.862845,
		-0.661197, 0.581401, 0.474121,
		0.717991, 0.673633, 0.175236,
		36.037125, 37.587479, 30.079929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058872, 37.179871, 30.625431>,  <35.534531, 37.115932, 29.957264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058872, 37.179871, 30.625431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.661926, 37.212299, 30.662617>,  <34.423759, 37.231758, 30.684927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.661926, 37.212299, 30.662617>,  <35.058872, 37.179871, 30.625431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661926, 37.212299, 30.662617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031139, -0.564602, 0.824776,
		0.119352, 0.821372, 0.557766,
		-0.992364, 0.081070, 0.092963,
		34.364216, 37.236622, 30.690506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895889, 37.439346, 31.260206>,  <35.058872, 37.179871, 30.625431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895889, 37.439346, 31.260206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.581951, 37.216938, 31.150763>,  <34.393589, 37.083492, 31.085096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.581951, 37.216938, 31.150763>,  <34.895889, 37.439346, 31.260206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581951, 37.216938, 31.150763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070311, -0.518570, 0.852139,
		-0.615692, 0.649558, 0.446091,
		-0.784844, -0.556021, -0.273608,
		34.346497, 37.050133, 31.068680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477215, 37.306423, 31.927069>,  <34.895889, 37.439346, 31.260206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477215, 37.306423, 31.927069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.305405, 37.025269, 31.700279>,  <34.202320, 36.856575, 31.564205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.305405, 37.025269, 31.700279>,  <34.477215, 37.306423, 31.927069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305405, 37.025269, 31.700279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030983, -0.615998, 0.787138,
		-0.902523, 0.355661, 0.242809,
		-0.429525, -0.702887, -0.566972,
		34.176548, 36.814404, 31.530188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977535, 37.012051, 32.354076>,  <34.477215, 37.306423, 31.927069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977535, 37.012051, 32.354076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.051861, 36.748108, 32.062855>,  <34.096455, 36.589741, 31.888123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.051861, 36.748108, 32.062855>,  <33.977535, 37.012051, 32.354076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051861, 36.748108, 32.062855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009661, -0.739695, 0.672873,
		-0.982537, -0.132064, -0.131071,
		0.185815, -0.659856, -0.728054,
		34.107605, 36.550152, 31.844439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494385, 36.420666, 32.489746>,  <33.977535, 37.012051, 32.354076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494385, 36.420666, 32.489746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762287, 36.252983, 32.244572>,  <33.923031, 36.152374, 32.097466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.762287, 36.252983, 32.244572>,  <33.494385, 36.420666, 32.489746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762287, 36.252983, 32.244572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098384, -0.768047, 0.632791,
		-0.736030, -0.484122, -0.473166,
		0.669762, -0.419201, -0.612935,
		33.963215, 36.127224, 32.060692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274647, 35.702732, 32.285381>,  <33.494385, 36.420666, 32.489746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274647, 35.702732, 32.285381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.672733, 35.718079, 32.249435>,  <33.911587, 35.727287, 32.227867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.672733, 35.718079, 32.249435>,  <33.274647, 35.702732, 32.285381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672733, 35.718079, 32.249435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082684, -0.820715, 0.565323,
		-0.052062, -0.570048, -0.819960,
		0.995215, 0.038366, -0.089862,
		33.971298, 35.729588, 32.222477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499649, 34.892422, 32.175369>,  <33.274647, 35.702732, 32.285381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499649, 34.892422, 32.175369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.835629, 35.088123, 32.269276>,  <34.037216, 35.205544, 32.325619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.835629, 35.088123, 32.269276>,  <33.499649, 34.892422, 32.175369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835629, 35.088123, 32.269276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229042, -0.711814, 0.663973,
		0.491964, -0.503931, -0.709947,
		0.839947, 0.489259, 0.234766,
		34.087612, 35.234901, 32.339706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925163, 34.335228, 32.277519>,  <33.499649, 34.892422, 32.175369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925163, 34.335228, 32.277519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.106808, 34.641735, 32.459343>,  <34.215794, 34.825638, 32.568436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.106808, 34.641735, 32.459343>,  <33.925163, 34.335228, 32.277519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106808, 34.641735, 32.459343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283375, -0.607921, 0.741708,
		0.844681, -0.208004, -0.493202,
		0.454106, 0.766268, 0.454556,
		34.243038, 34.871616, 32.595711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534683, 34.048630, 32.532051>,  <33.925163, 34.335228, 32.277519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534683, 34.048630, 32.532051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452927, 34.365314, 32.762329>,  <34.403873, 34.555325, 32.900494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.452927, 34.365314, 32.762329>,  <34.534683, 34.048630, 32.532051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452927, 34.365314, 32.762329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302055, -0.508399, 0.806408,
		0.931121, 0.338713, -0.135227,
		-0.204391, 0.791709, 0.575691,
		34.391609, 34.602829, 32.935036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048965, 34.111855, 33.044609>,  <34.534683, 34.048630, 32.532051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048965, 34.111855, 33.044609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.747265, 34.321239, 33.203144>,  <34.566242, 34.446873, 33.298267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.747265, 34.321239, 33.203144>,  <35.048965, 34.111855, 33.044609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747265, 34.321239, 33.203144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190461, -0.403253, 0.895048,
		0.628352, 0.750581, 0.204456,
		-0.754254, 0.523464, 0.396341,
		34.520988, 34.478279, 33.322048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264393, 34.352966, 33.707169>,  <35.048965, 34.111855, 33.044609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264393, 34.352966, 33.707169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866230, 34.386269, 33.726089>,  <34.627335, 34.406250, 33.737442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.866230, 34.386269, 33.726089>,  <35.264393, 34.352966, 33.707169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866230, 34.386269, 33.726089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007415, -0.425465, 0.904945,
		0.095466, 0.901137, 0.422892,
		-0.995405, 0.083256, 0.047299,
		34.567608, 34.411243, 33.740280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104771, 34.423805, 34.367538>,  <35.264393, 34.352966, 33.707169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104771, 34.423805, 34.367538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.744652, 34.314640, 34.231895>,  <34.528580, 34.249142, 34.150509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.744652, 34.314640, 34.231895>,  <35.104771, 34.423805, 34.367538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744652, 34.314640, 34.231895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228822, -0.365994, 0.902047,
		-0.370288, 0.889702, 0.267055,
		-0.900293, -0.272909, -0.339107,
		34.474564, 34.232769, 34.130165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.458508, 40.159435, 28.192738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260372, 39.822987, 28.105877>,  <33.141491, 39.621117, 28.053761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260372, 39.822987, 28.105877>,  <33.458508, 40.159435, 28.192738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260372, 39.822987, 28.105877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126985, -0.317396, 0.939752,
		-0.859367, 0.437924, 0.264029,
		-0.495342, -0.841120, -0.217150,
		33.111771, 39.570652, 28.040731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957684, 39.965614, 28.774755>,  <33.458508, 40.159435, 28.192738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957684, 39.965614, 28.774755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060410, 39.634361, 28.575457>,  <33.122044, 39.435612, 28.455877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060410, 39.634361, 28.575457>,  <32.957684, 39.965614, 28.774755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060410, 39.634361, 28.575457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259466, -0.437533, 0.860954,
		-0.930980, -0.350383, 0.102507,
		0.256814, -0.828128, -0.498247,
		33.137455, 39.385921, 28.425982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992123, 39.588802, 29.321436>,  <32.957684, 39.965614, 28.774755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992123, 39.588802, 29.321436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164013, 39.350594, 29.049938>,  <33.267147, 39.207668, 28.887039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164013, 39.350594, 29.049938>,  <32.992123, 39.588802, 29.321436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164013, 39.350594, 29.049938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469390, -0.494813, 0.731323,
		-0.771369, -0.632862, 0.066898,
		0.429725, -0.595522, -0.678742,
		33.292931, 39.171936, 28.846315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728119, 38.999535, 29.396471>,  <32.992123, 39.588802, 29.321436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728119, 38.999535, 29.396471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050037, 38.890610, 29.185514>,  <33.243191, 38.825256, 29.058941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050037, 38.890610, 29.185514>,  <32.728119, 38.999535, 29.396471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050037, 38.890610, 29.185514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236190, -0.668235, 0.705462,
		-0.544529, -0.692320, -0.473478,
		0.804800, -0.272313, -0.527392,
		33.291477, 38.808914, 29.027296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692932, 38.239422, 29.311893>,  <32.728119, 38.999535, 29.396471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692932, 38.239422, 29.311893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075954, 38.319489, 29.228935>,  <33.305767, 38.367527, 29.179161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075954, 38.319489, 29.228935>,  <32.692932, 38.239422, 29.311893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075954, 38.319489, 29.228935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285752, -0.753496, 0.592106,
		-0.037752, -0.626241, -0.778715,
		0.957560, 0.200166, -0.207396,
		33.363224, 38.379539, 29.166716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050999, 37.612846, 29.108183>,  <32.692932, 38.239422, 29.311893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050999, 37.612846, 29.108183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318027, 37.866646, 29.264009>,  <33.478245, 38.018925, 29.357506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318027, 37.866646, 29.264009>,  <33.050999, 37.612846, 29.108183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318027, 37.866646, 29.264009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361939, -0.733794, 0.574932,
		0.650656, -0.242808, -0.719508,
		0.667568, 0.634501, 0.389566,
		33.518299, 38.056995, 29.380878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568039, 37.207840, 29.261524>,  <33.050999, 37.612846, 29.108183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568039, 37.207840, 29.261524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643623, 37.528778, 29.487988>,  <33.688972, 37.721340, 29.623865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643623, 37.528778, 29.487988>,  <33.568039, 37.207840, 29.261524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643623, 37.528778, 29.487988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578997, -0.556698, 0.595692,
		0.793131, 0.215243, -0.569749,
		0.188959, 0.802345, 0.566160,
		33.700310, 37.769482, 29.657835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236809, 37.167526, 29.318657>,  <33.568039, 37.207840, 29.261524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236809, 37.167526, 29.318657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109741, 37.392014, 29.624369>,  <34.033501, 37.526707, 29.807795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109741, 37.392014, 29.624369>,  <34.236809, 37.167526, 29.318657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109741, 37.392014, 29.624369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555210, -0.543308, 0.629730,
		0.768652, 0.624382, -0.138998,
		-0.317673, 0.561216, 0.764278,
		34.014439, 37.560379, 29.853651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819401, 37.183041, 29.878151>,  <34.236809, 37.167526, 29.318657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819401, 37.183041, 29.878151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519932, 37.326927, 30.100895>,  <34.340252, 37.413261, 30.234541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519932, 37.326927, 30.100895>,  <34.819401, 37.183041, 29.878151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519932, 37.326927, 30.100895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323437, -0.535033, 0.780466,
		0.578689, 0.764421, 0.284217,
		-0.748671, 0.359721, 0.556860,
		34.295330, 37.434845, 30.267954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284775, 37.832726, 29.890835>,  <34.819401, 37.183041, 29.878151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284775, 37.832726, 29.890835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673534, 37.912045, 29.840099>,  <35.906792, 37.959637, 29.809658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673534, 37.912045, 29.840099>,  <35.284775, 37.832726, 29.890835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673534, 37.912045, 29.840099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209422, 0.482338, -0.850584,
		-0.107492, 0.853245, 0.510313,
		0.971899, 0.198302, -0.126841,
		35.965103, 37.971535, 29.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277351, 38.450031, 29.646830>,  <35.284775, 37.832726, 29.890835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277351, 38.450031, 29.646830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654610, 38.351307, 29.557785>,  <35.880966, 38.292072, 29.504358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654610, 38.351307, 29.557785>,  <35.277351, 38.450031, 29.646830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654610, 38.351307, 29.557785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050947, 0.554500, -0.830622,
		0.328442, 0.794742, 0.510403,
		0.943149, -0.246807, -0.222611,
		35.937553, 38.277264, 29.491001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676266, 39.079323, 29.542471>,  <35.277351, 38.450031, 29.646830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676266, 39.079323, 29.542471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860703, 38.790497, 29.336166>,  <35.971363, 38.617199, 29.212383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860703, 38.790497, 29.336166>,  <35.676266, 39.079323, 29.542471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860703, 38.790497, 29.336166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227573, 0.658023, -0.717786,
		0.857674, 0.213592, 0.467733,
		0.461092, -0.722070, -0.515761,
		35.999031, 38.573875, 29.181438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286476, 39.406994, 29.290731>,  <35.676266, 39.079323, 29.542471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286476, 39.406994, 29.290731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247578, 39.081978, 29.060835>,  <36.224239, 38.886971, 28.922897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247578, 39.081978, 29.060835>,  <36.286476, 39.406994, 29.290731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247578, 39.081978, 29.060835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073123, 0.570087, -0.818324,
		0.992571, -0.121602, 0.003978,
		-0.097242, -0.812535, -0.574744,
		36.218407, 38.838219, 28.888412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704403, 39.564049, 28.713133>,  <36.286476, 39.406994, 29.290731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704403, 39.564049, 28.713133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457191, 39.276299, 28.586306>,  <36.308865, 39.103649, 28.510208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457191, 39.276299, 28.586306>,  <36.704403, 39.564049, 28.713133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457191, 39.276299, 28.586306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030331, 0.424837, -0.904761,
		0.785569, -0.549553, -0.284382,
		-0.618030, -0.719378, -0.317070,
		36.271782, 39.060486, 28.491184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991318, 39.209225, 28.184320>,  <36.704403, 39.564049, 28.713133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991318, 39.209225, 28.184320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600582, 39.142090, 28.131231>,  <36.366142, 39.101810, 28.099377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600582, 39.142090, 28.131231>,  <36.991318, 39.209225, 28.184320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600582, 39.142090, 28.131231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047756, 0.433632, -0.899824,
		0.208577, -0.885322, -0.415573,
		-0.976840, -0.167837, -0.132725,
		36.307529, 39.091740, 28.091413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925167, 38.954765, 27.487036>,  <36.991318, 39.209225, 28.184320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925167, 38.954765, 27.487036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549450, 39.063511, 27.570776>,  <36.324020, 39.128757, 27.621019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549450, 39.063511, 27.570776>,  <36.925167, 38.954765, 27.487036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549450, 39.063511, 27.570776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084569, 0.407885, -0.909108,
		-0.332543, -0.871620, -0.360131,
		-0.939289, 0.271861, 0.209352,
		36.267662, 39.145069, 27.633581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440376, 38.741661, 26.941212>,  <36.925167, 38.954765, 27.487036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440376, 38.741661, 26.941212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200474, 39.003880, 27.124756>,  <36.056534, 39.161209, 27.234882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200474, 39.003880, 27.124756>,  <36.440376, 38.741661, 26.941212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200474, 39.003880, 27.124756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273437, 0.371025, -0.887453,
		-0.752016, -0.657723, -0.043273,
		-0.599754, 0.655546, 0.458862,
		36.020546, 39.200542, 27.262415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691845, 38.711182, 26.782465>,  <36.440376, 38.741661, 26.941212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691845, 38.711182, 26.782465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728428, 39.094395, 26.891140>,  <35.750378, 39.324322, 26.956345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728428, 39.094395, 26.891140>,  <35.691845, 38.711182, 26.782465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728428, 39.094395, 26.891140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395858, 0.285326, -0.872861,
		-0.913746, -0.027720, 0.405339,
		0.091458, 0.958030, 0.271689,
		35.755867, 39.381805, 26.972647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067474, 39.091572, 26.673838>,  <35.691845, 38.711182, 26.782465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067474, 39.091572, 26.673838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343445, 39.380920, 26.663015>,  <35.509026, 39.554531, 26.656521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343445, 39.380920, 26.663015>,  <35.067474, 39.091572, 26.673838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343445, 39.380920, 26.663015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460063, 0.409320, -0.787908,
		-0.558876, 0.556048, 0.615198,
		0.689928, 0.723372, -0.027058,
		35.550423, 39.597931, 26.654898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642197, 39.539307, 26.380995>,  <35.067474, 39.091572, 26.673838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642197, 39.539307, 26.380995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001915, 39.710770, 26.346313>,  <35.217747, 39.813648, 26.325504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001915, 39.710770, 26.346313>,  <34.642197, 39.539307, 26.380995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001915, 39.710770, 26.346313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281079, 0.414625, -0.865494,
		-0.335047, 0.802709, 0.493358,
		0.899299, 0.428654, -0.086706,
		35.271706, 39.839367, 26.320301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619118, 40.263962, 26.276304>,  <34.642197, 39.539307, 26.380995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619118, 40.263962, 26.276304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961281, 40.154877, 26.100164>,  <35.166576, 40.089424, 25.994480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961281, 40.154877, 26.100164>,  <34.619118, 40.263962, 26.276304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961281, 40.154877, 26.100164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285081, 0.461916, -0.839858,
		0.432448, 0.843955, 0.317379,
		0.855405, -0.272716, -0.440350,
		35.217903, 40.073063, 25.968060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838272, 40.867615, 25.938408>,  <34.619118, 40.263962, 26.276304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838272, 40.867615, 25.938408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000057, 40.550957, 25.755234>,  <35.097130, 40.360962, 25.645329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000057, 40.550957, 25.755234>,  <34.838272, 40.867615, 25.938408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000057, 40.550957, 25.755234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382303, 0.308521, -0.871010,
		0.830815, 0.527362, -0.177864,
		0.404463, -0.791647, -0.457936,
		35.121395, 40.313461, 25.617853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909367, 41.090214, 25.269279>,  <34.838272, 40.867615, 25.938408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909367, 41.090214, 25.269279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997303, 40.702045, 25.229382>,  <35.050064, 40.469143, 25.205442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997303, 40.702045, 25.229382>,  <34.909367, 41.090214, 25.269279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997303, 40.702045, 25.229382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498753, -0.023935, -0.866414,
		0.838400, 0.240226, -0.489262,
		0.219845, -0.970422, -0.099746,
		35.063255, 40.410919, 25.199457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.531540, 32.411411, 25.388914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.705544, 32.767376, 25.443785>,  <29.809946, 32.980957, 25.476707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.705544, 32.767376, 25.443785>,  <29.531540, 32.411411, 25.388914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705544, 32.767376, 25.443785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330763, -0.299626, 0.894886,
		0.837475, -0.343909, -0.424690,
		0.435007, 0.889916, 0.137177,
		29.836046, 33.034351, 25.484938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096378, 32.181793, 25.624821>,  <29.531540, 32.411411, 25.388914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096378, 32.181793, 25.624821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.128101, 32.562252, 25.744177>,  <30.147135, 32.790527, 25.815790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.128101, 32.562252, 25.744177>,  <30.096378, 32.181793, 25.624821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128101, 32.562252, 25.744177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504914, -0.296426, 0.810675,
		0.859519, 0.086369, -0.503754,
		0.079308, 0.951142, 0.298393,
		30.151894, 32.847595, 25.833694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725607, 32.228115, 25.921133>,  <30.096378, 32.181793, 25.624821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725607, 32.228115, 25.921133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.552347, 32.555305, 26.072552>,  <30.448391, 32.751621, 26.163403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.552347, 32.555305, 26.072552>,  <30.725607, 32.228115, 25.921133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552347, 32.555305, 26.072552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501938, -0.129926, 0.855090,
		0.748626, 0.560386, -0.354296,
		-0.433148, 0.817977, 0.378545,
		30.422403, 32.800697, 26.186115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269815, 32.600246, 26.321461>,  <30.725607, 32.228115, 25.921133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269815, 32.600246, 26.321461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.918127, 32.724873, 26.465626>,  <30.707113, 32.799648, 26.552124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.918127, 32.724873, 26.465626>,  <31.269815, 32.600246, 26.321461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918127, 32.724873, 26.465626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378498, -0.002612, 0.925599,
		0.289322, 0.950223, -0.115629,
		-0.879223, 0.311561, 0.360413,
		30.654360, 32.818340, 26.573750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350231, 33.079628, 26.786947>,  <31.269815, 32.600246, 26.321461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350231, 33.079628, 26.786947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978798, 32.993931, 26.908161>,  <30.755938, 32.942513, 26.980890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978798, 32.993931, 26.908161>,  <31.350231, 33.079628, 26.786947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978798, 32.993931, 26.908161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300671, 0.044350, 0.952696,
		-0.217550, 0.975773, 0.023235,
		-0.928584, -0.214245, 0.303035,
		30.700222, 32.929657, 26.999071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244804, 33.553795, 27.347759>,  <31.350231, 33.079628, 26.786947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244804, 33.553795, 27.347759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.984043, 33.257938, 27.414635>,  <30.827585, 33.080425, 27.454760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.984043, 33.257938, 27.414635>,  <31.244804, 33.553795, 27.347759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984043, 33.257938, 27.414635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262726, -0.013486, 0.964776,
		-0.711333, 0.672867, 0.203115,
		-0.651905, -0.739641, 0.167186,
		30.788471, 33.036045, 27.464790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123167, 33.686779, 28.028255>,  <31.244804, 33.553795, 27.347759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123167, 33.686779, 28.028255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.987024, 33.319431, 27.947508>,  <30.905338, 33.099022, 27.899059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.987024, 33.319431, 27.947508>,  <31.123167, 33.686779, 28.028255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987024, 33.319431, 27.947508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311630, -0.312722, 0.897269,
		-0.887154, 0.242485, 0.392630,
		-0.340358, -0.918371, -0.201867,
		30.884916, 33.043919, 27.886948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748587, 33.503082, 28.664085>,  <31.123167, 33.686779, 28.028255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748587, 33.503082, 28.664085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.837891, 33.162392, 28.474470>,  <30.891474, 32.957977, 28.360701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.837891, 33.162392, 28.474470>,  <30.748587, 33.503082, 28.664085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837891, 33.162392, 28.474470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391760, -0.366904, 0.843745,
		-0.892568, -0.374086, 0.251757,
		0.223262, -0.851728, -0.474039,
		30.904869, 32.906872, 28.332258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488308, 32.847206, 29.146444>,  <30.748587, 33.503082, 28.664085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488308, 32.847206, 29.146444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770348, 32.707920, 28.899357>,  <30.939571, 32.624348, 28.751104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.770348, 32.707920, 28.899357>,  <30.488308, 32.847206, 29.146444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770348, 32.707920, 28.899357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338027, -0.600725, 0.724478,
		-0.623357, -0.719634, -0.305862,
		0.705098, -0.348219, -0.617722,
		30.981878, 32.603455, 28.714041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619541, 32.136024, 29.313660>,  <30.488308, 32.847206, 29.146444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619541, 32.136024, 29.313660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.947687, 32.241161, 29.110519>,  <31.144575, 32.304245, 28.988634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.947687, 32.241161, 29.110519>,  <30.619541, 32.136024, 29.313660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947687, 32.241161, 29.110519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571669, -0.398687, 0.717107,
		-0.013986, -0.878613, -0.477329,
		0.820365, 0.262845, -0.507852,
		31.193796, 32.320015, 28.958164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891346, 31.493965, 29.223986>,  <30.619541, 32.136024, 29.313660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891346, 31.493965, 29.223986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182873, 31.763994, 29.178192>,  <31.357788, 31.926012, 29.150715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.182873, 31.763994, 29.178192>,  <30.891346, 31.493965, 29.223986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182873, 31.763994, 29.178192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557646, -0.488188, 0.671345,
		0.397315, -0.553129, -0.732249,
		0.728816, 0.675071, -0.114486,
		31.401518, 31.966515, 29.143847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457857, 31.109768, 29.156467>,  <30.891346, 31.493965, 29.223986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457857, 31.109768, 29.156467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.617266, 31.459492, 29.267294>,  <31.712912, 31.669325, 29.333790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.617266, 31.459492, 29.267294>,  <31.457857, 31.109768, 29.156467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617266, 31.459492, 29.267294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580874, -0.474389, 0.661468,
		0.709765, -0.102668, -0.696917,
		0.398522, 0.874308, 0.277068,
		31.736822, 31.721785, 29.350414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160347, 31.024197, 29.214674>,  <31.457857, 31.109768, 29.156467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160347, 31.024197, 29.214674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.108006, 31.358812, 29.427494>,  <32.076603, 31.559582, 29.555185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.108006, 31.358812, 29.427494>,  <32.160347, 31.024197, 29.214674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108006, 31.358812, 29.427494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511153, -0.402908, 0.759202,
		0.849471, 0.371302, -0.374879,
		-0.130851, 0.836541, 0.532051,
		32.068748, 31.609774, 29.587109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876160, 31.323488, 29.385395>,  <32.160347, 31.024197, 29.214674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876160, 31.323488, 29.385395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.623890, 31.464787, 29.661789>,  <32.472527, 31.549566, 29.827625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.623890, 31.464787, 29.661789>,  <32.876160, 31.323488, 29.385395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623890, 31.464787, 29.661789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664814, -0.213395, 0.715880,
		0.400336, 0.910867, -0.100260,
		-0.630677, 0.353247, 0.690987,
		32.434689, 31.570761, 29.869085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371807, 31.732847, 29.204853>,  <32.876160, 31.323488, 29.385395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371807, 31.732847, 29.204853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.736500, 31.688810, 29.046555>,  <33.955315, 31.662388, 28.951574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.736500, 31.688810, 29.046555>,  <33.371807, 31.732847, 29.204853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736500, 31.688810, 29.046555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355370, 0.271820, -0.894330,
		0.206031, 0.956030, 0.208705,
		0.911736, -0.110092, -0.395748,
		34.010021, 31.655783, 28.927830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460133, 32.218750, 28.704302>,  <33.371807, 31.732847, 29.204853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460133, 32.218750, 28.704302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723732, 31.942284, 28.585636>,  <33.881893, 31.776403, 28.514437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.723732, 31.942284, 28.585636>,  <33.460133, 32.218750, 28.704302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723732, 31.942284, 28.585636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258235, 0.162537, -0.952311,
		0.706424, 0.704181, -0.071372,
		0.658999, -0.691166, -0.296664,
		33.921432, 31.734934, 28.496637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606251, 32.408062, 28.136015>,  <33.460133, 32.218750, 28.704302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606251, 32.408062, 28.136015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747093, 32.036049, 28.093962>,  <33.831600, 31.812840, 28.068729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747093, 32.036049, 28.093962>,  <33.606251, 32.408062, 28.136015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747093, 32.036049, 28.093962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158967, 0.051270, -0.985952,
		0.922361, 0.363874, -0.129792,
		0.352108, -0.930036, -0.105133,
		33.852726, 31.757038, 28.062422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141678, 32.507866, 27.698879>,  <33.606251, 32.408062, 28.136015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141678, 32.507866, 27.698879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046276, 32.119453, 27.693150>,  <33.989037, 31.886404, 27.689713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046276, 32.119453, 27.693150>,  <34.141678, 32.507866, 27.698879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046276, 32.119453, 27.693150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355727, 0.101078, -0.929108,
		0.903645, -0.216500, -0.369531,
		-0.238504, -0.971036, -0.014324,
		33.974724, 31.828142, 27.688852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368282, 32.314636, 27.001362>,  <34.141678, 32.507866, 27.698879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368282, 32.314636, 27.001362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125393, 32.009762, 27.091114>,  <33.979660, 31.826838, 27.144966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125393, 32.009762, 27.091114>,  <34.368282, 32.314636, 27.001362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125393, 32.009762, 27.091114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253004, -0.082216, -0.963965,
		0.753170, -0.642114, -0.142913,
		-0.607226, -0.762187, 0.224380,
		33.943226, 31.781105, 27.158428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537956, 31.729406, 26.495173>,  <34.368282, 32.314636, 27.001362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537956, 31.729406, 26.495173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.176609, 31.655788, 26.650120>,  <33.959801, 31.611618, 26.743088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.176609, 31.655788, 26.650120>,  <34.537956, 31.729406, 26.495173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176609, 31.655788, 26.650120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400660, 0.040023, -0.915352,
		0.152968, -0.982102, -0.109897,
		-0.903367, -0.184051, 0.387367,
		33.905598, 31.600574, 26.766331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240067, 31.238541, 26.005789>,  <34.537956, 31.729406, 26.495173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240067, 31.238541, 26.005789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.933014, 31.388432, 26.213758>,  <33.748783, 31.478365, 26.338539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.933014, 31.388432, 26.213758>,  <34.240067, 31.238541, 26.005789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933014, 31.388432, 26.213758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534236, 0.073990, -0.842091,
		-0.354021, -0.924179, 0.143394,
		-0.767633, 0.374725, 0.519923,
		33.702724, 31.500849, 26.369736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641190, 30.817030, 25.750357>,  <34.240067, 31.238541, 26.005789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641190, 30.817030, 25.750357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551788, 31.183783, 25.882643>,  <33.498146, 31.403835, 25.962013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551788, 31.183783, 25.882643>,  <33.641190, 30.817030, 25.750357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551788, 31.183783, 25.882643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498676, 0.183962, -0.847042,
		-0.837477, -0.354237, 0.416111,
		-0.223505, 0.916883, 0.330714,
		33.484737, 31.458847, 25.981857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994045, 30.967340, 25.524834>,  <33.641190, 30.817030, 25.750357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994045, 30.967340, 25.524834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.101791, 31.348143, 25.582977>,  <33.166439, 31.576624, 25.617865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.101791, 31.348143, 25.582977>,  <32.994045, 30.967340, 25.524834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101791, 31.348143, 25.582977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522312, 0.271228, -0.808471,
		-0.809095, 0.141847, 0.570303,
		0.269361, 0.952006, 0.145361,
		33.182598, 31.633745, 25.626585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378807, 31.379738, 25.398117>,  <32.994045, 30.967340, 25.524834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378807, 31.379738, 25.398117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.669571, 31.653933, 25.381529>,  <32.844028, 31.818449, 25.371576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.669571, 31.653933, 25.381529>,  <32.378807, 31.379738, 25.398117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669571, 31.653933, 25.381529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439770, 0.418262, -0.794770,
		-0.527457, 0.595960, 0.605492,
		0.726905, 0.685485, -0.041471,
		32.887642, 31.859577, 25.369087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031178, 31.934181, 25.508715>,  <32.378807, 31.379738, 25.398117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031178, 31.934181, 25.508715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367771, 32.089306, 25.358244>,  <32.569729, 32.182381, 25.267962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367771, 32.089306, 25.358244>,  <32.031178, 31.934181, 25.508715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367771, 32.089306, 25.358244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530352, 0.460016, -0.712118,
		-0.103120, 0.798741, 0.592772,
		0.841483, 0.387811, -0.376177,
		32.620216, 32.205650, 25.245390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920441, 32.644154, 25.396732>,  <32.031178, 31.934181, 25.508715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920441, 32.644154, 25.396732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229507, 32.594517, 25.147705>,  <32.414948, 32.564735, 24.998289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.229507, 32.594517, 25.147705>,  <31.920441, 32.644154, 25.396732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229507, 32.594517, 25.147705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495164, 0.495880, -0.713383,
		0.397242, 0.859479, 0.321705,
		0.772665, -0.124089, -0.622568,
		32.461308, 32.557289, 24.960934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012283, 33.259869, 25.052258>,  <31.920441, 32.644154, 25.396732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012283, 33.259869, 25.052258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183456, 32.996204, 24.804909>,  <32.286160, 32.838005, 24.656500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.183456, 32.996204, 24.804909>,  <32.012283, 33.259869, 25.052258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183456, 32.996204, 24.804909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378755, 0.490421, -0.784877,
		0.820619, 0.570088, -0.039790,
		0.427935, -0.659156, -0.618373,
		32.311836, 32.798458, 24.619396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422993, 33.672779, 24.612865>,  <32.012283, 33.259869, 25.052258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422993, 33.672779, 24.612865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.362576, 33.326508, 24.421955>,  <32.326324, 33.118744, 24.307409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.362576, 33.326508, 24.421955>,  <32.422993, 33.672779, 24.612865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362576, 33.326508, 24.421955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291390, 0.500353, -0.815315,
		0.944605, 0.015929, -0.327822,
		-0.151040, -0.865675, -0.477277,
		32.317265, 33.066807, 24.278772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164635, 33.780102, 24.595762>,  <32.422993, 33.672779, 24.612865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164635, 33.780102, 24.595762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373714, 34.114429, 24.662926>,  <33.499161, 34.315025, 24.703224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.373714, 34.114429, 24.662926>,  <33.164635, 33.780102, 24.595762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373714, 34.114429, 24.662926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463118, -0.443750, 0.767208,
		0.715756, -0.323257, -0.619030,
		0.522700, 0.835818, 0.167911,
		33.530525, 34.365173, 24.713299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792240, 33.525261, 24.804325>,  <33.164635, 33.780102, 24.595762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792240, 33.525261, 24.804325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.788528, 33.902355, 24.937693>,  <33.786301, 34.128613, 25.017714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.788528, 33.902355, 24.937693>,  <33.792240, 33.525261, 24.804325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788528, 33.902355, 24.937693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487265, -0.286905, 0.824777,
		0.873205, 0.170112, -0.456700,
		-0.009275, 0.942734, 0.333417,
		33.785748, 34.185177, 25.037718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511692, 33.714470, 25.103180>,  <33.792240, 33.525261, 24.804325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511692, 33.714470, 25.103180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297085, 34.004414, 25.276030>,  <34.168320, 34.178379, 25.379740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.297085, 34.004414, 25.276030>,  <34.511692, 33.714470, 25.103180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297085, 34.004414, 25.276030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498688, -0.140758, 0.855276,
		0.680776, 0.674368, -0.285957,
		-0.536520, 0.724855, 0.432124,
		34.136127, 34.221870, 25.405666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933640, 34.194344, 25.280020>,  <34.511692, 33.714470, 25.103180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933640, 34.194344, 25.280020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.620914, 34.283344, 25.513004>,  <34.433281, 34.336742, 25.652796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.620914, 34.283344, 25.513004>,  <34.933640, 34.194344, 25.280020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620914, 34.283344, 25.513004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583679, -0.067377, 0.809184,
		0.219287, 0.972602, -0.077191,
		-0.781813, 0.222498, 0.582463,
		34.386372, 34.350094, 25.687742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221725, 34.687325, 25.820210>,  <34.933640, 34.194344, 25.280020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221725, 34.687325, 25.820210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879677, 34.533951, 25.959774>,  <34.674446, 34.441929, 26.043512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879677, 34.533951, 25.959774>,  <35.221725, 34.687325, 25.820210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879677, 34.533951, 25.959774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370824, 0.017929, 0.928530,
		-0.362283, 0.923395, 0.126854,
		-0.855126, -0.383431, 0.348912,
		34.623138, 34.418922, 26.064447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959763, 35.142838, 26.376717>,  <35.221725, 34.687325, 25.820210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959763, 35.142838, 26.376717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804283, 34.777451, 26.424885>,  <34.710995, 34.558220, 26.453787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804283, 34.777451, 26.424885>,  <34.959763, 35.142838, 26.376717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804283, 34.777451, 26.424885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409154, -0.054023, 0.910865,
		-0.825536, 0.403321, 0.394745,
		-0.388696, -0.913463, 0.120423,
		34.687675, 34.503410, 26.461012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680149, 35.111443, 27.052874>,  <34.959763, 35.142838, 26.376717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680149, 35.111443, 27.052874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.709621, 34.724800, 26.954695>,  <34.727306, 34.492813, 26.895788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.709621, 34.724800, 26.954695>,  <34.680149, 35.111443, 27.052874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709621, 34.724800, 26.954695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560756, -0.163366, 0.811704,
		-0.824696, -0.197446, 0.529993,
		0.073685, -0.966606, -0.245447,
		34.731728, 34.434818, 26.881062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812378, 34.968960, 27.608738>,  <34.680149, 35.111443, 27.052874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812378, 34.968960, 27.608738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914730, 34.645378, 27.397032>,  <34.976143, 34.451229, 27.270008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.914730, 34.645378, 27.397032>,  <34.812378, 34.968960, 27.608738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914730, 34.645378, 27.397032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612496, -0.287914, 0.736176,
		-0.747913, -0.512547, 0.421808,
		0.255880, -0.808951, -0.529267,
		34.991493, 34.402695, 27.238251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695545, 34.446625, 27.974072>,  <34.812378, 34.968960, 27.608738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695545, 34.446625, 27.974072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962517, 34.276070, 27.729864>,  <35.122700, 34.173737, 27.583340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.962517, 34.276070, 27.729864>,  <34.695545, 34.446625, 27.974072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962517, 34.276070, 27.729864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417433, -0.464710, 0.780893,
		-0.616675, -0.776042, -0.132174,
		0.667429, -0.426384, -0.610521,
		35.162746, 34.148155, 27.546707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818836, 33.701111, 28.253124>,  <34.695545, 34.446625, 27.974072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818836, 33.701111, 28.253124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126770, 33.792202, 28.014631>,  <35.311531, 33.846855, 27.871536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126770, 33.792202, 28.014631>,  <34.818836, 33.701111, 28.253124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126770, 33.792202, 28.014631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634817, -0.369821, 0.678409,
		-0.066006, -0.900762, -0.429267,
		0.769838, 0.227727, -0.596230,
		35.357719, 33.860519, 27.835762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183407, 33.139713, 28.204124>,  <34.818836, 33.701111, 28.253124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183407, 33.139713, 28.204124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444309, 33.427418, 28.108437>,  <35.600849, 33.600040, 28.051023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444309, 33.427418, 28.108437>,  <35.183407, 33.139713, 28.204124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444309, 33.427418, 28.108437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662725, -0.387945, 0.640541,
		0.367915, -0.576331, -0.729713,
		0.652253, 0.719264, -0.239218,
		35.639984, 33.643196, 28.036671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892685, 32.835838, 28.217939>,  <35.183407, 33.139713, 28.204124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892685, 32.835838, 28.217939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.940674, 33.230217, 28.264454>,  <35.969467, 33.466843, 28.292362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.940674, 33.230217, 28.264454>,  <35.892685, 32.835838, 28.217939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940674, 33.230217, 28.264454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727187, -0.167012, 0.665813,
		0.675875, 0.004686, -0.737001,
		0.119968, 0.985944, 0.116287,
		35.976665, 33.526001, 28.299339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583820, 32.946644, 28.068352>,  <35.892685, 32.835838, 28.217939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583820, 32.946644, 28.068352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471542, 33.239780, 28.316273>,  <36.404175, 33.415661, 28.465025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471542, 33.239780, 28.316273>,  <36.583820, 32.946644, 28.068352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471542, 33.239780, 28.316273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817563, -0.155725, 0.554382,
		0.502793, 0.662340, -0.555432,
		-0.280695, 0.732840, 0.619803,
		36.387333, 33.459633, 28.502214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162395, 33.266296, 28.232452>,  <36.583820, 32.946644, 28.068352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162395, 33.266296, 28.232452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927105, 33.372730, 28.537920>,  <36.785931, 33.436592, 28.721201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927105, 33.372730, 28.537920>,  <37.162395, 33.266296, 28.232452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927105, 33.372730, 28.537920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799733, 0.051189, 0.598170,
		0.120074, 0.962589, -0.242909,
		-0.588225, 0.266087, 0.763668,
		36.750637, 33.452557, 28.767021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.243416, 40.932137, 24.575216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.115074, 40.572651, 24.694792>,  <35.038067, 40.356960, 24.766537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.115074, 40.572651, 24.694792>,  <35.243416, 40.932137, 24.575216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115074, 40.572651, 24.694792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365334, -0.173763, -0.914515,
		0.873831, -0.402641, -0.272577,
		-0.320858, -0.898714, 0.298939,
		35.018818, 40.303036, 24.784473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605827, 40.309418, 24.224743>,  <35.243416, 40.932137, 24.575216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605827, 40.309418, 24.224743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.236691, 40.227673, 24.355335>,  <35.015209, 40.178623, 24.433691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.236691, 40.227673, 24.355335>,  <35.605827, 40.309418, 24.224743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236691, 40.227673, 24.355335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252628, -0.318682, -0.913576,
		0.290748, -0.925568, 0.242466,
		-0.922846, -0.204366, 0.326480,
		34.959835, 40.166363, 24.453279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377113, 39.837608, 23.717878>,  <35.605827, 40.309418, 24.224743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377113, 39.837608, 23.717878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025280, 39.917484, 23.890600>,  <34.814178, 39.965412, 23.994232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025280, 39.917484, 23.890600>,  <35.377113, 39.837608, 23.717878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025280, 39.917484, 23.890600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457332, -0.104863, -0.883092,
		-0.131087, -0.974227, 0.183572,
		-0.879581, 0.199715, 0.431799,
		34.761406, 39.977394, 24.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959129, 39.305252, 23.547054>,  <35.377113, 39.837608, 23.717878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959129, 39.305252, 23.547054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713459, 39.607899, 23.636774>,  <34.566055, 39.789486, 23.690607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.713459, 39.607899, 23.636774>,  <34.959129, 39.305252, 23.547054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713459, 39.607899, 23.636774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578846, -0.238725, -0.779710,
		-0.536399, -0.608717, 0.584586,
		-0.614178, 0.756620, 0.224301,
		34.529205, 39.834885, 23.704065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224834, 39.089939, 23.473574>,  <34.959129, 39.305252, 23.547054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224834, 39.089939, 23.473574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222992, 39.489201, 23.449326>,  <34.221886, 39.728756, 23.434776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.222992, 39.489201, 23.449326>,  <34.224834, 39.089939, 23.473574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222992, 39.489201, 23.449326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575115, -0.052238, -0.816403,
		-0.818060, 0.031099, 0.574292,
		-0.004610, 0.998150, -0.060620,
		34.221607, 39.788647, 23.431139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673454, 39.174019, 23.147449>,  <34.224834, 39.089939, 23.473574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673454, 39.174019, 23.147449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800179, 39.552071, 23.115561>,  <33.876213, 39.778904, 23.096428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800179, 39.552071, 23.115561>,  <33.673454, 39.174019, 23.147449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800179, 39.552071, 23.115561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627108, 0.145665, -0.765191,
		-0.711594, 0.292415, 0.638848,
		0.316812, 0.945132, -0.079722,
		33.895222, 39.835609, 23.091644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138798, 39.630440, 23.344053>,  <33.673454, 39.174019, 23.147449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138798, 39.630440, 23.344053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384560, 39.815620, 23.088495>,  <33.532017, 39.926727, 22.935160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.384560, 39.815620, 23.088495>,  <33.138798, 39.630440, 23.344053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384560, 39.815620, 23.088495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720360, -0.001182, -0.693600,
		-0.321855, 0.886385, 0.332762,
		0.614403, 0.462947, -0.638897,
		33.568882, 39.954506, 22.896826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749165, 40.185921, 23.054632>,  <33.138798, 39.630440, 23.344053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749165, 40.185921, 23.054632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.061478, 40.130814, 22.810862>,  <33.248863, 40.097748, 22.664598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.061478, 40.130814, 22.810862>,  <32.749165, 40.185921, 23.054632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061478, 40.130814, 22.810862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595810, 0.129521, -0.792612,
		0.188129, 0.981960, 0.019044,
		0.780780, -0.137767, -0.609428,
		33.295712, 40.089485, 22.628033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644302, 40.797539, 22.487692>,  <32.749165, 40.185921, 23.054632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644302, 40.797539, 22.487692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893219, 40.509823, 22.364161>,  <33.042568, 40.337193, 22.290043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893219, 40.509823, 22.364161>,  <32.644302, 40.797539, 22.487692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893219, 40.509823, 22.364161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563019, -0.137187, -0.814978,
		0.543838, 0.681031, -0.490343,
		0.622295, -0.719289, -0.308826,
		33.079906, 40.294037, 22.271513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836380, 40.957390, 21.816240>,  <32.644302, 40.797539, 22.487692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836380, 40.957390, 21.816240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892399, 40.562222, 21.842794>,  <32.926010, 40.325123, 21.858727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892399, 40.562222, 21.842794>,  <32.836380, 40.957390, 21.816240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892399, 40.562222, 21.842794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519299, -0.130370, -0.844590,
		0.843039, 0.083811, -0.531283,
		0.140050, -0.987917, 0.066384,
		32.934414, 40.265846, 21.862709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807178, 40.825260, 21.171209>,  <32.836380, 40.957390, 21.816240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807178, 40.825260, 21.171209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767242, 40.473255, 21.356945>,  <32.743279, 40.262051, 21.468386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767242, 40.473255, 21.356945>,  <32.807178, 40.825260, 21.171209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767242, 40.473255, 21.356945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645707, -0.297752, -0.703140,
		0.757030, -0.370030, -0.538502,
		-0.099843, -0.880012, 0.464338,
		32.737289, 40.209251, 21.496246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901306, 40.374931, 20.633663>,  <32.807178, 40.825260, 21.171209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901306, 40.374931, 20.633663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.697948, 40.195404, 20.927629>,  <32.575935, 40.087688, 21.104010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.697948, 40.195404, 20.927629>,  <32.901306, 40.374931, 20.633663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697948, 40.195404, 20.927629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739284, -0.210160, -0.639759,
		0.441583, -0.868561, -0.224959,
		-0.508392, -0.448815, 0.734916,
		32.545429, 40.060760, 21.148104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835941, 39.766579, 20.382496>,  <32.901306, 40.374931, 20.633663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835941, 39.766579, 20.382496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550201, 39.760204, 20.662338>,  <32.378757, 39.756378, 20.830244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550201, 39.760204, 20.662338>,  <32.835941, 39.766579, 20.382496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550201, 39.760204, 20.662338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655822, -0.333522, -0.677245,
		0.244128, -0.942608, 0.227799,
		-0.714353, -0.015939, 0.699605,
		32.335896, 39.755424, 20.872219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409088, 39.004650, 20.378517>,  <32.835941, 39.766579, 20.382496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409088, 39.004650, 20.378517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233082, 39.357304, 20.446760>,  <32.127480, 39.568897, 20.487705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.233082, 39.357304, 20.446760>,  <32.409088, 39.004650, 20.378517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233082, 39.357304, 20.446760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591844, -0.141838, -0.793475,
		-0.675357, -0.450113, 0.584201,
		-0.440016, 0.881635, 0.170605,
		32.101078, 39.621796, 20.497942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101170, 38.850754, 20.674738>,  <32.409088, 39.004650, 20.378517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101170, 38.850754, 20.674738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123867, 38.502766, 20.478809>,  <33.137486, 38.293972, 20.361252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.123867, 38.502766, 20.478809>,  <33.101170, 38.850754, 20.674738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123867, 38.502766, 20.478809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206942, -0.490205, 0.846684,
		-0.976706, 0.053318, -0.207852,
		0.056747, -0.869974, -0.489820,
		33.140892, 38.241772, 20.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611446, 38.387672, 20.993586>,  <33.101170, 38.850754, 20.674738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611446, 38.387672, 20.993586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852917, 38.128231, 20.808159>,  <32.997799, 37.972569, 20.696903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852917, 38.128231, 20.808159>,  <32.611446, 38.387672, 20.993586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852917, 38.128231, 20.808159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098330, -0.637607, 0.764060,
		-0.791143, -0.415662, -0.448685,
		0.603676, -0.648600, -0.463566,
		33.034019, 37.933651, 20.669088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456966, 37.586105, 21.224316>,  <32.611446, 38.387672, 20.993586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456966, 37.586105, 21.224316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.804756, 37.476879, 21.059660>,  <33.013432, 37.411343, 20.960867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.804756, 37.476879, 21.059660>,  <32.456966, 37.586105, 21.224316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804756, 37.476879, 21.059660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089655, -0.732243, 0.675116,
		-0.485771, -0.623903, -0.612186,
		0.869476, -0.273066, -0.411638,
		33.065598, 37.394958, 20.936169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415359, 36.890522, 20.999273>,  <32.456966, 37.586105, 21.224316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415359, 36.890522, 20.999273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.807293, 36.954395, 21.047318>,  <33.042454, 36.992718, 21.076143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.807293, 36.954395, 21.047318>,  <32.415359, 36.890522, 20.999273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807293, 36.954395, 21.047318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048651, -0.773689, 0.631695,
		0.193797, -0.613113, -0.765856,
		0.979834, 0.159681, 0.120110,
		33.101242, 37.002300, 21.083351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865009, 36.242348, 20.784845>,  <32.415359, 36.890522, 20.999273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865009, 36.242348, 20.784845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046692, 36.478962, 21.051313>,  <33.155701, 36.620930, 21.211195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.046692, 36.478962, 21.051313>,  <32.865009, 36.242348, 20.784845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046692, 36.478962, 21.051313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042586, -0.761315, 0.646982,
		0.889876, -0.265496, -0.370987,
		0.454210, 0.591533, 0.666170,
		33.182953, 36.656422, 21.251163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367554, 35.825432, 21.045855>,  <32.865009, 36.242348, 20.784845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367554, 35.825432, 21.045855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374714, 36.117081, 21.319511>,  <33.379009, 36.292072, 21.483706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374714, 36.117081, 21.319511>,  <33.367554, 35.825432, 21.045855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374714, 36.117081, 21.319511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048359, -0.684085, 0.727798,
		0.998669, 0.020056, -0.047506,
		0.017901, 0.729127, 0.684144,
		33.380085, 36.335819, 21.524755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956669, 35.662045, 21.418003>,  <33.367554, 35.825432, 21.045855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956669, 35.662045, 21.418003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723793, 35.892292, 21.647686>,  <33.584068, 36.030441, 21.785496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723793, 35.892292, 21.647686>,  <33.956669, 35.662045, 21.418003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723793, 35.892292, 21.647686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249771, -0.545462, 0.800053,
		0.773736, 0.609204, 0.173790,
		-0.582191, 0.575623, 0.574205,
		33.549137, 36.064980, 21.819948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300121, 35.908829, 22.082956>,  <33.956669, 35.662045, 21.418003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300121, 35.908829, 22.082956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908936, 35.937820, 22.161264>,  <33.674225, 35.955215, 22.208250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908936, 35.937820, 22.161264>,  <34.300121, 35.908829, 22.082956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908936, 35.937820, 22.161264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131583, -0.514026, 0.847622,
		0.162069, 0.854707, 0.493164,
		-0.977967, 0.072481, 0.195772,
		33.615547, 35.959564, 22.219995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313507, 36.339584, 22.773388>,  <34.300121, 35.908829, 22.082956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313507, 36.339584, 22.773388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.976215, 36.130665, 22.722530>,  <33.773838, 36.005314, 22.692017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.976215, 36.130665, 22.722530>,  <34.313507, 36.339584, 22.773388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976215, 36.130665, 22.722530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114709, -0.405909, 0.906686,
		-0.525167, 0.749964, 0.402187,
		-0.843233, -0.522296, -0.127142,
		33.723244, 35.973976, 22.684387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904015, 36.407730, 23.275360>,  <34.313507, 36.339584, 22.773388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904015, 36.407730, 23.275360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703293, 36.095997, 23.125250>,  <33.582859, 35.908958, 23.035183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703293, 36.095997, 23.125250>,  <33.904015, 36.407730, 23.275360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703293, 36.095997, 23.125250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048675, -0.407726, 0.911806,
		-0.863609, 0.475817, 0.166666,
		-0.501806, -0.779332, -0.375276,
		33.552750, 35.862198, 23.012667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264484, 36.185902, 23.709923>,  <33.904015, 36.407730, 23.275360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264484, 36.185902, 23.709923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338226, 35.840508, 23.522131>,  <33.382473, 35.633270, 23.409456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.338226, 35.840508, 23.522131>,  <33.264484, 36.185902, 23.709923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338226, 35.840508, 23.522131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028198, -0.482119, 0.875652,
		-0.982455, -0.148191, -0.113228,
		0.184353, -0.863482, -0.469482,
		33.393532, 35.581463, 23.381287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774506, 35.673561, 23.952383>,  <33.264484, 36.185902, 23.709923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774506, 35.673561, 23.952383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103245, 35.476669, 23.837643>,  <33.300488, 35.358536, 23.768799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.103245, 35.476669, 23.837643>,  <32.774506, 35.673561, 23.952383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103245, 35.476669, 23.837643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026077, -0.470472, 0.882030,
		-0.569115, -0.732371, -0.373819,
		0.821844, -0.492228, -0.286850,
		33.349800, 35.329002, 23.751587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547760, 35.059502, 24.169823>,  <32.774506, 35.673561, 23.952383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547760, 35.059502, 24.169823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942657, 35.020821, 24.119226>,  <33.179596, 34.997612, 24.088869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.942657, 35.020821, 24.119226>,  <32.547760, 35.059502, 24.169823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942657, 35.020821, 24.119226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045130, -0.591901, 0.804746,
		-0.152692, -0.800189, -0.579986,
		0.987243, -0.096704, -0.126491,
		33.238831, 34.991810, 24.081280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731010, 34.338364, 24.404490>,  <32.547760, 35.059502, 24.169823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731010, 34.338364, 24.404490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.075069, 34.542366, 24.401939>,  <33.281506, 34.664768, 24.400410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.075069, 34.542366, 24.401939>,  <32.731010, 34.338364, 24.404490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075069, 34.542366, 24.401939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278892, -0.459826, 0.843077,
		0.427040, -0.726951, -0.537755,
		0.860149, 0.510003, -0.006377,
		33.333115, 34.695366, 24.400026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774590, 33.726460, 23.961189>,  <32.731010, 34.338364, 24.404490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774590, 33.726460, 23.961189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505306, 33.438644, 23.892998>,  <32.343739, 33.265957, 23.852083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505306, 33.438644, 23.892998>,  <32.774590, 33.726460, 23.961189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505306, 33.438644, 23.892998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278545, 0.460324, -0.842920,
		0.684988, -0.519971, -0.510315,
		-0.673204, -0.719537, -0.170481,
		32.303345, 33.222782, 23.841854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889042, 33.676613, 23.199272>,  <32.774590, 33.726460, 23.961189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889042, 33.676613, 23.199272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.540504, 33.507446, 23.298788>,  <32.331383, 33.405945, 23.358498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.540504, 33.507446, 23.298788>,  <32.889042, 33.676613, 23.199272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540504, 33.507446, 23.298788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380140, 0.261257, -0.887265,
		0.310251, -0.867685, -0.388416,
		-0.871342, -0.422927, 0.248787,
		32.279102, 33.380569, 23.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656361, 33.376072, 22.594847>,  <32.889042, 33.676613, 23.199272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656361, 33.376072, 22.594847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318081, 33.365841, 22.808064>,  <32.115112, 33.359703, 22.935993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.318081, 33.365841, 22.808064>,  <32.656361, 33.376072, 22.594847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318081, 33.365841, 22.808064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475888, 0.488148, -0.731602,
		-0.241488, -0.872386, -0.425001,
		-0.845703, -0.025580, 0.533040,
		32.064369, 33.358166, 22.967976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135632, 33.111111, 22.189987>,  <32.656361, 33.376072, 22.594847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135632, 33.111111, 22.189987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.934572, 33.314590, 22.469578>,  <31.813936, 33.436676, 22.637333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.934572, 33.314590, 22.469578>,  <32.135632, 33.111111, 22.189987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934572, 33.314590, 22.469578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498212, 0.490308, -0.715110,
		-0.706488, -0.707690, 0.006985,
		-0.502652, 0.508697, 0.698977,
		31.783777, 33.467201, 22.679272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426361, 33.140182, 21.976395>,  <32.135632, 33.111111, 22.189987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426361, 33.140182, 21.976395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482821, 33.447689, 22.225899>,  <31.516695, 33.632195, 22.375601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482821, 33.447689, 22.225899>,  <31.426361, 33.140182, 21.976395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482821, 33.447689, 22.225899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463310, 0.608106, -0.644632,
		-0.874884, -0.198007, 0.442008,
		0.141146, 0.768765, 0.623761,
		31.525164, 33.678318, 22.413027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819824, 33.414345, 21.938599>,  <31.426361, 33.140182, 21.976395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819824, 33.414345, 21.938599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084179, 33.691135, 22.054800>,  <31.242792, 33.857212, 22.124521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.084179, 33.691135, 22.054800>,  <30.819824, 33.414345, 21.938599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084179, 33.691135, 22.054800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422359, 0.662910, -0.618194,
		-0.620353, 0.285861, 0.730373,
		0.660889, 0.691978, 0.290502,
		31.282446, 33.898727, 22.141951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428415, 33.976658, 22.058981>,  <30.819824, 33.414345, 21.938599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428415, 33.976658, 22.058981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.801243, 34.110260, 22.002853>,  <31.024939, 34.190422, 21.969177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.801243, 34.110260, 22.002853>,  <30.428415, 33.976658, 22.058981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801243, 34.110260, 22.002853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354178, 0.758634, -0.546839,
		-0.076196, 0.559390, 0.825395,
		0.932069, 0.334004, -0.140319,
		31.080864, 34.210461, 21.960758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249077, 34.471718, 22.665047>,  <30.428415, 33.976658, 22.058981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249077, 34.471718, 22.665047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.918129, 34.503593, 22.887438>,  <29.719561, 34.522720, 23.020872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.918129, 34.503593, 22.887438>,  <30.249077, 34.471718, 22.665047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918129, 34.503593, 22.887438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398155, -0.614964, 0.680655,
		0.396148, 0.784518, 0.477073,
		-0.827369, 0.079692, 0.555977,
		29.669918, 34.527500, 23.054232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424517, 34.773380, 23.301889>,  <30.249077, 34.471718, 22.665047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424517, 34.773380, 23.301889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.079491, 34.584633, 23.374905>,  <29.872475, 34.471382, 23.418715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.079491, 34.584633, 23.374905>,  <30.424517, 34.773380, 23.301889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079491, 34.584633, 23.374905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415129, -0.453821, 0.788489,
		-0.289224, 0.755900, 0.587337,
		-0.862565, -0.471870, 0.182540,
		29.820721, 34.443073, 23.429667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533947, 34.713531, 23.959860>,  <30.424517, 34.773380, 23.301889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533947, 34.713531, 23.959860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194368, 34.509857, 23.903267>,  <29.990622, 34.387653, 23.869310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.194368, 34.509857, 23.903267>,  <30.533947, 34.713531, 23.959860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194368, 34.509857, 23.903267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189552, -0.543288, 0.817868,
		-0.493314, 0.667507, 0.557741,
		-0.848947, -0.509187, -0.141485,
		29.939684, 34.357101, 23.860821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030172, 34.819141, 24.495691>,  <30.533947, 34.713531, 23.959860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030172, 34.819141, 24.495691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.939165, 34.453178, 24.362320>,  <29.884562, 34.233601, 24.282297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.939165, 34.453178, 24.362320>,  <30.030172, 34.819141, 24.495691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939165, 34.453178, 24.362320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009535, -0.344487, 0.938743,
		-0.973727, 0.210402, 0.087100,
		-0.227518, -0.914910, -0.333430,
		29.870909, 34.178707, 24.262291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531881, 34.565422, 24.921053>,  <30.030172, 34.819141, 24.495691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531881, 34.565422, 24.921053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.702778, 34.249100, 24.745741>,  <29.805317, 34.059307, 24.640554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.702778, 34.249100, 24.745741>,  <29.531881, 34.565422, 24.921053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702778, 34.249100, 24.745741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178877, -0.549099, 0.816391,
		-0.886265, -0.270399, -0.376056,
		0.427243, -0.790806, -0.438279,
		29.830952, 34.011856, 24.614258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061981, 33.978218, 25.086372>,  <29.531881, 34.565422, 24.921053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061981, 33.978218, 25.086372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.422754, 33.828590, 25.000034>,  <29.639219, 33.738815, 24.948233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.422754, 33.828590, 25.000034>,  <29.061981, 33.978218, 25.086372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422754, 33.828590, 25.000034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050276, -0.587332, 0.807783,
		-0.428935, -0.717716, -0.548542,
		0.901935, -0.374065, -0.215844,
		29.693335, 33.716370, 24.935282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979868, 33.261585, 25.354990>,  <29.061981, 33.978218, 25.086372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979868, 33.261585, 25.354990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364637, 33.349022, 25.289358>,  <29.595499, 33.401485, 25.249979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.364637, 33.349022, 25.289358>,  <28.979868, 33.261585, 25.354990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364637, 33.349022, 25.289358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268530, -0.643894, 0.716445,
		0.050963, -0.733224, -0.678075,
		0.961923, 0.218596, -0.164077,
		29.653214, 33.414600, 25.240135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.875566, 39.742870, 21.780382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266584, 39.771019, 21.700933>,  <30.501196, 39.787907, 21.653263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266584, 39.771019, 21.700933>,  <29.875566, 39.742870, 21.780382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266584, 39.771019, 21.700933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210621, -0.297303, 0.931262,
		0.006482, -0.952187, -0.305449,
		0.977546, 0.070371, -0.198624,
		30.559849, 39.792130, 21.641346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009884, 39.269249, 22.131586>,  <29.875566, 39.742870, 21.780382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009884, 39.269249, 22.131586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354654, 39.466255, 22.083397>,  <30.561518, 39.584457, 22.054483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.354654, 39.466255, 22.083397>,  <30.009884, 39.269249, 22.131586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354654, 39.466255, 22.083397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307296, -0.318438, 0.896753,
		0.403299, -0.809956, -0.425818,
		0.861928, 0.492512, -0.120471,
		30.613232, 39.614010, 22.047256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413843, 38.884716, 22.474051>,  <30.009884, 39.269249, 22.131586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413843, 38.884716, 22.474051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.642723, 39.211170, 22.441786>,  <30.780052, 39.407043, 22.422426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.642723, 39.211170, 22.441786>,  <30.413843, 38.884716, 22.474051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642723, 39.211170, 22.441786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403930, -0.194859, 0.893796,
		0.713741, -0.544014, -0.441161,
		0.572201, 0.816136, -0.080664,
		30.814384, 39.456013, 22.417587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095629, 38.693630, 22.633389>,  <30.413843, 38.884716, 22.474051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095629, 38.693630, 22.633389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078299, 39.088829, 22.692707>,  <31.067900, 39.325947, 22.728298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078299, 39.088829, 22.692707>,  <31.095629, 38.693630, 22.633389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078299, 39.088829, 22.692707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477138, -0.109949, 0.871924,
		0.877760, 0.108535, -0.466646,
		-0.043327, 0.987994, 0.148295,
		31.065300, 39.385227, 22.737196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619118, 38.786156, 23.003357>,  <31.095629, 38.693630, 22.633389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619118, 38.786156, 23.003357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442148, 39.141613, 23.051651>,  <31.335966, 39.354889, 23.080627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.442148, 39.141613, 23.051651>,  <31.619118, 38.786156, 23.003357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442148, 39.141613, 23.051651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272503, 0.004946, 0.962142,
		0.854403, 0.458575, -0.244346,
		-0.442423, 0.888642, 0.120737,
		31.309422, 39.408207, 23.087872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067646, 39.227821, 23.474434>,  <31.619118, 38.786156, 23.003357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067646, 39.227821, 23.474434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704636, 39.391987, 23.510111>,  <31.486830, 39.490486, 23.531517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.704636, 39.391987, 23.510111>,  <32.067646, 39.227821, 23.474434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704636, 39.391987, 23.510111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175352, 0.177296, 0.968410,
		0.381633, 0.894499, -0.232868,
		-0.907528, 0.410411, 0.089191,
		31.432377, 39.515110, 23.536867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179813, 39.809410, 23.878654>,  <32.067646, 39.227821, 23.474434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179813, 39.809410, 23.878654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.789524, 39.725933, 23.905231>,  <31.555351, 39.675846, 23.921177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.789524, 39.725933, 23.905231>,  <32.179813, 39.809410, 23.878654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789524, 39.725933, 23.905231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057826, 0.047122, 0.997214,
		-0.211240, 0.976846, -0.033910,
		-0.975722, -0.208691, 0.066441,
		31.496807, 39.663326, 23.925163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007179, 40.245552, 24.418463>,  <32.179813, 39.809410, 23.878654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007179, 40.245552, 24.418463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.709036, 39.979874, 24.395517>,  <31.530149, 39.820469, 24.381750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.709036, 39.979874, 24.395517>,  <32.007179, 40.245552, 24.418463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709036, 39.979874, 24.395517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026355, -0.115337, 0.992977,
		-0.666145, 0.738610, 0.103473,
		-0.745357, -0.664193, -0.057365,
		31.485430, 39.780617, 24.378307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507456, 40.404819, 24.881964>,  <32.007179, 40.245552, 24.418463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507456, 40.404819, 24.881964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.450262, 40.012379, 24.829807>,  <31.415945, 39.776917, 24.798513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.450262, 40.012379, 24.829807>,  <31.507456, 40.404819, 24.881964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450262, 40.012379, 24.829807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027649, -0.135654, 0.990371,
		-0.989339, 0.138003, 0.046522,
		-0.142985, -0.981098, -0.130392,
		31.407366, 39.718048, 24.790689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920036, 40.167080, 25.246719>,  <31.507456, 40.404819, 24.881964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920036, 40.167080, 25.246719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168125, 39.858643, 25.189110>,  <31.316978, 39.673580, 25.154543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168125, 39.858643, 25.189110>,  <30.920036, 40.167080, 25.246719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168125, 39.858643, 25.189110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177011, -0.041292, 0.983342,
		-0.764194, -0.635383, 0.110881,
		0.620221, -0.771092, -0.144025,
		31.354191, 39.627316, 25.145903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770102, 39.720551, 25.748650>,  <30.920036, 40.167080, 25.246719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770102, 39.720551, 25.748650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146570, 39.618111, 25.660461>,  <31.372452, 39.556648, 25.607548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.146570, 39.618111, 25.660461>,  <30.770102, 39.720551, 25.748650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146570, 39.618111, 25.660461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224320, -0.014473, 0.974408,
		-0.252737, -0.966542, 0.043827,
		0.941172, -0.256100, -0.220472,
		31.428923, 39.541279, 25.594320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931044, 39.182930, 26.204531>,  <30.770102, 39.720551, 25.748650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931044, 39.182930, 26.204531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299088, 39.266739, 26.072168>,  <31.519915, 39.317024, 25.992752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299088, 39.266739, 26.072168>,  <30.931044, 39.182930, 26.204531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299088, 39.266739, 26.072168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380557, -0.278518, 0.881819,
		0.092602, -0.937297, -0.336004,
		0.920110, 0.209527, -0.330903,
		31.575121, 39.329597, 25.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668118, 38.539593, 26.140434>,  <30.931044, 39.182930, 26.204531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668118, 38.539593, 26.140434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423780, 38.281250, 26.323626>,  <30.277178, 38.126244, 26.433540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423780, 38.281250, 26.323626>,  <30.668118, 38.539593, 26.140434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423780, 38.281250, 26.323626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631738, 0.048899, -0.773638,
		0.477264, -0.761892, -0.437881,
		-0.610841, -0.645856, 0.457979,
		30.240528, 38.087494, 26.461020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556997, 38.066353, 25.748436>,  <30.668118, 38.539593, 26.140434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556997, 38.066353, 25.748436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226486, 38.069862, 25.973713>,  <30.028179, 38.071968, 26.108879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226486, 38.069862, 25.973713>,  <30.556997, 38.066353, 25.748436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226486, 38.069862, 25.973713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543527, 0.249922, -0.801323,
		-0.147787, -0.968226, -0.201735,
		-0.826280, 0.008777, 0.563192,
		29.978601, 38.072495, 26.142670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096893, 37.542507, 25.479403>,  <30.556997, 38.066353, 25.748436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096893, 37.542507, 25.479403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.885349, 37.823715, 25.669588>,  <29.758423, 37.992439, 25.783699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.885349, 37.823715, 25.669588>,  <30.096893, 37.542507, 25.479403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885349, 37.823715, 25.669588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492791, 0.201747, -0.846437,
		-0.690988, -0.681951, 0.239748,
		-0.528860, 0.703023, 0.475464,
		29.726692, 38.034622, 25.812227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418701, 37.428802, 25.175323>,  <30.096893, 37.542507, 25.479403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418701, 37.428802, 25.175323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367744, 37.765018, 25.385948>,  <29.337170, 37.966747, 25.512323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.367744, 37.765018, 25.385948>,  <29.418701, 37.428802, 25.175323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367744, 37.765018, 25.385948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717191, 0.288656, -0.634283,
		-0.685134, -0.458450, 0.566053,
		-0.127393, 0.840537, 0.526564,
		29.329527, 38.017178, 25.543917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.731848, 37.421146, 25.362967>,  <29.418701, 37.428802, 25.175323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.731848, 37.421146, 25.362967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847540, 37.803085, 25.390129>,  <28.916956, 38.032249, 25.406427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847540, 37.803085, 25.390129>,  <28.731848, 37.421146, 25.362967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847540, 37.803085, 25.390129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683149, 0.255584, -0.684094,
		-0.670561, 0.151471, 0.726226,
		0.289233, 0.954847, 0.067907,
		28.934309, 38.089539, 25.410501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129967, 37.872910, 25.435986>,  <28.731848, 37.421146, 25.362967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129967, 37.872910, 25.435986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427502, 38.097534, 25.291016>,  <28.606022, 38.232311, 25.204033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.427502, 38.097534, 25.291016>,  <28.129967, 37.872910, 25.435986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427502, 38.097534, 25.291016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600699, 0.323964, -0.730895,
		-0.293032, 0.761376, 0.578308,
		0.743837, 0.561564, -0.362426,
		28.650652, 38.266003, 25.182287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741905, 38.419533, 25.170971>,  <28.129967, 37.872910, 25.435986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741905, 38.419533, 25.170971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.109367, 38.418095, 25.012951>,  <28.329844, 38.417233, 24.918139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.109367, 38.418095, 25.012951>,  <27.741905, 38.419533, 25.170971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109367, 38.418095, 25.012951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366403, 0.366175, -0.855374,
		0.147732, 0.930539, 0.335070,
		0.918653, -0.003596, -0.395048,
		28.384964, 38.417015, 24.894436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944685, 39.162674, 24.908564>,  <27.741905, 38.419533, 25.170971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944685, 39.162674, 24.908564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184732, 38.908333, 24.714430>,  <28.328762, 38.755730, 24.597950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.184732, 38.908333, 24.714430>,  <27.944685, 39.162674, 24.908564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184732, 38.908333, 24.714430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311768, 0.372830, -0.873955,
		0.736652, 0.675791, 0.025506,
		0.600121, -0.635849, -0.485336,
		28.364769, 38.717579, 24.568829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265278, 39.557789, 24.368341>,  <27.944685, 39.162674, 24.908564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265278, 39.557789, 24.368341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334635, 39.195492, 24.213652>,  <28.376249, 38.978111, 24.120838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.334635, 39.195492, 24.213652>,  <28.265278, 39.557789, 24.368341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334635, 39.195492, 24.213652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442657, 0.279100, -0.852149,
		0.879767, 0.318945, -0.352540,
		0.173394, -0.905747, -0.386726,
		28.386654, 38.923767, 24.097633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623484, 39.593750, 23.656281>,  <28.265278, 39.557789, 24.368341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623484, 39.593750, 23.656281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.452524, 39.232170, 23.662071>,  <28.349949, 39.015224, 23.665546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.452524, 39.232170, 23.662071>,  <28.623484, 39.593750, 23.656281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452524, 39.232170, 23.662071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492778, 0.219508, -0.842013,
		0.757957, -0.367011, -0.539263,
		-0.427400, -0.903946, 0.014477,
		28.324305, 38.960987, 23.666414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716022, 39.214359, 22.905844>,  <28.623484, 39.593750, 23.656281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716022, 39.214359, 22.905844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422714, 39.014034, 23.089800>,  <28.246729, 38.893841, 23.200174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422714, 39.014034, 23.089800>,  <28.716022, 39.214359, 22.905844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422714, 39.014034, 23.089800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541801, 0.021715, -0.840226,
		0.410809, -0.865284, -0.287263,
		-0.733272, -0.500812, 0.459891,
		28.202732, 38.863792, 23.227768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394123, 38.876965, 22.406937>,  <28.716022, 39.214359, 22.905844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394123, 38.876965, 22.406937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118093, 38.836300, 22.693562>,  <27.952477, 38.811901, 22.865538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118093, 38.836300, 22.693562>,  <28.394123, 38.876965, 22.406937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118093, 38.836300, 22.693562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722585, 0.040870, -0.690073,
		0.040870, -0.993979, -0.101665,
		0.690073, 0.101665, -0.716564,
		27.911072, 38.805801, 22.908531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025152, 38.292877, 22.220013>,  <28.394123, 38.876965, 22.406937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025152, 38.292877, 22.220013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799210, 38.523357, 22.456295>,  <27.663645, 38.661644, 22.598064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799210, 38.523357, 22.456295>,  <28.025152, 38.292877, 22.220013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799210, 38.523357, 22.456295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760485, -0.085626, -0.643685,
		-0.320312, -0.812811, 0.486558,
		-0.564856, 0.576200, 0.590704,
		27.629753, 38.696217, 22.633507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490051, 37.659416, 22.350243>,  <28.025152, 38.292877, 22.220013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490051, 37.659416, 22.350243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272625, 37.431950, 22.103291>,  <28.142170, 37.295471, 21.955118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272625, 37.431950, 22.103291>,  <28.490051, 37.659416, 22.350243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272625, 37.431950, 22.103291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391922, -0.822378, 0.412421,
		-0.742250, -0.017788, 0.669887,
		-0.543564, -0.568663, -0.617382,
		28.109556, 37.261353, 21.918076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105259, 37.160217, 22.750824>,  <28.490051, 37.659416, 22.350243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105259, 37.160217, 22.750824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.124012, 36.982201, 22.393110>,  <28.135263, 36.875393, 22.178482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.124012, 36.982201, 22.393110>,  <28.105259, 37.160217, 22.750824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124012, 36.982201, 22.393110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245333, -0.862716, 0.442190,
		-0.968304, -0.240129, 0.068737,
		0.046882, -0.445038, -0.894284,
		28.138077, 36.848690, 22.124825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855637, 36.611626, 22.907120>,  <28.105259, 37.160217, 22.750824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855637, 36.611626, 22.907120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082376, 36.551838, 22.583061>,  <28.218420, 36.515965, 22.388626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082376, 36.551838, 22.583061>,  <27.855637, 36.611626, 22.907120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082376, 36.551838, 22.583061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288874, -0.884901, 0.365379,
		-0.771512, -0.441147, -0.458430,
		0.566851, -0.149466, -0.810148,
		28.252432, 36.507000, 22.340017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690414, 35.953857, 22.727377>,  <27.855637, 36.611626, 22.907120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690414, 35.953857, 22.727377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043270, 36.026432, 22.553522>,  <28.254984, 36.069977, 22.449209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043270, 36.026432, 22.553522>,  <27.690414, 35.953857, 22.727377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043270, 36.026432, 22.553522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287904, -0.938063, 0.192742,
		-0.372748, -0.295160, -0.879738,
		0.882140, 0.181436, -0.434639,
		28.307913, 36.080864, 22.423130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962830, 35.336151, 22.473986>,  <27.690414, 35.953857, 22.727377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962830, 35.336151, 22.473986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299900, 35.551258, 22.463413>,  <28.502142, 35.680325, 22.457069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.299900, 35.551258, 22.463413>,  <27.962830, 35.336151, 22.473986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299900, 35.551258, 22.463413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533208, -0.826699, 0.179608,
		0.074739, -0.165444, -0.983383,
		0.842677, 0.537771, -0.026429,
		28.552704, 35.712589, 22.455484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334467, 34.919647, 22.116175>,  <27.962830, 35.336151, 22.473986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334467, 34.919647, 22.116175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601860, 35.157009, 22.295507>,  <28.762297, 35.299427, 22.403107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601860, 35.157009, 22.295507>,  <28.334467, 34.919647, 22.116175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601860, 35.157009, 22.295507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517463, -0.804083, 0.292716,
		0.534195, 0.036318, -0.844581,
		0.668482, 0.593406, 0.448330,
		28.802404, 35.335030, 22.430006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939896, 34.660366, 21.967800>,  <28.334467, 34.919647, 22.116175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939896, 34.660366, 21.967800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055832, 34.870075, 22.288082>,  <29.125395, 34.995903, 22.480251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055832, 34.870075, 22.288082>,  <28.939896, 34.660366, 21.967800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055832, 34.870075, 22.288082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506590, -0.793848, 0.336410,
		0.812009, 0.308123, -0.495683,
		0.289842, 0.524276, 0.800704,
		29.142784, 35.027359, 22.528294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622295, 34.376053, 22.192440>,  <28.939896, 34.660366, 21.967800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622295, 34.376053, 22.192440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.521046, 34.607197, 22.502796>,  <29.460297, 34.745884, 22.689011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.521046, 34.607197, 22.502796>,  <29.622295, 34.376053, 22.192440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521046, 34.607197, 22.502796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659816, -0.483414, 0.575286,
		0.707511, 0.657564, -0.258917,
		-0.253123, 0.577859, 0.775892,
		29.445108, 34.780556, 22.735563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.364334, 34.708416, 21.879631>,  <29.622295, 34.376053, 22.192440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.364334, 34.708416, 21.879631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.745388, 34.660309, 21.767900>,  <30.974020, 34.631443, 21.700863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.745388, 34.660309, 21.767900>,  <30.364334, 34.708416, 21.879631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745388, 34.660309, 21.767900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082398, 0.782048, -0.617748,
		0.292744, 0.611503, 0.735095,
		0.952634, -0.120272, -0.279326,
		31.031178, 34.624226, 21.684103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581770, 35.372425, 21.931414>,  <30.364334, 34.708416, 21.879631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581770, 35.372425, 21.931414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.848164, 35.173801, 21.708740>,  <31.007999, 35.054626, 21.575136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.848164, 35.173801, 21.708740>,  <30.581770, 35.372425, 21.931414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848164, 35.173801, 21.708740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088012, 0.688740, -0.719647,
		0.740758, 0.528266, 0.414985,
		0.665982, -0.496560, -0.556683,
		31.047958, 35.024834, 21.541735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195801, 35.843971, 21.816805>,  <30.581770, 35.372425, 21.931414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195801, 35.843971, 21.816805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140970, 35.580158, 21.521175>,  <31.108072, 35.421871, 21.343798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140970, 35.580158, 21.521175>,  <31.195801, 35.843971, 21.816805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140970, 35.580158, 21.521175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047454, 0.740889, -0.669949,
		0.989423, -0.126905, -0.070259,
		-0.137074, -0.659529, -0.739075,
		31.099848, 35.382301, 21.299454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543983, 36.134624, 21.298573>,  <31.195801, 35.843971, 21.816805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543983, 36.134624, 21.298573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383089, 35.843945, 21.075821>,  <31.286552, 35.669537, 20.942169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.383089, 35.843945, 21.075821>,  <31.543983, 36.134624, 21.298573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383089, 35.843945, 21.075821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065134, 0.629428, -0.774324,
		0.913217, -0.275188, -0.300510,
		-0.402234, -0.726700, -0.556880,
		31.262419, 35.625935, 20.908756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835039, 36.277496, 20.619360>,  <31.543983, 36.134624, 21.298573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835039, 36.277496, 20.619360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.502230, 36.059872, 20.576031>,  <31.302544, 35.929298, 20.550034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.502230, 36.059872, 20.576031>,  <31.835039, 36.277496, 20.619360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502230, 36.059872, 20.576031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232211, 0.518917, -0.822681,
		0.503789, -0.659343, -0.558089,
		-0.832031, -0.544052, -0.108318,
		31.252623, 35.896652, 20.543533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777420, 35.997704, 20.004551>,  <31.835039, 36.277496, 20.619360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777420, 35.997704, 20.004551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388287, 36.025162, 20.092989>,  <31.154806, 36.041637, 20.146051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.388287, 36.025162, 20.092989>,  <31.777420, 35.997704, 20.004551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388287, 36.025162, 20.092989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140637, 0.583370, -0.799938,
		-0.183888, -0.809301, -0.557869,
		-0.972834, 0.068642, 0.221093,
		31.096436, 36.045753, 20.159317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483847, 36.064709, 19.290615>,  <31.777420, 35.997704, 20.004551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483847, 36.064709, 19.290615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.209118, 36.179688, 19.557642>,  <31.044281, 36.248676, 19.717859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.209118, 36.179688, 19.557642>,  <31.483847, 36.064709, 19.290615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209118, 36.179688, 19.557642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233751, 0.782320, -0.577353,
		-0.688212, -0.552584, -0.470123,
		-0.686822, 0.287449, 0.667569,
		31.003071, 36.265923, 19.757914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870289, 36.230751, 18.797365>,  <31.483847, 36.064709, 19.290615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870289, 36.230751, 18.797365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.858173, 36.418465, 19.150375>,  <30.850904, 36.531094, 19.362183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.858173, 36.418465, 19.150375>,  <30.870289, 36.230751, 18.797365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858173, 36.418465, 19.150375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190570, 0.864026, -0.465986,
		-0.981206, -0.182298, 0.063259,
		-0.030291, 0.469284, 0.882528,
		30.849087, 36.559250, 19.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408970, 36.712231, 18.616404>,  <30.870289, 36.230751, 18.797365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408970, 36.712231, 18.616404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609764, 36.840343, 18.937759>,  <30.730240, 36.917210, 19.130573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609764, 36.840343, 18.937759>,  <30.408970, 36.712231, 18.616404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609764, 36.840343, 18.937759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022494, 0.933426, -0.358065,
		-0.864583, 0.161672, 0.475771,
		0.501986, 0.320279, 0.803388,
		30.760361, 36.936428, 19.178776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.655365, 31.411493, 33.147079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841305, 31.653509, 32.888519>,  <36.952869, 31.798719, 32.733383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.841305, 31.653509, 32.888519>,  <36.655365, 31.411493, 33.147079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841305, 31.653509, 32.888519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741369, -0.133133, -0.657759,
		-0.484029, 0.784985, 0.386671,
		0.464852, 0.605041, -0.646404,
		36.980759, 31.835022, 32.694599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138062, 31.756445, 32.785770>,  <36.655365, 31.411493, 33.147079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138062, 31.756445, 32.785770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427063, 31.841923, 32.522766>,  <36.600464, 31.893209, 32.364964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427063, 31.841923, 32.522766>,  <36.138062, 31.756445, 32.785770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427063, 31.841923, 32.522766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647464, -0.124359, -0.751881,
		-0.242441, 0.968953, 0.048510,
		0.722504, 0.213695, -0.657512,
		36.643814, 31.906031, 32.325512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815338, 32.337570, 32.366680>,  <36.138062, 31.756445, 32.785770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815338, 32.337570, 32.366680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094658, 32.175247, 32.130817>,  <36.262249, 32.077854, 31.989300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094658, 32.175247, 32.130817>,  <35.815338, 32.337570, 32.366680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094658, 32.175247, 32.130817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697969, -0.203284, -0.686669,
		0.158792, 0.891062, -0.425197,
		0.698301, -0.405812, -0.589654,
		36.304150, 32.053505, 31.953920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724934, 32.625370, 31.750002>,  <35.815338, 32.337570, 32.366680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724934, 32.625370, 31.750002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938206, 32.301376, 31.652317>,  <36.066170, 32.106979, 31.593706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938206, 32.301376, 31.652317>,  <35.724934, 32.625370, 31.750002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938206, 32.301376, 31.652317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682972, -0.241749, -0.689279,
		0.499270, 0.534300, -0.682095,
		0.533178, -0.809988, -0.244214,
		36.098160, 32.058380, 31.579052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988491, 32.631462, 31.159491>,  <35.724934, 32.625370, 31.750002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988491, 32.631462, 31.159491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950081, 32.240360, 31.234085>,  <35.927036, 32.005699, 31.278843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950081, 32.240360, 31.234085>,  <35.988491, 32.631462, 31.159491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950081, 32.240360, 31.234085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297680, -0.150571, -0.942717,
		0.949824, -0.146039, -0.276598,
		-0.096026, -0.977753, 0.186489,
		35.921272, 31.947035, 31.290031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276794, 32.272739, 30.573076>,  <35.988491, 32.631462, 31.159491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276794, 32.272739, 30.573076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037849, 32.007019, 30.752792>,  <35.894482, 31.847588, 30.860622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037849, 32.007019, 30.752792>,  <36.276794, 32.272739, 30.573076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037849, 32.007019, 30.752792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380363, -0.258529, -0.887968,
		0.706032, -0.701334, -0.098239,
		-0.597364, -0.664300, 0.449290,
		35.858639, 31.807730, 30.887579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053802, 31.939585, 30.041372>,  <36.276794, 32.272739, 30.573076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053802, 31.939585, 30.041372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839455, 31.738169, 30.312456>,  <35.710846, 31.617319, 30.475107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839455, 31.738169, 30.312456>,  <36.053802, 31.939585, 30.041372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839455, 31.738169, 30.312456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473213, -0.485635, -0.735002,
		0.699223, -0.714566, 0.021954,
		-0.535869, -0.503541, 0.677709,
		35.678696, 31.587107, 30.515768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075035, 31.298807, 29.799416>,  <36.053802, 31.939585, 30.041372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075035, 31.298807, 29.799416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758305, 31.376978, 30.030870>,  <35.568268, 31.423880, 30.169743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758305, 31.376978, 30.030870>,  <36.075035, 31.298807, 29.799416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758305, 31.376978, 30.030870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610297, -0.216873, -0.761908,
		-0.023405, -0.956439, 0.290993,
		-0.791827, 0.195424, 0.578635,
		35.520756, 31.435606, 30.204460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613060, 30.767138, 29.752060>,  <36.075035, 31.298807, 29.799416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613060, 30.767138, 29.752060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371311, 31.052183, 29.894564>,  <35.226261, 31.223211, 29.980066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.371311, 31.052183, 29.894564>,  <35.613060, 30.767138, 29.752060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371311, 31.052183, 29.894564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670280, -0.213085, -0.710859,
		-0.430655, -0.668412, 0.606433,
		-0.604369, 0.712615, 0.356257,
		35.189999, 31.265966, 30.001440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887993, 30.526234, 29.635685>,  <35.613060, 30.767138, 29.752060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887993, 30.526234, 29.635685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842922, 30.919098, 29.695906>,  <34.815880, 31.154816, 29.732038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842922, 30.919098, 29.695906>,  <34.887993, 30.526234, 29.635685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842922, 30.919098, 29.695906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734635, 0.019674, -0.678177,
		-0.669040, -0.187019, 0.719312,
		-0.112680, 0.982159, 0.150554,
		34.809116, 31.213745, 29.741072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217499, 30.679598, 29.649366>,  <34.887993, 30.526234, 29.635685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217499, 30.679598, 29.649366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357155, 31.045380, 29.567511>,  <34.440948, 31.264849, 29.518396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357155, 31.045380, 29.567511>,  <34.217499, 30.679598, 29.649366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357155, 31.045380, 29.567511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768380, 0.154373, -0.621097,
		-0.536373, 0.374089, 0.756545,
		0.349136, 0.914454, -0.204641,
		34.461895, 31.319715, 29.506119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685509, 31.081329, 29.595963>,  <34.217499, 30.679598, 29.649366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685509, 31.081329, 29.595963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967152, 31.278015, 29.391043>,  <34.136139, 31.396027, 29.268091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967152, 31.278015, 29.391043>,  <33.685509, 31.081329, 29.595963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967152, 31.278015, 29.391043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643127, 0.135734, -0.753634,
		-0.301035, 0.860113, 0.411805,
		0.704106, 0.491713, -0.512301,
		34.178383, 31.425529, 29.237352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432983, 31.565563, 30.096992>,  <33.685509, 31.081329, 29.595963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432983, 31.565563, 30.096992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054085, 31.580519, 30.224323>,  <32.826748, 31.589491, 30.300722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.054085, 31.580519, 30.224323>,  <33.432983, 31.565563, 30.096992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054085, 31.580519, 30.224323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303483, -0.214811, 0.928307,
		0.103086, 0.975940, 0.192132,
		-0.947244, 0.037387, 0.318325,
		32.769913, 31.591734, 30.319820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420464, 32.005478, 30.623343>,  <33.432983, 31.565563, 30.096992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420464, 32.005478, 30.623343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112431, 31.756481, 30.679167>,  <32.927612, 31.607082, 30.712662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112431, 31.756481, 30.679167>,  <33.420464, 32.005478, 30.623343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112431, 31.756481, 30.679167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263449, -0.111078, 0.958257,
		-0.581004, 0.774704, 0.249534,
		-0.770083, -0.622491, 0.139559,
		32.881405, 31.569735, 30.721035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078243, 32.183575, 31.250145>,  <33.420464, 32.005478, 30.623343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078243, 32.183575, 31.250145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936562, 31.816420, 31.178560>,  <32.851551, 31.596127, 31.135611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936562, 31.816420, 31.178560>,  <33.078243, 32.183575, 31.250145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936562, 31.816420, 31.178560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183388, -0.255827, 0.949169,
		-0.917010, 0.303381, 0.258944,
		-0.354205, -0.917885, -0.178959,
		32.830299, 31.541054, 31.124872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558804, 32.058060, 31.784325>,  <33.078243, 32.183575, 31.250145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558804, 32.058060, 31.784325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695175, 31.705973, 31.652275>,  <32.777000, 31.494720, 31.573046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695175, 31.705973, 31.652275>,  <32.558804, 32.058060, 31.784325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695175, 31.705973, 31.652275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067702, -0.373239, 0.925262,
		-0.937647, -0.293100, -0.186841,
		0.340931, -0.880219, -0.330123,
		32.797455, 31.441908, 31.553238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209366, 31.575222, 32.133202>,  <32.558804, 32.058060, 31.784325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209366, 31.575222, 32.133202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534893, 31.381639, 32.004528>,  <32.730209, 31.265490, 31.927324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534893, 31.381639, 32.004528>,  <32.209366, 31.575222, 32.133202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534893, 31.381639, 32.004528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202359, -0.282906, 0.937558,
		-0.544746, -0.828099, -0.132301,
		0.813820, -0.483958, -0.321686,
		32.779037, 31.236452, 31.908022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149338, 30.869732, 32.376648>,  <32.209366, 31.575222, 32.133202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149338, 30.869732, 32.376648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538551, 30.937965, 32.314548>,  <32.772079, 30.978905, 32.277290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538551, 30.937965, 32.314548>,  <32.149338, 30.869732, 32.376648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538551, 30.937965, 32.314548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219648, -0.479889, 0.849389,
		0.070389, -0.860586, -0.504417,
		0.973036, 0.170582, -0.155247,
		32.830463, 30.989140, 32.267975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452816, 30.339561, 32.767109>,  <32.149338, 30.869732, 32.376648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452816, 30.339561, 32.767109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783802, 30.556534, 32.709038>,  <32.982391, 30.686716, 32.674194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783802, 30.556534, 32.709038>,  <32.452816, 30.339561, 32.767109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783802, 30.556534, 32.709038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347994, -0.292453, 0.890714,
		0.440691, -0.787554, -0.430756,
		0.827461, 0.542430, -0.145182,
		33.032040, 30.719263, 32.665482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935562, 29.930674, 33.078457>,  <32.452816, 30.339561, 32.767109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935562, 29.930674, 33.078457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071953, 30.304188, 33.035049>,  <33.153786, 30.528297, 33.009003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.071953, 30.304188, 33.035049>,  <32.935562, 29.930674, 33.078457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071953, 30.304188, 33.035049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364028, -0.024720, 0.931060,
		0.866729, -0.356974, -0.348354,
		0.340976, 0.933787, -0.108523,
		33.174244, 30.584324, 33.002491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611282, 29.902790, 33.256500>,  <32.935562, 29.930674, 33.078457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611282, 29.902790, 33.256500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492947, 30.281866, 33.304443>,  <33.421944, 30.509312, 33.333210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492947, 30.281866, 33.304443>,  <33.611282, 29.902790, 33.256500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492947, 30.281866, 33.304443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321962, -0.019208, 0.946558,
		0.899344, 0.318618, -0.299437,
		-0.295838, 0.947689, 0.119858,
		33.404194, 30.566174, 33.340401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169060, 30.407911, 33.528397>,  <33.611282, 29.902790, 33.256500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169060, 30.407911, 33.528397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839424, 30.622244, 33.601902>,  <33.641644, 30.750843, 33.646008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.839424, 30.622244, 33.601902>,  <34.169060, 30.407911, 33.528397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839424, 30.622244, 33.601902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345195, 0.217809, 0.912907,
		0.449138, 0.815748, -0.364459,
		-0.824084, 0.535831, 0.183766,
		33.592197, 30.782993, 33.657032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455933, 31.051916, 33.888077>,  <34.169060, 30.407911, 33.528397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455933, 31.051916, 33.888077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064266, 31.031271, 33.966629>,  <33.829266, 31.018885, 34.013760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064266, 31.031271, 33.966629>,  <34.455933, 31.051916, 33.888077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064266, 31.031271, 33.966629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194257, 0.043399, 0.979990,
		-0.059103, 0.997724, -0.032469,
		-0.979169, -0.051613, 0.196380,
		33.770515, 31.015787, 34.025543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250114, 31.668346, 34.304134>,  <34.455933, 31.051916, 33.888077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250114, 31.668346, 34.304134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959427, 31.399481, 34.360806>,  <33.785015, 31.238161, 34.394806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.959427, 31.399481, 34.360806>,  <34.250114, 31.668346, 34.304134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959427, 31.399481, 34.360806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124115, 0.331329, 0.935316,
		-0.675629, 0.662128, -0.324209,
		-0.726719, -0.672166, 0.141676,
		33.741409, 31.197830, 34.403309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620590, 32.074009, 34.629509>,  <34.250114, 31.668346, 34.304134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620590, 32.074009, 34.629509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602245, 31.678539, 34.686676>,  <33.591236, 31.441257, 34.720978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602245, 31.678539, 34.686676>,  <33.620590, 32.074009, 34.629509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602245, 31.678539, 34.686676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185795, 0.132128, 0.973664,
		-0.981517, 0.071211, 0.177630,
		-0.045866, -0.988671, 0.142916,
		33.588486, 31.381937, 34.729549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464851, 32.778061, 34.938152>,  <33.620590, 32.074009, 34.629509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464851, 32.778061, 34.938152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320892, 32.685707, 35.299744>,  <33.234516, 32.630295, 35.516697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320892, 32.685707, 35.299744>,  <33.464851, 32.778061, 34.938152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320892, 32.685707, 35.299744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842218, 0.497271, -0.208303,
		-0.401427, -0.836311, -0.373417,
		-0.359895, -0.230880, 0.903974,
		33.212925, 32.616444, 35.570934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796383, 32.476349, 34.818752>,  <33.464851, 32.778061, 34.938152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796383, 32.476349, 34.818752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837852, 32.615204, 35.191578>,  <32.862736, 32.698517, 35.415276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.837852, 32.615204, 35.191578>,  <32.796383, 32.476349, 34.818752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837852, 32.615204, 35.191578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809117, 0.574429, -0.123941,
		-0.578430, -0.741301, 0.340429,
		0.103674, 0.347138, 0.932066,
		32.868954, 32.719345, 35.471199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151680, 32.436954, 35.391014>,  <32.796383, 32.476349, 34.818752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151680, 32.436954, 35.391014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417709, 32.735661, 35.389179>,  <32.577328, 32.914883, 35.388081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.417709, 32.735661, 35.389179>,  <32.151680, 32.436954, 35.391014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417709, 32.735661, 35.389179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700159, 0.621407, -0.351612,
		-0.259722, 0.237057, 0.936135,
		0.665073, 0.746765, -0.004585,
		32.617229, 32.959690, 35.387802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905273, 32.943497, 35.817337>,  <32.151680, 32.436954, 35.391014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905273, 32.943497, 35.817337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158943, 33.107716, 35.555264>,  <32.311146, 33.206249, 35.398018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158943, 33.107716, 35.555264>,  <31.905273, 32.943497, 35.817337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158943, 33.107716, 35.555264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689836, 0.683153, -0.239642,
		0.349208, 0.603946, 0.716452,
		0.634176, 0.410550, -0.655186,
		32.349197, 33.230881, 35.358707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947630, 33.803394, 35.845421>,  <31.905273, 32.943497, 35.817337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947630, 33.803394, 35.845421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037628, 33.668938, 35.479603>,  <32.091625, 33.588264, 35.260113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037628, 33.668938, 35.479603>,  <31.947630, 33.803394, 35.845421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037628, 33.668938, 35.479603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691071, 0.606621, -0.392978,
		0.686876, 0.720432, -0.095809,
		0.224995, -0.336138, -0.914543,
		32.105125, 33.568096, 35.205238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063305, 34.348763, 35.480919>,  <31.947630, 33.803394, 35.845421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063305, 34.348763, 35.480919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011627, 34.108070, 35.165646>,  <31.980619, 33.963654, 34.976482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011627, 34.108070, 35.165646>,  <32.063305, 34.348763, 35.480919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011627, 34.108070, 35.165646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434094, 0.748956, -0.500626,
		0.891555, 0.277465, -0.357971,
		-0.129199, -0.601729, -0.788182,
		31.972868, 33.927551, 34.929192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092342, 34.797390, 34.960709>,  <32.063305, 34.348763, 35.480919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092342, 34.797390, 34.960709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972042, 34.469673, 34.765442>,  <31.899862, 34.273045, 34.648281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972042, 34.469673, 34.765442>,  <32.092342, 34.797390, 34.960709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972042, 34.469673, 34.765442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521857, 0.569813, -0.634806,
		0.798257, 0.063837, -0.598925,
		-0.300751, -0.819291, -0.488171,
		31.881817, 34.223885, 34.618992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305538, 34.830357, 34.272701>,  <32.092342, 34.797390, 34.960709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305538, 34.830357, 34.272701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988127, 34.586971, 34.276340>,  <31.797680, 34.440941, 34.278522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988127, 34.586971, 34.276340>,  <32.305538, 34.830357, 34.272701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988127, 34.586971, 34.276340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484048, 0.622066, -0.615411,
		0.368800, -0.492748, -0.788154,
		-0.793527, -0.608468, 0.009096,
		31.750069, 34.404430, 34.279068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178940, 34.805889, 33.646149>,  <32.305538, 34.830357, 34.272701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178940, 34.805889, 33.646149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833296, 34.680874, 33.803947>,  <31.625910, 34.605865, 33.898628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833296, 34.680874, 33.803947>,  <32.178940, 34.805889, 33.646149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833296, 34.680874, 33.803947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500810, 0.456039, -0.735675,
		0.050020, -0.833275, -0.550592,
		-0.864111, -0.312540, 0.394501,
		31.574062, 34.587112, 33.922298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924597, 34.438335, 33.111423>,  <32.178940, 34.805889, 33.646149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924597, 34.438335, 33.111423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.631418, 34.563236, 33.353180>,  <31.455511, 34.638176, 33.498234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.631418, 34.563236, 33.353180>,  <31.924597, 34.438335, 33.111423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631418, 34.563236, 33.353180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511408, 0.332965, -0.792210,
		-0.448611, -0.889737, -0.084356,
		-0.732946, 0.312254, 0.604391,
		31.411535, 34.656914, 33.534496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339537, 34.162491, 32.822384>,  <31.924597, 34.438335, 33.111423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339537, 34.162491, 32.822384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212702, 34.466705, 33.049026>,  <31.136600, 34.649235, 33.185013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.212702, 34.466705, 33.049026>,  <31.339537, 34.162491, 32.822384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212702, 34.466705, 33.049026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528931, 0.354081, -0.771271,
		-0.787203, -0.544255, 0.289996,
		-0.317086, 0.760535, 0.566607,
		31.117577, 34.694866, 33.219009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591116, 34.334000, 32.556175>,  <31.339537, 34.162491, 32.822384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591116, 34.334000, 32.556175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723766, 34.651707, 32.759808>,  <30.803356, 34.842331, 32.881985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.723766, 34.651707, 32.759808>,  <30.591116, 34.334000, 32.556175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723766, 34.651707, 32.759808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295386, 0.599900, -0.743550,
		-0.895975, 0.096207, 0.433559,
		0.331627, 0.794269, 0.509078,
		30.823254, 34.889988, 32.912529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178131, 34.863537, 32.441334>,  <30.591116, 34.334000, 32.556175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178131, 34.863537, 32.441334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508841, 35.058372, 32.553894>,  <30.707266, 35.175274, 32.621429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508841, 35.058372, 32.553894>,  <30.178131, 34.863537, 32.441334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508841, 35.058372, 32.553894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109786, 0.630335, -0.768521,
		-0.551719, 0.604499, 0.574620,
		0.826773, 0.487092, 0.281402,
		30.756872, 35.204498, 32.638313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034004, 35.435482, 32.179672>,  <30.178131, 34.863537, 32.441334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034004, 35.435482, 32.179672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.420198, 35.504494, 32.257717>,  <30.651915, 35.545898, 32.304546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.420198, 35.504494, 32.257717>,  <30.034004, 35.435482, 32.179672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420198, 35.504494, 32.257717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061574, 0.879103, -0.472638,
		-0.253069, 0.444312, 0.859385,
		0.965487, 0.172526, 0.195116,
		30.709845, 35.556252, 32.316254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117428, 36.150642, 32.294334>,  <30.034004, 35.435482, 32.179672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117428, 36.150642, 32.294334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487040, 36.030430, 32.199799>,  <30.708807, 35.958302, 32.143078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.487040, 36.030430, 32.199799>,  <30.117428, 36.150642, 32.294334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487040, 36.030430, 32.199799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010146, 0.598658, -0.800940,
		0.382192, 0.742488, 0.550127,
		0.924027, -0.300531, -0.236336,
		30.764248, 35.940269, 32.128899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371389, 36.735809, 32.001148>,  <30.117428, 36.150642, 32.294334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371389, 36.735809, 32.001148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632761, 36.459591, 31.877092>,  <30.789583, 36.293861, 31.802660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632761, 36.459591, 31.877092>,  <30.371389, 36.735809, 32.001148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632761, 36.459591, 31.877092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199709, 0.552438, -0.809277,
		0.730171, 0.466867, 0.498885,
		0.653427, -0.690542, -0.310137,
		30.828789, 36.252430, 31.784052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003519, 37.048157, 31.717083>,  <30.371389, 36.735809, 32.001148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003519, 37.048157, 31.717083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012917, 36.682026, 31.556269>,  <31.018555, 36.462349, 31.459780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012917, 36.682026, 31.556269>,  <31.003519, 37.048157, 31.717083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012917, 36.682026, 31.556269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252796, 0.394516, -0.883432,
		0.967234, -0.080876, 0.240660,
		0.023496, -0.915323, -0.402034,
		31.019966, 36.407429, 31.435658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571115, 37.095921, 31.232878>,  <31.003519, 37.048157, 31.717083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571115, 37.095921, 31.232878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361937, 36.771885, 31.126842>,  <31.236429, 36.577461, 31.063221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361937, 36.771885, 31.126842>,  <31.571115, 37.095921, 31.232878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361937, 36.771885, 31.126842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071403, 0.268277, -0.960692,
		0.849368, -0.521322, -0.082452,
		-0.522949, -0.810094, -0.265090,
		31.205051, 36.528858, 31.047316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027588, 36.583725, 30.883108>,  <31.571115, 37.095921, 31.232878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027588, 36.583725, 30.883108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653961, 36.552181, 30.743795>,  <31.429785, 36.533253, 30.660208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653961, 36.552181, 30.743795>,  <32.027588, 36.583725, 30.883108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653961, 36.552181, 30.743795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320520, 0.244854, -0.915049,
		0.157438, -0.966348, -0.203434,
		-0.934067, -0.078859, -0.348283,
		31.373741, 36.528522, 30.639311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079014, 36.255836, 30.255569>,  <32.027588, 36.583725, 30.883108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079014, 36.255836, 30.255569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705017, 36.395988, 30.233587>,  <31.480619, 36.480080, 30.220398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705017, 36.395988, 30.233587>,  <32.079014, 36.255836, 30.255569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705017, 36.395988, 30.233587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157261, 0.270689, -0.949735,
		-0.317895, -0.896637, -0.308194,
		-0.934993, 0.350383, -0.054955,
		31.424519, 36.501102, 30.217100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934031, 36.192120, 29.613482>,  <32.079014, 36.255836, 30.255569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934031, 36.192120, 29.613482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634708, 36.437542, 29.714350>,  <31.455114, 36.584797, 29.774870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.634708, 36.437542, 29.714350>,  <31.934031, 36.192120, 29.613482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634708, 36.437542, 29.714350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127711, 0.239782, -0.962390,
		-0.650945, -0.752367, -0.101073,
		-0.748306, 0.613555, 0.252170,
		31.410217, 36.621609, 29.790001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336555, 36.065529, 29.171528>,  <31.934031, 36.192120, 29.613482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336555, 36.065529, 29.171528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265139, 36.430370, 29.319147>,  <31.222288, 36.649273, 29.407719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.265139, 36.430370, 29.319147>,  <31.336555, 36.065529, 29.171528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265139, 36.430370, 29.319147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319503, 0.301007, -0.898506,
		-0.930613, -0.278333, 0.237677,
		-0.178541, 0.912099, 0.369049,
		31.211576, 36.703999, 29.429861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676750, 36.358643, 28.852062>,  <31.336555, 36.065529, 29.171528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676750, 36.358643, 28.852062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848330, 36.681084, 29.015135>,  <30.951277, 36.874550, 29.112978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.848330, 36.681084, 29.015135>,  <30.676750, 36.358643, 28.852062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848330, 36.681084, 29.015135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273409, 0.545996, -0.791919,
		-0.860959, 0.228229, 0.454599,
		0.428948, 0.806102, 0.407680,
		30.977015, 36.922913, 29.137440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144423, 36.907494, 28.956848>,  <30.676750, 36.358643, 28.852062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144423, 36.907494, 28.956848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508572, 37.060871, 28.894632>,  <30.727060, 37.152897, 28.857304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.508572, 37.060871, 28.894632>,  <30.144423, 36.907494, 28.956848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508572, 37.060871, 28.894632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347566, 0.504626, -0.790285,
		-0.224541, 0.773514, 0.592669,
		0.910373, 0.383443, -0.155538,
		30.781683, 37.175903, 28.847971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013828, 37.576336, 28.803860>,  <30.144423, 36.907494, 28.956848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013828, 37.576336, 28.803860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.375288, 37.505955, 28.647676>,  <30.592165, 37.463726, 28.553967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.375288, 37.505955, 28.647676>,  <30.013828, 37.576336, 28.803860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375288, 37.505955, 28.647676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171836, 0.686142, -0.706882,
		0.392286, 0.705868, 0.589798,
		0.903650, -0.175952, -0.390458,
		30.646383, 37.453171, 28.530539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182859, 38.274155, 28.720293>,  <30.013828, 37.576336, 28.803860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182859, 38.274155, 28.720293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489294, 38.094715, 28.536177>,  <30.673155, 37.987053, 28.425707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489294, 38.094715, 28.536177>,  <30.182859, 38.274155, 28.720293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489294, 38.094715, 28.536177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129082, 0.594167, -0.793916,
		0.629640, 0.667625, 0.397279,
		0.766088, -0.448600, -0.460290,
		30.719120, 37.960136, 28.398090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582766, 38.810608, 28.291718>,  <30.182859, 38.274155, 28.720293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582766, 38.810608, 28.291718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616682, 38.445747, 28.131321>,  <30.637032, 38.226830, 28.035084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.616682, 38.445747, 28.131321>,  <30.582766, 38.810608, 28.291718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616682, 38.445747, 28.131321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165751, 0.383920, -0.908368,
		0.982516, 0.143485, -0.118638,
		0.084790, -0.912150, -0.400990,
		30.642118, 38.172104, 28.011024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897892, 38.982624, 27.715868>,  <30.582766, 38.810608, 28.291718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897892, 38.982624, 27.715868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.729239, 38.625957, 27.649960>,  <30.628046, 38.411957, 27.610415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.729239, 38.625957, 27.649960>,  <30.897892, 38.982624, 27.715868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729239, 38.625957, 27.649960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362187, 0.332197, -0.870899,
		0.831291, -0.307523, -0.463018,
		-0.421634, -0.891669, -0.164772,
		30.602749, 38.358456, 27.600529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995300, 38.841022, 27.029087>,  <30.897892, 38.982624, 27.715868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995300, 38.841022, 27.029087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715370, 38.569672, 27.118578>,  <30.547413, 38.406860, 27.172274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.715370, 38.569672, 27.118578>,  <30.995300, 38.841022, 27.029087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715370, 38.569672, 27.118578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385125, 0.094541, -0.918009,
		0.601603, -0.728607, -0.327421,
		-0.699823, -0.678375, 0.223729,
		30.505423, 38.366158, 27.185698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330793, 38.607742, 26.401020>,  <30.995300, 38.841022, 27.029087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330793, 38.607742, 26.401020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.606390, 38.889866, 26.334291>,  <31.771748, 39.059139, 26.294254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.606390, 38.889866, 26.334291>,  <31.330793, 38.607742, 26.401020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606390, 38.889866, 26.334291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398143, -0.175993, 0.900283,
		0.605618, -0.686706, -0.402072,
		0.688991, 0.705309, -0.166822,
		31.813087, 39.101460, 26.284245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984631, 38.393559, 26.565441>,  <31.330793, 38.607742, 26.401020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984631, 38.393559, 26.565441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067329, 38.784901, 26.562061>,  <32.116951, 39.019707, 26.560034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067329, 38.784901, 26.562061>,  <31.984631, 38.393559, 26.565441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067329, 38.784901, 26.562061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746455, -0.152148, 0.647809,
		0.632503, -0.140241, -0.761756,
		0.206749, 0.978358, -0.008449,
		32.129353, 39.078407, 26.559526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833965, 38.531845, 26.422058>,  <31.984631, 38.393559, 26.565441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833965, 38.531845, 26.422058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691483, 38.828274, 26.649715>,  <32.605991, 39.006130, 26.786310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.691483, 38.828274, 26.649715>,  <32.833965, 38.531845, 26.422058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691483, 38.828274, 26.649715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807071, -0.062953, 0.587089,
		0.470907, 0.668464, -0.575676,
		-0.356208, 0.741075, 0.569143,
		32.584621, 39.050598, 26.820457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429600, 38.803478, 26.681797>,  <32.833965, 38.531845, 26.422058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429600, 38.803478, 26.681797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142006, 38.978149, 26.898083>,  <32.969448, 39.082951, 27.027853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.142006, 38.978149, 26.898083>,  <33.429600, 38.803478, 26.681797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142006, 38.978149, 26.898083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583104, -0.044366, 0.811185,
		0.378213, 0.898525, -0.222729,
		-0.718988, 0.436675, 0.540713,
		32.926308, 39.109154, 27.060297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767696, 39.266815, 26.884024>,  <33.429600, 38.803478, 26.681797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767696, 39.266815, 26.884024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453129, 39.221149, 27.126844>,  <33.264389, 39.193748, 27.272537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453129, 39.221149, 27.126844>,  <33.767696, 39.266815, 26.884024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453129, 39.221149, 27.126844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616774, -0.198830, 0.761614,
		0.033748, 0.973361, 0.226780,
		-0.786416, -0.114169, 0.607054,
		33.217205, 39.186897, 27.308960>
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
