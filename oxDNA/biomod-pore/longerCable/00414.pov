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
	<24.677210, 34.818836, 34.982891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370718, 35.058388, 35.076042>,  <24.186823, 35.202118, 35.131931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.370718, 35.058388, 35.076042>,  <24.677210, 34.818836, 34.982891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.370718, 35.058388, 35.076042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532980, 0.794783, -0.290263,
		-0.358920, -0.098289, -0.928179,
		-0.766230, 0.598882, 0.232877,
		24.140848, 35.238052, 35.145905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182447, 34.714848, 34.518570>,  <24.677210, 34.818836, 34.982891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182447, 34.714848, 34.518570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278635, 34.994316, 34.249039>,  <25.336348, 35.161995, 34.087322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278635, 34.994316, 34.249039>,  <25.182447, 34.714848, 34.518570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278635, 34.994316, 34.249039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020387, -0.697676, -0.716123,
		-0.970443, 0.158468, -0.182013,
		0.240469, 0.698667, -0.673824,
		25.350775, 35.203915, 34.046890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855577, 34.544865, 33.975208>,  <25.182447, 34.714848, 34.518570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855577, 34.544865, 33.975208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163420, 34.763283, 33.842815>,  <25.348125, 34.894333, 33.763382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163420, 34.763283, 33.842815>,  <24.855577, 34.544865, 33.975208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163420, 34.763283, 33.842815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127653, -0.639464, -0.758149,
		-0.625630, 0.541225, -0.561838,
		0.769605, 0.546041, -0.330979,
		25.394300, 34.927094, 33.743523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753773, 34.530510, 33.325150>,  <24.855577, 34.544865, 33.975208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753773, 34.530510, 33.325150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140421, 34.630199, 33.348915>,  <25.372410, 34.690014, 33.363174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140421, 34.630199, 33.348915>,  <24.753773, 34.530510, 33.325150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140421, 34.630199, 33.348915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179318, -0.492449, -0.851668,
		-0.183000, 0.833894, -0.520702,
		0.966621, 0.249227, 0.059414,
		25.430407, 34.704967, 33.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944469, 34.732140, 32.732346>,  <24.753773, 34.530510, 33.325150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944469, 34.732140, 32.732346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298952, 34.622910, 32.882046>,  <25.511642, 34.557373, 32.971867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298952, 34.622910, 32.882046>,  <24.944469, 34.732140, 32.732346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298952, 34.622910, 32.882046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207959, -0.487396, -0.848056,
		0.413990, 0.829383, -0.375147,
		0.886208, -0.273072, 0.374255,
		25.564816, 34.540989, 32.994324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479296, 34.961651, 32.248158>,  <24.944469, 34.732140, 32.732346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479296, 34.961651, 32.248158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556717, 34.642017, 32.475842>,  <25.603170, 34.450237, 32.612453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.556717, 34.642017, 32.475842>,  <25.479296, 34.961651, 32.248158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.556717, 34.642017, 32.475842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185055, -0.540030, -0.821049,
		0.963479, 0.264251, 0.043351,
		0.193552, -0.799086, 0.569209,
		25.614782, 34.402290, 32.646603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098473, 34.713539, 32.028591>,  <25.479296, 34.961651, 32.248158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098473, 34.713539, 32.028591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893593, 34.413448, 32.195835>,  <25.770664, 34.233395, 32.296181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893593, 34.413448, 32.195835>,  <26.098473, 34.713539, 32.028591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893593, 34.413448, 32.195835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021971, -0.475213, -0.879597,
		0.858585, -0.459717, 0.226921,
		-0.512201, -0.750222, 0.418111,
		25.739933, 34.188381, 32.321270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257908, 34.043404, 31.651445>,  <26.098473, 34.713539, 32.028591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257908, 34.043404, 31.651445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899523, 33.980099, 31.817436>,  <25.684492, 33.942116, 31.917030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899523, 33.980099, 31.817436>,  <26.257908, 34.043404, 31.651445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899523, 33.980099, 31.817436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326166, -0.399699, -0.856654,
		0.301442, -0.902880, 0.306495,
		-0.895962, -0.158263, 0.414976,
		25.630733, 33.932621, 31.941929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034081, 33.384285, 31.489990>,  <26.257908, 34.043404, 31.651445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034081, 33.384285, 31.489990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743290, 33.652481, 31.549252>,  <25.568815, 33.813400, 31.584808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.743290, 33.652481, 31.549252>,  <26.034081, 33.384285, 31.489990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743290, 33.652481, 31.549252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360508, -0.189050, -0.913397,
		-0.584417, -0.717427, 0.379152,
		-0.726974, 0.670492, 0.148155,
		25.525198, 33.853630, 31.593699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386522, 33.037971, 31.309402>,  <26.034081, 33.384285, 31.489990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386522, 33.037971, 31.309402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292904, 33.426846, 31.305759>,  <25.236732, 33.660168, 31.303574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292904, 33.426846, 31.305759>,  <25.386522, 33.037971, 31.309402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292904, 33.426846, 31.305759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541212, -0.138062, -0.829475,
		-0.807659, -0.189204, 0.558470,
		-0.234044, 0.972183, -0.009107,
		25.222691, 33.718502, 31.303028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731382, 33.091885, 31.140165>,  <25.386522, 33.037971, 31.309402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731382, 33.091885, 31.140165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850004, 33.466373, 31.064760>,  <24.921177, 33.691067, 31.019516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850004, 33.466373, 31.064760>,  <24.731382, 33.091885, 31.140165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850004, 33.466373, 31.064760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529345, -0.003159, -0.848401,
		-0.794890, 0.351385, 0.494650,
		0.296552, 0.936226, -0.188515,
		24.938971, 33.747242, 31.008205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133965, 33.452717, 30.857803>,  <24.731382, 33.091885, 31.140165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133965, 33.452717, 30.857803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478041, 33.607605, 30.725058>,  <24.684486, 33.700539, 30.645411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.478041, 33.607605, 30.725058>,  <24.133965, 33.452717, 30.857803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.478041, 33.607605, 30.725058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436403, 0.222215, -0.871879,
		-0.263862, 0.894809, 0.360130,
		0.860191, 0.387218, -0.331863,
		24.736097, 33.723770, 30.625498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.000568, 34.126556, 30.723618>,  <24.133965, 33.452717, 30.857803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.000568, 34.126556, 30.723618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264544, 33.969650, 30.467302>,  <24.422930, 33.875507, 30.313513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264544, 33.969650, 30.467302>,  <24.000568, 34.126556, 30.723618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264544, 33.969650, 30.467302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524794, 0.369661, -0.766774,
		0.537654, 0.842305, 0.038094,
		0.659939, -0.392267, -0.640786,
		24.462524, 33.851971, 30.275066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.484676, 34.687088, 30.321606>,  <24.000568, 34.126556, 30.723618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.484676, 34.687088, 30.321606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351019, 34.353188, 30.146547>,  <24.270824, 34.152847, 30.041512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351019, 34.353188, 30.146547>,  <24.484676, 34.687088, 30.321606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351019, 34.353188, 30.146547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550223, 0.549762, -0.628504,
		0.765247, 0.030791, -0.643000,
		-0.334145, -0.834754, -0.437646,
		24.250774, 34.102760, 30.015253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633835, 34.626369, 29.504496>,  <24.484676, 34.687088, 30.321606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633835, 34.626369, 29.504496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301481, 34.449577, 29.639721>,  <24.102070, 34.343502, 29.720856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301481, 34.449577, 29.639721>,  <24.633835, 34.626369, 29.504496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301481, 34.449577, 29.639721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549039, 0.552367, -0.627254,
		0.090497, -0.706786, -0.701616,
		-0.830883, -0.441979, 0.338065,
		24.052216, 34.316982, 29.741140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204958, 34.529743, 30.078573>,  <24.633835, 34.626369, 29.504496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204958, 34.529743, 30.078573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973820, 34.388237, 30.372770>,  <24.835136, 34.303333, 30.549288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.973820, 34.388237, 30.372770>,  <25.204958, 34.529743, 30.078573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.973820, 34.388237, 30.372770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741539, 0.148845, 0.654191,
		-0.340902, 0.923416, 0.176318,
		-0.577846, -0.353761, 0.735491,
		24.800467, 34.282108, 30.593418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264872, 34.921429, 30.688601>,  <25.204958, 34.529743, 30.078573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264872, 34.921429, 30.688601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138437, 34.563297, 30.814123>,  <25.062576, 34.348419, 30.889437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138437, 34.563297, 30.814123>,  <25.264872, 34.921429, 30.688601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138437, 34.563297, 30.814123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524805, 0.110545, 0.844014,
		-0.790362, 0.431466, 0.434932,
		-0.316084, -0.895331, 0.313806,
		25.043612, 34.294697, 30.908264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040113, 35.037815, 31.398766>,  <25.264872, 34.921429, 30.688601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040113, 35.037815, 31.398766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104744, 34.647858, 31.337488>,  <25.143522, 34.413883, 31.300722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104744, 34.647858, 31.337488>,  <25.040113, 35.037815, 31.398766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104744, 34.647858, 31.337488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305333, -0.098230, 0.947165,
		-0.938438, -0.199812, 0.281797,
		0.161574, -0.974898, -0.153192,
		25.153215, 34.355389, 31.291531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593716, 34.750462, 31.892370>,  <25.040113, 35.037815, 31.398766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593716, 34.750462, 31.892370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889870, 34.501377, 31.791126>,  <25.067562, 34.351929, 31.730379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.889870, 34.501377, 31.791126>,  <24.593716, 34.750462, 31.892370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.889870, 34.501377, 31.791126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431058, 0.150921, 0.889613,
		-0.515769, -0.767762, 0.380162,
		0.740386, -0.622707, -0.253109,
		25.111986, 34.314564, 31.715193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535706, 34.022675, 32.334862>,  <24.593716, 34.750462, 31.892370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535706, 34.022675, 32.334862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907675, 34.108177, 32.215160>,  <25.130856, 34.159481, 32.143341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907675, 34.108177, 32.215160>,  <24.535706, 34.022675, 32.334862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907675, 34.108177, 32.215160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259549, 0.195004, 0.945837,
		0.260537, -0.957226, 0.125858,
		0.929922, 0.213759, -0.299253,
		25.186651, 34.172306, 32.125385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873722, 33.321892, 32.315102>,  <24.535706, 34.022675, 32.334862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873722, 33.321892, 32.315102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256205, 33.430916, 32.272434>,  <25.485695, 33.496330, 32.246834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.256205, 33.430916, 32.272434>,  <24.873722, 33.321892, 32.315102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256205, 33.430916, 32.272434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072989, 0.574975, 0.814909,
		0.283439, -0.771438, 0.569690,
		0.956208, 0.272558, -0.106664,
		25.543068, 33.512684, 32.240437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201176, 33.170223, 32.899029>,  <24.873722, 33.321892, 32.315102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201176, 33.170223, 32.899029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374298, 33.485901, 32.724739>,  <25.478172, 33.675308, 32.620163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374298, 33.485901, 32.724739>,  <25.201176, 33.170223, 32.899029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374298, 33.485901, 32.724739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029353, 0.495422, 0.868156,
		0.901009, -0.362954, 0.237587,
		0.432807, 0.789190, -0.435726,
		25.504141, 33.722656, 32.594021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861317, 33.266972, 33.270100>,  <25.201176, 33.170223, 32.899029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861317, 33.266972, 33.270100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741377, 33.605984, 33.094929>,  <25.669413, 33.809391, 32.989826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741377, 33.605984, 33.094929>,  <25.861317, 33.266972, 33.270100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741377, 33.605984, 33.094929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021570, 0.464955, 0.885072,
		0.953743, 0.255941, -0.157698,
		-0.299849, 0.847532, -0.437927,
		25.651423, 33.860245, 32.963551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284210, 33.769516, 33.443619>,  <25.861317, 33.266972, 33.270100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284210, 33.769516, 33.443619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915770, 33.921860, 33.411324>,  <25.694706, 34.013268, 33.391945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915770, 33.921860, 33.411324>,  <26.284210, 33.769516, 33.443619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915770, 33.921860, 33.411324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043788, 0.307411, 0.950569,
		0.386852, 0.872035, -0.299834,
		-0.921102, 0.380859, -0.080738,
		25.639439, 34.036118, 33.387104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623566, 34.319355, 33.684959>,  <26.284210, 33.769516, 33.443619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623566, 34.319355, 33.684959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310984, 34.412750, 33.453506>,  <26.123434, 34.468788, 33.314636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310984, 34.412750, 33.453506>,  <26.623566, 34.319355, 33.684959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310984, 34.412750, 33.453506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293498, 0.680803, 0.671093,
		0.550628, 0.694255, -0.463487,
		-0.781453, 0.233490, -0.578631,
		26.076548, 34.482796, 33.279919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671989, 34.975174, 33.474510>,  <26.623566, 34.319355, 33.684959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671989, 34.975174, 33.474510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279427, 34.903214, 33.447742>,  <26.043888, 34.860039, 33.431683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279427, 34.903214, 33.447742>,  <26.671989, 34.975174, 33.474510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279427, 34.903214, 33.447742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175325, 0.698314, 0.693987,
		-0.078118, 0.692816, -0.716871,
		-0.981407, -0.179898, -0.066917,
		25.985004, 34.849243, 33.427666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411535, 35.559414, 33.328785>,  <26.671989, 34.975174, 33.474510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411535, 35.559414, 33.328785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111221, 35.338406, 33.473587>,  <25.931034, 35.205799, 33.560467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111221, 35.338406, 33.473587>,  <26.411535, 35.559414, 33.328785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111221, 35.338406, 33.473587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122322, 0.654848, 0.745796,
		-0.649124, 0.515650, -0.559234,
		-0.750783, -0.552521, 0.362002,
		25.885986, 35.172649, 33.582188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849312, 35.997128, 33.584167>,  <26.411535, 35.559414, 33.328785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849312, 35.997128, 33.584167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821964, 35.655968, 33.791199>,  <25.805555, 35.451271, 33.915417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821964, 35.655968, 33.791199>,  <25.849312, 35.997128, 33.584167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821964, 35.655968, 33.791199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247133, 0.517105, 0.819468,
		-0.966567, -0.071885, -0.246134,
		-0.068370, -0.852898, 0.517582,
		25.801453, 35.400097, 33.946472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161428, 35.829269, 33.919434>,  <25.849312, 35.997128, 33.584167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161428, 35.829269, 33.919434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477676, 35.705517, 34.130795>,  <25.667425, 35.631268, 34.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477676, 35.705517, 34.130795>,  <25.161428, 35.829269, 33.919434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477676, 35.705517, 34.130795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321798, 0.524235, 0.788431,
		-0.520929, -0.793387, 0.314913,
		0.790619, -0.309378, 0.528400,
		25.714863, 35.612705, 34.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935297, 35.459270, 34.488800>,  <25.161428, 35.829269, 33.919434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935297, 35.459270, 34.488800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293934, 35.617748, 34.567951>,  <25.509115, 35.712833, 34.615440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293934, 35.617748, 34.567951>,  <24.935297, 35.459270, 34.488800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293934, 35.617748, 34.567951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366067, 0.411564, 0.834632,
		0.249238, -0.820759, 0.514038,
		0.896591, 0.396195, 0.197875,
		25.562912, 35.736607, 34.627316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242922, 35.689003, 35.167912>,  <24.935297, 35.459270, 34.488800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242922, 35.689003, 35.167912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927153, 35.476585, 35.291077>,  <24.737692, 35.349136, 35.364975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.927153, 35.476585, 35.291077>,  <25.242922, 35.689003, 35.167912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.927153, 35.476585, 35.291077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000458, 0.502114, 0.864802,
		-0.613850, 0.682553, -0.396623,
		-0.789423, -0.531040, 0.307910,
		24.690327, 35.317272, 35.383450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838081, 35.154015, 35.225628>,  <25.242922, 35.689003, 35.167912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838081, 35.154015, 35.225628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822132, 35.548870, 35.163696>,  <25.812563, 35.785782, 35.126537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822132, 35.548870, 35.163696>,  <25.838081, 35.154015, 35.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822132, 35.548870, 35.163696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276910, 0.137965, 0.950940,
		0.960068, 0.080788, 0.267848,
		-0.039871, 0.987137, -0.154827,
		25.810171, 35.845013, 35.117249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138763, 35.479073, 35.826256>,  <25.838081, 35.154015, 35.225628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138763, 35.479073, 35.826256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937855, 35.781982, 35.659279>,  <25.817310, 35.963730, 35.559093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937855, 35.781982, 35.659279>,  <26.138763, 35.479073, 35.826256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937855, 35.781982, 35.659279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225426, 0.351389, 0.908685,
		0.834809, 0.550509, -0.005783,
		-0.502272, 0.757275, -0.417442,
		25.787174, 36.009167, 35.534046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431717, 36.048058, 36.185345>,  <26.138763, 35.479073, 35.826256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431717, 36.048058, 36.185345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069595, 36.132217, 36.037743>,  <25.852324, 36.182713, 35.949181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069595, 36.132217, 36.037743>,  <26.431717, 36.048058, 36.185345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069595, 36.132217, 36.037743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303609, 0.287042, 0.908531,
		0.297070, 0.934527, -0.195981,
		-0.905302, 0.210396, -0.369002,
		25.798004, 36.195335, 35.927044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136053, 36.700123, 36.538979>,  <26.431717, 36.048058, 36.185345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136053, 36.700123, 36.538979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877058, 36.427601, 36.402401>,  <25.721661, 36.264088, 36.320454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877058, 36.427601, 36.402401>,  <26.136053, 36.700123, 36.538979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877058, 36.427601, 36.402401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630005, 0.226451, 0.742841,
		-0.428784, 0.696088, -0.575852,
		-0.647485, -0.681308, -0.341440,
		25.682812, 36.223209, 36.299969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482428, 36.748962, 35.976330>,  <26.136053, 36.700123, 36.538979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482428, 36.748962, 35.976330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097183, 36.751030, 35.868710>,  <25.866035, 36.752270, 35.804138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097183, 36.751030, 35.868710>,  <26.482428, 36.748962, 35.976330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097183, 36.751030, 35.868710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263484, 0.185058, 0.946747,
		0.054683, 0.982714, -0.176870,
		-0.963113, 0.005168, -0.269049,
		25.808249, 36.752579, 35.787994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.209301, 37.351044, 36.200680>,  <26.482428, 36.748962, 35.976330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.209301, 37.351044, 36.200680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929722, 37.065624, 36.181404>,  <25.761974, 36.894371, 36.169838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929722, 37.065624, 36.181404>,  <26.209301, 37.351044, 36.200680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929722, 37.065624, 36.181404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230126, 0.160593, 0.959819,
		-0.677137, 0.681953, -0.276452,
		-0.698948, -0.713547, -0.048191,
		25.720037, 36.851559, 36.166946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634798, 37.630550, 36.526875>,  <26.209301, 37.351044, 36.200680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634798, 37.630550, 36.526875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543070, 37.241661, 36.545578>,  <25.488033, 37.008327, 36.556801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.543070, 37.241661, 36.545578>,  <25.634798, 37.630550, 36.526875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543070, 37.241661, 36.545578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278714, 0.111616, 0.953866,
		-0.932593, 0.205709, -0.296569,
		-0.229321, -0.972227, 0.046758,
		25.474274, 36.949993, 36.559605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.090303, 37.610142, 36.979172>,  <25.634798, 37.630550, 36.526875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.090303, 37.610142, 36.979172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228128, 37.235275, 36.957241>,  <25.310823, 37.010357, 36.944084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228128, 37.235275, 36.957241>,  <25.090303, 37.610142, 36.979172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228128, 37.235275, 36.957241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181327, 0.009140, 0.983380,
		-0.921086, -0.348775, 0.173082,
		0.344561, -0.937162, -0.054824,
		25.331497, 36.954128, 36.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856083, 37.265335, 37.540035>,  <25.090303, 37.610142, 36.979172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856083, 37.265335, 37.540035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186224, 37.057495, 37.451668>,  <25.384308, 36.932789, 37.398647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.186224, 37.057495, 37.451668>,  <24.856083, 37.265335, 37.540035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186224, 37.057495, 37.451668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198708, -0.098929, 0.975053,
		-0.528497, -0.848660, 0.021598,
		0.825352, -0.519604, -0.220919,
		25.433830, 36.901615, 37.385391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313816, 36.926411, 38.107674>,  <24.856083, 37.265335, 37.540035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313816, 36.926411, 38.107674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218189, 36.538879, 38.133671>,  <25.160812, 36.306362, 38.149269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218189, 36.538879, 38.133671>,  <25.313816, 36.926411, 38.107674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218189, 36.538879, 38.133671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059593, -0.081443, -0.994895,
		0.969172, -0.233975, 0.077206,
		-0.239068, -0.968826, 0.064989,
		25.146469, 36.248230, 38.153168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960917, 36.655621, 37.930836>,  <25.313816, 36.926411, 38.107674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960917, 36.655621, 37.930836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600098, 36.495941, 37.865166>,  <25.383606, 36.400135, 37.825764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600098, 36.495941, 37.865166>,  <25.960917, 36.655621, 37.930836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600098, 36.495941, 37.865166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114085, 0.146318, -0.982637,
		0.416289, -0.905114, -0.086443,
		-0.902047, -0.399199, -0.164171,
		25.329483, 36.376183, 37.815914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042740, 35.950371, 37.523781>,  <25.960917, 36.655621, 37.930836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042740, 35.950371, 37.523781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715578, 36.171490, 37.459965>,  <25.519281, 36.304161, 37.421677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715578, 36.171490, 37.459965>,  <26.042740, 35.950371, 37.523781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715578, 36.171490, 37.459965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073689, -0.174359, -0.981921,
		-0.570619, -0.814872, 0.101873,
		-0.817902, 0.552796, -0.159539,
		25.470207, 36.337330, 37.412102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579369, 35.663284, 37.047577>,  <26.042740, 35.950371, 37.523781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579369, 35.663284, 37.047577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508585, 36.055824, 37.017540>,  <25.466114, 36.291348, 36.999519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508585, 36.055824, 37.017540>,  <25.579369, 35.663284, 37.047577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508585, 36.055824, 37.017540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072524, -0.089087, -0.993380,
		-0.981542, -0.170343, 0.086936,
		-0.176960, 0.981349, -0.075088,
		25.455498, 36.350227, 36.995014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184841, 35.720608, 36.525833>,  <25.579369, 35.663284, 37.047577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184841, 35.720608, 36.525833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295340, 36.104427, 36.547588>,  <25.361639, 36.334717, 36.560642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295340, 36.104427, 36.547588>,  <25.184841, 35.720608, 36.525833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295340, 36.104427, 36.547588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056547, 0.040268, -0.997588,
		-0.959423, 0.278653, -0.043135,
		0.276244, 0.959547, 0.054391,
		25.378212, 36.392292, 36.563904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643553, 36.131027, 36.049156>,  <25.184841, 35.720608, 36.525833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643553, 36.131027, 36.049156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983870, 36.336292, 36.094440>,  <25.188059, 36.459454, 36.121613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983870, 36.336292, 36.094440>,  <24.643553, 36.131027, 36.049156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983870, 36.336292, 36.094440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057682, 0.122942, -0.990736,
		-0.522331, 0.849438, 0.074998,
		0.850790, 0.513166, 0.113214,
		25.239107, 36.490242, 36.128403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.577539, 36.522953, 35.523102>,  <24.643553, 36.131027, 36.049156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.577539, 36.522953, 35.523102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955425, 36.461723, 35.639091>,  <25.182158, 36.424984, 35.708683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955425, 36.461723, 35.639091>,  <24.577539, 36.522953, 35.523102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955425, 36.461723, 35.639091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269289, -0.142342, -0.952482,
		0.187078, 0.977909, -0.093251,
		0.944714, -0.153077, 0.289969,
		25.238840, 36.415802, 35.726082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.994001, 36.855476, 35.029842>,  <24.577539, 36.522953, 35.523102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.994001, 36.855476, 35.029842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248003, 36.602501, 35.207287>,  <25.400404, 36.450718, 35.313755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248003, 36.602501, 35.207287>,  <24.994001, 36.855476, 35.029842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248003, 36.602501, 35.207287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437433, -0.178943, -0.881267,
		0.636726, 0.753661, 0.163019,
		0.635005, -0.632436, 0.443614,
		25.438505, 36.412769, 35.340370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724609, 37.180279, 35.024212>,  <24.994001, 36.855476, 35.029842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724609, 37.180279, 35.024212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749416, 36.781082, 35.029324>,  <25.764301, 36.541565, 35.032391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749416, 36.781082, 35.029324>,  <25.724609, 37.180279, 35.024212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749416, 36.781082, 35.029324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461707, 0.017334, -0.886863,
		0.884862, 0.060903, 0.461855,
		0.062018, -0.997993, 0.012781,
		25.768023, 36.481686, 35.033157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223347, 36.992481, 34.598335>,  <25.724609, 37.180279, 35.024212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223347, 36.992481, 34.598335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011599, 36.653671, 34.617569>,  <25.884550, 36.450386, 34.629108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011599, 36.653671, 34.617569>,  <26.223347, 36.992481, 34.598335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011599, 36.653671, 34.617569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347828, -0.268381, -0.898325,
		0.773812, -0.458820, 0.436692,
		-0.529369, -0.847028, 0.048086,
		25.852787, 36.399563, 34.631996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493746, 37.474812, 35.004425>,  <26.223347, 36.992481, 34.598335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493746, 37.474812, 35.004425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677439, 37.827019, 34.957447>,  <26.787655, 38.038342, 34.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677439, 37.827019, 34.957447>,  <26.493746, 37.474812, 35.004425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677439, 37.827019, 34.957447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886771, -0.446612, 0.119058,
		0.052380, -0.158822, -0.985917,
		0.459231, 0.880519, -0.117445,
		26.815208, 38.091175, 34.922215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957542, 37.465191, 34.448669>,  <26.493746, 37.474812, 35.004425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957542, 37.465191, 34.448669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094254, 37.755699, 34.687237>,  <27.176281, 37.930004, 34.830376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094254, 37.755699, 34.687237>,  <26.957542, 37.465191, 34.448669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094254, 37.755699, 34.687237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881959, -0.467052, 0.063332,
		0.324555, 0.504371, -0.800171,
		0.341778, 0.726273, 0.596418,
		27.196787, 37.973579, 34.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649233, 37.633530, 34.224602>,  <26.957542, 37.465191, 34.448669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649233, 37.633530, 34.224602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567329, 37.727306, 34.604729>,  <27.518187, 37.783573, 34.832806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.567329, 37.727306, 34.604729>,  <27.649233, 37.633530, 34.224602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567329, 37.727306, 34.604729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885991, -0.368285, 0.281754,
		0.416043, 0.899669, -0.132302,
		-0.204761, 0.234440, 0.950321,
		27.505901, 37.797638, 34.889824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238644, 37.744522, 34.591114>,  <27.649233, 37.633530, 34.224602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238644, 37.744522, 34.591114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972647, 37.648979, 34.874165>,  <27.813049, 37.591652, 35.043995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.972647, 37.648979, 34.874165>,  <28.238644, 37.744522, 34.591114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.972647, 37.648979, 34.874165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700535, -0.527960, 0.480114,
		0.258919, 0.814988, 0.518416,
		-0.664990, -0.238858, 0.707626,
		27.773149, 37.577320, 35.086452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561396, 37.106220, 34.796318>,  <28.238644, 37.744522, 34.591114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561396, 37.106220, 34.796318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761532, 37.332840, 34.534424>,  <28.881613, 37.468811, 34.377289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761532, 37.332840, 34.534424>,  <28.561396, 37.106220, 34.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761532, 37.332840, 34.534424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422930, 0.499920, 0.755784,
		0.755507, -0.655056, 0.010518,
		0.500340, 0.566552, -0.654736,
		28.911634, 37.502804, 34.338001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150331, 36.716415, 35.061562>,  <28.561396, 37.106220, 34.796318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150331, 36.716415, 35.061562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151985, 36.842285, 34.681885>,  <29.152977, 36.917805, 34.454079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151985, 36.842285, 34.681885>,  <29.150331, 36.716415, 35.061562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151985, 36.842285, 34.681885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525427, -0.808297, -0.265673,
		-0.850829, -0.497633, -0.168676,
		0.004133, 0.314670, -0.949192,
		29.153225, 36.936687, 34.397125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954172, 36.173954, 34.580582>,  <29.150331, 36.716415, 35.061562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954172, 36.173954, 34.580582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221760, 36.432304, 34.433437>,  <29.382313, 36.587315, 34.345150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221760, 36.432304, 34.433437>,  <28.954172, 36.173954, 34.580582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221760, 36.432304, 34.433437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642300, -0.751388, -0.151216,
		-0.374071, -0.135115, -0.917505,
		0.668970, 0.645879, -0.367857,
		29.422451, 36.626068, 34.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368326, 35.753544, 34.146637>,  <28.954172, 36.173954, 34.580582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368326, 35.753544, 34.146637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554401, 36.097855, 34.229252>,  <29.666046, 36.304443, 34.278820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554401, 36.097855, 34.229252>,  <29.368326, 35.753544, 34.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554401, 36.097855, 34.229252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883044, -0.434923, -0.176280,
		-0.061911, 0.264383, -0.962429,
		0.465188, 0.860781, 0.206535,
		29.693958, 36.356091, 34.291214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298622, 35.759537, 33.383934>,  <29.368326, 35.753544, 34.146637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298622, 35.759537, 33.383934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695107, 35.797810, 33.420471>,  <29.932997, 35.820774, 33.442394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695107, 35.797810, 33.420471>,  <29.298622, 35.759537, 33.383934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695107, 35.797810, 33.420471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028938, -0.830636, 0.556064,
		0.129078, -0.548534, -0.826105,
		0.991212, 0.095681, 0.091344,
		29.992470, 35.826515, 33.447876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666374, 35.168655, 33.098202>,  <29.298622, 35.759537, 33.383934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666374, 35.168655, 33.098202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867054, 35.346386, 33.395084>,  <29.987461, 35.453026, 33.573215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867054, 35.346386, 33.395084>,  <29.666374, 35.168655, 33.098202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867054, 35.346386, 33.395084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060462, -0.837891, 0.542478,
		0.862927, -0.317036, -0.393504,
		0.501699, 0.444326, 0.742208,
		30.017563, 35.479683, 33.617748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267448, 34.762016, 33.304661>,  <29.666374, 35.168655, 33.098202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267448, 34.762016, 33.304661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128759, 34.985332, 33.606148>,  <30.045546, 35.119324, 33.787041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128759, 34.985332, 33.606148>,  <30.267448, 34.762016, 33.304661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128759, 34.985332, 33.606148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057425, -0.814693, 0.577042,
		0.936208, 0.156790, 0.314532,
		-0.346722, 0.558294, 0.753719,
		30.024742, 35.152821, 33.832264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783810, 35.189419, 33.130329>,  <30.267448, 34.762016, 33.304661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783810, 35.189419, 33.130329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815836, 35.077885, 33.513126>,  <30.835052, 35.010963, 33.742805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815836, 35.077885, 33.513126>,  <30.783810, 35.189419, 33.130329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815836, 35.077885, 33.513126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501395, -0.818510, -0.280435,
		0.861506, 0.502286, 0.074272,
		0.080066, -0.278836, 0.956995,
		30.839855, 34.994232, 33.800224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464237, 34.937141, 33.098186>,  <30.783810, 35.189419, 33.130329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464237, 34.937141, 33.098186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211447, 34.770039, 33.359287>,  <31.059772, 34.669777, 33.515949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211447, 34.770039, 33.359287>,  <31.464237, 34.937141, 33.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211447, 34.770039, 33.359287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390913, -0.899109, -0.196955,
		0.669175, 0.130699, 0.731521,
		-0.631975, -0.417758, 0.652753,
		31.021854, 34.644711, 33.555115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870419, 34.726322, 33.636753>,  <31.464237, 34.937141, 33.098186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870419, 34.726322, 33.636753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542379, 34.513382, 33.552811>,  <31.345556, 34.385616, 33.502445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542379, 34.513382, 33.552811>,  <31.870419, 34.726322, 33.636753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542379, 34.513382, 33.552811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571939, -0.751043, -0.329880,
		0.018002, -0.390559, 0.920402,
		-0.820099, -0.532352, -0.209855,
		31.296350, 34.353676, 33.489853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918196, 33.959221, 33.920017>,  <31.870419, 34.726322, 33.636753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918196, 33.959221, 33.920017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724073, 34.018848, 33.575401>,  <31.607599, 34.054623, 33.368629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724073, 34.018848, 33.575401>,  <31.918196, 33.959221, 33.920017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724073, 34.018848, 33.575401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460023, -0.794418, -0.396584,
		-0.743541, -0.588795, 0.316964,
		-0.485309, 0.149065, -0.861542,
		31.578482, 34.063568, 33.316940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007782, 33.257729, 33.554592>,  <31.918196, 33.959221, 33.920017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007782, 33.257729, 33.554592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800922, 33.459618, 33.278099>,  <31.676805, 33.580753, 33.112202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800922, 33.459618, 33.278099>,  <32.007782, 33.257729, 33.554592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800922, 33.459618, 33.278099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141341, -0.746166, -0.650584,
		-0.844143, -0.434150, 0.314542,
		-0.517152, 0.504728, -0.691234,
		31.645777, 33.611034, 33.070728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395037, 32.801971, 33.293186>,  <32.007782, 33.257729, 33.554592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395037, 32.801971, 33.293186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582273, 33.063847, 33.055775>,  <31.694614, 33.220970, 32.913326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582273, 33.063847, 33.055775>,  <31.395037, 32.801971, 33.293186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582273, 33.063847, 33.055775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203967, -0.733568, -0.648287,
		-0.859819, 0.182396, -0.476910,
		0.468091, 0.654683, -0.593533,
		31.722700, 33.260250, 32.877716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221830, 32.562233, 32.540924>,  <31.395037, 32.801971, 33.293186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221830, 32.562233, 32.540924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522839, 32.825569, 32.534058>,  <31.703444, 32.983570, 32.529938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522839, 32.825569, 32.534058>,  <31.221830, 32.562233, 32.540924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522839, 32.825569, 32.534058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401273, -0.479034, -0.780709,
		-0.522197, 0.580613, -0.624659,
		0.752523, 0.658343, -0.017165,
		31.748596, 33.023071, 32.528908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309576, 32.713306, 31.877781>,  <31.221830, 32.562233, 32.540924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309576, 32.713306, 31.877781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641510, 32.891903, 32.011654>,  <31.840672, 32.999062, 32.091976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641510, 32.891903, 32.011654>,  <31.309576, 32.713306, 31.877781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641510, 32.891903, 32.011654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471503, -0.240306, -0.848491,
		-0.298421, 0.861913, -0.409939,
		0.829837, 0.446495, 0.334683,
		31.890461, 33.025852, 32.112061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469139, 33.119511, 31.298922>,  <31.309576, 32.713306, 31.877781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469139, 33.119511, 31.298922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785873, 33.033344, 31.527514>,  <31.975914, 32.981644, 31.664669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785873, 33.033344, 31.527514>,  <31.469139, 33.119511, 31.298922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785873, 33.033344, 31.527514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543290, -0.178983, -0.820245,
		0.278982, 0.959979, -0.024689,
		0.791836, -0.215420, 0.571480,
		32.023426, 32.968719, 31.698957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084198, 33.569214, 31.009399>,  <31.469139, 33.119511, 31.298922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084198, 33.569214, 31.009399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205429, 33.248112, 31.214817>,  <32.278168, 33.055450, 31.338068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205429, 33.248112, 31.214817>,  <32.084198, 33.569214, 31.009399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205429, 33.248112, 31.214817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557591, -0.287631, -0.778692,
		0.772811, 0.522351, 0.360435,
		0.303078, -0.802757, 0.513542,
		32.296352, 33.007286, 31.368879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621098, 33.426819, 30.671133>,  <32.084198, 33.569214, 31.009399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621098, 33.426819, 30.671133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594913, 33.088928, 30.883604>,  <32.579205, 32.886192, 31.011087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594913, 33.088928, 30.883604>,  <32.621098, 33.426819, 30.671133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594913, 33.088928, 30.883604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539350, -0.477812, -0.693395,
		0.839534, 0.241105, 0.486880,
		-0.065456, -0.844727, 0.531179,
		32.575275, 32.835510, 31.042957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284069, 33.245598, 30.766542>,  <32.621098, 33.426819, 30.671133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284069, 33.245598, 30.766542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072495, 32.908657, 30.807858>,  <32.945549, 32.706493, 30.832647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072495, 32.908657, 30.807858>,  <33.284069, 33.245598, 30.766542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072495, 32.908657, 30.807858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543782, -0.429837, -0.720792,
		0.651559, -0.325087, 0.685412,
		-0.528936, -0.842353, 0.103288,
		32.913815, 32.655952, 30.838844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763294, 32.705902, 30.801929>,  <33.284069, 33.245598, 30.766542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763294, 32.705902, 30.801929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415436, 32.529675, 30.712837>,  <33.206718, 32.423939, 30.659382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415436, 32.529675, 30.712837>,  <33.763294, 32.705902, 30.801929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415436, 32.529675, 30.712837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444885, -0.503860, -0.740407,
		0.213976, -0.742983, 0.634185,
		-0.869650, -0.440568, -0.222728,
		33.154541, 32.397503, 30.646019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862282, 31.967739, 30.764385>,  <33.763294, 32.705902, 30.801929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862282, 31.967739, 30.764385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522781, 32.024563, 30.560646>,  <33.319080, 32.058659, 30.438402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522781, 32.024563, 30.560646>,  <33.862282, 31.967739, 30.764385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522781, 32.024563, 30.560646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367898, -0.533243, -0.761776,
		-0.379824, -0.833949, 0.400329,
		-0.848755, 0.142060, -0.509347,
		33.268154, 32.067181, 30.407843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624619, 31.337177, 30.539213>,  <33.862282, 31.967739, 30.764385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624619, 31.337177, 30.539213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477100, 31.608784, 30.285307>,  <33.388588, 31.771748, 30.132963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477100, 31.608784, 30.285307>,  <33.624619, 31.337177, 30.539213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477100, 31.608784, 30.285307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484656, -0.442250, -0.754668,
		-0.793156, -0.585962, -0.165989,
		-0.368798, 0.679017, -0.634763,
		33.366463, 31.812489, 30.094877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561462, 30.923214, 30.010214>,  <33.624619, 31.337177, 30.539213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561462, 30.923214, 30.010214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514874, 31.289658, 29.856758>,  <33.486919, 31.509523, 29.764685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514874, 31.289658, 29.856758>,  <33.561462, 30.923214, 30.010214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514874, 31.289658, 29.856758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100373, -0.373432, -0.922211,
		-0.988109, -0.145922, -0.048457,
		-0.116475, 0.916109, -0.383638,
		33.479931, 31.564489, 29.741667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072937, 30.843397, 29.523691>,  <33.561462, 30.923214, 30.010214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072937, 30.843397, 29.523691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286846, 31.163504, 29.415178>,  <33.415192, 31.355568, 29.350071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286846, 31.163504, 29.415178>,  <33.072937, 30.843397, 29.523691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286846, 31.163504, 29.415178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157750, -0.409950, -0.898363,
		-0.830141, 0.437624, -0.345472,
		0.534772, 0.800266, -0.271281,
		33.447277, 31.403584, 29.333794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890831, 30.970524, 28.871592>,  <33.072937, 30.843397, 29.523691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890831, 30.970524, 28.871592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208725, 31.213018, 28.859776>,  <33.399460, 31.358515, 28.852686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208725, 31.213018, 28.859776>,  <32.890831, 30.970524, 28.871592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208725, 31.213018, 28.859776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095547, -0.173020, -0.980273,
		-0.599388, 0.776236, -0.195429,
		0.794736, 0.606236, -0.029539,
		33.447147, 31.394890, 28.850914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728783, 31.254646, 28.324736>,  <32.890831, 30.970524, 28.871592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728783, 31.254646, 28.324736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120670, 31.307354, 28.385107>,  <33.355804, 31.338980, 28.421329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120670, 31.307354, 28.385107>,  <32.728783, 31.254646, 28.324736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120670, 31.307354, 28.385107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176433, -0.210430, -0.961556,
		-0.094946, 0.968688, -0.229412,
		0.979723, 0.131771, 0.150929,
		33.414589, 31.346886, 28.430386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950092, 31.803768, 27.910975>,  <32.728783, 31.254646, 28.324736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950092, 31.803768, 27.910975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291889, 31.605276, 27.972412>,  <33.496967, 31.486181, 28.009275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291889, 31.605276, 27.972412>,  <32.950092, 31.803768, 27.910975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291889, 31.605276, 27.972412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161945, -0.026460, -0.986445,
		0.493568, 0.867788, 0.057751,
		0.854497, -0.496230, 0.153594,
		33.548237, 31.456408, 28.018490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472164, 32.148724, 27.439384>,  <32.950092, 31.803768, 27.910975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472164, 32.148724, 27.439384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619137, 31.791134, 27.541988>,  <33.707321, 31.576580, 27.603550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619137, 31.791134, 27.541988>,  <33.472164, 32.148724, 27.439384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619137, 31.791134, 27.541988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539553, -0.019755, -0.841720,
		0.757546, 0.447677, 0.475089,
		0.367433, -0.893977, 0.256510,
		33.729366, 31.522942, 27.618942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227917, 32.105190, 27.136362>,  <33.472164, 32.148724, 27.439384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227917, 32.105190, 27.136362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090870, 31.738367, 27.217960>,  <34.008644, 31.518272, 27.266920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090870, 31.738367, 27.217960>,  <34.227917, 32.105190, 27.136362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090870, 31.738367, 27.217960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403930, -0.339836, -0.849324,
		0.848208, -0.208589, 0.486861,
		-0.342613, -0.917062, 0.203997,
		33.988087, 31.463249, 27.279160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857780, 31.679077, 27.089016>,  <34.227917, 32.105190, 27.136362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857780, 31.679077, 27.089016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536652, 31.451496, 27.017725>,  <34.343975, 31.314947, 26.974951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536652, 31.451496, 27.017725>,  <34.857780, 31.679077, 27.089016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536652, 31.451496, 27.017725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336384, -0.185430, -0.923289,
		0.492261, -0.801191, 0.340254,
		-0.802824, -0.568955, -0.178228,
		34.295803, 31.280809, 26.964256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145756, 31.161283, 26.660105>,  <34.857780, 31.679077, 27.089016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145756, 31.161283, 26.660105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749310, 31.169086, 26.607491>,  <34.511440, 31.173769, 26.575922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749310, 31.169086, 26.607491>,  <35.145756, 31.161283, 26.660105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749310, 31.169086, 26.607491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127277, -0.147243, -0.980877,
		-0.038500, -0.988908, 0.143453,
		-0.991120, 0.019506, -0.131534,
		34.451973, 31.174938, 26.568031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867027, 30.493013, 26.245901>,  <35.145756, 31.161283, 26.660105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867027, 30.493013, 26.245901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589752, 30.780830, 26.229176>,  <34.423386, 30.953520, 26.219141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589752, 30.780830, 26.229176>,  <34.867027, 30.493013, 26.245901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589752, 30.780830, 26.229176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035570, -0.023791, -0.999084,
		-0.719878, -0.694041, -0.009102,
		-0.693189, 0.719542, -0.041814,
		34.381794, 30.996693, 26.216631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476734, 30.184175, 25.783417>,  <34.867027, 30.493013, 26.245901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476734, 30.184175, 25.783417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363613, 30.567839, 25.785784>,  <34.295742, 30.798037, 25.787205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363613, 30.567839, 25.785784>,  <34.476734, 30.184175, 25.783417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363613, 30.567839, 25.785784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149139, -0.037877, -0.988091,
		-0.947512, -0.280318, 0.153760,
		-0.282804, 0.959160, 0.005917,
		34.278770, 30.855587, 25.787560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857948, 30.161053, 25.412830>,  <34.476734, 30.184175, 25.783417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857948, 30.161053, 25.412830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949406, 30.550457, 25.412550>,  <34.004280, 30.784100, 25.412382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949406, 30.550457, 25.412550>,  <33.857948, 30.161053, 25.412830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949406, 30.550457, 25.412550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006228, 0.000741, -0.999981,
		-0.973491, 0.228641, 0.006232,
		0.228641, 0.973511, -0.000703,
		34.017998, 30.842510, 25.412338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379486, 30.427771, 25.005978>,  <33.857948, 30.161053, 25.412830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379486, 30.427771, 25.005978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664150, 30.708618, 25.015554>,  <33.834949, 30.877127, 25.021301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664150, 30.708618, 25.015554>,  <33.379486, 30.427771, 25.005978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664150, 30.708618, 25.015554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096161, 0.131114, -0.986693,
		-0.695914, 0.699885, 0.160825,
		0.711658, 0.702118, 0.023942,
		33.877647, 30.919254, 25.022738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062023, 31.023090, 24.811638>,  <33.379486, 30.427771, 25.005978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062023, 31.023090, 24.811638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454144, 31.077316, 24.754189>,  <33.689415, 31.109852, 24.719719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454144, 31.077316, 24.754189>,  <33.062023, 31.023090, 24.811638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454144, 31.077316, 24.754189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171799, 0.226620, -0.958712,
		-0.097419, 0.964503, 0.245446,
		0.980303, 0.135564, -0.143624,
		33.748234, 31.117985, 24.711102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166164, 31.642279, 24.453678>,  <33.062023, 31.023090, 24.811638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166164, 31.642279, 24.453678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501900, 31.443254, 24.366091>,  <33.703342, 31.323841, 24.313540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501900, 31.443254, 24.366091>,  <33.166164, 31.642279, 24.453678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501900, 31.443254, 24.366091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156708, 0.164241, -0.973893,
		0.520533, 0.851739, 0.059883,
		0.839338, -0.497559, -0.218967,
		33.753700, 31.293987, 24.300400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504368, 32.077274, 23.998680>,  <33.166164, 31.642279, 24.453678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504368, 32.077274, 23.998680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655544, 31.713114, 23.931356>,  <33.746250, 31.494617, 23.890963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655544, 31.713114, 23.931356>,  <33.504368, 32.077274, 23.998680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655544, 31.713114, 23.931356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114601, 0.134390, -0.984279,
		0.918710, 0.391286, -0.053542,
		0.377939, -0.910404, -0.168307,
		33.768925, 31.439993, 23.880865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893692, 32.170444, 23.425470>,  <33.504368, 32.077274, 23.998680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893692, 32.170444, 23.425470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891815, 31.770765, 23.441370>,  <33.890690, 31.530958, 23.450911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891815, 31.770765, 23.441370>,  <33.893692, 32.170444, 23.425470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891815, 31.770765, 23.441370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065774, -0.039357, -0.997058,
		0.997823, -0.007295, -0.065537,
		-0.004694, -0.999198, 0.039751,
		33.890408, 31.471006, 23.453295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477970, 31.812054, 23.044384>,  <33.893692, 32.170444, 23.425470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477970, 31.812054, 23.044384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199196, 31.525347, 23.053530>,  <34.031929, 31.353323, 23.059017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199196, 31.525347, 23.053530>,  <34.477970, 31.812054, 23.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199196, 31.525347, 23.053530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144139, -0.171244, -0.974628,
		0.702497, -0.675959, 0.222661,
		-0.696937, -0.716767, 0.022866,
		33.990116, 31.310316, 23.060390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769382, 31.220045, 22.795229>,  <34.477970, 31.812054, 23.044384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769382, 31.220045, 22.795229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384212, 31.131361, 22.733761>,  <34.153111, 31.078152, 22.696880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384212, 31.131361, 22.733761>,  <34.769382, 31.220045, 22.795229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384212, 31.131361, 22.733761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197209, -0.189889, -0.961796,
		0.184059, -0.956445, 0.226573,
		-0.962929, -0.221710, -0.153669,
		34.095333, 31.064848, 22.687660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780689, 30.551870, 22.518827>,  <34.769382, 31.220045, 22.795229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780689, 30.551870, 22.518827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421299, 30.704288, 22.431604>,  <34.205666, 30.795740, 22.379271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421299, 30.704288, 22.431604>,  <34.780689, 30.551870, 22.518827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421299, 30.704288, 22.431604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190068, -0.110116, -0.975576,
		-0.395750, -0.917975, 0.026512,
		-0.898474, 0.381046, -0.218056,
		34.151756, 30.818602, 22.366188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431107, 29.994808, 22.088705>,  <34.780689, 30.551870, 22.518827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431107, 29.994808, 22.088705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264385, 30.352602, 22.023998>,  <34.164352, 30.567278, 21.985174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264385, 30.352602, 22.023998>,  <34.431107, 29.994808, 22.088705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264385, 30.352602, 22.023998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194548, -0.086058, -0.977111,
		-0.887933, -0.438736, -0.138151,
		-0.416804, 0.894486, -0.161769,
		34.139343, 30.620947, 21.975468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012989, 29.937038, 21.545534>,  <34.431107, 29.994808, 22.088705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012989, 29.937038, 21.545534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096256, 30.327621, 21.568163>,  <34.146217, 30.561972, 21.581739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096256, 30.327621, 21.568163>,  <34.012989, 29.937038, 21.545534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096256, 30.327621, 21.568163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259710, 0.000581, -0.965687,
		-0.942984, 0.215713, -0.253475,
		0.208164, 0.976457, 0.056571,
		34.158707, 30.620558, 21.585135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040958, 30.115351, 20.865808>,  <34.012989, 29.937038, 21.545534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040958, 30.115351, 20.865808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175747, 30.459661, 21.018396>,  <34.256618, 30.666248, 21.109949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175747, 30.459661, 21.018396>,  <34.040958, 30.115351, 20.865808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175747, 30.459661, 21.018396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466886, 0.199070, -0.861620,
		-0.817600, 0.468442, -0.334804,
		0.336969, 0.860775, 0.381469,
		34.276836, 30.717894, 21.132837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913437, 30.633343, 20.371325>,  <34.040958, 30.115351, 20.865808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913437, 30.633343, 20.371325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193783, 30.809500, 20.595768>,  <34.361992, 30.915194, 20.730434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193783, 30.809500, 20.595768>,  <33.913437, 30.633343, 20.371325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193783, 30.809500, 20.595768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416170, 0.386402, -0.823102,
		-0.579298, 0.810401, 0.087540,
		0.700868, 0.440390, 0.561106,
		34.404045, 30.941616, 20.764099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065693, 31.312721, 20.075752>,  <33.913437, 30.633343, 20.371325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065693, 31.312721, 20.075752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396542, 31.256657, 20.293459>,  <34.595051, 31.223019, 20.424082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396542, 31.256657, 20.293459>,  <34.065693, 31.312721, 20.075752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396542, 31.256657, 20.293459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556519, 0.339444, -0.758330,
		-0.078459, 0.930125, 0.358764,
		0.827122, -0.140161, 0.544265,
		34.644680, 31.214609, 20.456739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577271, 32.001019, 20.051598>,  <34.065693, 31.312721, 20.075752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577271, 32.001019, 20.051598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783543, 31.667536, 20.130594>,  <34.907307, 31.467445, 20.177992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783543, 31.667536, 20.130594>,  <34.577271, 32.001019, 20.051598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783543, 31.667536, 20.130594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726203, 0.303003, -0.617104,
		0.454644, 0.461649, 0.761695,
		0.515682, -0.833708, 0.197492,
		34.938248, 31.417423, 20.189842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221256, 32.237091, 20.059973>,  <34.577271, 32.001019, 20.051598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221256, 32.237091, 20.059973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259987, 31.841045, 20.019384>,  <35.283226, 31.603418, 19.995031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259987, 31.841045, 20.019384>,  <35.221256, 32.237091, 20.059973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259987, 31.841045, 20.019384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803461, 0.137927, -0.579160,
		0.587430, -0.025447, 0.808874,
		0.096828, -0.990116, -0.101469,
		35.289036, 31.544010, 19.988943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946518, 32.118069, 20.182541>,  <35.221256, 32.237091, 20.059973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946518, 32.118069, 20.182541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796387, 31.818079, 19.964668>,  <35.706310, 31.638086, 19.833944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796387, 31.818079, 19.964668>,  <35.946518, 32.118069, 20.182541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796387, 31.818079, 19.964668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845697, -0.036559, -0.532409,
		0.379379, -0.660460, 0.647969,
		-0.375324, -0.749971, -0.544680,
		35.683788, 31.593088, 19.801264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504749, 31.587152, 20.083111>,  <35.946518, 32.118069, 20.182541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504749, 31.587152, 20.083111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240276, 31.510376, 19.793011>,  <36.081593, 31.464310, 19.618950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240276, 31.510376, 19.793011>,  <36.504749, 31.587152, 20.083111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240276, 31.510376, 19.793011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748028, -0.094800, -0.656861,
		0.057324, -0.976817, 0.206257,
		-0.661187, -0.191940, -0.725253,
		36.041920, 31.452793, 19.575436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818443, 30.980289, 19.678198>,  <36.504749, 31.587152, 20.083111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818443, 30.980289, 19.678198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561989, 31.183180, 19.447836>,  <36.408115, 31.304914, 19.309620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561989, 31.183180, 19.447836>,  <36.818443, 30.980289, 19.678198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561989, 31.183180, 19.447836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600011, -0.136558, -0.788250,
		-0.478466, -0.850924, -0.216790,
		-0.641137, 0.507227, -0.575903,
		36.369648, 31.335348, 19.275064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881500, 30.662159, 19.079945>,  <36.818443, 30.980289, 19.678198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881500, 30.662159, 19.079945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699265, 31.000879, 18.970129>,  <36.589924, 31.204111, 18.904240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699265, 31.000879, 18.970129>,  <36.881500, 30.662159, 19.079945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699265, 31.000879, 18.970129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409884, -0.074219, -0.909113,
		-0.790213, -0.526708, -0.313277,
		-0.455586, 0.846800, -0.274538,
		36.562588, 31.254919, 18.887768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562859, 30.651638, 18.454227>,  <36.881500, 30.662159, 19.079945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562859, 30.651638, 18.454227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592770, 31.050186, 18.470507>,  <36.610718, 31.289314, 18.480274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592770, 31.050186, 18.470507>,  <36.562859, 30.651638, 18.454227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592770, 31.050186, 18.470507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632820, -0.015874, -0.774136,
		-0.770679, 0.083642, -0.631710,
		0.074778, 0.996369, 0.040697,
		36.615204, 31.349096, 18.482716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621861, 30.764658, 17.734295>,  <36.562859, 30.651638, 18.454227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621861, 30.764658, 17.734295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737526, 31.094881, 17.928135>,  <36.806927, 31.293015, 18.044439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737526, 31.094881, 17.928135>,  <36.621861, 30.764658, 17.734295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737526, 31.094881, 17.928135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787031, 0.083151, -0.611284,
		-0.544945, 0.558158, -0.625695,
		0.289166, 0.825558, 0.484600,
		36.824276, 31.342548, 18.073515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175793, 30.825779, 17.405596>,  <36.621861, 30.764658, 17.734295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175793, 30.825779, 17.405596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184669, 31.184515, 17.582315>,  <37.189995, 31.399757, 17.688347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.184669, 31.184515, 17.582315>,  <37.175793, 30.825779, 17.405596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184669, 31.184515, 17.582315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865647, 0.203841, -0.457279,
		-0.500163, 0.392590, -0.771823,
		0.022194, 0.896840, 0.441798,
		37.191326, 31.453568, 17.714855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328548, 31.340351, 16.951294>,  <37.175793, 30.825779, 17.405596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328548, 31.340351, 16.951294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474003, 31.511473, 17.282293>,  <37.561275, 31.614145, 17.480892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474003, 31.511473, 17.282293>,  <37.328548, 31.340351, 16.951294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474003, 31.511473, 17.282293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839366, 0.234803, -0.490237,
		-0.404024, 0.872841, -0.273702,
		0.363633, 0.427804, 0.827499,
		37.583092, 31.639814, 17.530542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570656, 32.081627, 16.913361>,  <37.328548, 31.340351, 16.951294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570656, 32.081627, 16.913361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815041, 31.872620, 17.151253>,  <37.961670, 31.747215, 17.293989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815041, 31.872620, 17.151253>,  <37.570656, 32.081627, 16.913361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815041, 31.872620, 17.151253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781080, 0.275443, -0.560397,
		0.129001, 0.806914, 0.576410,
		0.610960, -0.522515, 0.594732,
		37.998329, 31.715866, 17.329672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971188, 32.348618, 16.293093>,  <37.570656, 32.081627, 16.913361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971188, 32.348618, 16.293093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271648, 32.354691, 16.029112>,  <38.451927, 32.358334, 15.870724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271648, 32.354691, 16.029112>,  <37.971188, 32.348618, 16.293093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271648, 32.354691, 16.029112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248412, 0.932751, -0.261280,
		0.611601, 0.360201, 0.704414,
		0.751156, 0.015186, -0.659950,
		38.496994, 32.359245, 15.831127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381374, 32.923325, 16.501652>,  <37.971188, 32.348618, 16.293093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381374, 32.923325, 16.501652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387627, 32.869499, 16.105339>,  <38.391376, 32.837204, 15.867552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387627, 32.869499, 16.105339>,  <38.381374, 32.923325, 16.501652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387627, 32.869499, 16.105339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072018, 0.988481, -0.133114,
		0.997281, -0.069274, 0.025138,
		0.015627, -0.134562, -0.990782,
		38.392315, 32.829132, 15.808105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981945, 32.565247, 16.506922>,  <38.381374, 32.923325, 16.501652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981945, 32.565247, 16.506922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229244, 32.867687, 16.592785>,  <39.377625, 33.049152, 16.644302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229244, 32.867687, 16.592785>,  <38.981945, 32.565247, 16.506922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229244, 32.867687, 16.592785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673596, 0.368976, 0.640411,
		0.405013, -0.540526, 0.737426,
		0.618251, 0.756101, 0.214656,
		39.414719, 33.094517, 16.657183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079079, 32.602821, 17.257318>,  <38.981945, 32.565247, 16.506922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079079, 32.602821, 17.257318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123722, 32.975178, 17.118191>,  <39.150509, 33.198593, 17.034714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123722, 32.975178, 17.118191>,  <39.079079, 32.602821, 17.257318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123722, 32.975178, 17.118191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753986, 0.307319, 0.580569,
		0.647340, 0.197456, 0.736180,
		0.111605, 0.930895, -0.347819,
		39.157204, 33.254448, 17.013845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000843, 33.063698, 17.800640>,  <39.079079, 32.602821, 17.257318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000843, 33.063698, 17.800640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891350, 33.272690, 17.477633>,  <38.825653, 33.398087, 17.283829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891350, 33.272690, 17.477633>,  <39.000843, 33.063698, 17.800640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891350, 33.272690, 17.477633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823711, 0.306112, 0.477281,
		0.496561, 0.795807, 0.346582,
		-0.273730, 0.522482, -0.807518,
		38.809231, 33.429436, 17.235376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009880, 33.820435, 17.966928>,  <39.000843, 33.063698, 17.800640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009880, 33.820435, 17.966928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740681, 33.690933, 17.700918>,  <38.579163, 33.613232, 17.541311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740681, 33.690933, 17.700918>,  <39.009880, 33.820435, 17.966928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740681, 33.690933, 17.700918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738840, 0.336240, 0.584002,
		0.034537, 0.884379, -0.465490,
		-0.672995, -0.323753, -0.665027,
		38.538780, 33.593807, 17.501410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576218, 34.363960, 17.800444>,  <39.009880, 33.820435, 17.966928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576218, 34.363960, 17.800444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376003, 34.026127, 17.724394>,  <38.255875, 33.823429, 17.678764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376003, 34.026127, 17.724394>,  <38.576218, 34.363960, 17.800444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376003, 34.026127, 17.724394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805688, 0.374106, 0.459251,
		-0.316747, 0.383053, -0.867722,
		-0.500538, -0.844579, -0.190124,
		38.225842, 33.772755, 17.667356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822876, 34.615463, 17.699686>,  <38.576218, 34.363960, 17.800444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822876, 34.615463, 17.699686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810871, 34.224060, 17.781290>,  <37.803669, 33.989220, 17.830252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810871, 34.224060, 17.781290>,  <37.822876, 34.615463, 17.699686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810871, 34.224060, 17.781290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646706, 0.174634, 0.742479,
		-0.762149, -0.109652, -0.638048,
		-0.030011, -0.978509, 0.204009,
		37.801868, 33.930508, 17.842493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171154, 34.350391, 17.792809>,  <37.822876, 34.615463, 17.699686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171154, 34.350391, 17.792809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404266, 34.107716, 18.009064>,  <37.544136, 33.962109, 18.138817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404266, 34.107716, 18.009064>,  <37.171154, 34.350391, 17.792809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404266, 34.107716, 18.009064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537499, 0.211191, 0.816390,
		-0.609473, -0.766373, -0.203016,
		0.582784, -0.606689, 0.540640,
		37.579102, 33.925709, 18.171255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678780, 34.032143, 18.287872>,  <37.171154, 34.350391, 17.792809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678780, 34.032143, 18.287872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048218, 33.992271, 18.435949>,  <37.269878, 33.968349, 18.524796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048218, 33.992271, 18.435949>,  <36.678780, 34.032143, 18.287872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048218, 33.992271, 18.435949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364206, 0.073401, 0.928421,
		-0.119721, -0.992308, 0.031487,
		0.923591, -0.099684, 0.370192,
		37.325294, 33.962368, 18.547007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523838, 33.758480, 18.934694>,  <36.678780, 34.032143, 18.287872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523838, 33.758480, 18.934694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912388, 33.848694, 18.964558>,  <37.145515, 33.902824, 18.982475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912388, 33.848694, 18.964558>,  <36.523838, 33.758480, 18.934694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912388, 33.848694, 18.964558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084315, 0.033482, 0.995876,
		0.222109, -0.973659, 0.051539,
		0.971369, 0.225539, 0.074658,
		37.203800, 33.916355, 18.986956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638393, 33.475964, 19.521852>,  <36.523838, 33.758480, 18.934694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638393, 33.475964, 19.521852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939320, 33.732059, 19.459738>,  <37.119877, 33.885719, 19.422470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939320, 33.732059, 19.459738>,  <36.638393, 33.475964, 19.521852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939320, 33.732059, 19.459738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001578, 0.233956, 0.972246,
		0.658803, -0.731679, 0.174999,
		0.752314, 0.640242, -0.155286,
		37.165012, 33.924133, 19.413153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078533, 33.401806, 20.131775>,  <36.638393, 33.475964, 19.521852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078533, 33.401806, 20.131775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162819, 33.766731, 19.991331>,  <37.213390, 33.985687, 19.907064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162819, 33.766731, 19.991331>,  <37.078533, 33.401806, 20.131775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162819, 33.766731, 19.991331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143679, 0.326369, 0.934259,
		0.966930, -0.247312, -0.062309,
		0.210718, 0.912316, -0.351109,
		37.226036, 34.040424, 19.885998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752499, 33.650284, 20.411337>,  <37.078533, 33.401806, 20.131775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752499, 33.650284, 20.411337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523190, 33.957043, 20.295935>,  <37.385605, 34.141098, 20.226694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523190, 33.957043, 20.295935>,  <37.752499, 33.650284, 20.411337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523190, 33.957043, 20.295935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114164, 0.423431, 0.898706,
		0.811374, 0.482265, -0.330292,
		-0.573270, 0.766894, -0.288504,
		37.351208, 34.187111, 20.209383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063808, 34.063004, 20.897066>,  <37.752499, 33.650284, 20.411337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063808, 34.063004, 20.897066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746517, 34.256889, 20.749643>,  <37.556141, 34.373222, 20.661190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746517, 34.256889, 20.749643>,  <38.063808, 34.063004, 20.897066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746517, 34.256889, 20.749643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008061, 0.613568, 0.789601,
		0.608867, 0.623365, -0.490609,
		-0.793231, 0.484717, -0.368556,
		37.508549, 34.402306, 20.639076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185703, 34.834930, 20.925406>,  <38.063808, 34.063004, 20.897066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185703, 34.834930, 20.925406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798668, 34.734058, 20.920050>,  <37.566448, 34.673534, 20.916836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798668, 34.734058, 20.920050>,  <38.185703, 34.834930, 20.925406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798668, 34.734058, 20.920050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096833, 0.321533, 0.941934,
		-0.233230, 0.912701, -0.335531,
		-0.967588, -0.252178, -0.013389,
		37.508392, 34.658405, 20.916033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008663, 35.296028, 21.385502>,  <38.185703, 34.834930, 20.925406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008663, 35.296028, 21.385502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691200, 35.059025, 21.330313>,  <37.500721, 34.916821, 21.297199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691200, 35.059025, 21.330313>,  <38.008663, 35.296028, 21.385502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691200, 35.059025, 21.330313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254032, 0.116691, 0.960131,
		-0.552788, 0.797065, -0.243130,
		-0.793658, -0.592512, -0.137975,
		37.453102, 34.881271, 21.288919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572105, 35.730938, 21.840389>,  <38.008663, 35.296028, 21.385502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572105, 35.730938, 21.840389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410774, 35.370052, 21.779272>,  <37.313976, 35.153522, 21.742601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410774, 35.370052, 21.779272>,  <37.572105, 35.730938, 21.840389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410774, 35.370052, 21.779272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155128, -0.097142, 0.983106,
		-0.901812, 0.420213, -0.100778,
		-0.403324, -0.902211, -0.152791,
		37.289776, 35.099388, 21.733435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890511, 35.710667, 22.159374>,  <37.572105, 35.730938, 21.840389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890511, 35.710667, 22.159374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004574, 35.330479, 22.109900>,  <37.073009, 35.102367, 22.080215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004574, 35.330479, 22.109900>,  <36.890511, 35.710667, 22.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004574, 35.330479, 22.109900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149750, -0.171638, 0.973712,
		-0.946711, -0.259137, -0.191276,
		0.285155, -0.950467, -0.123686,
		37.090122, 35.045338, 22.072794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438530, 35.392200, 22.586872>,  <36.890511, 35.710667, 22.159374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438530, 35.392200, 22.586872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712906, 35.114296, 22.500341>,  <36.877529, 34.947552, 22.448423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712906, 35.114296, 22.500341>,  <36.438530, 35.392200, 22.586872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712906, 35.114296, 22.500341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195876, -0.462614, 0.864651,
		-0.700803, -0.550722, -0.453411,
		0.685936, -0.694762, -0.216328,
		36.918686, 34.905869, 22.435444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163727, 34.831802, 22.620142>,  <36.438530, 35.392200, 22.586872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163727, 34.831802, 22.620142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549664, 34.741196, 22.673462>,  <36.781227, 34.686832, 22.705454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549664, 34.741196, 22.673462>,  <36.163727, 34.831802, 22.620142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549664, 34.741196, 22.673462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229472, -0.478750, 0.847432,
		-0.128140, -0.848227, -0.513898,
		0.964843, -0.226515, 0.133297,
		36.839115, 34.673241, 22.713451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206806, 34.148335, 22.891346>,  <36.163727, 34.831802, 22.620142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206806, 34.148335, 22.891346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548882, 34.330566, 22.990221>,  <36.754128, 34.439903, 23.049545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548882, 34.330566, 22.990221>,  <36.206806, 34.148335, 22.891346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548882, 34.330566, 22.990221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147285, -0.243650, 0.958615,
		0.496950, -0.856204, -0.141267,
		0.855189, 0.455577, 0.247187,
		36.805439, 34.467239, 23.064377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493500, 33.683605, 23.407930>,  <36.206806, 34.148335, 22.891346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493500, 33.683605, 23.407930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671780, 34.039421, 23.448069>,  <36.778748, 34.252911, 23.472151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671780, 34.039421, 23.448069>,  <36.493500, 33.683605, 23.407930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671780, 34.039421, 23.448069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098073, -0.062897, 0.993190,
		0.889796, -0.452501, 0.059207,
		0.445695, 0.889543, 0.100344,
		36.805489, 34.306286, 23.478172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932110, 33.623512, 24.118168>,  <36.493500, 33.683605, 23.407930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932110, 33.623512, 24.118168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923462, 34.016491, 24.044052>,  <36.918274, 34.252277, 23.999582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923462, 34.016491, 24.044052>,  <36.932110, 33.623512, 24.118168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923462, 34.016491, 24.044052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215217, 0.176416, 0.960499,
		0.976327, 0.060644, 0.207625,
		-0.021621, 0.982446, -0.185291,
		36.916977, 34.311226, 23.988464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457199, 33.905891, 24.514942>,  <36.932110, 33.623512, 24.118168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457199, 33.905891, 24.514942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207363, 34.209930, 24.443226>,  <37.057461, 34.392353, 24.400196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207363, 34.209930, 24.443226>,  <37.457199, 33.905891, 24.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207363, 34.209930, 24.443226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054585, 0.186527, 0.980932,
		0.779044, 0.622465, -0.075013,
		-0.624588, 0.760095, -0.179290,
		37.019985, 34.437958, 24.389439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702271, 34.405781, 24.872757>,  <37.457199, 33.905891, 24.514942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702271, 34.405781, 24.872757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316624, 34.492928, 24.812082>,  <37.085236, 34.545216, 24.775679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316624, 34.492928, 24.812082>,  <37.702271, 34.405781, 24.872757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316624, 34.492928, 24.812082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066484, 0.355016, 0.932493,
		0.257011, 0.909119, -0.327793,
		-0.964119, 0.217868, -0.151685,
		37.027390, 34.558289, 24.766577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606731, 35.021149, 25.241692>,  <37.702271, 34.405781, 24.872757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606731, 35.021149, 25.241692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228542, 34.900940, 25.191458>,  <37.001629, 34.828815, 25.161318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228542, 34.900940, 25.191458>,  <37.606731, 35.021149, 25.241692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228542, 34.900940, 25.191458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206644, 0.255435, 0.944485,
		-0.251762, 0.918933, -0.303608,
		-0.945471, -0.300524, -0.125583,
		36.944901, 34.810783, 25.153782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230255, 35.484512, 25.660950>,  <37.606731, 35.021149, 25.241692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230255, 35.484512, 25.660950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958706, 35.197647, 25.597958>,  <36.795776, 35.025528, 25.560162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958706, 35.197647, 25.597958>,  <37.230255, 35.484512, 25.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958706, 35.197647, 25.597958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340700, 0.117683, 0.932778,
		-0.650425, 0.686892, -0.324231,
		-0.678875, -0.717168, -0.157480,
		36.755043, 34.982498, 25.550714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765930, 35.698303, 26.079954>,  <37.230255, 35.484512, 25.660950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765930, 35.698303, 26.079954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651600, 35.321236, 26.011049>,  <36.583004, 35.094994, 25.969707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651600, 35.321236, 26.011049>,  <36.765930, 35.698303, 26.079954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651600, 35.321236, 26.011049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458073, -0.023490, 0.888604,
		-0.841709, 0.332892, -0.425099,
		-0.285823, -0.942673, -0.172260,
		36.565853, 35.038433, 25.959372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027267, 35.620064, 26.467125>,  <36.765930, 35.698303, 26.079954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027267, 35.620064, 26.467125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146172, 35.246315, 26.388552>,  <36.217514, 35.022064, 26.341408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146172, 35.246315, 26.388552>,  <36.027267, 35.620064, 26.467125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146172, 35.246315, 26.388552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320261, -0.291389, 0.901402,
		-0.899484, -0.205037, -0.385861,
		0.297256, -0.934373, -0.196435,
		36.235348, 34.966003, 26.329620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461639, 35.194138, 26.588629>,  <36.027267, 35.620064, 26.467125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461639, 35.194138, 26.588629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783421, 34.959217, 26.624262>,  <35.976490, 34.818264, 26.645641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783421, 34.959217, 26.624262>,  <35.461639, 35.194138, 26.588629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783421, 34.959217, 26.624262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371499, -0.380390, 0.846931,
		-0.463520, -0.714407, -0.524187,
		0.804449, -0.587304, 0.089083,
		36.024757, 34.783028, 26.650988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180492, 34.603455, 26.849274>,  <35.461639, 35.194138, 26.588629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180492, 34.603455, 26.849274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576176, 34.580208, 26.903070>,  <35.813587, 34.566261, 26.935349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576176, 34.580208, 26.903070>,  <35.180492, 34.603455, 26.849274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576176, 34.580208, 26.903070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145911, -0.307945, 0.940149,
		-0.013220, -0.949627, -0.313102,
		0.989209, -0.058114, 0.134491,
		35.872940, 34.562775, 26.943419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295673, 33.962910, 27.275866>,  <35.180492, 34.603455, 26.849274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295673, 33.962910, 27.275866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604420, 34.215416, 27.306135>,  <35.789665, 34.366920, 27.324297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604420, 34.215416, 27.306135>,  <35.295673, 33.962910, 27.275866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604420, 34.215416, 27.306135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108160, 0.013088, 0.994047,
		0.626522, -0.775453, 0.078380,
		0.771863, 0.631270, 0.075673,
		35.835979, 34.404797, 27.328836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684128, 33.744633, 27.802898>,  <35.295673, 33.962910, 27.275866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684128, 33.744633, 27.802898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815639, 34.121307, 27.774250>,  <35.894547, 34.347313, 27.757061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815639, 34.121307, 27.774250>,  <35.684128, 33.744633, 27.802898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815639, 34.121307, 27.774250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005951, 0.077900, 0.996943,
		0.944387, -0.327351, 0.031216,
		0.328782, 0.941686, -0.071620,
		35.914272, 34.403812, 27.752764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211716, 33.793880, 28.292530>,  <35.684128, 33.744633, 27.802898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211716, 33.793880, 28.292530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086895, 34.168209, 28.226976>,  <36.012005, 34.392807, 28.187645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086895, 34.168209, 28.226976>,  <36.211716, 33.793880, 28.292530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086895, 34.168209, 28.226976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089951, 0.142620, 0.985682,
		0.945799, 0.322321, 0.039675,
		-0.312047, 0.935825, -0.163882,
		35.993282, 34.448956, 28.177813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561985, 34.269218, 28.795246>,  <36.211716, 33.793880, 28.292530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561985, 34.269218, 28.795246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246269, 34.476795, 28.663963>,  <36.056839, 34.601341, 28.585194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246269, 34.476795, 28.663963>,  <36.561985, 34.269218, 28.795246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246269, 34.476795, 28.663963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103340, 0.414627, 0.904105,
		0.605263, 0.747517, -0.273633,
		-0.789289, 0.518944, -0.328207,
		36.009483, 34.632477, 28.565502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630348, 34.837852, 29.084103>,  <36.561985, 34.269218, 28.795246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630348, 34.837852, 29.084103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241203, 34.864262, 28.995399>,  <36.007717, 34.880108, 28.942177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241203, 34.864262, 28.995399>,  <36.630348, 34.837852, 29.084103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241203, 34.864262, 28.995399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200637, 0.236637, 0.950656,
		0.115243, 0.969352, -0.216969,
		-0.972864, 0.066025, -0.221759,
		35.949345, 34.884068, 28.928871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307446, 35.508942, 29.448545>,  <36.630348, 34.837852, 29.084103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307446, 35.508942, 29.448545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027222, 35.241508, 29.348774>,  <35.859085, 35.081051, 29.288912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027222, 35.241508, 29.348774>,  <36.307446, 35.508942, 29.448545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027222, 35.241508, 29.348774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408476, 0.089115, 0.908408,
		-0.585115, 0.738282, -0.335529,
		-0.700562, -0.668579, -0.249428,
		35.817055, 35.040936, 29.273945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751820, 35.665359, 29.747129>,  <36.307446, 35.508942, 29.448545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751820, 35.665359, 29.747129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664780, 35.282383, 29.671284>,  <35.612556, 35.052597, 29.625776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664780, 35.282383, 29.671284>,  <35.751820, 35.665359, 29.747129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664780, 35.282383, 29.671284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427451, -0.081165, 0.900388,
		-0.877459, 0.276979, -0.391597,
		-0.217604, -0.957442, -0.189614,
		35.599499, 34.995152, 29.614399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140865, 35.599113, 30.059448>,  <35.751820, 35.665359, 29.747129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140865, 35.599113, 30.059448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269566, 35.227100, 29.988434>,  <35.346786, 35.003891, 29.945826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269566, 35.227100, 29.988434>,  <35.140865, 35.599113, 30.059448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269566, 35.227100, 29.988434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363436, -0.294455, 0.883861,
		-0.874295, -0.219858, -0.432747,
		0.321749, -0.930032, -0.177536,
		35.366089, 34.948090, 29.935173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611980, 35.197235, 30.189627>,  <35.140865, 35.599113, 30.059448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611980, 35.197235, 30.189627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919575, 34.943577, 30.221945>,  <35.104130, 34.791382, 30.241335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919575, 34.943577, 30.221945>,  <34.611980, 35.197235, 30.189627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919575, 34.943577, 30.221945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295110, -0.240030, 0.924822,
		-0.567077, -0.735015, -0.371721,
		0.768983, -0.634144, 0.080795,
		35.150269, 34.753334, 30.246183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318443, 34.550335, 30.485479>,  <34.611980, 35.197235, 30.189627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318443, 34.550335, 30.485479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705185, 34.461845, 30.536469>,  <34.937229, 34.408752, 30.567062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705185, 34.461845, 30.536469>,  <34.318443, 34.550335, 30.485479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705185, 34.461845, 30.536469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186734, -0.272205, 0.943946,
		-0.174125, -0.936464, -0.304493,
		0.966856, -0.221224, 0.127472,
		34.995243, 34.395477, 30.574711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359486, 33.819622, 30.737162>,  <34.318443, 34.550335, 30.485479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359486, 33.819622, 30.737162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696323, 34.004559, 30.848242>,  <34.898426, 34.115520, 30.914890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696323, 34.004559, 30.848242>,  <34.359486, 33.819622, 30.737162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696323, 34.004559, 30.848242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060924, -0.430056, 0.900744,
		0.535879, -0.775430, -0.333979,
		0.842094, 0.462342, 0.277700,
		34.948952, 34.143261, 30.931551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793732, 33.375607, 31.073854>,  <34.359486, 33.819622, 30.737162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793732, 33.375607, 31.073854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929729, 33.722771, 31.218706>,  <35.011326, 33.931068, 31.305616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929729, 33.722771, 31.218706>,  <34.793732, 33.375607, 31.073854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929729, 33.722771, 31.218706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074977, -0.358824, 0.930389,
		0.937434, -0.343476, -0.056924,
		0.339992, 0.867911, 0.362127,
		35.031727, 33.983143, 31.327345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383976, 33.279785, 31.529037>,  <34.793732, 33.375607, 31.073854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383976, 33.279785, 31.529037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213020, 33.625534, 31.635019>,  <35.110447, 33.832981, 31.698608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213020, 33.625534, 31.635019>,  <35.383976, 33.279785, 31.529037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213020, 33.625534, 31.635019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017503, -0.285103, 0.958337,
		0.903896, 0.414225, 0.106722,
		-0.427394, 0.864369, 0.264953,
		35.084801, 33.884846, 31.714506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753407, 33.575798, 32.067276>,  <35.383976, 33.279785, 31.529037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753407, 33.575798, 32.067276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397160, 33.751167, 32.115589>,  <35.183411, 33.856388, 32.144577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397160, 33.751167, 32.115589>,  <35.753407, 33.575798, 32.067276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397160, 33.751167, 32.115589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037494, -0.335486, 0.941299,
		0.453204, 0.833809, 0.315228,
		-0.890618, 0.438420, 0.120781,
		35.129974, 33.882694, 32.151825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759792, 34.050095, 32.679813>,  <35.753407, 33.575798, 32.067276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759792, 34.050095, 32.679813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405449, 33.880005, 32.605583>,  <35.192844, 33.777950, 32.561047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405449, 33.880005, 32.605583>,  <35.759792, 34.050095, 32.679813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405449, 33.880005, 32.605583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071797, -0.520803, 0.850652,
		-0.458366, 0.740234, 0.491888,
		-0.885859, -0.425227, -0.185572,
		35.139690, 33.752438, 32.549911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406525, 34.739601, 32.739044>,  <35.759792, 34.050095, 32.679813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406525, 34.739601, 32.739044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697937, 34.643917, 32.995800>,  <35.872784, 34.586506, 33.149853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697937, 34.643917, 32.995800>,  <35.406525, 34.739601, 32.739044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697937, 34.643917, 32.995800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675658, 0.096630, -0.730855,
		0.112803, 0.966147, 0.232023,
		0.728534, -0.239211, 0.641885,
		35.916496, 34.572155, 33.188366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933739, 35.293312, 32.831123>,  <35.406525, 34.739601, 32.739044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933739, 35.293312, 32.831123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116745, 34.958397, 32.950867>,  <36.226551, 34.757446, 33.022713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116745, 34.958397, 32.950867>,  <35.933739, 35.293312, 32.831123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116745, 34.958397, 32.950867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700431, 0.131955, -0.701415,
		0.547788, 0.530593, 0.646838,
		0.457520, -0.837293, 0.299361,
		36.254002, 34.707211, 33.040676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649117, 35.510704, 32.865139>,  <35.933739, 35.293312, 32.831123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649117, 35.510704, 32.865139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671268, 35.111320, 32.866386>,  <36.684559, 34.871689, 32.867134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671268, 35.111320, 32.866386>,  <36.649117, 35.510704, 32.865139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671268, 35.111320, 32.866386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694019, 0.036246, -0.719043,
		0.717823, 0.041988, 0.694958,
		0.055381, -0.998460, 0.003122,
		36.687881, 34.811783, 32.867325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382877, 35.356506, 33.038052>,  <36.649117, 35.510704, 32.865139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382877, 35.356506, 33.038052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213291, 35.048721, 32.846981>,  <37.111538, 34.864048, 32.732338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213291, 35.048721, 32.846981>,  <37.382877, 35.356506, 33.038052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213291, 35.048721, 32.846981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669185, 0.089256, -0.737717,
		0.610282, -0.632422, 0.477072,
		-0.423966, -0.769464, -0.477679,
		37.086102, 34.817883, 32.703678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959770, 34.920818, 32.836113>,  <37.382877, 35.356506, 33.038052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959770, 34.920818, 32.836113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650402, 34.797745, 32.614426>,  <37.464783, 34.723900, 32.481415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650402, 34.797745, 32.614426>,  <37.959770, 34.920818, 32.836113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650402, 34.797745, 32.614426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604990, -0.097284, -0.790267,
		0.189237, -0.946502, 0.261387,
		-0.773419, -0.307684, -0.554215,
		37.418377, 34.705441, 32.448162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323631, 34.511330, 32.398663>,  <37.959770, 34.920818, 32.836113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323631, 34.511330, 32.398663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968494, 34.532146, 32.215782>,  <37.755413, 34.544636, 32.106052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968494, 34.532146, 32.215782>,  <38.323631, 34.511330, 32.398663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968494, 34.532146, 32.215782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449267, -0.116799, -0.885730,
		-0.099496, -0.991791, 0.080318,
		-0.887840, 0.052043, -0.457200,
		37.702141, 34.547760, 32.078621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319469, 33.999195, 31.894754>,  <38.323631, 34.511330, 32.398663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319469, 33.999195, 31.894754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043251, 34.268375, 31.788710>,  <37.877522, 34.429886, 31.725082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043251, 34.268375, 31.788710>,  <38.319469, 33.999195, 31.894754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043251, 34.268375, 31.788710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414909, 0.068321, -0.907294,
		-0.592453, -0.736524, -0.326393,
		-0.690543, 0.672952, -0.265114,
		37.836086, 34.470261, 31.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819672, 33.735107, 31.365850>,  <38.319469, 33.999195, 31.894754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819672, 33.735107, 31.365850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824162, 34.132488, 31.320368>,  <37.826855, 34.370918, 31.293077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824162, 34.132488, 31.320368>,  <37.819672, 33.735107, 31.365850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824162, 34.132488, 31.320368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121992, -0.114226, -0.985936,
		-0.992468, -0.002807, -0.122475,
		0.011222, 0.993451, -0.113708,
		37.827530, 34.430523, 31.286255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479027, 33.824707, 30.677650>,  <37.819672, 33.735107, 31.365850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479027, 33.824707, 30.677650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693562, 34.154919, 30.747900>,  <37.822281, 34.353046, 30.790049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693562, 34.154919, 30.747900>,  <37.479027, 33.824707, 30.677650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693562, 34.154919, 30.747900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219872, 0.064234, -0.973412,
		-0.814860, 0.560692, -0.147059,
		0.536338, 0.825529, 0.175623,
		37.854462, 34.402576, 30.800587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264778, 34.298248, 30.113291>,  <37.479027, 33.824707, 30.677650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264778, 34.298248, 30.113291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606358, 34.453739, 30.251656>,  <37.811306, 34.547035, 30.334675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606358, 34.453739, 30.251656>,  <37.264778, 34.298248, 30.113291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606358, 34.453739, 30.251656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294457, 0.187087, -0.937173,
		-0.429021, 0.902158, 0.045299,
		0.853953, 0.388728, 0.345911,
		37.862545, 34.570358, 30.355429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299355, 34.940880, 29.759027>,  <37.264778, 34.298248, 30.113291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299355, 34.940880, 29.759027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673878, 34.866421, 29.878141>,  <37.898590, 34.821743, 29.949610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673878, 34.866421, 29.878141>,  <37.299355, 34.940880, 29.759027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673878, 34.866421, 29.878141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332105, 0.193675, -0.923145,
		0.114171, 0.963243, 0.243161,
		0.936307, -0.186151, 0.297786,
		37.954769, 34.810574, 29.967478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693024, 35.470848, 29.478960>,  <37.299355, 34.940880, 29.759027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693024, 35.470848, 29.478960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924965, 35.152794, 29.549994>,  <38.064129, 34.961964, 29.592613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924965, 35.152794, 29.549994>,  <37.693024, 35.470848, 29.478960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924965, 35.152794, 29.549994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319038, 0.021045, -0.947508,
		0.749656, 0.606072, 0.265880,
		0.579854, -0.795131, 0.177584,
		38.098923, 34.914253, 29.603270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378780, 35.652775, 29.243071>,  <37.693024, 35.470848, 29.478960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378780, 35.652775, 29.243071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361782, 35.255688, 29.197983>,  <38.351582, 35.017437, 29.170931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361782, 35.255688, 29.197983>,  <38.378780, 35.652775, 29.243071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361782, 35.255688, 29.197983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243446, 0.099130, -0.964836,
		0.968983, -0.068444, 0.237460,
		-0.042497, -0.992718, -0.112717,
		38.349033, 34.957870, 29.164167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950779, 35.462318, 28.737429>,  <38.378780, 35.652775, 29.243071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950779, 35.462318, 28.737429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731079, 35.128170, 28.728762>,  <38.599258, 34.927681, 28.723562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731079, 35.128170, 28.728762>,  <38.950779, 35.462318, 28.737429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731079, 35.128170, 28.728762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338539, -0.198731, -0.919727,
		0.764011, -0.512497, 0.391961,
		-0.549252, -0.835375, -0.021667,
		38.566303, 34.877556, 28.722261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412178, 34.826679, 28.522121>,  <38.950779, 35.462318, 28.737429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412178, 34.826679, 28.522121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031933, 34.711617, 28.475506>,  <38.803783, 34.642578, 28.447536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031933, 34.711617, 28.475506>,  <39.412178, 34.826679, 28.522121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031933, 34.711617, 28.475506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150300, -0.098138, -0.983758,
		0.271552, -0.952691, 0.136527,
		-0.950616, -0.287661, -0.116540,
		38.746750, 34.625317, 28.440544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474323, 34.225323, 28.146210>,  <39.412178, 34.826679, 28.522121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474323, 34.225323, 28.146210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088882, 34.312332, 28.084045>,  <38.857616, 34.364540, 28.046747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088882, 34.312332, 28.084045>,  <39.474323, 34.225323, 28.146210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088882, 34.312332, 28.084045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156704, -0.011394, -0.987580,
		-0.216596, -0.975988, -0.023108,
		-0.963603, 0.217527, -0.155409,
		38.799801, 34.377590, 28.037422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134930, 33.627747, 27.896873>,  <39.474323, 34.225323, 28.146210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134930, 33.627747, 27.896873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900261, 33.934444, 27.792631>,  <38.759460, 34.118465, 27.730085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900261, 33.934444, 27.792631>,  <39.134930, 33.627747, 27.896873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900261, 33.934444, 27.792631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118984, -0.236699, -0.964270,
		-0.801037, -0.596716, 0.047634,
		-0.586670, 0.766749, -0.260604,
		38.724258, 34.164471, 27.714449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631439, 33.390804, 27.345905>,  <39.134930, 33.627747, 27.896873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631439, 33.390804, 27.345905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686665, 33.786713, 27.331497>,  <38.719799, 34.024258, 27.322853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686665, 33.786713, 27.331497>,  <38.631439, 33.390804, 27.345905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686665, 33.786713, 27.331497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087859, -0.048463, -0.994953,
		-0.986519, 0.134202, -0.093651,
		0.138063, 0.989768, -0.036018,
		38.728085, 34.083645, 27.320692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293106, 33.506859, 26.775805>,  <38.631439, 33.390804, 27.345905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293106, 33.506859, 26.775805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505184, 33.844761, 26.804873>,  <38.632431, 34.047504, 26.822313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.505184, 33.844761, 26.804873>,  <38.293106, 33.506859, 26.775805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505184, 33.844761, 26.804873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063815, 0.045707, -0.996915,
		-0.845474, 0.533192, -0.029675,
		0.530190, 0.844759, 0.072670,
		38.664242, 34.098190, 26.826674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879482, 33.990143, 26.297342>,  <38.293106, 33.506859, 26.775805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879482, 33.990143, 26.297342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258369, 34.104088, 26.356180>,  <38.485703, 34.172455, 26.391483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258369, 34.104088, 26.356180>,  <37.879482, 33.990143, 26.297342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258369, 34.104088, 26.356180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111329, 0.138002, -0.984155,
		-0.300644, 0.948584, 0.099005,
		0.947216, 0.284858, 0.147095,
		38.542534, 34.189545, 26.400309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965191, 34.608929, 25.921429>,  <37.879482, 33.990143, 26.297342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965191, 34.608929, 25.921429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309807, 34.409744, 25.960981>,  <38.516579, 34.290234, 25.984713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309807, 34.409744, 25.960981>,  <37.965191, 34.608929, 25.921429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309807, 34.409744, 25.960981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104957, -0.015861, -0.994350,
		0.496718, 0.867053, 0.038600,
		0.861542, -0.497963, 0.098882,
		38.568268, 34.260357, 25.990646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421726, 34.955505, 25.416327>,  <37.965191, 34.608929, 25.921429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421726, 34.955505, 25.416327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600086, 34.607784, 25.501631>,  <38.707104, 34.399151, 25.552813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600086, 34.607784, 25.501631>,  <38.421726, 34.955505, 25.416327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600086, 34.607784, 25.501631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240670, -0.113042, -0.964002,
		0.862120, 0.481174, 0.158810,
		0.445900, -0.869306, 0.213260,
		38.733856, 34.346992, 25.565609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147915, 35.016151, 25.178120>,  <38.421726, 34.955505, 25.416327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147915, 35.016151, 25.178120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047348, 34.630959, 25.217022>,  <38.987007, 34.399845, 25.240364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047348, 34.630959, 25.217022>,  <39.147915, 35.016151, 25.178120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047348, 34.630959, 25.217022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294958, -0.171935, -0.939914,
		0.921840, -0.207624, 0.327267,
		-0.251417, -0.962980, 0.097256,
		38.971924, 34.342064, 25.246199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727383, 34.743187, 24.827986>,  <39.147915, 35.016151, 25.178120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727383, 34.743187, 24.827986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448353, 34.458378, 24.860020>,  <39.280933, 34.287495, 24.879240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448353, 34.458378, 24.860020>,  <39.727383, 34.743187, 24.827986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448353, 34.458378, 24.860020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245618, -0.342626, -0.906796,
		0.673096, -0.612890, 0.413893,
		-0.697577, -0.712020, 0.080083,
		39.239079, 34.244770, 24.884045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100140, 34.098362, 24.572620>,  <39.727383, 34.743187, 24.827986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100140, 34.098362, 24.572620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706425, 34.041744, 24.530386>,  <39.470196, 34.007774, 24.505045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706425, 34.041744, 24.530386>,  <40.100140, 34.098362, 24.572620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706425, 34.041744, 24.530386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155341, -0.409688, -0.898902,
		0.083975, -0.901178, 0.425237,
		-0.984285, -0.141542, -0.105587,
		39.411140, 33.999283, 24.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014488, 33.543095, 24.347013>,  <40.100140, 34.098362, 24.572620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014488, 33.543095, 24.347013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641525, 33.643425, 24.242939>,  <39.417747, 33.703621, 24.180494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641525, 33.643425, 24.242939>,  <40.014488, 33.543095, 24.347013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641525, 33.643425, 24.242939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129079, -0.441328, -0.888013,
		-0.337560, -0.861579, 0.379124,
		-0.932412, 0.250821, -0.260187,
		39.361801, 33.718670, 24.164883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570900, 32.927910, 24.031723>,  <40.014488, 33.543095, 24.347013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570900, 32.927910, 24.031723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417419, 33.271740, 23.896725>,  <39.325329, 33.478039, 23.815725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417419, 33.271740, 23.896725>,  <39.570900, 32.927910, 24.031723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417419, 33.271740, 23.896725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038095, -0.350425, -0.935816,
		-0.922670, -0.371933, 0.101714,
		-0.383704, 0.859574, -0.337495,
		39.302307, 33.529613, 23.795477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033363, 32.704659, 23.610367>,  <39.570900, 32.927910, 24.031723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033363, 32.704659, 23.610367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147190, 33.063385, 23.474873>,  <39.215485, 33.278622, 23.393576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147190, 33.063385, 23.474873>,  <39.033363, 32.704659, 23.610367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147190, 33.063385, 23.474873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054149, -0.367814, -0.928322,
		-0.957127, 0.245824, -0.153228,
		0.284563, 0.896819, -0.338733,
		39.232559, 33.332432, 23.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644978, 32.741016, 23.067627>,  <39.033363, 32.704659, 23.610367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644978, 32.741016, 23.067627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918091, 33.028202, 23.013462>,  <39.081959, 33.200512, 22.980963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918091, 33.028202, 23.013462>,  <38.644978, 32.741016, 23.067627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918091, 33.028202, 23.013462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146256, -0.315898, -0.937453,
		-0.715830, 0.620275, -0.320696,
		0.682786, 0.717961, -0.135410,
		39.122925, 33.243591, 22.972839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399746, 33.055256, 22.501564>,  <38.644978, 32.741016, 23.067627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399746, 33.055256, 22.501564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785400, 33.156788, 22.532570>,  <39.016792, 33.217709, 22.551172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785400, 33.156788, 22.532570>,  <38.399746, 33.055256, 22.501564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785400, 33.156788, 22.532570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119364, -0.153855, -0.980857,
		-0.237048, 0.954933, -0.178636,
		0.964137, 0.253833, 0.077513,
		39.074642, 33.232937, 22.555824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525959, 33.572361, 21.981264>,  <38.399746, 33.055256, 22.501564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525959, 33.572361, 21.981264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893959, 33.431332, 22.049715>,  <39.114761, 33.346714, 22.090786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893959, 33.431332, 22.049715>,  <38.525959, 33.572361, 21.981264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893959, 33.431332, 22.049715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121307, -0.159026, -0.979794,
		0.372665, 0.922172, -0.103534,
		0.920003, -0.352575, 0.171129,
		39.169960, 33.325558, 22.101053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875046, 33.833420, 21.431688>,  <38.525959, 33.572361, 21.981264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875046, 33.833420, 21.431688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131615, 33.563782, 21.578207>,  <39.285557, 33.402000, 21.666119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131615, 33.563782, 21.578207>,  <38.875046, 33.833420, 21.431688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131615, 33.563782, 21.578207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346650, -0.171282, -0.922224,
		0.684406, 0.718512, 0.123811,
		0.641422, -0.674094, 0.366298,
		39.324039, 33.361553, 21.688097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489105, 34.008362, 21.135893>,  <38.875046, 33.833420, 21.431688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489105, 34.008362, 21.135893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510277, 33.619186, 21.225866>,  <39.522980, 33.385681, 21.279850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510277, 33.619186, 21.225866>,  <39.489105, 34.008362, 21.135893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510277, 33.619186, 21.225866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315190, -0.197460, -0.928259,
		0.947552, 0.120027, 0.296208,
		0.052927, -0.972935, 0.224934,
		39.526154, 33.327305, 21.293346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105072, 33.691978, 20.782869>,  <39.489105, 34.008362, 21.135893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105072, 33.691978, 20.782869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905159, 33.365582, 20.899055>,  <39.785210, 33.169743, 20.968767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905159, 33.365582, 20.899055>,  <40.105072, 33.691978, 20.782869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905159, 33.365582, 20.899055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380068, -0.507948, -0.773006,
		0.778310, -0.275937, 0.563996,
		-0.499781, -0.815995, 0.290466,
		39.755226, 33.120785, 20.986195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594296, 33.118767, 20.670700>,  <40.105072, 33.691978, 20.782869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594296, 33.118767, 20.670700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234745, 32.944000, 20.684139>,  <40.019016, 32.839138, 20.692204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234745, 32.944000, 20.684139>,  <40.594296, 33.118767, 20.670700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234745, 32.944000, 20.684139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284491, -0.640159, -0.713626,
		0.333305, -0.631901, 0.699721,
		-0.898873, -0.436919, 0.033598,
		39.965084, 32.812923, 20.694218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741043, 32.467052, 20.726553>,  <40.594296, 33.118767, 20.670700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741043, 32.467052, 20.726553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362282, 32.479557, 20.598551>,  <40.135025, 32.487061, 20.521749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362282, 32.479557, 20.598551>,  <40.741043, 32.467052, 20.726553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362282, 32.479557, 20.598551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244279, -0.577199, -0.779211,
		-0.209063, -0.816005, 0.538914,
		-0.946900, 0.031259, -0.320004,
		40.078213, 32.488934, 20.502550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590973, 31.704399, 20.488186>,  <40.741043, 32.467052, 20.726553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590973, 31.704399, 20.488186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316708, 31.952585, 20.335928>,  <40.152149, 32.101498, 20.244574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316708, 31.952585, 20.335928>,  <40.590973, 31.704399, 20.488186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316708, 31.952585, 20.335928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068251, -0.465822, -0.882243,
		-0.724713, -0.630900, 0.277049,
		-0.685662, 0.620464, -0.380647,
		40.111008, 32.138725, 20.221733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081421, 31.265263, 20.253298>,  <40.590973, 31.704399, 20.488186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081421, 31.265263, 20.253298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103851, 31.615772, 20.061882>,  <40.117310, 31.826078, 19.947033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103851, 31.615772, 20.061882>,  <40.081421, 31.265263, 20.253298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103851, 31.615772, 20.061882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072509, -0.481601, -0.873386,
		-0.995790, 0.014275, -0.090543,
		0.056073, 0.876274, -0.478538,
		40.120674, 31.878654, 19.918320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751968, 30.703270, 19.926455>,  <40.081421, 31.265263, 20.253298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751968, 30.703270, 19.926455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065273, 30.455879, 19.901188>,  <40.253254, 30.307444, 19.886028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065273, 30.455879, 19.901188>,  <39.751968, 30.703270, 19.926455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065273, 30.455879, 19.901188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019550, -0.077052, 0.996835,
		-0.621388, -0.782015, -0.048260,
		0.783259, -0.618479, -0.063167,
		40.300251, 30.270336, 19.882238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648975, 30.103825, 20.420506>,  <39.751968, 30.703270, 19.926455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648975, 30.103825, 20.420506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041275, 30.104784, 20.342400>,  <40.276653, 30.105360, 20.295536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041275, 30.104784, 20.342400>,  <39.648975, 30.103825, 20.420506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041275, 30.104784, 20.342400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194937, 0.047270, 0.979676,
		0.011579, -0.998879, 0.045893,
		0.980747, 0.002397, -0.195266,
		40.335499, 30.105505, 20.283819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972702, 29.571569, 20.840219>,  <39.648975, 30.103825, 20.420506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972702, 29.571569, 20.840219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282036, 29.811874, 20.759180>,  <40.467636, 29.956057, 20.710556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282036, 29.811874, 20.759180>,  <39.972702, 29.571569, 20.840219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282036, 29.811874, 20.759180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338265, -0.120697, 0.933279,
		0.536225, -0.790265, -0.296555,
		0.773330, 0.600761, -0.202598,
		40.514034, 29.992104, 20.698400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446877, 29.234978, 21.130114>,  <39.972702, 29.571569, 20.840219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446877, 29.234978, 21.130114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593735, 29.605051, 21.091673>,  <40.681850, 29.827095, 21.068609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.593735, 29.605051, 21.091673>,  <40.446877, 29.234978, 21.130114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593735, 29.605051, 21.091673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251289, 0.000817, 0.967912,
		0.895575, -0.379517, -0.232189,
		0.367150, 0.925184, -0.096100,
		40.703880, 29.882607, 21.062843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021706, 29.289793, 21.639709>,  <40.446877, 29.234978, 21.130114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021706, 29.289793, 21.639709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941299, 29.671137, 21.549646>,  <40.893055, 29.899942, 21.495609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941299, 29.671137, 21.549646>,  <41.021706, 29.289793, 21.639709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941299, 29.671137, 21.549646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257975, 0.273258, 0.926704,
		0.945008, 0.128199, -0.300873,
		-0.201019, 0.953360, -0.225158,
		40.880993, 29.957146, 21.482100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568581, 29.594551, 22.005585>,  <41.021706, 29.289793, 21.639709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568581, 29.594551, 22.005585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281250, 29.859549, 21.920635>,  <41.108852, 30.018547, 21.869665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281250, 29.859549, 21.920635>,  <41.568581, 29.594551, 22.005585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281250, 29.859549, 21.920635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108817, 0.408500, 0.906248,
		0.687140, 0.627875, -0.365529,
		-0.718329, 0.662495, -0.212373,
		41.065750, 30.058298, 21.856924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787949, 30.148968, 22.348688>,  <41.568581, 29.594551, 22.005585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787949, 30.148968, 22.348688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399670, 30.224451, 22.289177>,  <41.166702, 30.269741, 22.253469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399670, 30.224451, 22.289177>,  <41.787949, 30.148968, 22.348688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399670, 30.224451, 22.289177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048498, 0.452550, 0.890419,
		0.235358, 0.871544, -0.430138,
		-0.970698, 0.188707, -0.148779,
		41.108459, 30.281063, 22.244543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774818, 30.784428, 22.467287>,  <41.787949, 30.148968, 22.348688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774818, 30.784428, 22.467287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383018, 30.719097, 22.514469>,  <41.147938, 30.679899, 22.542778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383018, 30.719097, 22.514469>,  <41.774818, 30.784428, 22.467287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383018, 30.719097, 22.514469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003258, 0.572554, 0.819860,
		-0.201440, 0.803434, -0.560282,
		-0.979495, -0.163327, 0.117953,
		41.089169, 30.670099, 22.549854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388828, 31.503021, 22.673212>,  <41.774818, 30.784428, 22.467287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388828, 31.503021, 22.673212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163929, 31.192623, 22.787550>,  <41.028988, 31.006384, 22.856152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163929, 31.192623, 22.787550>,  <41.388828, 31.503021, 22.673212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163929, 31.192623, 22.787550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345734, 0.534568, 0.771171,
		-0.751228, 0.334765, -0.568848,
		-0.562249, -0.775996, 0.285843,
		40.995255, 30.959824, 22.873302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807980, 31.802765, 22.918474>,  <41.388828, 31.503021, 22.673212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807980, 31.802765, 22.918474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807919, 31.438541, 23.083826>,  <40.807880, 31.220007, 23.183037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807919, 31.438541, 23.083826>,  <40.807980, 31.802765, 22.918474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807919, 31.438541, 23.083826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400146, 0.378900, 0.834457,
		-0.916452, -0.165283, -0.364415,
		-0.000155, -0.910558, 0.413381,
		40.807873, 31.165375, 23.207840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190815, 31.872324, 23.308969>,  <40.807980, 31.802765, 22.918474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190815, 31.872324, 23.308969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371983, 31.554777, 23.471273>,  <40.480682, 31.364250, 23.568657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371983, 31.554777, 23.471273>,  <40.190815, 31.872324, 23.308969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371983, 31.554777, 23.471273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362853, 0.251584, 0.897242,
		-0.814372, -0.553610, -0.174110,
		0.452919, -0.793865, 0.405762,
		40.507858, 31.316618, 23.593002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706795, 31.697607, 23.729980>,  <40.190815, 31.872324, 23.308969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706795, 31.697607, 23.729980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042194, 31.527256, 23.865955>,  <40.243435, 31.425045, 23.947540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042194, 31.527256, 23.865955>,  <39.706795, 31.697607, 23.729980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042194, 31.527256, 23.865955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195435, 0.347299, 0.917163,
		-0.508658, -0.835472, 0.207977,
		0.838494, -0.425876, 0.339937,
		40.293743, 31.399494, 23.967936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526352, 31.179642, 24.341560>,  <39.706795, 31.697607, 23.729980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526352, 31.179642, 24.341560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888931, 31.348215, 24.352467>,  <40.106480, 31.449360, 24.359011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888931, 31.348215, 24.352467>,  <39.526352, 31.179642, 24.341560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888931, 31.348215, 24.352467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153337, 0.268275, 0.951061,
		0.393496, -0.866268, 0.307799,
		0.906448, 0.421435, 0.027266,
		40.160866, 31.474646, 24.360647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764862, 30.947632, 25.006580>,  <39.526352, 31.179642, 24.341560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764862, 30.947632, 25.006580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020218, 31.245674, 24.929350>,  <40.173431, 31.424500, 24.883013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020218, 31.245674, 24.929350>,  <39.764862, 30.947632, 25.006580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020218, 31.245674, 24.929350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090973, 0.322120, 0.942317,
		0.764318, -0.584002, 0.273423,
		0.638390, 0.745104, -0.193074,
		40.211735, 31.469206, 24.871428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285679, 30.864559, 25.451887>,  <39.764862, 30.947632, 25.006580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285679, 30.864559, 25.451887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275612, 31.248108, 25.338797>,  <40.269573, 31.478237, 25.270943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275612, 31.248108, 25.338797>,  <40.285679, 30.864559, 25.451887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275612, 31.248108, 25.338797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100591, 0.278949, 0.955023,
		0.994609, 0.052475, 0.089433,
		-0.025167, 0.958871, -0.282724,
		40.268063, 31.535769, 25.253979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679741, 31.070343, 26.009676>,  <40.285679, 30.864559, 25.451887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679741, 31.070343, 26.009676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528316, 31.399391, 25.839979>,  <40.437462, 31.596821, 25.738161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528316, 31.399391, 25.839979>,  <40.679741, 31.070343, 26.009676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528316, 31.399391, 25.839979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218047, 0.366194, 0.904631,
		0.899525, 0.434965, 0.040743,
		-0.378563, 0.822622, -0.424244,
		40.414749, 31.646177, 25.712706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009216, 31.569614, 26.390018>,  <40.679741, 31.070343, 26.009676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009216, 31.569614, 26.390018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682072, 31.744898, 26.240843>,  <40.485786, 31.850067, 26.151339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682072, 31.744898, 26.240843>,  <41.009216, 31.569614, 26.390018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682072, 31.744898, 26.240843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245136, 0.321024, 0.914796,
		0.520594, 0.839593, -0.155131,
		-0.817857, 0.438209, -0.372938,
		40.436714, 31.876360, 26.128962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008232, 32.302067, 26.701189>,  <41.009216, 31.569614, 26.390018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008232, 32.302067, 26.701189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641182, 32.201027, 26.578453>,  <40.420952, 32.140404, 26.504812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.641182, 32.201027, 26.578453>,  <41.008232, 32.302067, 26.701189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641182, 32.201027, 26.578453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351517, 0.155581, 0.923163,
		-0.185453, 0.954981, -0.231559,
		-0.917629, -0.252600, -0.306838,
		40.365894, 32.125248, 26.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620094, 32.864208, 26.946165>,  <41.008232, 32.302067, 26.701189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620094, 32.864208, 26.946165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358738, 32.572044, 26.866581>,  <40.201923, 32.396748, 26.818830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358738, 32.572044, 26.866581>,  <40.620094, 32.864208, 26.946165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358738, 32.572044, 26.866581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410694, 0.121230, 0.903678,
		-0.635936, 0.672164, -0.379185,
		-0.653389, -0.730410, -0.198959,
		40.162720, 32.352921, 26.806892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943401, 33.161858, 26.981573>,  <40.620094, 32.864208, 26.946165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943401, 33.161858, 26.981573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917900, 32.765419, 27.028332>,  <39.902599, 32.527557, 27.056387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917900, 32.765419, 27.028332>,  <39.943401, 33.161858, 26.981573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917900, 32.765419, 27.028332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460136, 0.133133, 0.877810,
		-0.885557, 0.002176, -0.464527,
		-0.063754, -0.991096, 0.116895,
		39.898773, 32.468090, 27.063400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380836, 33.132431, 27.454380>,  <39.943401, 33.161858, 26.981573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380836, 33.132431, 27.454380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536572, 32.764824, 27.479109>,  <39.630013, 32.544258, 27.493946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536572, 32.764824, 27.479109>,  <39.380836, 33.132431, 27.454380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536572, 32.764824, 27.479109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231355, -0.032603, 0.972323,
		-0.891566, -0.392867, -0.225313,
		0.389340, -0.919017, 0.061824,
		39.653374, 32.489120, 27.497656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917652, 32.747375, 27.845558>,  <39.380836, 33.132431, 27.454380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917652, 32.747375, 27.845558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265541, 32.555027, 27.890007>,  <39.474274, 32.439617, 27.916676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265541, 32.555027, 27.890007>,  <38.917652, 32.747375, 27.845558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265541, 32.555027, 27.890007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216367, -0.169135, 0.961550,
		-0.443585, -0.860325, -0.251144,
		0.869723, -0.480869, 0.111120,
		39.526459, 32.410767, 27.923344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798779, 32.068836, 28.197914>,  <38.917652, 32.747375, 27.845558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798779, 32.068836, 28.197914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163826, 32.224651, 28.247519>,  <39.382854, 32.318142, 28.277281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163826, 32.224651, 28.247519>,  <38.798779, 32.068836, 28.197914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163826, 32.224651, 28.247519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069686, -0.150677, 0.986124,
		0.402822, -0.908600, -0.110365,
		0.912622, 0.389541, 0.124013,
		39.437614, 32.341515, 28.284721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955627, 31.701870, 28.790972>,  <38.798779, 32.068836, 28.197914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955627, 31.701870, 28.790972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217167, 32.002571, 28.756687>,  <39.374092, 32.182991, 28.736116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217167, 32.002571, 28.756687>,  <38.955627, 31.701870, 28.790972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217167, 32.002571, 28.756687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102971, 0.200643, 0.974238,
		0.749582, -0.628182, 0.208599,
		0.653853, 0.751751, -0.085713,
		39.413322, 32.228096, 28.730972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370247, 31.453096, 29.207573>,  <38.955627, 31.701870, 28.790972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370247, 31.453096, 29.207573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481834, 31.836586, 29.185560>,  <39.548786, 32.066681, 29.172354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481834, 31.836586, 29.185560>,  <39.370247, 31.453096, 29.207573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481834, 31.836586, 29.185560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007787, 0.055045, 0.998453,
		0.960268, -0.278966, 0.007891,
		0.278969, 0.958722, -0.055030,
		39.565525, 32.124203, 29.169050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905079, 31.479126, 29.717190>,  <39.370247, 31.453096, 29.207573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905079, 31.479126, 29.717190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784294, 31.854122, 29.647989>,  <39.711823, 32.079121, 29.606468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784294, 31.854122, 29.647989>,  <39.905079, 31.479126, 29.717190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784294, 31.854122, 29.647989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049377, 0.165849, 0.984914,
		0.952039, 0.305953, -0.003790,
		-0.301966, 0.937490, -0.173001,
		39.693703, 32.135368, 29.596088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218117, 31.782774, 30.168045>,  <39.905079, 31.479126, 29.717190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218117, 31.782774, 30.168045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922432, 32.037502, 30.080383>,  <39.745022, 32.190338, 30.027786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922432, 32.037502, 30.080383>,  <40.218117, 31.782774, 30.168045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922432, 32.037502, 30.080383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148058, 0.163782, 0.975323,
		0.656997, 0.753417, -0.026783,
		-0.739211, 0.636819, -0.219154,
		39.700668, 32.228546, 30.014637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282761, 32.360519, 30.614609>,  <40.218117, 31.782774, 30.168045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282761, 32.360519, 30.614609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903030, 32.403740, 30.496555>,  <39.675190, 32.429672, 30.425724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903030, 32.403740, 30.496555>,  <40.282761, 32.360519, 30.614609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903030, 32.403740, 30.496555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257804, 0.269391, 0.927882,
		0.179764, 0.956950, -0.227885,
		-0.949327, 0.108050, -0.295132,
		39.618233, 32.436153, 30.408016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083637, 32.889381, 30.948463>,  <40.282761, 32.360519, 30.614609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083637, 32.889381, 30.948463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735245, 32.712795, 30.862219>,  <39.526207, 32.606842, 30.810472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735245, 32.712795, 30.862219>,  <40.083637, 32.889381, 30.948463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735245, 32.712795, 30.862219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266604, 0.056068, 0.962174,
		-0.412682, 0.895523, -0.166532,
		-0.870986, -0.441470, -0.215612,
		39.473949, 32.580353, 30.797535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595791, 33.306362, 31.290293>,  <40.083637, 32.889381, 30.948463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595791, 33.306362, 31.290293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427570, 32.947269, 31.237795>,  <39.326637, 32.731815, 31.206295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427570, 32.947269, 31.237795>,  <39.595791, 33.306362, 31.290293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427570, 32.947269, 31.237795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213365, -0.042742, 0.976037,
		-0.881825, 0.438473, -0.173569,
		-0.420548, -0.897727, -0.131246,
		39.301407, 32.677952, 31.198421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917164, 33.343681, 31.702124>,  <39.595791, 33.306362, 31.290293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917164, 33.343681, 31.702124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989017, 32.956669, 31.630999>,  <39.032131, 32.724461, 31.588324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989017, 32.956669, 31.630999>,  <38.917164, 33.343681, 31.702124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989017, 32.956669, 31.630999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246655, -0.219276, 0.943970,
		-0.952310, -0.125710, -0.278035,
		0.179633, -0.967530, -0.177812,
		39.042908, 32.666409, 31.577656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268398, 32.954472, 31.933863>,  <38.917164, 33.343681, 31.702124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268398, 32.954472, 31.933863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574055, 32.696587, 31.925570>,  <38.757450, 32.541855, 31.920593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574055, 32.696587, 31.925570>,  <38.268398, 32.954472, 31.933863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574055, 32.696587, 31.925570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237535, -0.311129, 0.920205,
		-0.599719, -0.698243, -0.390888,
		0.764143, -0.644713, -0.020733,
		38.803299, 32.503174, 31.919350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007450, 32.375111, 32.216076>,  <38.268398, 32.954472, 31.933863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007450, 32.375111, 32.216076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395782, 32.282623, 32.241474>,  <38.628780, 32.227131, 32.256714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395782, 32.282623, 32.241474>,  <38.007450, 32.375111, 32.216076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395782, 32.282623, 32.241474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133277, -0.300233, 0.944509,
		-0.199327, -0.925418, -0.322291,
		0.970827, -0.231220, 0.063492,
		38.687031, 32.213257, 32.260521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097347, 31.800310, 32.530838>,  <38.007450, 32.375111, 32.216076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097347, 31.800310, 32.530838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468506, 31.942917, 32.574493>,  <38.691200, 32.028481, 32.600685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468506, 31.942917, 32.574493>,  <38.097347, 31.800310, 32.530838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468506, 31.942917, 32.574493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057978, -0.427119, 0.902335,
		0.368312, -0.830942, -0.416991,
		0.927892, 0.356517, 0.109137,
		38.746872, 32.049873, 32.607235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373428, 31.171453, 32.710114>,  <38.097347, 31.800310, 32.530838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373428, 31.171453, 32.710114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626423, 31.456985, 32.830383>,  <38.778221, 31.628305, 32.902546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.626423, 31.456985, 32.830383>,  <38.373428, 31.171453, 32.710114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626423, 31.456985, 32.830383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130282, -0.480695, 0.867155,
		0.763536, -0.509291, -0.397032,
		0.632486, 0.713831, 0.300677,
		38.816170, 31.671135, 32.920586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939270, 30.879196, 32.935783>,  <38.373428, 31.171453, 32.710114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939270, 30.879196, 32.935783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933208, 31.241753, 33.104649>,  <38.929573, 31.459288, 33.205967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933208, 31.241753, 33.104649>,  <38.939270, 30.879196, 32.935783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933208, 31.241753, 33.104649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059315, -0.420655, 0.905280,
		0.998124, 0.038756, -0.047389,
		-0.015151, 0.906392, 0.422165,
		38.928661, 31.513670, 33.231297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450737, 30.823622, 33.388149>,  <38.939270, 30.879196, 32.935783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450737, 30.823622, 33.388149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229202, 31.132545, 33.512600>,  <39.096283, 31.317900, 33.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229202, 31.132545, 33.512600>,  <39.450737, 30.823622, 33.388149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229202, 31.132545, 33.512600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118425, -0.296803, 0.947567,
		0.824159, 0.561644, 0.072920,
		-0.553838, 0.772311, 0.311125,
		39.063049, 31.364239, 33.605938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870293, 31.172186, 33.913822>,  <39.450737, 30.823622, 33.388149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870293, 31.172186, 33.913822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486195, 31.270035, 33.967628>,  <39.255737, 31.328745, 33.999912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486195, 31.270035, 33.967628>,  <39.870293, 31.172186, 33.913822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486195, 31.270035, 33.967628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039331, -0.358502, 0.932700,
		0.276384, 0.900909, 0.334627,
		-0.960242, 0.244623, 0.134518,
		39.198120, 31.343422, 34.007984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821392, 31.414997, 34.572876>,  <39.870293, 31.172186, 33.913822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821392, 31.414997, 34.572876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448784, 31.309399, 34.472809>,  <39.225220, 31.246040, 34.412769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448784, 31.309399, 34.472809>,  <39.821392, 31.414997, 34.572876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448784, 31.309399, 34.472809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142675, -0.367449, 0.919035,
		-0.334543, 0.891789, 0.304620,
		-0.931517, -0.263995, -0.250163,
		39.169327, 31.230200, 34.397758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324295, 31.659979, 35.086418>,  <39.821392, 31.414997, 34.572876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324295, 31.659979, 35.086418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159058, 31.341675, 34.909275>,  <39.059914, 31.150692, 34.802990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159058, 31.341675, 34.909275>,  <39.324295, 31.659979, 35.086418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159058, 31.341675, 34.909275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321346, -0.327642, 0.888475,
		-0.852110, 0.509333, -0.120368,
		-0.413092, -0.795758, -0.442859,
		39.035130, 31.102947, 34.776417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599060, 31.740217, 35.165863>,  <39.324295, 31.659979, 35.086418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599060, 31.740217, 35.165863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739037, 31.367311, 35.129162>,  <38.823025, 31.143568, 35.107140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739037, 31.367311, 35.129162>,  <38.599060, 31.740217, 35.165863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739037, 31.367311, 35.129162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461385, -0.256770, 0.849231,
		-0.815269, -0.254848, -0.519989,
		0.349943, -0.932266, -0.091754,
		38.844021, 31.087631, 35.101635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012054, 31.246117, 35.234547>,  <38.599060, 31.740217, 35.165863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012054, 31.246117, 35.234547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338654, 31.023489, 35.295940>,  <38.534615, 30.889912, 35.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338654, 31.023489, 35.295940>,  <38.012054, 31.246117, 35.234547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338654, 31.023489, 35.295940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443131, -0.433734, 0.784545,
		-0.370080, -0.708596, -0.600776,
		0.816503, -0.556567, 0.153485,
		38.583603, 30.856518, 35.341984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728428, 30.638636, 35.406330>,  <38.012054, 31.246117, 35.234547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728428, 30.638636, 35.406330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103943, 30.652382, 35.543438>,  <38.329254, 30.660629, 35.625702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103943, 30.652382, 35.543438>,  <37.728428, 30.638636, 35.406330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103943, 30.652382, 35.543438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330161, -0.194207, 0.923730,
		0.098315, -0.980358, -0.170973,
		0.938791, 0.034368, 0.342769,
		38.385582, 30.662691, 35.646267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837906, 30.001457, 35.793571>,  <37.728428, 30.638636, 35.406330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837906, 30.001457, 35.793571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098049, 30.266012, 35.943024>,  <38.254135, 30.424746, 36.032696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.098049, 30.266012, 35.943024>,  <37.837906, 30.001457, 35.793571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098049, 30.266012, 35.943024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208624, -0.317431, 0.925048,
		0.730418, -0.679560, -0.068462,
		0.650358, 0.661389, 0.373630,
		38.293156, 30.464430, 36.055111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160786, 29.570343, 36.368263>,  <37.837906, 30.001457, 35.793571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160786, 29.570343, 36.368263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257866, 29.945486, 36.467476>,  <38.316113, 30.170572, 36.527004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257866, 29.945486, 36.467476>,  <38.160786, 29.570343, 36.368263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257866, 29.945486, 36.467476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250894, -0.186294, 0.949919,
		0.937097, -0.292771, 0.190090,
		0.242696, 0.937859, 0.248031,
		38.330673, 30.226843, 36.541885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552811, 29.538715, 36.929390>,  <38.160786, 29.570343, 36.368263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552811, 29.538715, 36.929390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445107, 29.921473, 36.972942>,  <38.380486, 30.151127, 36.999073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445107, 29.921473, 36.972942>,  <38.552811, 29.538715, 36.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445107, 29.921473, 36.972942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009759, -0.110339, 0.993846,
		0.963017, 0.268668, 0.020371,
		-0.269262, 0.956892, 0.108881,
		38.364326, 30.208540, 37.005608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765289, 29.716219, 37.607441>,  <38.552811, 29.538715, 36.929390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765289, 29.716219, 37.607441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521019, 30.021339, 37.522392>,  <38.374454, 30.204412, 37.471363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521019, 30.021339, 37.522392>,  <38.765289, 29.716219, 37.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521019, 30.021339, 37.522392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134403, 0.164759, 0.977134,
		0.780389, 0.625292, 0.001908,
		-0.610680, 0.762800, -0.212617,
		38.337814, 30.250179, 37.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995308, 30.228794, 38.034973>,  <38.765289, 29.716219, 37.607441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995308, 30.228794, 38.034973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608490, 30.275606, 37.944534>,  <38.376400, 30.303694, 37.890270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608490, 30.275606, 37.944534>,  <38.995308, 30.228794, 38.034973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608490, 30.275606, 37.944534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197236, 0.217159, 0.956002,
		0.160980, 0.969095, -0.186921,
		-0.967049, 0.117030, -0.226099,
		38.318375, 30.310715, 37.876705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758209, 30.855349, 38.350601>,  <38.995308, 30.228794, 38.034973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758209, 30.855349, 38.350601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446926, 30.609325, 38.299850>,  <38.260159, 30.461712, 38.269398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446926, 30.609325, 38.299850>,  <38.758209, 30.855349, 38.350601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446926, 30.609325, 38.299850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171354, 0.013589, 0.985116,
		-0.604181, 0.788364, -0.115968,
		-0.778205, -0.615060, -0.126879,
		38.213463, 30.424807, 38.261787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165203, 31.282869, 38.658764>,  <38.758209, 30.855349, 38.350601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165203, 31.282869, 38.658764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092522, 30.890791, 38.627258>,  <38.048912, 30.655544, 38.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.092522, 30.890791, 38.627258>,  <38.165203, 31.282869, 38.658764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092522, 30.890791, 38.627258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153444, -0.050852, 0.986848,
		-0.971309, 0.191395, -0.141166,
		-0.181699, -0.980195, -0.078761,
		38.038013, 30.596733, 38.603630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975475, 31.085115, 39.246410>,  <38.165203, 31.282869, 38.658764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975475, 31.085115, 39.246410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876984, 30.725039, 39.102730>,  <37.817886, 30.508993, 39.016521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876984, 30.725039, 39.102730>,  <37.975475, 31.085115, 39.246410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876984, 30.725039, 39.102730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208770, -0.312652, 0.926641,
		-0.946459, 0.303160, -0.110948,
		-0.246233, -0.900190, -0.359203,
		37.803112, 30.454981, 38.994968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331104, 31.009634, 39.389957>,  <37.975475, 31.085115, 39.246410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331104, 31.009634, 39.389957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439884, 30.633572, 39.307835>,  <37.505150, 30.407934, 39.258560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439884, 30.633572, 39.307835>,  <37.331104, 31.009634, 39.389957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439884, 30.633572, 39.307835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544513, -0.326242, 0.772704,
		-0.793442, -0.098343, -0.600648,
		0.271946, -0.940157, -0.205305,
		37.521469, 30.351524, 39.246243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782433, 30.744719, 39.665985>,  <37.331104, 31.009634, 39.389957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782433, 30.744719, 39.665985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081337, 30.478977, 39.659775>,  <37.260677, 30.319532, 39.656048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081337, 30.478977, 39.659775>,  <36.782433, 30.744719, 39.665985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081337, 30.478977, 39.659775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369832, -0.435166, 0.820887,
		-0.552112, -0.607674, -0.570880,
		0.747259, -0.664351, -0.015524,
		37.305515, 30.279671, 39.655117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516769, 30.013218, 39.707817>,  <36.782433, 30.744719, 39.665985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516769, 30.013218, 39.707817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887787, 30.031427, 39.856190>,  <37.110397, 30.042353, 39.945213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887787, 30.031427, 39.856190>,  <36.516769, 30.013218, 39.707817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887787, 30.031427, 39.856190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320330, -0.414386, 0.851864,
		0.192491, -0.908962, -0.369778,
		0.927543, 0.045525, 0.370933,
		37.166050, 30.045084, 39.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729267, 29.339811, 39.777828>,  <36.516769, 30.013218, 39.707817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729267, 29.339811, 39.777828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902325, 29.568544, 40.056633>,  <37.006161, 29.705784, 40.223915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902325, 29.568544, 40.056633>,  <36.729267, 29.339811, 39.777828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902325, 29.568544, 40.056633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489346, -0.500379, 0.714256,
		0.757204, -0.650100, 0.063336,
		0.432646, 0.571831, 0.697013,
		37.032120, 29.740093, 40.265736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974880, 28.926386, 40.374352>,  <36.729267, 29.339811, 39.777828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974880, 28.926386, 40.374352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944584, 29.281561, 40.555828>,  <36.926407, 29.494665, 40.664715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944584, 29.281561, 40.555828>,  <36.974880, 28.926386, 40.374352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944584, 29.281561, 40.555828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587988, -0.407243, 0.698872,
		0.805315, -0.213831, 0.552941,
		-0.075741, 0.887935, 0.453689,
		36.921860, 29.547941, 40.691936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036396, 28.790142, 41.084618>,  <36.974880, 28.926386, 40.374352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036396, 28.790142, 41.084618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891708, 29.163054, 41.082989>,  <36.804893, 29.386801, 41.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891708, 29.163054, 41.082989>,  <37.036396, 28.790142, 41.084618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891708, 29.163054, 41.082989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628371, -0.240575, 0.739779,
		0.688700, 0.270153, 0.672838,
		-0.361722, 0.932277, -0.004072,
		36.783192, 29.442738, 41.081768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999310, 28.977673, 41.761578>,  <37.036396, 28.790142, 41.084618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999310, 28.977673, 41.761578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740257, 29.224602, 41.582920>,  <36.584827, 29.372759, 41.475727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740257, 29.224602, 41.582920>,  <36.999310, 28.977673, 41.761578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740257, 29.224602, 41.582920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651608, -0.144869, 0.744594,
		0.394949, 0.773257, 0.496074,
		-0.647628, 0.617322, -0.446644,
		36.545967, 29.409798, 41.448925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867062, 29.538715, 42.223843>,  <36.999310, 28.977673, 41.761578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867062, 29.538715, 42.223843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568012, 29.526049, 41.958492>,  <36.388584, 29.518448, 41.799282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568012, 29.526049, 41.958492>,  <36.867062, 29.538715, 42.223843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568012, 29.526049, 41.958492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662981, -0.023088, 0.748280,
		-0.039012, 0.999232, -0.003733,
		-0.747619, -0.031666, -0.663373,
		36.343727, 29.516548, 41.759480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489445, 30.014523, 42.407162>,  <36.867062, 29.538715, 42.223843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489445, 30.014523, 42.407162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248898, 29.760305, 42.213486>,  <36.104568, 29.607775, 42.097279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248898, 29.760305, 42.213486>,  <36.489445, 30.014523, 42.407162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248898, 29.760305, 42.213486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507276, -0.164491, 0.845940,
		-0.617278, 0.754338, -0.223478,
		-0.601365, -0.635544, -0.484195,
		36.068489, 29.569643, 42.068226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752071, 30.138796, 42.664005>,  <36.489445, 30.014523, 42.407162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752071, 30.138796, 42.664005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770859, 29.777245, 42.493927>,  <35.782131, 29.560314, 42.391880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770859, 29.777245, 42.493927>,  <35.752071, 30.138796, 42.664005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770859, 29.777245, 42.493927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523165, -0.384875, 0.760374,
		-0.850936, 0.186740, -0.490954,
		0.046964, -0.903880, -0.425200,
		35.784946, 29.506081, 42.366367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041748, 29.674229, 42.536919>,  <35.752071, 30.138796, 42.664005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041748, 29.674229, 42.536919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352848, 29.422915, 42.544510>,  <35.539509, 29.272125, 42.549065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352848, 29.422915, 42.544510>,  <35.041748, 29.674229, 42.536919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352848, 29.422915, 42.544510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540973, -0.653684, 0.529193,
		-0.320079, -0.421847, -0.848289,
		0.777752, -0.628285, 0.018977,
		35.586174, 29.234428, 42.550201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867859, 28.906223, 42.363003>,  <35.041748, 29.674229, 42.536919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867859, 28.906223, 42.363003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181053, 28.886047, 42.611000>,  <35.368969, 28.873941, 42.759800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181053, 28.886047, 42.611000>,  <34.867859, 28.906223, 42.363003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181053, 28.886047, 42.611000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542136, -0.544050, 0.640390,
		0.305007, -0.837536, -0.453327,
		0.782981, -0.050442, 0.619997,
		35.415947, 28.870914, 42.797001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094936, 28.165783, 42.567619>,  <34.867859, 28.906223, 42.363003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094936, 28.165783, 42.567619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154087, 28.454559, 42.838005>,  <35.189575, 28.627825, 43.000237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154087, 28.454559, 42.838005>,  <35.094936, 28.165783, 42.567619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154087, 28.454559, 42.838005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632799, -0.456199, 0.625658,
		0.760065, -0.520271, 0.389384,
		0.147875, 0.721942, 0.675968,
		35.198448, 28.671143, 43.040794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252022, 28.580612, 41.848186>,  <35.094936, 28.165783, 42.567619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252022, 28.580612, 41.848186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279629, 28.974976, 41.909138>,  <35.296192, 29.211594, 41.945709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279629, 28.974976, 41.909138>,  <35.252022, 28.580612, 41.848186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279629, 28.974976, 41.909138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607505, 0.079616, -0.790315,
		-0.791311, 0.147116, -0.593450,
		0.069020, 0.985910, 0.152375,
		35.300335, 29.270748, 41.954849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277622, 28.925655, 41.245323>,  <35.252022, 28.580612, 41.848186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277622, 28.925655, 41.245323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460777, 29.170048, 41.503639>,  <35.570671, 29.316683, 41.658627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460777, 29.170048, 41.503639>,  <35.277622, 28.925655, 41.245323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460777, 29.170048, 41.503639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687384, 0.217343, -0.693012,
		-0.563775, 0.761224, -0.320461,
		0.457887, 0.610983, 0.645786,
		35.598145, 29.353342, 41.697376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325035, 29.597744, 40.889683>,  <35.277622, 28.925655, 41.245323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325035, 29.597744, 40.889683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618137, 29.581980, 41.161423>,  <35.793999, 29.572521, 41.324467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618137, 29.581980, 41.161423>,  <35.325035, 29.597744, 40.889683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618137, 29.581980, 41.161423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623064, 0.440256, -0.646503,
		-0.273610, 0.897007, 0.347155,
		0.732755, -0.039410, 0.679351,
		35.837963, 29.570156, 41.365227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697041, 30.279652, 40.904118>,  <35.325035, 29.597744, 40.889683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697041, 30.279652, 40.904118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955444, 30.022537, 41.068802>,  <36.110485, 29.868269, 41.167614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955444, 30.022537, 41.068802>,  <35.697041, 30.279652, 40.904118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955444, 30.022537, 41.068802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742275, 0.403165, -0.535243,
		0.178059, 0.651372, 0.737570,
		0.646005, -0.642785, 0.411710,
		36.149246, 29.829702, 41.192314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205566, 30.616337, 41.087959>,  <35.697041, 30.279652, 40.904118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205566, 30.616337, 41.087959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380676, 30.256702, 41.088577>,  <36.485741, 30.040922, 41.088947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380676, 30.256702, 41.088577>,  <36.205566, 30.616337, 41.087959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380676, 30.256702, 41.088577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773117, 0.375560, -0.511121,
		0.458959, 0.224953, 0.859508,
		0.437774, -0.899084, 0.001548,
		36.512009, 29.986977, 41.089043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951611, 30.651953, 41.368790>,  <36.205566, 30.616337, 41.087959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951611, 30.651953, 41.368790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912632, 30.343142, 41.117561>,  <36.889244, 30.157854, 40.966824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912632, 30.343142, 41.117561>,  <36.951611, 30.651953, 41.368790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912632, 30.343142, 41.117561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777015, 0.335326, -0.532733,
		0.621895, -0.539932, 0.567204,
		-0.097442, -0.772030, -0.628073,
		36.883400, 30.111532, 40.929138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631123, 30.330093, 41.208221>,  <36.951611, 30.651953, 41.368790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631123, 30.330093, 41.208221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436989, 30.159449, 40.902946>,  <37.320507, 30.057062, 40.719780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436989, 30.159449, 40.902946>,  <37.631123, 30.330093, 41.208221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436989, 30.159449, 40.902946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732497, 0.278205, -0.621329,
		0.477389, -0.860584, 0.177470,
		-0.485333, -0.426612, -0.763187,
		37.291389, 30.031466, 40.673992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164066, 29.979160, 40.870312>,  <37.631123, 30.330093, 41.208221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164066, 29.979160, 40.870312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840340, 30.033724, 40.641785>,  <37.646103, 30.066462, 40.504669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840340, 30.033724, 40.641785>,  <38.164066, 29.979160, 40.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840340, 30.033724, 40.641785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587274, 0.205939, -0.782751,
		0.010881, -0.969011, -0.246780,
		-0.809315, 0.136410, -0.571315,
		37.597546, 30.074646, 40.470390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448242, 30.057930, 40.277161>,  <38.164066, 29.979160, 40.870312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448242, 30.057930, 40.277161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059113, 30.035076, 40.187412>,  <37.825634, 30.021364, 40.133564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059113, 30.035076, 40.187412>,  <38.448242, 30.057930, 40.277161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059113, 30.035076, 40.187412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226914, -0.042615, -0.972982,
		0.046030, -0.997456, 0.054422,
		-0.972827, -0.057136, -0.224375,
		37.767265, 30.017937, 40.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350868, 29.462942, 39.793308>,  <38.448242, 30.057930, 40.277161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350868, 29.462942, 39.793308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037308, 29.705866, 39.741653>,  <37.849171, 29.851620, 39.710659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037308, 29.705866, 39.741653>,  <38.350868, 29.462942, 39.793308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037308, 29.705866, 39.741653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086637, -0.098963, -0.991313,
		-0.614812, -0.788279, 0.024962,
		-0.783901, 0.607308, -0.129138,
		37.802139, 29.888058, 39.702911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989330, 29.121731, 39.374557>,  <38.350868, 29.462942, 39.793308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989330, 29.121731, 39.374557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894306, 29.507883, 39.331463>,  <37.837292, 29.739574, 39.305607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894306, 29.507883, 39.331463>,  <37.989330, 29.121731, 39.374557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894306, 29.507883, 39.331463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102109, -0.085483, -0.991094,
		-0.965990, -0.246449, -0.078267,
		-0.237563, 0.965378, -0.107740,
		37.823036, 29.797497, 39.299141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757355, 29.213074, 38.607971>,  <37.989330, 29.121731, 39.374557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757355, 29.213074, 38.607971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768150, 29.593885, 38.729897>,  <37.774628, 29.822372, 38.803051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768150, 29.593885, 38.729897>,  <37.757355, 29.213074, 38.607971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768150, 29.593885, 38.729897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173807, 0.304746, -0.936441,
		-0.984410, -0.027703, 0.173694,
		0.026990, 0.952031, 0.304810,
		37.776249, 29.879494, 38.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094688, 29.596848, 38.793964>,  <37.757355, 29.213074, 38.607971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094688, 29.596848, 38.793964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387909, 29.825857, 38.647076>,  <37.563843, 29.963263, 38.558941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387909, 29.825857, 38.647076>,  <37.094688, 29.596848, 38.793964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387909, 29.825857, 38.647076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462736, 0.024082, -0.886169,
		-0.498508, 0.819535, 0.282580,
		0.733052, 0.572523, -0.367223,
		37.607826, 29.997614, 38.536907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241161, 29.913843, 38.104744>,  <37.094688, 29.596848, 38.793964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241161, 29.913843, 38.104744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497009, 30.220100, 38.132107>,  <37.650517, 30.403854, 38.148525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497009, 30.220100, 38.132107>,  <37.241161, 29.913843, 38.104744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497009, 30.220100, 38.132107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257434, -0.129505, -0.957578,
		-0.724305, 0.630093, -0.279936,
		0.639617, 0.765644, 0.068406,
		37.688896, 30.449793, 38.152630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095425, 30.393419, 37.554657>,  <37.241161, 29.913843, 38.104744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095425, 30.393419, 37.554657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482849, 30.402340, 37.653767>,  <37.715305, 30.407692, 37.713234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482849, 30.402340, 37.653767>,  <37.095425, 30.393419, 37.554657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482849, 30.402340, 37.653767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248764, -0.096601, -0.963735,
		0.002442, 0.995073, -0.099112,
		0.968561, 0.022303, 0.247774,
		37.773418, 30.409031, 37.728100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318344, 30.887953, 37.034237>,  <37.095425, 30.393419, 37.554657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318344, 30.887953, 37.034237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642040, 30.704441, 37.181011>,  <37.836258, 30.594334, 37.269077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642040, 30.704441, 37.181011>,  <37.318344, 30.887953, 37.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642040, 30.704441, 37.181011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413201, 0.000503, -0.910640,
		0.417600, 0.888549, 0.189976,
		0.809244, -0.458781, 0.366939,
		37.884815, 30.566807, 37.291092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988605, 31.386395, 36.992634>,  <37.318344, 30.887953, 37.034237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988605, 31.386395, 36.992634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112831, 31.007147, 36.965450>,  <38.187366, 30.779598, 36.949139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112831, 31.007147, 36.965450>,  <37.988605, 31.386395, 36.992634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112831, 31.007147, 36.965450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473259, 0.216229, -0.853974,
		0.824365, 0.233047, 0.515859,
		0.310560, -0.948121, -0.067960,
		38.205997, 30.722710, 36.945061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612720, 31.478683, 36.717129>,  <37.988605, 31.386395, 36.992634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612720, 31.478683, 36.717129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533123, 31.090452, 36.662907>,  <38.485363, 30.857513, 36.630375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533123, 31.090452, 36.662907>,  <38.612720, 31.478683, 36.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533123, 31.090452, 36.662907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397024, 0.046615, -0.916624,
		0.895975, -0.236224, 0.376067,
		-0.198998, -0.970580, -0.135553,
		38.473423, 30.799278, 36.622242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250942, 31.188663, 36.459309>,  <38.612720, 31.478683, 36.717129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250942, 31.188663, 36.459309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957809, 30.945919, 36.336224>,  <38.781929, 30.800272, 36.262375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957809, 30.945919, 36.336224>,  <39.250942, 31.188663, 36.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957809, 30.945919, 36.336224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400822, -0.019591, -0.915947,
		0.549823, -0.794567, 0.257599,
		-0.732828, -0.606860, -0.307708,
		38.737961, 30.763861, 36.243912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501629, 30.448048, 36.231911>,  <39.250942, 31.188663, 36.459309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501629, 30.448048, 36.231911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167656, 30.535469, 36.029873>,  <38.967274, 30.587921, 35.908649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167656, 30.535469, 36.029873>,  <39.501629, 30.448048, 36.231911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167656, 30.535469, 36.029873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449974, -0.257342, -0.855160,
		-0.316878, -0.941282, 0.116521,
		-0.834932, 0.218550, -0.505098,
		38.917175, 30.601034, 35.878342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626801, 30.064980, 35.700626>,  <39.501629, 30.448048, 36.231911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626801, 30.064980, 35.700626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325569, 30.302109, 35.586475>,  <39.144833, 30.444387, 35.517986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325569, 30.302109, 35.586475>,  <39.626801, 30.064980, 35.700626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325569, 30.302109, 35.586475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421594, 0.101811, -0.901051,
		-0.505111, -0.798870, -0.326603,
		-0.753074, 0.592825, -0.285373,
		39.099648, 30.479956, 35.500862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467049, 29.919333, 34.983414>,  <39.626801, 30.064980, 35.700626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467049, 29.919333, 34.983414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293243, 30.274885, 35.041504>,  <39.188961, 30.488216, 35.076359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293243, 30.274885, 35.041504>,  <39.467049, 29.919333, 34.983414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293243, 30.274885, 35.041504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254793, 0.275967, -0.926781,
		-0.863874, -0.365697, -0.346392,
		-0.434514, 0.888880, 0.145223,
		39.162888, 30.541550, 35.085072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906986, 29.971872, 34.265831>,  <39.467049, 29.919333, 34.983414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906986, 29.971872, 34.265831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267521, 29.798630, 34.267342>,  <40.483841, 29.694685, 34.268250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267521, 29.798630, 34.267342>,  <39.906986, 29.971872, 34.265831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267521, 29.798630, 34.267342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368206, 0.761619, -0.533255,
		0.228076, 0.482033, 0.845946,
		0.901335, -0.433105, 0.003781,
		40.537922, 29.668697, 34.268475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363270, 30.477854, 34.409996>,  <39.906986, 29.971872, 34.265831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363270, 30.477854, 34.409996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551731, 30.218725, 34.170551>,  <40.664810, 30.063248, 34.026882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551731, 30.218725, 34.170551>,  <40.363270, 30.477854, 34.409996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551731, 30.218725, 34.170551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422736, 0.761487, -0.491357,
		0.774149, -0.021550, 0.632637,
		0.471156, -0.647822, -0.598614,
		40.693077, 30.024378, 33.990967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001484, 30.786957, 34.387165>,  <40.363270, 30.477854, 34.409996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001484, 30.786957, 34.387165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942993, 30.557959, 34.064461>,  <40.907898, 30.420559, 33.870838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942993, 30.557959, 34.064461>,  <41.001484, 30.786957, 34.387165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942993, 30.557959, 34.064461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510653, 0.654792, -0.557208,
		0.847261, -0.493454, 0.196600,
		-0.146224, -0.572495, -0.806764,
		40.899124, 30.386209, 33.822433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705830, 30.467089, 34.518299>,  <41.001484, 30.786957, 34.387165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705830, 30.467089, 34.518299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772850, 30.163105, 34.267097>,  <41.813061, 29.980715, 34.116375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.772850, 30.163105, 34.267097>,  <41.705830, 30.467089, 34.518299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.772850, 30.163105, 34.267097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978574, 0.205525, 0.012376,
		0.119665, -0.616622, 0.778112,
		0.167552, -0.759959, -0.628004,
		41.823116, 29.935118, 34.078697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053230, 29.944847, 34.858803>,  <41.705830, 30.467089, 34.518299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053230, 29.944847, 34.858803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129902, 30.000950, 34.470249>,  <42.175903, 30.034613, 34.237118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129902, 30.000950, 34.470249>,  <42.053230, 29.944847, 34.858803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129902, 30.000950, 34.470249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912639, 0.338613, 0.228980,
		0.361040, -0.930413, -0.063102,
		0.191679, 0.140260, -0.971384,
		42.187405, 30.043028, 34.178833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.451546, 30.468739, 35.080097>,  <42.053230, 29.944847, 34.858803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.451546, 30.468739, 35.080097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684689, 30.153383, 35.001385>,  <42.824574, 29.964170, 34.954159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684689, 30.153383, 35.001385>,  <42.451546, 30.468739, 35.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684689, 30.153383, 35.001385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668277, 0.602849, -0.435866,
		0.462261, 0.122543, 0.878236,
		0.582855, -0.788389, -0.196781,
		42.859547, 29.916866, 34.942352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040981, 30.620815, 35.418034>,  <42.451546, 30.468739, 35.080097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040981, 30.620815, 35.418034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070145, 30.411949, 35.078144>,  <43.087643, 30.286629, 34.874210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070145, 30.411949, 35.078144>,  <43.040981, 30.620815, 35.418034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070145, 30.411949, 35.078144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647377, 0.672884, -0.357952,
		0.758675, -0.523994, 0.387095,
		0.072906, -0.522166, -0.849722,
		43.092018, 30.255299, 34.823227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811783, 30.348930, 35.156712>,  <43.040981, 30.620815, 35.418034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811783, 30.348930, 35.156712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589680, 30.386747, 34.826195>,  <43.456417, 30.409439, 34.627884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589680, 30.386747, 34.826195>,  <43.811783, 30.348930, 35.156712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589680, 30.386747, 34.826195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725558, 0.540689, -0.425700,
		0.406518, -0.835893, -0.368819,
		-0.555256, 0.094545, -0.826288,
		43.423103, 30.415112, 34.578308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117973, 30.207846, 34.373814>,  <43.811783, 30.348930, 35.156712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117973, 30.207846, 34.373814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823463, 30.478300, 34.362881>,  <43.646759, 30.640572, 34.356319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823463, 30.478300, 34.362881>,  <44.117973, 30.207846, 34.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823463, 30.478300, 34.362881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599353, 0.632847, -0.490184,
		-0.314134, -0.377290, -0.871190,
		-0.736271, 0.676134, -0.027331,
		43.602581, 30.681141, 34.354683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.827587, 30.237911, 34.247021>,  <44.117973, 30.207846, 34.373814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.827587, 30.237911, 34.247021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191772, 30.390532, 34.183182>,  <45.410282, 30.482103, 34.144878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191772, 30.390532, 34.183182>,  <44.827587, 30.237911, 34.247021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191772, 30.390532, 34.183182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375614, 0.924346, 0.067065,
		0.173113, -0.001113, 0.984901,
		0.910465, 0.381552, -0.159598,
		45.464912, 30.504997, 34.135303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898026, 30.743099, 34.695927>,  <44.827587, 30.237911, 34.247021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898026, 30.743099, 34.695927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107979, 30.835926, 34.368355>,  <45.233952, 30.891623, 34.171810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.107979, 30.835926, 34.368355>,  <44.898026, 30.743099, 34.695927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107979, 30.835926, 34.368355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340998, 0.938863, 0.047496,
		0.779886, 0.254323, 0.571925,
		0.524880, 0.232067, -0.818929,
		45.265442, 30.905546, 34.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296234, 31.278734, 34.813282>,  <44.898026, 30.743099, 34.695927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296234, 31.278734, 34.813282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190521, 31.264820, 34.427753>,  <45.127094, 31.256472, 34.196438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190521, 31.264820, 34.427753>,  <45.296234, 31.278734, 34.813282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190521, 31.264820, 34.427753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505505, 0.856074, 0.107713,
		0.821353, 0.515681, -0.243826,
		-0.264279, -0.034785, -0.963819,
		45.111237, 31.254385, 34.138607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551502, 31.781052, 34.423542>,  <45.296234, 31.278734, 34.813282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551502, 31.781052, 34.423542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195820, 31.669807, 34.278229>,  <44.982410, 31.603062, 34.191040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195820, 31.669807, 34.278229>,  <45.551502, 31.781052, 34.423542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195820, 31.669807, 34.278229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342414, 0.931160, 0.125276,
		0.303433, 0.235789, -0.923218,
		-0.889203, -0.278110, -0.363282,
		44.929058, 31.586374, 34.169243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252266, 32.060616, 33.827438>,  <45.551502, 31.781052, 34.423542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252266, 32.060616, 33.827438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980991, 31.968723, 34.106663>,  <44.818226, 31.913588, 34.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.980991, 31.968723, 34.106663>,  <45.252266, 32.060616, 33.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980991, 31.968723, 34.106663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089115, 0.968580, 0.232187,
		-0.729468, 0.095258, -0.677349,
		-0.678185, -0.229735, 0.698060,
		44.777534, 31.899803, 34.316082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917374, 32.370712, 33.587196>,  <45.252266, 32.060616, 33.827438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917374, 32.370712, 33.587196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087208, 32.104126, 33.832325>,  <46.189110, 31.944176, 33.979401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.087208, 32.104126, 33.832325>,  <45.917374, 32.370712, 33.587196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.087208, 32.104126, 33.832325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827585, 0.560194, 0.035845,
		-0.367189, 0.491944, 0.789407,
		0.424588, -0.666463, 0.612823,
		46.214584, 31.904186, 34.016171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165348, 32.945309, 33.895714>,  <45.917374, 32.370712, 33.587196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165348, 32.945309, 33.895714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320812, 32.588280, 33.987144>,  <46.414093, 32.374062, 34.042004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.320812, 32.588280, 33.987144>,  <46.165348, 32.945309, 33.895714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320812, 32.588280, 33.987144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826905, 0.447335, 0.340762,
		-0.406408, 0.056571, 0.911939,
		0.388665, -0.892575, 0.228580,
		46.437412, 32.320507, 34.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235558, 32.905449, 34.610226>,  <46.165348, 32.945309, 33.895714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235558, 32.905449, 34.610226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499126, 32.670708, 34.422001>,  <46.657269, 32.529865, 34.309067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.499126, 32.670708, 34.422001>,  <46.235558, 32.905449, 34.610226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.499126, 32.670708, 34.422001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748838, 0.570919, 0.336590,
		0.071123, -0.574160, 0.815648,
		0.658925, -0.586849, -0.470558,
		46.696804, 32.494652, 34.280834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.574005, 33.496071, 34.328674>,  <46.235558, 32.905449, 34.610226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.574005, 33.496071, 34.328674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835709, 33.408123, 34.618114>,  <46.992729, 33.355354, 34.791779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835709, 33.408123, 34.618114>,  <46.574005, 33.496071, 34.328674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835709, 33.408123, 34.618114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754121, 0.117583, -0.646123,
		0.056977, 0.968418, 0.242736,
		0.654259, -0.219866, 0.723605,
		47.031986, 33.342163, 34.835197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.091324, 34.001366, 34.333057>,  <46.574005, 33.496071, 34.328674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.091324, 34.001366, 34.333057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209526, 33.645359, 34.471935>,  <47.280449, 33.431755, 34.555264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209526, 33.645359, 34.471935>,  <47.091324, 34.001366, 34.333057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209526, 33.645359, 34.471935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777385, 0.012777, -0.628895,
		0.555291, 0.455748, 0.695662,
		0.295506, -0.890017, 0.347197,
		47.298180, 33.378353, 34.576096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.799736, 34.042988, 34.435658>,  <47.091324, 34.001366, 34.333057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.799736, 34.042988, 34.435658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695774, 33.662216, 34.370815>,  <47.633396, 33.433754, 34.331909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695774, 33.662216, 34.370815>,  <47.799736, 34.042988, 34.435658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695774, 33.662216, 34.370815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779534, -0.107760, -0.617021,
		0.569893, -0.286732, 0.770069,
		-0.259903, -0.951931, -0.162106,
		47.617802, 33.376637, 34.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866421, 34.792141, 34.594093>,  <47.799736, 34.042988, 34.435658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866421, 34.792141, 34.594093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697731, 34.953388, 34.918968>,  <47.596516, 35.050137, 35.113892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.697731, 34.953388, 34.918968>,  <47.866421, 34.792141, 34.594093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.697731, 34.953388, 34.918968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734000, 0.374115, -0.566817,
		-0.532343, -0.835186, 0.138111,
		-0.421728, 0.403115, 0.812185,
		47.571213, 35.074322, 35.162624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.146072, 29.095350, 25.412071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793377, 29.040289, 25.231588>,  <36.581760, 29.007252, 25.123299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.793377, 29.040289, 25.231588>,  <37.146072, 29.095350, 25.412071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793377, 29.040289, 25.231588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466787, 0.116399, 0.876676,
		-0.068156, 0.983617, -0.166887,
		-0.881739, -0.137651, -0.451207,
		36.528854, 28.998993, 25.096226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787102, 29.660587, 25.587090>,  <37.146072, 29.095350, 25.412071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787102, 29.660587, 25.587090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522438, 29.379322, 25.482964>,  <36.363640, 29.210564, 25.420488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.522438, 29.379322, 25.482964>,  <36.787102, 29.660587, 25.587090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522438, 29.379322, 25.482964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400560, 0.038001, 0.915482,
		-0.633841, 0.710012, -0.306803,
		-0.661662, -0.703163, -0.260316,
		36.323940, 29.168373, 25.404869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203831, 29.936714, 25.967810>,  <36.787102, 29.660587, 25.587090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203831, 29.936714, 25.967810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100010, 29.563349, 25.868717>,  <36.037716, 29.339329, 25.809261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.100010, 29.563349, 25.868717>,  <36.203831, 29.936714, 25.967810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100010, 29.563349, 25.868717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394897, -0.131511, 0.909264,
		-0.881298, 0.333834, -0.334467,
		-0.259557, -0.933413, -0.247731,
		36.022144, 29.283325, 25.794397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562584, 29.821146, 25.956484>,  <36.203831, 29.936714, 25.967810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562584, 29.821146, 25.956484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698963, 29.453663, 26.036215>,  <35.780788, 29.233173, 26.084053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.698963, 29.453663, 26.036215>,  <35.562584, 29.821146, 25.956484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698963, 29.453663, 26.036215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378225, 0.060059, 0.923763,
		-0.860641, -0.390342, -0.327002,
		0.340944, -0.918709, 0.199326,
		35.801247, 29.178051, 26.096012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081882, 29.576208, 26.372459>,  <35.562584, 29.821146, 25.956484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081882, 29.576208, 26.372459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370232, 29.303808, 26.423962>,  <35.543243, 29.140368, 26.454863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.370232, 29.303808, 26.423962>,  <35.081882, 29.576208, 26.372459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370232, 29.303808, 26.423962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316774, -0.158514, 0.935162,
		-0.616436, -0.714921, -0.329993,
		0.720875, -0.681000, 0.128754,
		35.586494, 29.099508, 26.462587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753609, 29.020638, 26.881449>,  <35.081882, 29.576208, 26.372459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753609, 29.020638, 26.881449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151264, 28.996346, 26.917242>,  <35.389858, 28.981770, 26.938719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.151264, 28.996346, 26.917242>,  <34.753609, 29.020638, 26.881449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151264, 28.996346, 26.917242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096444, -0.123495, 0.987647,
		-0.048925, -0.990485, -0.128628,
		0.994135, -0.060726, 0.089485,
		35.449505, 28.978127, 26.944088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807961, 28.614130, 27.378040>,  <34.753609, 29.020638, 26.881449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807961, 28.614130, 27.378040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177128, 28.767807, 27.387953>,  <35.398628, 28.860014, 27.393900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177128, 28.767807, 27.387953>,  <34.807961, 28.614130, 27.378040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177128, 28.767807, 27.387953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104849, 0.188890, 0.976385,
		0.370439, -0.903723, 0.214613,
		0.922920, 0.384193, 0.024782,
		35.454002, 28.883064, 27.395388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058815, 28.408110, 28.034935>,  <34.807961, 28.614130, 27.378040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058815, 28.408110, 28.034935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295586, 28.708097, 27.916834>,  <35.437649, 28.888090, 27.845974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.295586, 28.708097, 27.916834>,  <35.058815, 28.408110, 28.034935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295586, 28.708097, 27.916834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156855, 0.252128, 0.954897,
		0.790585, -0.611536, 0.031603,
		0.591922, 0.749970, -0.295251,
		35.473164, 28.933088, 27.828259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659451, 28.396555, 28.467726>,  <35.058815, 28.408110, 28.034935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659451, 28.396555, 28.467726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639011, 28.768902, 28.323017>,  <35.626747, 28.992310, 28.236193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639011, 28.768902, 28.323017>,  <35.659451, 28.396555, 28.467726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639011, 28.768902, 28.323017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216585, 0.363951, 0.905887,
		0.974925, -0.032064, -0.220210,
		-0.051100, 0.930866, -0.361770,
		35.623680, 29.048162, 28.214487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187267, 28.765703, 28.725723>,  <35.659451, 28.396555, 28.467726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187267, 28.765703, 28.725723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953373, 29.068329, 28.608625>,  <35.813038, 29.249905, 28.538366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953373, 29.068329, 28.608625>,  <36.187267, 28.765703, 28.725723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953373, 29.068329, 28.608625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125814, 0.441076, 0.888607,
		0.801409, 0.482769, -0.353099,
		-0.584735, 0.756562, -0.292743,
		35.777954, 29.295298, 28.520802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497936, 29.399902, 28.823790>,  <36.187267, 28.765703, 28.725723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497936, 29.399902, 28.823790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111153, 29.499876, 28.803703>,  <35.879082, 29.559860, 28.791651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.111153, 29.499876, 28.803703>,  <36.497936, 29.399902, 28.823790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111153, 29.499876, 28.803703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093615, 0.531354, 0.841961,
		0.237116, 0.809442, -0.537196,
		-0.966960, 0.249932, -0.050217,
		35.821064, 29.574856, 28.788639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531639, 30.093733, 28.987282>,  <36.497936, 29.399902, 28.823790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531639, 30.093733, 28.987282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163639, 29.958725, 29.066954>,  <35.942837, 29.877720, 29.114756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163639, 29.958725, 29.066954>,  <36.531639, 30.093733, 28.987282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163639, 29.958725, 29.066954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001622, 0.511499, 0.859282,
		-0.391905, 0.790221, -0.471129,
		-0.920004, -0.337521, 0.199178,
		35.887638, 29.857470, 29.126707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287624, 30.592947, 29.418434>,  <36.531639, 30.093733, 28.987282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287624, 30.592947, 29.418434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026531, 30.291914, 29.453213>,  <35.869877, 30.111294, 29.474081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.026531, 30.291914, 29.453213>,  <36.287624, 30.592947, 29.418434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026531, 30.291914, 29.453213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083385, 0.185441, 0.979111,
		-0.752988, 0.631845, -0.183797,
		-0.652730, -0.752585, 0.086949,
		35.830711, 30.066139, 29.479298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666885, 30.840582, 29.675104>,  <36.287624, 30.592947, 29.418434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666885, 30.840582, 29.675104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686081, 30.450134, 29.759848>,  <35.697598, 30.215866, 29.810694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686081, 30.450134, 29.759848>,  <35.666885, 30.840582, 29.675104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686081, 30.450134, 29.759848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124670, 0.204590, 0.970876,
		-0.991037, -0.073007, -0.111874,
		0.047992, -0.976121, 0.211858,
		35.700478, 30.157297, 29.823404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240879, 30.814730, 30.225813>,  <35.666885, 30.840582, 29.675104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240879, 30.814730, 30.225813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435631, 30.465618, 30.239697>,  <35.552483, 30.256151, 30.248026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435631, 30.465618, 30.239697>,  <35.240879, 30.814730, 30.225813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435631, 30.465618, 30.239697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266394, -0.110533, 0.957505,
		-0.831853, -0.475439, -0.286319,
		0.486883, -0.872777, 0.034707,
		35.581696, 30.203785, 30.250109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840263, 30.362814, 30.610226>,  <35.240879, 30.814730, 30.225813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840263, 30.362814, 30.610226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211288, 30.216021, 30.638359>,  <35.433903, 30.127945, 30.655239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211288, 30.216021, 30.638359>,  <34.840263, 30.362814, 30.610226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211288, 30.216021, 30.638359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140589, -0.168357, 0.975649,
		-0.346206, -0.914865, -0.207756,
		0.927565, -0.366984, 0.070334,
		35.489559, 30.105927, 30.659460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719707, 29.823723, 31.125740>,  <34.840263, 30.362814, 30.610226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719707, 29.823723, 31.125740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.117565, 29.864691, 31.131220>,  <35.356281, 29.889271, 31.134508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.117565, 29.864691, 31.131220>,  <34.719707, 29.823723, 31.125740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117565, 29.864691, 31.131220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012155, -0.247621, 0.968781,
		0.102613, -0.963429, -0.247541,
		0.994648, 0.102419, 0.013699,
		35.415958, 29.895416, 31.135330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988796, 29.269463, 31.527464>,  <34.719707, 29.823723, 31.125740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988796, 29.269463, 31.527464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259090, 29.564312, 31.525354>,  <35.421268, 29.741222, 31.524088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259090, 29.564312, 31.525354>,  <34.988796, 29.269463, 31.527464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259090, 29.564312, 31.525354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223170, -0.197755, 0.954509,
		0.702549, -0.646175, -0.298134,
		0.675737, 0.737124, -0.005275,
		35.461811, 29.785450, 31.523771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393589, 29.011707, 31.946533>,  <34.988796, 29.269463, 31.527464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393589, 29.011707, 31.946533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481464, 29.401606, 31.962559>,  <35.534191, 29.635546, 31.972174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.481464, 29.401606, 31.962559>,  <35.393589, 29.011707, 31.946533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481464, 29.401606, 31.962559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004667, -0.040017, 0.999188,
		0.975559, -0.219699, -0.004242,
		0.219690, 0.974747, 0.040065,
		35.547371, 29.694029, 31.974579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928699, 29.109137, 32.532127>,  <35.393589, 29.011707, 31.946533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928699, 29.109137, 32.532127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773403, 29.467947, 32.447643>,  <35.680225, 29.683233, 32.396954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773403, 29.467947, 32.447643>,  <35.928699, 29.109137, 32.532127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773403, 29.467947, 32.447643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091004, 0.190752, 0.977411,
		0.917053, 0.398694, 0.007575,
		-0.388243, 0.897026, -0.211212,
		35.656929, 29.737055, 32.384281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370022, 29.570906, 32.902172>,  <35.928699, 29.109137, 32.532127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370022, 29.570906, 32.902172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032990, 29.775879, 32.835880>,  <35.830769, 29.898863, 32.796104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032990, 29.775879, 32.835880>,  <36.370022, 29.570906, 32.902172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032990, 29.775879, 32.835880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069044, 0.202417, 0.976862,
		0.534122, 0.834531, -0.135173,
		-0.842583, 0.512431, -0.165734,
		35.780216, 29.929607, 32.786160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494293, 30.251703, 33.249557>,  <36.370022, 29.570906, 32.902172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494293, 30.251703, 33.249557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110329, 30.143919, 33.218689>,  <35.879948, 30.079248, 33.200169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110329, 30.143919, 33.218689>,  <36.494293, 30.251703, 33.249557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110329, 30.143919, 33.218689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124871, 0.164624, 0.978420,
		-0.250941, 0.948836, -0.191673,
		-0.959914, -0.269461, -0.077172,
		35.822353, 30.063080, 33.195538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835365, 29.865057, 33.602638>,  <36.494293, 30.251703, 33.249557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835365, 29.865057, 33.602638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167847, 29.716465, 33.768093>,  <37.367336, 29.627310, 33.867367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.167847, 29.716465, 33.768093>,  <36.835365, 29.865057, 33.602638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167847, 29.716465, 33.768093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473663, 0.083617, -0.876728,
		0.291098, 0.924668, 0.245459,
		0.831207, -0.371479, 0.413641,
		37.417210, 29.605021, 33.892185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266857, 30.251614, 33.401535>,  <36.835365, 29.865057, 33.602638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266857, 30.251614, 33.401535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474560, 29.928854, 33.514168>,  <37.599182, 29.735197, 33.581745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474560, 29.928854, 33.514168>,  <37.266857, 30.251614, 33.401535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474560, 29.928854, 33.514168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529128, 0.044805, -0.847359,
		0.671118, 0.588986, 0.450219,
		0.519254, -0.806900, 0.281579,
		37.630337, 29.686785, 33.598640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952293, 30.393534, 33.331360>,  <37.266857, 30.251614, 33.401535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952293, 30.393534, 33.331360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898041, 30.000202, 33.282913>,  <37.865490, 29.764204, 33.253845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.898041, 30.000202, 33.282913>,  <37.952293, 30.393534, 33.331360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898041, 30.000202, 33.282913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499258, 0.037753, -0.865630,
		0.855771, -0.177876, 0.485814,
		-0.135634, -0.983329, -0.121114,
		37.857349, 29.705204, 33.246578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578560, 30.072968, 32.924725>,  <37.952293, 30.393534, 33.331360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578560, 30.072968, 32.924725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318615, 29.769083, 32.915672>,  <38.162647, 29.586752, 32.910240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318615, 29.769083, 32.915672>,  <38.578560, 30.072968, 32.924725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318615, 29.769083, 32.915672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402117, -0.318404, -0.858441,
		0.644963, -0.566970, 0.512413,
		-0.649865, -0.759713, -0.022630,
		38.123657, 29.541168, 32.908882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954498, 29.574894, 32.630688>,  <38.578560, 30.072968, 32.924725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954498, 29.574894, 32.630688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582825, 29.439577, 32.571125>,  <38.359821, 29.358387, 32.535389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.582825, 29.439577, 32.571125>,  <38.954498, 29.574894, 32.630688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582825, 29.439577, 32.571125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256961, -0.301664, -0.918134,
		0.265676, -0.891380, 0.367230,
		-0.929186, -0.338290, -0.148905,
		38.304070, 29.338091, 32.526455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034222, 28.908684, 32.400745>,  <38.954498, 29.574894, 32.630688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034222, 28.908684, 32.400745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662971, 29.019588, 32.301388>,  <38.440220, 29.086132, 32.241772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662971, 29.019588, 32.301388>,  <39.034222, 28.908684, 32.400745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662971, 29.019588, 32.301388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190611, -0.219197, -0.956881,
		-0.319757, -0.935456, 0.150594,
		-0.928129, 0.277264, -0.248398,
		38.384533, 29.102768, 32.226868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700611, 28.375950, 32.007889>,  <39.034222, 28.908684, 32.400745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700611, 28.375950, 32.007889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508331, 28.712952, 31.910635>,  <38.392963, 28.915152, 31.852283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.508331, 28.712952, 31.910635>,  <38.700611, 28.375950, 32.007889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508331, 28.712952, 31.910635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274480, -0.118769, -0.954230,
		-0.832819, -0.525435, -0.174158,
		-0.480701, 0.842503, -0.243134,
		38.364120, 28.965702, 31.837694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611366, 28.248550, 31.315685>,  <38.700611, 28.375950, 32.007889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611366, 28.248550, 31.315685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487583, 28.628635, 31.330275>,  <38.413315, 28.856688, 31.339029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487583, 28.628635, 31.330275>,  <38.611366, 28.248550, 31.315685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487583, 28.628635, 31.330275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056157, 0.056553, -0.996819,
		-0.949254, -0.306425, -0.070862,
		-0.309458, 0.950213, 0.036475,
		38.394745, 28.913700, 31.341217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976372, 28.323471, 30.933128>,  <38.611366, 28.248550, 31.315685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976372, 28.323471, 30.933128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160942, 28.678333, 30.935513>,  <38.271687, 28.891251, 30.936943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.160942, 28.678333, 30.935513>,  <37.976372, 28.323471, 30.933128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160942, 28.678333, 30.935513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003832, 0.004726, -0.999982,
		-0.887170, 0.461442, -0.001219,
		0.461428, 0.887158, 0.005961,
		38.299370, 28.944481, 30.937302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607151, 28.768332, 30.404964>,  <37.976372, 28.323471, 30.933128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607151, 28.768332, 30.404964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965698, 28.937265, 30.458868>,  <38.180828, 29.038626, 30.491211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.965698, 28.937265, 30.458868>,  <37.607151, 28.768332, 30.404964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965698, 28.937265, 30.458868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060097, 0.185416, -0.980821,
		-0.439221, 0.887274, 0.140820,
		0.896367, 0.422334, 0.134761,
		38.234608, 29.063965, 30.499296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599937, 29.473663, 30.016920>,  <37.607151, 28.768332, 30.404964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599937, 29.473663, 30.016920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973698, 29.337051, 30.057415>,  <38.197956, 29.255085, 30.081711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.973698, 29.337051, 30.057415>,  <37.599937, 29.473663, 30.016920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973698, 29.337051, 30.057415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161318, 0.152329, -0.975076,
		0.317595, 0.927445, 0.197431,
		0.934404, -0.341528, 0.101235,
		38.254017, 29.234592, 30.087786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950485, 29.897324, 29.538467>,  <37.599937, 29.473663, 30.016920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950485, 29.897324, 29.538467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204426, 29.596169, 29.607893>,  <38.356789, 29.415474, 29.649548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.204426, 29.596169, 29.607893>,  <37.950485, 29.897324, 29.538467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204426, 29.596169, 29.607893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305020, 0.037828, -0.951595,
		0.709881, 0.657058, 0.253661,
		0.634848, -0.752890, 0.173563,
		38.394882, 29.370302, 29.659962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643631, 30.035902, 29.274277>,  <37.950485, 29.897324, 29.538467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643631, 30.035902, 29.274277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561611, 29.645174, 29.249697>,  <38.512398, 29.410738, 29.234949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561611, 29.645174, 29.249697>,  <38.643631, 30.035902, 29.274277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561611, 29.645174, 29.249697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268847, 0.004156, -0.963174,
		0.941103, -0.214024, 0.261763,
		-0.205054, -0.976820, -0.061451,
		38.500095, 29.352129, 29.231262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186893, 29.805752, 28.923046>,  <38.643631, 30.035902, 29.274277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186893, 29.805752, 28.923046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880650, 29.551537, 28.883192>,  <38.696903, 29.399008, 28.859280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880650, 29.551537, 28.883192>,  <39.186893, 29.805752, 28.923046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880650, 29.551537, 28.883192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111621, 0.021290, -0.993523,
		0.633543, -0.771775, 0.054639,
		-0.765613, -0.635539, -0.099634,
		38.650967, 29.360874, 28.853302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478493, 29.393240, 28.504297>,  <39.186893, 29.805752, 28.923046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478493, 29.393240, 28.504297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086948, 29.314272, 28.482914>,  <38.852020, 29.266891, 28.470085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086948, 29.314272, 28.482914>,  <39.478493, 29.393240, 28.504297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086948, 29.314272, 28.482914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071504, -0.085447, -0.993774,
		0.191624, -0.976588, 0.097757,
		-0.978860, -0.197421, -0.053456,
		38.793289, 29.255047, 28.466877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425911, 28.831106, 28.005270>,  <39.478493, 29.393240, 28.504297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425911, 28.831106, 28.005270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067902, 29.009048, 28.018158>,  <38.853096, 29.115814, 28.025890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.067902, 29.009048, 28.018158>,  <39.425911, 28.831106, 28.005270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067902, 29.009048, 28.018158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034440, 0.003094, -0.999402,
		-0.444688, -0.895598, 0.012552,
		-0.895023, 0.444854, 0.032221,
		38.799393, 29.142504, 28.027824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072731, 28.373482, 27.671246>,  <39.425911, 28.831106, 28.005270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072731, 28.373482, 27.671246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858658, 28.710260, 27.643812>,  <38.730213, 28.912327, 27.627352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858658, 28.710260, 27.643812>,  <39.072731, 28.373482, 27.671246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858658, 28.710260, 27.643812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043622, -0.053534, -0.997613,
		-0.843609, -0.536898, -0.008076,
		-0.535184, 0.841947, -0.068582,
		38.698101, 28.962845, 27.623238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795227, 28.370264, 26.984575>,  <39.072731, 28.373482, 27.671246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795227, 28.370264, 26.984575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743496, 28.754602, 27.082594>,  <38.712456, 28.985207, 27.141405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.743496, 28.754602, 27.082594>,  <38.795227, 28.370264, 26.984575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743496, 28.754602, 27.082594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139229, 0.227077, -0.963873,
		-0.981779, -0.158772, 0.104411,
		-0.129327, 0.960847, 0.245045,
		38.704697, 29.042856, 27.156107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.098835, 28.569475, 26.708120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320686, 28.898279, 26.759785>,  <38.453796, 29.095562, 26.790783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.320686, 28.898279, 26.759785>,  <38.098835, 28.569475, 26.708120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320686, 28.898279, 26.759785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003275, 0.153064, -0.988211,
		-0.832091, 0.548514, 0.082201,
		0.554629, 0.822012, 0.129159,
		38.487076, 29.144882, 26.798532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795303, 29.096130, 26.255516>,  <38.098835, 28.569475, 26.708120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795303, 29.096130, 26.255516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163143, 29.231659, 26.335049>,  <38.383846, 29.312977, 26.382769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163143, 29.231659, 26.335049>,  <37.795303, 29.096130, 26.255516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163143, 29.231659, 26.335049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133915, 0.205447, -0.969463,
		-0.369324, 0.918145, 0.143556,
		0.919601, 0.338822, 0.198831,
		38.439022, 29.333305, 26.394697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804714, 29.806429, 26.009636>,  <37.795303, 29.096130, 26.255516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804714, 29.806429, 26.009636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.185665, 29.686825, 26.033516>,  <38.414238, 29.615063, 26.047844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.185665, 29.686825, 26.033516>,  <37.804714, 29.806429, 26.009636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185665, 29.686825, 26.033516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135981, 0.241267, -0.960885,
		0.272911, 0.923246, 0.270437,
		0.952381, -0.299010, 0.059700,
		38.471378, 29.597122, 26.051426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215012, 30.301353, 25.575747>,  <37.804714, 29.806429, 26.009636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215012, 30.301353, 25.575747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428482, 29.964209, 25.603378>,  <38.556564, 29.761921, 25.619957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428482, 29.964209, 25.603378>,  <38.215012, 30.301353, 25.575747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428482, 29.964209, 25.603378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025145, -0.097461, -0.994922,
		0.845315, 0.529229, -0.073207,
		0.533677, -0.842863, 0.069078,
		38.588585, 29.711349, 25.624102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706013, 30.408503, 25.073523>,  <38.215012, 30.301353, 25.575747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706013, 30.408503, 25.073523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725361, 30.021027, 25.170931>,  <38.736969, 29.788542, 25.229376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.725361, 30.021027, 25.170931>,  <38.706013, 30.408503, 25.073523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725361, 30.021027, 25.170931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062279, -0.240409, -0.968672,
		0.996886, 0.062018, 0.048702,
		0.048366, -0.968688, 0.243523,
		38.739872, 29.730419, 25.243988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312263, 30.046753, 24.702448>,  <38.706013, 30.408503, 25.073523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312263, 30.046753, 24.702448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044647, 29.758652, 24.775797>,  <38.884079, 29.585791, 24.819805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044647, 29.758652, 24.775797>,  <39.312263, 30.046753, 24.702448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044647, 29.758652, 24.775797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107638, -0.338020, -0.934963,
		0.735393, -0.605788, 0.303675,
		-0.669037, -0.720252, 0.183372,
		38.843937, 29.542576, 24.830809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685310, 29.356516, 24.588442>,  <39.312263, 30.046753, 24.702448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685310, 29.356516, 24.588442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293949, 29.275574, 24.571548>,  <39.059132, 29.227009, 24.561413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293949, 29.275574, 24.571548>,  <39.685310, 29.356516, 24.588442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293949, 29.275574, 24.571548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115490, -0.365661, -0.923555,
		0.171443, -0.908485, 0.381133,
		-0.978401, -0.202354, -0.042231,
		39.000427, 29.214867, 24.558880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671741, 28.655020, 24.385151>,  <39.685310, 29.356516, 24.588442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671741, 28.655020, 24.385151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312115, 28.810425, 24.304411>,  <39.096340, 28.903667, 24.255966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312115, 28.810425, 24.304411>,  <39.671741, 28.655020, 24.385151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312115, 28.810425, 24.304411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030522, -0.515535, -0.856325,
		-0.436751, -0.763730, 0.475357,
		-0.899064, 0.388510, -0.201850,
		39.042397, 28.926979, 24.243856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152325, 28.120945, 24.235191>,  <39.671741, 28.655020, 24.385151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152325, 28.120945, 24.235191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057297, 28.460758, 24.046787>,  <39.000278, 28.664646, 23.933744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057297, 28.460758, 24.046787>,  <39.152325, 28.120945, 24.235191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057297, 28.460758, 24.046787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034758, -0.492015, -0.869892,
		-0.970748, -0.190291, 0.146418,
		-0.237573, 0.849535, -0.471008,
		38.986023, 28.715618, 23.905485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850430, 27.861607, 23.679293>,  <39.152325, 28.120945, 24.235191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850430, 27.861607, 23.679293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848412, 28.242403, 23.556860>,  <38.847202, 28.470881, 23.483400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848412, 28.242403, 23.556860>,  <38.850430, 27.861607, 23.679293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848412, 28.242403, 23.556860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202273, -0.300730, -0.932012,
		-0.979316, 0.057213, 0.194078,
		-0.005042, 0.951991, -0.306083,
		38.846897, 28.528000, 23.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256199, 27.931160, 23.202133>,  <38.850430, 27.861607, 23.679293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256199, 27.931160, 23.202133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495102, 28.240381, 23.116652>,  <38.638443, 28.425915, 23.065363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.495102, 28.240381, 23.116652>,  <38.256199, 27.931160, 23.202133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495102, 28.240381, 23.116652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053111, -0.303981, -0.951197,
		-0.800288, 0.556761, -0.222613,
		0.597259, 0.773054, -0.213702,
		38.674278, 28.472298, 23.052542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969013, 28.043255, 22.612869>,  <38.256199, 27.931160, 23.202133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969013, 28.043255, 22.612869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317917, 28.238623, 22.622715>,  <38.527260, 28.355844, 22.628622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317917, 28.238623, 22.622715>,  <37.969013, 28.043255, 22.612869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317917, 28.238623, 22.622715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055632, -0.049094, -0.997244,
		-0.485866, 0.871226, -0.069994,
		0.872261, 0.488421, 0.024615,
		38.579594, 28.385149, 22.630100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933537, 28.537178, 22.108255>,  <37.969013, 28.043255, 22.612869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933537, 28.537178, 22.108255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324886, 28.476681, 22.164690>,  <38.559696, 28.440382, 22.198551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324886, 28.476681, 22.164690>,  <37.933537, 28.537178, 22.108255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324886, 28.476681, 22.164690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133614, -0.058544, -0.989303,
		0.157886, 0.986761, -0.037069,
		0.978376, -0.151244, 0.141089,
		38.618401, 28.431307, 22.207016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268105, 28.977962, 21.587685>,  <37.933537, 28.537178, 22.108255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268105, 28.977962, 21.587685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543167, 28.707718, 21.694027>,  <38.708206, 28.545572, 21.757833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.543167, 28.707718, 21.694027>,  <38.268105, 28.977962, 21.587685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543167, 28.707718, 21.694027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332146, -0.032872, -0.942655,
		0.645606, 0.736526, 0.201797,
		0.687656, -0.675610, 0.265857,
		38.749466, 28.505035, 21.773785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843933, 29.192879, 21.398230>,  <38.268105, 28.977962, 21.587685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843933, 29.192879, 21.398230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906235, 28.798256, 21.418030>,  <38.943615, 28.561483, 21.429911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.906235, 28.798256, 21.418030>,  <38.843933, 29.192879, 21.398230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906235, 28.798256, 21.418030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189631, -0.019317, -0.981665,
		0.969423, 0.162284, 0.184073,
		0.155753, -0.986555, 0.049501,
		38.952961, 28.502289, 21.432880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423378, 29.032303, 20.908958>,  <38.843933, 29.192879, 21.398230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423378, 29.032303, 20.908958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288605, 28.661520, 20.974958>,  <39.207741, 28.439051, 21.014559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.288605, 28.661520, 20.974958>,  <39.423378, 29.032303, 20.908958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288605, 28.661520, 20.974958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362886, -0.289562, -0.885702,
		0.868785, -0.238549, 0.433943,
		-0.336936, -0.926957, 0.165001,
		39.187523, 28.383432, 21.024458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980721, 28.534409, 20.863325>,  <39.423378, 29.032303, 20.908958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980721, 28.534409, 20.863325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640190, 28.340073, 20.784130>,  <39.435871, 28.223471, 20.736612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.640190, 28.340073, 20.784130>,  <39.980721, 28.534409, 20.863325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640190, 28.340073, 20.784130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316283, -0.174192, -0.932536,
		0.418573, -0.856515, 0.301957,
		-0.851330, -0.485838, -0.197989,
		39.384792, 28.194321, 20.724733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120419, 28.116667, 20.257288>,  <39.980721, 28.534409, 20.863325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120419, 28.116667, 20.257288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.720753, 28.132174, 20.251970>,  <39.480953, 28.141478, 20.248779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.720753, 28.132174, 20.251970>,  <40.120419, 28.116667, 20.257288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720753, 28.132174, 20.251970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005744, -0.188741, -0.982010,
		-0.040578, -0.981262, 0.188359,
		-0.999160, 0.038766, -0.013295,
		39.421005, 28.143803, 20.247982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944683, 27.531242, 19.773653>,  <40.120419, 28.116667, 20.257288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944683, 27.531242, 19.773653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623196, 27.768875, 19.786926>,  <39.430302, 27.911455, 19.794889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623196, 27.768875, 19.786926>,  <39.944683, 27.531242, 19.773653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623196, 27.768875, 19.786926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087150, -0.062371, -0.994241,
		-0.588593, -0.801982, 0.101903,
		-0.803718, 0.594083, 0.033181,
		39.382080, 27.947100, 19.796881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501232, 27.214388, 19.331989>,  <39.944683, 27.531242, 19.773653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501232, 27.214388, 19.331989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347122, 27.582344, 19.361286>,  <39.254654, 27.803118, 19.378864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347122, 27.582344, 19.361286>,  <39.501232, 27.214388, 19.331989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347122, 27.582344, 19.361286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032063, 0.065977, -0.997306,
		-0.922243, -0.386589, 0.004074,
		-0.385279, 0.919889, 0.073242,
		39.231537, 27.858311, 19.383259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056923, 27.198578, 18.876057>,  <39.501232, 27.214388, 19.331989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056923, 27.198578, 18.876057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108181, 27.592550, 18.922510>,  <39.138935, 27.828934, 18.950382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.108181, 27.592550, 18.922510>,  <39.056923, 27.198578, 18.876057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108181, 27.592550, 18.922510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186899, 0.091019, -0.978154,
		-0.973986, 0.147052, -0.172419,
		0.128146, 0.984932, 0.116135,
		39.146626, 27.888029, 18.957350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634594, 27.553486, 18.424479>,  <39.056923, 27.198578, 18.876057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634594, 27.553486, 18.424479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935520, 27.800009, 18.517590>,  <39.116077, 27.947922, 18.573456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935520, 27.800009, 18.517590>,  <38.634594, 27.553486, 18.424479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935520, 27.800009, 18.517590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269626, 0.034349, -0.962352,
		-0.601098, 0.786758, -0.140331,
		0.752318, 0.616305, 0.232777,
		39.161217, 27.984900, 18.587423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639400, 28.178732, 17.991297>,  <38.634594, 27.553486, 18.424479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639400, 28.178732, 17.991297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.020229, 28.124811, 18.101124>,  <39.248726, 28.092459, 18.167021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.020229, 28.124811, 18.101124>,  <38.639400, 28.178732, 17.991297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020229, 28.124811, 18.101124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291267, 0.125465, -0.948379,
		0.093394, 0.982897, 0.158715,
		0.952072, -0.134802, 0.274568,
		39.305851, 28.084370, 18.183495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092106, 28.706398, 17.746607>,  <38.639400, 28.178732, 17.991297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092106, 28.706398, 17.746607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319702, 28.383942, 17.811584>,  <39.456261, 28.190468, 17.850571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319702, 28.383942, 17.811584>,  <39.092106, 28.706398, 17.746607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319702, 28.383942, 17.811584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446089, 0.136626, -0.884499,
		0.690837, 0.575734, 0.437349,
		0.568989, -0.806141, 0.162443,
		39.490398, 28.142099, 17.860317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383396, 28.968845, 17.639107>,  <39.092106, 28.706398, 17.746607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383396, 28.968845, 17.639107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065666, 28.840902, 17.432518>,  <37.875027, 28.764137, 17.308565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.065666, 28.840902, 17.432518>,  <38.383396, 28.968845, 17.639107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065666, 28.840902, 17.432518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606333, 0.469966, 0.641477,
		0.037543, 0.822693, -0.567245,
		-0.794324, -0.319857, -0.516470,
		37.827370, 28.744946, 17.277576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898991, 29.550350, 17.388670>,  <38.383396, 28.968845, 17.639107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898991, 29.550350, 17.388670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688465, 29.214045, 17.439444>,  <37.562149, 29.012260, 17.469908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.688465, 29.214045, 17.439444>,  <37.898991, 29.550350, 17.388670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688465, 29.214045, 17.439444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602957, 0.474290, 0.641477,
		-0.599533, 0.261082, -0.756569,
		-0.526311, -0.840765, 0.126932,
		37.530571, 28.961815, 17.477524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197136, 29.793913, 17.580788>,  <37.898991, 29.550350, 17.388670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197136, 29.793913, 17.580788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.238888, 29.412895, 17.695168>,  <37.263939, 29.184284, 17.763796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.238888, 29.412895, 17.695168>,  <37.197136, 29.793913, 17.580788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238888, 29.412895, 17.695168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502646, 0.197571, 0.841613,
		-0.858168, -0.231578, -0.458169,
		0.104378, -0.952542, 0.285951,
		37.270203, 29.127132, 17.780952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677883, 29.773663, 18.080540>,  <37.197136, 29.793913, 17.580788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677883, 29.773663, 18.080540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869831, 29.434183, 18.169474>,  <36.985001, 29.230495, 18.222834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.869831, 29.434183, 18.169474>,  <36.677883, 29.773663, 18.080540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869831, 29.434183, 18.169474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417634, 0.001891, 0.908613,
		-0.771561, -0.528870, -0.353539,
		0.479870, -0.848701, 0.222333,
		37.013790, 29.179573, 18.236174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158592, 29.424540, 18.414484>,  <36.677883, 29.773663, 18.080540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158592, 29.424540, 18.414484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505741, 29.265690, 18.533873>,  <36.714031, 29.170380, 18.605507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.505741, 29.265690, 18.533873>,  <36.158592, 29.424540, 18.414484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505741, 29.265690, 18.533873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296992, 0.066866, 0.952536,
		-0.398233, -0.915326, -0.059912,
		0.867875, -0.397124, 0.298472,
		36.766102, 29.146553, 18.623415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897999, 29.090097, 18.954735>,  <36.158592, 29.424540, 18.414484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897999, 29.090097, 18.954735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294071, 29.099051, 19.009935>,  <36.531715, 29.104424, 19.043056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.294071, 29.099051, 19.009935>,  <35.897999, 29.090097, 18.954735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294071, 29.099051, 19.009935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135157, -0.099172, 0.985849,
		0.035753, -0.994818, -0.095173,
		0.990179, 0.022384, 0.138002,
		36.591125, 29.105766, 19.051336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187466, 28.444071, 19.178213>,  <35.897999, 29.090097, 18.954735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187466, 28.444071, 19.178213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429337, 28.741257, 19.293013>,  <36.574459, 28.919567, 19.361893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429337, 28.741257, 19.293013>,  <36.187466, 28.444071, 19.178213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429337, 28.741257, 19.293013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206590, -0.201701, 0.957412,
		0.769209, -0.638219, 0.031524,
		0.604680, 0.742963, 0.286999,
		36.610741, 28.964146, 19.379112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679592, 28.189756, 19.792044>,  <36.187466, 28.444071, 19.178213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679592, 28.189756, 19.792044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694714, 28.587986, 19.826464>,  <36.703785, 28.826923, 19.847116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.694714, 28.587986, 19.826464>,  <36.679592, 28.189756, 19.792044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694714, 28.587986, 19.826464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175950, -0.078136, 0.981293,
		0.983673, -0.052236, 0.172218,
		0.037802, 0.995573, 0.086051,
		36.706055, 28.886658, 19.852280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954281, 28.256779, 20.438404>,  <36.679592, 28.189756, 19.792044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954281, 28.256779, 20.438404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828243, 28.628611, 20.361881>,  <36.752621, 28.851709, 20.315968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.828243, 28.628611, 20.361881>,  <36.954281, 28.256779, 20.438404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828243, 28.628611, 20.361881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021293, 0.208450, 0.977801,
		0.948821, 0.304027, -0.085475,
		-0.315095, 0.929578, -0.191309,
		36.733715, 28.907484, 20.304489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443214, 28.745653, 20.662218>,  <36.954281, 28.256779, 20.438404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443214, 28.745653, 20.662218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068123, 28.884413, 20.669428>,  <36.843067, 28.967669, 20.673754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.068123, 28.884413, 20.669428>,  <37.443214, 28.745653, 20.662218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068123, 28.884413, 20.669428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120075, 0.275015, 0.953912,
		0.325955, 0.896675, -0.299544,
		-0.937729, 0.346901, 0.018026,
		36.786804, 28.988483, 20.674835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483177, 29.401018, 21.040045>,  <37.443214, 28.745653, 20.662218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483177, 29.401018, 21.040045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087460, 29.343536, 21.050179>,  <36.850029, 29.309048, 21.056259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.087460, 29.343536, 21.050179>,  <37.483177, 29.401018, 21.040045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087460, 29.343536, 21.050179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003573, 0.197416, 0.980313,
		-0.145877, 0.969730, -0.195817,
		-0.989296, -0.143705, 0.025334,
		36.790672, 29.300425, 21.057779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185863, 30.033421, 21.455698>,  <37.483177, 29.401018, 21.040045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185863, 30.033421, 21.455698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936230, 29.722282, 21.485308>,  <36.786449, 29.535599, 21.503073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.936230, 29.722282, 21.485308>,  <37.185863, 30.033421, 21.455698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936230, 29.722282, 21.485308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036864, 0.123944, 0.991604,
		-0.780490, 0.616112, -0.106026,
		-0.624080, -0.777846, 0.074025,
		36.749004, 29.488928, 21.507515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586193, 30.282177, 21.931170>,  <37.185863, 30.033421, 21.455698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586193, 30.282177, 21.931170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585835, 29.883215, 21.959976>,  <36.585621, 29.643839, 21.977261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585835, 29.883215, 21.959976>,  <36.586193, 30.282177, 21.931170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585835, 29.883215, 21.959976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429706, 0.065410, 0.900597,
		-0.902968, -0.030139, -0.428649,
		-0.000895, -0.997403, 0.072014,
		36.585567, 29.583994, 21.981581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055317, 30.038481, 22.335035>,  <36.586193, 30.282177, 21.931170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055317, 30.038481, 22.335035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305408, 29.726471, 22.345234>,  <36.455463, 29.539265, 22.351353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.305408, 29.726471, 22.345234>,  <36.055317, 30.038481, 22.335035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305408, 29.726471, 22.345234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337820, -0.241041, 0.909823,
		-0.703540, -0.577460, -0.414213,
		0.625228, -0.780025, 0.025495,
		36.492977, 29.492464, 22.352882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744267, 29.585892, 22.686054>,  <36.055317, 30.038481, 22.335035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744267, 29.585892, 22.686054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129196, 29.479692, 22.709541>,  <36.360153, 29.415974, 22.723633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129196, 29.479692, 22.709541>,  <35.744267, 29.585892, 22.686054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129196, 29.479692, 22.709541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176466, -0.445507, 0.877715,
		-0.206873, -0.855005, -0.475573,
		0.962322, -0.265498, 0.058716,
		36.417892, 29.400043, 22.727156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737759, 28.934889, 23.053968>,  <35.744267, 29.585892, 22.686054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737759, 28.934889, 23.053968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111881, 29.070101, 23.095806>,  <36.336353, 29.151228, 23.120909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.111881, 29.070101, 23.095806>,  <35.737759, 28.934889, 23.053968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111881, 29.070101, 23.095806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046820, -0.174765, 0.983496,
		0.350729, -0.924767, -0.147633,
		0.935306, 0.338028, 0.104593,
		36.392471, 29.171509, 23.127184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016262, 28.371256, 23.421005>,  <35.737759, 28.934889, 23.053968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016262, 28.371256, 23.421005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263489, 28.682058, 23.468758>,  <36.411823, 28.868540, 23.497410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.263489, 28.682058, 23.468758>,  <36.016262, 28.371256, 23.421005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263489, 28.682058, 23.468758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092039, -0.222341, 0.970615,
		0.780719, -0.588918, -0.208937,
		0.618067, 0.777007, 0.119382,
		36.448910, 28.915161, 23.504572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665035, 28.132122, 23.730858>,  <36.016262, 28.371256, 23.421005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665035, 28.132122, 23.730858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647549, 28.527946, 23.785786>,  <36.637054, 28.765442, 23.818743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.647549, 28.527946, 23.785786>,  <36.665035, 28.132122, 23.730858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647549, 28.527946, 23.785786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200412, -0.125972, 0.971579,
		0.978736, 0.069997, -0.192812,
		-0.043719, 0.989561, 0.137321,
		36.634434, 28.824816, 23.826982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138676, 28.217285, 24.229391>,  <36.665035, 28.132122, 23.730858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138676, 28.217285, 24.229391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901089, 28.539049, 24.233839>,  <36.758537, 28.732107, 24.236507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.901089, 28.539049, 24.233839>,  <37.138676, 28.217285, 24.229391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901089, 28.539049, 24.233839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064156, -0.061143, 0.996065,
		0.801927, 0.590917, 0.087924,
		-0.593967, 0.804412, 0.011121,
		36.722897, 28.780373, 24.237175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215565, 28.490761, 24.905832>,  <37.138676, 28.217285, 24.229391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215565, 28.490761, 24.905832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882893, 28.675858, 24.783077>,  <36.683289, 28.786915, 24.709425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882893, 28.675858, 24.783077>,  <37.215565, 28.490761, 24.905832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882893, 28.675858, 24.783077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307338, 0.076668, 0.948507,
		0.462442, 0.883172, 0.078455,
		-0.831680, 0.462741, -0.306887,
		36.633389, 28.814680, 24.691011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.223690, 28.418209, 29.812164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974606, 28.729752, 29.782196>,  <38.825153, 28.916677, 29.764215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974606, 28.729752, 29.782196>,  <39.223690, 28.418209, 29.812164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974606, 28.729752, 29.782196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075790, 0.035264, 0.996500,
		0.778770, 0.626213, 0.037070,
		-0.622714, 0.778854, -0.074923,
		38.787792, 28.963408, 29.759720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492329, 28.917131, 30.415791>,  <39.223690, 28.418209, 29.812164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492329, 28.917131, 30.415791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.126518, 29.028069, 30.297991>,  <38.907032, 29.094631, 30.227312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.126518, 29.028069, 30.297991>,  <39.492329, 28.917131, 30.415791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126518, 29.028069, 30.297991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220490, 0.268617, 0.937672,
		0.339162, 0.922457, -0.184506,
		-0.914523, 0.277341, -0.294498,
		38.852161, 29.111271, 30.209642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365971, 29.590946, 30.667784>,  <39.492329, 28.917131, 30.415791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365971, 29.590946, 30.667784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007992, 29.419971, 30.616619>,  <38.793205, 29.317387, 30.585920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.007992, 29.419971, 30.616619>,  <39.365971, 29.590946, 30.667784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007992, 29.419971, 30.616619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211785, 0.154645, 0.965004,
		-0.392699, 0.890719, -0.228925,
		-0.894949, -0.427439, -0.127912,
		38.739506, 29.291740, 30.578245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954617, 30.042149, 31.002829>,  <39.365971, 29.590946, 30.667784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954617, 30.042149, 31.002829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.735294, 29.708534, 30.978340>,  <38.603703, 29.508366, 30.963646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.735294, 29.708534, 30.978340>,  <38.954617, 30.042149, 31.002829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735294, 29.708534, 30.978340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330403, 0.148793, 0.932038,
		-0.768243, 0.531267, -0.357152,
		-0.548303, -0.834036, -0.061223,
		38.570805, 29.458324, 30.959972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424534, 30.207384, 31.357174>,  <38.954617, 30.042149, 31.002829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424534, 30.207384, 31.357174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372314, 29.810822, 31.353891>,  <38.340984, 29.572884, 31.351921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.372314, 29.810822, 31.353891>,  <38.424534, 30.207384, 31.357174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372314, 29.810822, 31.353891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533131, 0.063219, 0.843668,
		-0.835900, 0.114514, -0.536803,
		-0.130548, -0.991408, -0.008207,
		38.333149, 29.513399, 31.351429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827122, 30.144962, 31.729742>,  <38.424534, 30.207384, 31.357174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827122, 30.144962, 31.729742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968182, 29.770676, 31.726271>,  <38.052818, 29.546104, 31.724188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968182, 29.770676, 31.726271>,  <37.827122, 30.144962, 31.729742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968182, 29.770676, 31.726271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426333, -0.168916, 0.888655,
		-0.832994, -0.309684, -0.458494,
		0.352650, -0.935715, -0.008678,
		38.073978, 29.489962, 31.723667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315247, 29.640411, 31.844877>,  <37.827122, 30.144962, 31.729742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315247, 29.640411, 31.844877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635643, 29.423582, 31.946512>,  <37.827881, 29.293484, 32.007492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635643, 29.423582, 31.946512>,  <37.315247, 29.640411, 31.844877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635643, 29.423582, 31.946512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330190, -0.045988, 0.942793,
		-0.499381, -0.839070, -0.215824,
		0.800995, -0.542076, 0.254087,
		37.875942, 29.260960, 32.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056583, 29.164927, 32.278927>,  <37.315247, 29.640411, 31.844877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056583, 29.164927, 32.278927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440197, 29.214418, 32.380863>,  <37.670364, 29.244114, 32.442024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.440197, 29.214418, 32.380863>,  <37.056583, 29.164927, 32.278927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440197, 29.214418, 32.380863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267045, 0.094562, 0.959033,
		0.094562, -0.987800, 0.123730,
		-0.959033, -0.123730, -0.254845,
		37.727905, 29.251537, 32.457317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225266, 28.608452, 32.784817>,  <37.056583, 29.164927, 32.278927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225266, 28.608452, 32.784817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.507092, 28.890076, 32.820332>,  <37.676189, 29.059050, 32.841640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.507092, 28.890076, 32.820332>,  <37.225266, 28.608452, 32.784817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507092, 28.890076, 32.820332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123095, -0.001970, 0.992393,
		0.698877, -0.710139, 0.085279,
		0.704569, 0.704058, 0.088791,
		37.718464, 29.101294, 32.846970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787567, 28.384264, 33.217545>,  <37.225266, 28.608452, 32.784817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787567, 28.384264, 33.217545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.814499, 28.783298, 33.210785>,  <37.830658, 29.022720, 33.206730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.814499, 28.783298, 33.210785>,  <37.787567, 28.384264, 33.217545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814499, 28.783298, 33.210785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097645, 0.023444, 0.994945,
		0.992941, -0.065341, 0.098987,
		0.067331, 0.997587, -0.016898,
		37.834698, 29.082575, 33.205715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240730, 28.474218, 33.775459>,  <37.787567, 28.384264, 33.217545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240730, 28.474218, 33.775459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061813, 28.829060, 33.729889>,  <37.954464, 29.041964, 33.702549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061813, 28.829060, 33.729889>,  <38.240730, 28.474218, 33.775459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061813, 28.829060, 33.729889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056001, 0.099346, 0.993476,
		0.892632, 0.450755, 0.005242,
		-0.447294, 0.887102, -0.113922,
		37.927624, 29.095190, 33.695713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546692, 28.886232, 34.176411>,  <38.240730, 28.474218, 33.775459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546692, 28.886232, 34.176411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.210064, 29.096312, 34.125923>,  <38.008087, 29.222359, 34.095631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.210064, 29.096312, 34.125923>,  <38.546692, 28.886232, 34.176411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210064, 29.096312, 34.125923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113087, 0.057183, 0.991938,
		0.528181, 0.849057, 0.011270,
		-0.841568, 0.525197, -0.126220,
		37.957592, 29.253870, 34.088058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570850, 29.349134, 34.718197>,  <38.546692, 28.886232, 34.176411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570850, 29.349134, 34.718197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.197857, 29.303082, 34.581249>,  <37.974060, 29.275450, 34.499081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.197857, 29.303082, 34.581249>,  <38.570850, 29.349134, 34.718197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197857, 29.303082, 34.581249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346515, 0.017553, 0.937880,
		-0.101973, 0.993195, -0.056264,
		-0.932485, -0.115134, -0.342367,
		37.918110, 29.268541, 34.478539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786156, 29.924026, 34.419983>,  <38.570850, 29.349134, 34.718197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786156, 29.924026, 34.419983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699665, 30.256702, 34.624546>,  <38.647770, 30.456308, 34.747284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699665, 30.256702, 34.624546>,  <38.786156, 29.924026, 34.419983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699665, 30.256702, 34.624546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186562, 0.549341, -0.814505,
		-0.958353, -0.080709, -0.273944,
		-0.216226, 0.831691, 0.511406,
		38.634796, 30.506210, 34.777969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319695, 30.298912, 34.054802>,  <38.786156, 29.924026, 34.419983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319695, 30.298912, 34.054802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503613, 30.556890, 34.298977>,  <38.613964, 30.711678, 34.445480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503613, 30.556890, 34.298977>,  <38.319695, 30.298912, 34.054802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503613, 30.556890, 34.298977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150136, 0.621054, -0.769254,
		-0.875240, 0.445349, 0.188730,
		0.459798, 0.644947, 0.610434,
		38.641552, 30.750374, 34.482105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025440, 30.951710, 33.944633>,  <38.319695, 30.298912, 34.054802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025440, 30.951710, 33.944633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.377064, 31.042376, 34.112381>,  <38.588039, 31.096775, 34.213032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.377064, 31.042376, 34.112381>,  <38.025440, 30.951710, 33.944633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377064, 31.042376, 34.112381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090687, 0.784147, -0.613914,
		-0.468001, 0.577700, 0.668758,
		0.879062, 0.226665, 0.419371,
		38.640781, 31.110374, 34.238194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960297, 31.724812, 34.168217>,  <38.025440, 30.951710, 33.944633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960297, 31.724812, 34.168217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346378, 31.624432, 34.138798>,  <38.578026, 31.564203, 34.121147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.346378, 31.624432, 34.138798>,  <37.960297, 31.724812, 34.168217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346378, 31.624432, 34.138798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111956, 0.650704, -0.751033,
		0.236326, 0.716665, 0.656156,
		0.965203, -0.250949, -0.073543,
		38.635941, 31.549147, 34.116734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305317, 32.381344, 33.965908>,  <37.960297, 31.724812, 34.168217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305317, 32.381344, 33.965908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.553669, 32.080223, 33.878460>,  <38.702682, 31.899551, 33.825993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.553669, 32.080223, 33.878460>,  <38.305317, 32.381344, 33.965908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553669, 32.080223, 33.878460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357495, 0.520114, -0.775680,
		0.697639, 0.403452, 0.592053,
		0.620885, -0.752800, -0.218620,
		38.739933, 31.854383, 33.812874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936131, 32.723354, 33.739971>,  <38.305317, 32.381344, 33.965908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936131, 32.723354, 33.739971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.958187, 32.354568, 33.586636>,  <38.971420, 32.133297, 33.494633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.958187, 32.354568, 33.586636>,  <38.936131, 32.723354, 33.739971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958187, 32.354568, 33.586636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542992, 0.349878, -0.763377,
		0.837925, -0.166058, 0.519909,
		0.055140, -0.921960, -0.383340,
		38.974728, 32.077980, 33.471634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499622, 32.775227, 33.305962>,  <38.936131, 32.723354, 33.739971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499622, 32.775227, 33.305962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.313866, 32.441948, 33.185875>,  <39.202412, 32.241982, 33.113823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.313866, 32.441948, 33.185875>,  <39.499622, 32.775227, 33.305962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313866, 32.441948, 33.185875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426438, 0.086735, -0.900349,
		0.776206, -0.546134, 0.315028,
		-0.464387, -0.833195, -0.300216,
		39.174549, 32.191990, 33.095810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974110, 32.391605, 32.856121>,  <39.499622, 32.775227, 33.305962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974110, 32.391605, 32.856121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596546, 32.294991, 32.766060>,  <39.370007, 32.237022, 32.712025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.596546, 32.294991, 32.766060>,  <39.974110, 32.391605, 32.856121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596546, 32.294991, 32.766060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222558, 0.038330, -0.974166,
		0.243925, -0.969635, 0.017575,
		-0.943912, -0.241535, -0.225150,
		39.313374, 32.222530, 32.698517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080193, 32.066669, 32.216206>,  <39.974110, 32.391605, 32.856121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080193, 32.066669, 32.216206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683315, 32.092880, 32.258640>,  <39.445187, 32.108608, 32.284103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683315, 32.092880, 32.258640>,  <40.080193, 32.066669, 32.216206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683315, 32.092880, 32.258640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093768, 0.168745, -0.981189,
		-0.082201, -0.983479, -0.161283,
		-0.992195, 0.065531, 0.106089,
		39.385658, 32.112537, 32.290466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765728, 31.622375, 31.764019>,  <40.080193, 32.066669, 32.216206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765728, 31.622375, 31.764019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460964, 31.871595, 31.834782>,  <39.278107, 32.021126, 31.877239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460964, 31.871595, 31.834782>,  <39.765728, 31.622375, 31.764019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460964, 31.871595, 31.834782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164192, 0.078411, -0.983307,
		-0.626521, -0.778242, 0.042558,
		-0.761913, 0.623050, 0.176907,
		39.232391, 32.058510, 31.887854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282372, 31.411592, 31.363438>,  <39.765728, 31.622375, 31.764019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282372, 31.411592, 31.363438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183636, 31.796019, 31.413105>,  <39.124393, 32.026676, 31.442905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.183636, 31.796019, 31.413105>,  <39.282372, 31.411592, 31.363438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183636, 31.796019, 31.413105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104168, 0.101077, -0.989410,
		-0.963441, -0.257163, 0.075162,
		-0.246843, 0.961067, 0.124170,
		39.109581, 32.084339, 31.450356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804810, 31.484070, 30.969992>,  <39.282372, 31.411592, 31.363438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804810, 31.484070, 30.969992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915668, 31.862976, 31.034334>,  <38.982182, 32.090321, 31.072941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915668, 31.862976, 31.034334>,  <38.804810, 31.484070, 30.969992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915668, 31.862976, 31.034334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053543, 0.182381, -0.981769,
		-0.959335, 0.263480, 0.101265,
		0.277146, 0.947267, 0.160857,
		38.998814, 32.147156, 31.082592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437073, 31.918890, 30.489405>,  <38.804810, 31.484070, 30.969992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437073, 31.918890, 30.489405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759445, 32.133759, 30.588942>,  <38.952869, 32.262680, 30.648663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.759445, 32.133759, 30.588942>,  <38.437073, 31.918890, 30.489405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759445, 32.133759, 30.588942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182428, 0.174535, -0.967604,
		-0.563200, 0.825218, 0.042668,
		0.805932, 0.537170, 0.248841,
		39.001225, 32.294910, 30.663593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390007, 32.530403, 30.079185>,  <38.437073, 31.918890, 30.489405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390007, 32.530403, 30.079185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770943, 32.514145, 30.200109>,  <38.999504, 32.504391, 30.272663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.770943, 32.514145, 30.200109>,  <38.390007, 32.530403, 30.079185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770943, 32.514145, 30.200109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305015, 0.116821, -0.945156,
		0.003098, 0.992321, 0.123650,
		0.952343, -0.040644, 0.302311,
		39.056644, 32.501953, 30.290802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730194, 33.109756, 29.748320>,  <38.390007, 32.530403, 30.079185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730194, 33.109756, 29.748320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012962, 32.833752, 29.810482>,  <39.182625, 32.668148, 29.847778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012962, 32.833752, 29.810482>,  <38.730194, 33.109756, 29.748320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012962, 32.833752, 29.810482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224434, 0.010471, -0.974433,
		0.670740, 0.723725, 0.162263,
		0.706921, -0.690009, 0.155405,
		39.225037, 32.626747, 29.857103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901218, 33.914501, 29.805771>,  <38.730194, 33.109756, 29.748320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901218, 33.914501, 29.805771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632420, 34.205952, 29.752829>,  <38.471138, 34.380821, 29.721064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.632420, 34.205952, 29.752829>,  <38.901218, 33.914501, 29.805771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632420, 34.205952, 29.752829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006385, 0.173022, 0.984897,
		0.740523, 0.662697, -0.111619,
		-0.672001, 0.728626, -0.132358,
		38.430820, 34.424541, 29.713121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169949, 34.418236, 30.247778>,  <38.901218, 33.914501, 29.805771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169949, 34.418236, 30.247778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791878, 34.526039, 30.174015>,  <38.565037, 34.590721, 30.129757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.791878, 34.526039, 30.174015>,  <39.169949, 34.418236, 30.247778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791878, 34.526039, 30.174015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117556, 0.246030, 0.962107,
		0.304662, 0.931040, -0.200861,
		-0.945178, 0.269505, -0.184405,
		38.508324, 34.606892, 30.118694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995838, 35.114624, 30.630461>,  <39.169949, 34.418236, 30.247778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995838, 35.114624, 30.630461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.648632, 34.927933, 30.562668>,  <38.440308, 34.815918, 30.521992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.648632, 34.927933, 30.562668>,  <38.995838, 35.114624, 30.630461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648632, 34.927933, 30.562668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289886, 0.199200, 0.936101,
		-0.403140, 0.861677, -0.308205,
		-0.868012, -0.466724, -0.169482,
		38.388229, 34.787914, 30.511824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512794, 35.515884, 30.981924>,  <38.995838, 35.114624, 30.630461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512794, 35.515884, 30.981924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292900, 35.186779, 30.924171>,  <38.160961, 34.989315, 30.889519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292900, 35.186779, 30.924171>,  <38.512794, 35.515884, 30.981924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292900, 35.186779, 30.924171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474814, 0.165567, 0.864372,
		-0.687270, 0.543734, -0.481679,
		-0.549738, -0.822765, -0.144383,
		38.127979, 34.939949, 30.880856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778557, 35.704395, 31.125319>,  <38.512794, 35.515884, 30.981924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778557, 35.704395, 31.125319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794491, 35.310055, 31.190443>,  <37.804050, 35.073448, 31.229517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794491, 35.310055, 31.190443>,  <37.778557, 35.704395, 31.125319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794491, 35.310055, 31.190443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477452, 0.124358, 0.869813,
		-0.877755, -0.112380, -0.465744,
		0.039830, -0.985853, 0.162811,
		37.806438, 35.014297, 31.239286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063915, 35.496040, 31.361107>,  <37.778557, 35.704395, 31.125319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063915, 35.496040, 31.361107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304668, 35.196354, 31.471674>,  <37.449120, 35.016541, 31.538013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.304668, 35.196354, 31.471674>,  <37.063915, 35.496040, 31.361107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304668, 35.196354, 31.471674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608442, -0.206045, 0.766383,
		-0.517235, -0.629458, -0.579872,
		0.601885, -0.749219, 0.276415,
		37.485233, 34.971588, 31.554598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650574, 35.020363, 31.434931>,  <37.063915, 35.496040, 31.361107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650574, 35.020363, 31.434931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968811, 34.887547, 31.637625>,  <37.159752, 34.807858, 31.759241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.968811, 34.887547, 31.637625>,  <36.650574, 35.020363, 31.434931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968811, 34.887547, 31.637625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592878, -0.254684, 0.763958,
		-0.124612, -0.908230, -0.399487,
		0.795593, -0.332045, 0.506733,
		37.207489, 34.787933, 31.789644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482975, 34.270504, 31.649595>,  <36.650574, 35.020363, 31.434931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482975, 34.270504, 31.649595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.757572, 34.404526, 31.907730>,  <36.922333, 34.484940, 32.062611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.757572, 34.404526, 31.907730>,  <36.482975, 34.270504, 31.649595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757572, 34.404526, 31.907730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576009, -0.291067, 0.763868,
		0.443776, -0.896112, -0.006820,
		0.686496, 0.335058, 0.645337,
		36.963520, 34.505043, 32.101330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465115, 33.737160, 32.222271>,  <36.482975, 34.270504, 31.649595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465115, 33.737160, 32.222271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662346, 34.052662, 32.369099>,  <36.780685, 34.241962, 32.457195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.662346, 34.052662, 32.369099>,  <36.465115, 33.737160, 32.222271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662346, 34.052662, 32.369099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366498, -0.194341, 0.909896,
		0.789020, -0.583182, 0.193251,
		0.493078, 0.788752, 0.367073,
		36.810268, 34.289288, 32.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700500, 33.517170, 32.848824>,  <36.465115, 33.737160, 32.222271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700500, 33.517170, 32.848824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710503, 33.917027, 32.852589>,  <36.716503, 34.156940, 32.854847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710503, 33.917027, 32.852589>,  <36.700500, 33.517170, 32.848824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710503, 33.917027, 32.852589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511210, 0.004696, 0.859443,
		0.859092, -0.026307, 0.511145,
		0.025009, 0.999643, 0.009414,
		36.718006, 34.216919, 32.855412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834011, 33.694771, 33.545967>,  <36.700500, 33.517170, 32.848824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834011, 33.694771, 33.545967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681103, 34.033665, 33.398426>,  <36.589355, 34.237003, 33.309902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.681103, 34.033665, 33.398426>,  <36.834011, 33.694771, 33.545967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681103, 34.033665, 33.398426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597138, 0.078131, 0.798324,
		0.705190, 0.525435, 0.476052,
		-0.382273, 0.847239, -0.368854,
		36.566422, 34.287838, 33.287769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822174, 34.120434, 34.013344>,  <36.834011, 33.694771, 33.545967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822174, 34.120434, 34.013344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535774, 34.246246, 33.764050>,  <36.363934, 34.321735, 33.614471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.535774, 34.246246, 33.764050>,  <36.822174, 34.120434, 34.013344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535774, 34.246246, 33.764050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671032, -0.063871, 0.738672,
		0.192528, 0.947096, 0.256792,
		-0.715995, 0.314530, -0.623235,
		36.320976, 34.340607, 33.577080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.774208, 33.988419, 26.227894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391560, 34.071495, 26.146173>,  <39.161968, 34.121342, 26.097141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391560, 34.071495, 26.146173>,  <39.774208, 33.988419, 26.227894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391560, 34.071495, 26.146173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105017, 0.408286, 0.906793,
		0.271743, 0.888914, -0.368765,
		-0.956623, 0.207688, -0.204300,
		39.104572, 34.133801, 26.084883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773537, 34.614395, 26.511988>,  <39.774208, 33.988419, 26.227894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773537, 34.614395, 26.511988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396427, 34.483391, 26.486994>,  <39.170162, 34.404789, 26.471996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396427, 34.483391, 26.486994>,  <39.773537, 34.614395, 26.511988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396427, 34.483391, 26.486994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142779, 0.227212, 0.963322,
		-0.301305, 0.917120, -0.260973,
		-0.942778, -0.327515, -0.062486,
		39.113594, 34.385136, 26.468248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451984, 35.207214, 26.899649>,  <39.773537, 34.614395, 26.511988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451984, 35.207214, 26.899649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216503, 34.884220, 26.884686>,  <39.075214, 34.690426, 26.875708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216503, 34.884220, 26.884686>,  <39.451984, 35.207214, 26.899649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216503, 34.884220, 26.884686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248258, 0.136568, 0.959019,
		-0.769284, 0.573863, -0.280862,
		-0.588703, -0.807484, -0.037407,
		39.039894, 34.641975, 26.873463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809696, 35.349010, 27.299101>,  <39.451984, 35.207214, 26.899649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809696, 35.349010, 27.299101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758148, 34.952534, 27.286932>,  <38.727219, 34.714645, 27.279631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758148, 34.952534, 27.286932>,  <38.809696, 35.349010, 27.299101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758148, 34.952534, 27.286932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218835, -0.001495, 0.975761,
		-0.967214, 0.132408, -0.216715,
		-0.128874, -0.991194, -0.030422,
		38.719486, 34.655174, 27.277805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096767, 35.307125, 27.491562>,  <38.809696, 35.349010, 27.299101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096767, 35.307125, 27.491562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268505, 34.951180, 27.553270>,  <38.371548, 34.737614, 27.590296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268505, 34.951180, 27.553270>,  <38.096767, 35.307125, 27.491562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268505, 34.951180, 27.553270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258557, 0.042558, 0.965058,
		-0.865337, -0.454235, -0.211809,
		0.429349, -0.889865, 0.154273,
		38.397308, 34.684219, 27.599552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627018, 34.851463, 27.968676>,  <38.096767, 35.307125, 27.491562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627018, 34.851463, 27.968676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989616, 34.683842, 27.989283>,  <38.207176, 34.583267, 28.001646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989616, 34.683842, 27.989283>,  <37.627018, 34.851463, 27.968676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989616, 34.683842, 27.989283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192314, -0.301191, 0.933969,
		-0.375872, -0.856547, -0.353620,
		0.906497, -0.419059, 0.051517,
		38.261566, 34.558125, 28.004738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549603, 34.191448, 28.242210>,  <37.627018, 34.851463, 27.968676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549603, 34.191448, 28.242210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923359, 34.312534, 28.317341>,  <38.147614, 34.385185, 28.362419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923359, 34.312534, 28.317341>,  <37.549603, 34.191448, 28.242210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923359, 34.312534, 28.317341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149542, -0.145243, 0.978029,
		0.323345, -0.941949, -0.090445,
		0.934390, 0.302716, 0.187824,
		38.203674, 34.403351, 28.373688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820919, 33.792377, 28.818838>,  <37.549603, 34.191448, 28.242210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820919, 33.792377, 28.818838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056637, 34.114212, 28.789507>,  <38.198067, 34.307312, 28.771908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056637, 34.114212, 28.789507>,  <37.820919, 33.792377, 28.818838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056637, 34.114212, 28.789507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033213, 0.114809, 0.992832,
		0.807237, -0.582633, 0.094378,
		0.589292, 0.804585, -0.073327,
		38.233425, 34.355587, 28.767509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396755, 33.657791, 29.301521>,  <37.820919, 33.792377, 28.818838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396755, 33.657791, 29.301521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377426, 34.054401, 29.253279>,  <38.365829, 34.292366, 29.224333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377426, 34.054401, 29.253279>,  <38.396755, 33.657791, 29.301521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377426, 34.054401, 29.253279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147265, 0.112356, 0.982695,
		0.987916, 0.065249, 0.140587,
		-0.048324, 0.991524, -0.120607,
		38.362930, 34.351860, 29.217096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213566, 33.296192, 29.255571>,  <38.396755, 33.657791, 29.301521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213566, 33.296192, 29.255571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362164, 32.942467, 29.368690>,  <39.451324, 32.730232, 29.436562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362164, 32.942467, 29.368690>,  <39.213566, 33.296192, 29.255571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362164, 32.942467, 29.368690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351598, -0.147911, -0.924393,
		0.859284, 0.442841, 0.255975,
		0.371498, -0.884316, 0.282799,
		39.473614, 32.677174, 29.453529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984314, 33.353958, 29.129082>,  <39.213566, 33.296192, 29.255571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984314, 33.353958, 29.129082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852474, 32.976646, 29.145050>,  <39.773373, 32.750259, 29.154631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852474, 32.976646, 29.145050>,  <39.984314, 33.353958, 29.129082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852474, 32.976646, 29.145050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236132, -0.123302, -0.963866,
		0.914116, -0.308259, 0.263378,
		-0.329595, -0.943278, 0.039923,
		39.753597, 32.693665, 29.157026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426956, 33.028423, 28.685699>,  <39.984314, 33.353958, 29.129082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426956, 33.028423, 28.685699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120106, 32.772408, 28.702944>,  <39.935993, 32.618797, 28.713291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120106, 32.772408, 28.702944>,  <40.426956, 33.028423, 28.685699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120106, 32.772408, 28.702944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212430, -0.316875, -0.924372,
		0.605299, -0.699954, 0.379048,
		-0.767129, -0.640043, 0.043113,
		39.889969, 32.580395, 28.715878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697784, 32.327686, 28.436817>,  <40.426956, 33.028423, 28.685699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697784, 32.327686, 28.436817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299629, 32.349709, 28.405373>,  <40.060738, 32.362923, 28.386507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299629, 32.349709, 28.405373>,  <40.697784, 32.327686, 28.436817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299629, 32.349709, 28.405373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063109, -0.241622, -0.968316,
		-0.072301, -0.968808, 0.237033,
		-0.995384, 0.055051, -0.078610,
		40.001015, 32.366222, 28.381790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570984, 31.651981, 28.074396>,  <40.697784, 32.327686, 28.436817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570984, 31.651981, 28.074396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269547, 31.910191, 28.024754>,  <40.088684, 32.065117, 27.994968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269547, 31.910191, 28.024754>,  <40.570984, 31.651981, 28.074396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269547, 31.910191, 28.024754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023630, -0.162072, -0.986496,
		-0.656918, -0.746347, 0.106883,
		-0.753592, 0.645521, -0.124104,
		40.043468, 32.103848, 27.987522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262512, 31.339376, 27.534964>,  <40.570984, 31.651981, 28.074396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262512, 31.339376, 27.534964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079987, 31.695099, 27.522915>,  <39.970470, 31.908533, 27.515686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079987, 31.695099, 27.522915>,  <40.262512, 31.339376, 27.534964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079987, 31.695099, 27.522915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118747, -0.094410, -0.988426,
		-0.881858, -0.447460, 0.148683,
		-0.456318, 0.889307, -0.030122,
		39.943092, 31.961891, 27.513878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674980, 31.195230, 27.187654>,  <40.262512, 31.339376, 27.534964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674980, 31.195230, 27.187654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747402, 31.586935, 27.151274>,  <39.790855, 31.821957, 27.129446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747402, 31.586935, 27.151274>,  <39.674980, 31.195230, 27.187654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747402, 31.586935, 27.151274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044870, -0.100609, -0.993914,
		-0.982450, 0.175868, -0.062155,
		0.181051, 0.979259, -0.090952,
		39.801716, 31.880713, 27.123987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361668, 31.359200, 26.612589>,  <39.674980, 31.195230, 27.187654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361668, 31.359200, 26.612589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607700, 31.669649, 26.668169>,  <39.755318, 31.855919, 26.701517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607700, 31.669649, 26.668169>,  <39.361668, 31.359200, 26.612589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607700, 31.669649, 26.668169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212881, 0.006214, -0.977059,
		-0.759184, 0.630548, -0.161400,
		0.615079, 0.776126, 0.138949,
		39.792225, 31.902487, 26.709854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158211, 31.840960, 26.096004>,  <39.361668, 31.359200, 26.612589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158211, 31.840960, 26.096004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528057, 31.931271, 26.218710>,  <39.749966, 31.985456, 26.292334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528057, 31.931271, 26.218710>,  <39.158211, 31.840960, 26.096004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528057, 31.931271, 26.218710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303947, 0.048018, -0.951478,
		-0.229553, 0.972995, -0.024226,
		0.924620, 0.225778, 0.306761,
		39.805443, 31.999004, 26.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334080, 32.341084, 25.598713>,  <39.158211, 31.840960, 26.096004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334080, 32.341084, 25.598713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677444, 32.208389, 25.755213>,  <39.883465, 32.128773, 25.849113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677444, 32.208389, 25.755213>,  <39.334080, 32.341084, 25.598713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677444, 32.208389, 25.755213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338935, -0.205707, -0.918046,
		0.385032, 0.920671, -0.064144,
		0.858413, -0.331736, 0.391252,
		39.934967, 32.108868, 25.872589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928272, 32.751766, 25.315399>,  <39.334080, 32.341084, 25.598713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928272, 32.751766, 25.315399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044582, 32.381916, 25.413799>,  <40.114368, 32.160004, 25.472839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044582, 32.381916, 25.413799>,  <39.928272, 32.751766, 25.315399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044582, 32.381916, 25.413799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551750, -0.048011, -0.832627,
		0.781680, 0.377836, 0.496202,
		0.290773, -0.924627, 0.246000,
		40.131813, 32.104527, 25.487600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602139, 32.756306, 25.083599>,  <39.928272, 32.751766, 25.315399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602139, 32.756306, 25.083599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476143, 32.377666, 25.111145>,  <40.400547, 32.150482, 25.127672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476143, 32.377666, 25.111145>,  <40.602139, 32.756306, 25.083599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476143, 32.377666, 25.111145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471693, -0.219093, -0.854110,
		0.823584, -0.236549, 0.515513,
		-0.314985, -0.946595, 0.068863,
		40.381649, 32.093689, 25.131804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914532, 32.489578, 24.578831>,  <40.602139, 32.756306, 25.083599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914532, 32.489578, 24.578831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697304, 32.163456, 24.659185>,  <40.566967, 31.967783, 24.707399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697304, 32.163456, 24.659185>,  <40.914532, 32.489578, 24.578831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697304, 32.163456, 24.659185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232022, -0.375628, -0.897257,
		0.806998, -0.440659, 0.393159,
		-0.543066, -0.815306, 0.200888,
		40.534386, 31.918865, 24.719452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345432, 31.914940, 24.431959>,  <40.914532, 32.489578, 24.578831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345432, 31.914940, 24.431959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976086, 31.762671, 24.412010>,  <40.754478, 31.671309, 24.400042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976086, 31.762671, 24.412010>,  <41.345432, 31.914940, 24.431959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976086, 31.762671, 24.412010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301846, -0.639531, -0.707029,
		0.237251, -0.667899, 0.705424,
		-0.923364, -0.380673, -0.049873,
		40.699078, 31.648468, 24.397049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.842281, 30.756220, 22.500738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.227768, 30.848497, 22.554453>,  <33.459061, 30.903864, 22.586681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.227768, 30.848497, 22.554453>,  <32.842281, 30.756220, 22.500738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227768, 30.848497, 22.554453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128449, -0.040213, 0.990900,
		0.233995, -0.972195, -0.009121,
		0.963715, 0.230694, 0.134287,
		33.516884, 30.917706, 22.594740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944424, 30.487017, 23.190506>,  <32.842281, 30.756220, 22.500738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944424, 30.487017, 23.190506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262062, 30.725941, 23.145546>,  <33.452644, 30.869295, 23.118570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262062, 30.725941, 23.145546>,  <32.944424, 30.487017, 23.190506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262062, 30.725941, 23.145546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105489, 0.046675, 0.993324,
		0.598570, -0.800650, -0.025946,
		0.794094, 0.597312, -0.112398,
		33.500290, 30.905134, 23.111826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631481, 30.207767, 23.594179>,  <32.944424, 30.487017, 23.190506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631481, 30.207767, 23.594179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716648, 30.595011, 23.541370>,  <33.767750, 30.827356, 23.509686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.716648, 30.595011, 23.541370>,  <33.631481, 30.207767, 23.594179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716648, 30.595011, 23.541370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350163, 0.050539, 0.935325,
		0.912169, -0.245375, -0.328235,
		0.212917, 0.968110, -0.132021,
		33.780521, 30.885445, 23.501764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313580, 30.269081, 23.819124>,  <33.631481, 30.207767, 23.594179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313580, 30.269081, 23.819124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130085, 30.623634, 23.844059>,  <34.019989, 30.836367, 23.859020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.130085, 30.623634, 23.844059>,  <34.313580, 30.269081, 23.819124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130085, 30.623634, 23.844059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396419, 0.141368, 0.907120,
		0.795245, 0.440838, -0.416230,
		-0.458734, 0.886384, 0.062335,
		33.992466, 30.889549, 23.862759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829029, 30.702318, 24.184208>,  <34.313580, 30.269081, 23.819124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829029, 30.702318, 24.184208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505295, 30.935450, 24.213284>,  <34.311054, 31.075329, 24.230730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505295, 30.935450, 24.213284>,  <34.829029, 30.702318, 24.184208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505295, 30.935450, 24.213284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272809, 0.263427, 0.925301,
		0.520145, 0.768710, -0.372202,
		-0.809336, 0.582830, 0.072691,
		34.262493, 31.110298, 24.235090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034489, 31.319624, 24.499020>,  <34.829029, 30.702318, 24.184208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034489, 31.319624, 24.499020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641956, 31.261024, 24.548859>,  <34.406437, 31.225864, 24.578762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.641956, 31.261024, 24.548859>,  <35.034489, 31.319624, 24.499020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641956, 31.261024, 24.548859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101268, 0.157163, 0.982367,
		-0.163497, 0.976646, -0.139393,
		-0.981332, -0.146498, 0.124599,
		34.347557, 31.217075, 24.586239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877071, 31.725683, 25.039194>,  <35.034489, 31.319624, 24.499020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877071, 31.725683, 25.039194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546898, 31.500061, 25.030239>,  <34.348793, 31.364687, 25.024866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546898, 31.500061, 25.030239>,  <34.877071, 31.725683, 25.039194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546898, 31.500061, 25.030239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121440, 0.138706, 0.982860,
		-0.551283, 0.814003, -0.182991,
		-0.825433, -0.564056, -0.022386,
		34.299267, 31.330845, 25.023523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432911, 32.106831, 25.328531>,  <34.877071, 31.725683, 25.039194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432911, 32.106831, 25.328531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.307087, 31.729424, 25.370144>,  <34.231594, 31.502979, 25.395111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.307087, 31.729424, 25.370144>,  <34.432911, 32.106831, 25.328531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307087, 31.729424, 25.370144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061129, 0.089234, 0.994133,
		-0.947268, 0.319070, 0.029608,
		-0.314556, -0.943521, 0.104033,
		34.212719, 31.446367, 25.401354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858547, 32.118439, 25.761198>,  <34.432911, 32.106831, 25.328531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858547, 32.118439, 25.761198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.985371, 31.739691, 25.782795>,  <34.061462, 31.512442, 25.795753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.985371, 31.739691, 25.782795>,  <33.858547, 32.118439, 25.761198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985371, 31.739691, 25.782795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042344, 0.042738, 0.998189,
		-0.947461, -0.318767, -0.026544,
		0.317055, -0.946869, 0.053990,
		34.080486, 31.455629, 25.798992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368900, 31.851210, 26.128038>,  <33.858547, 32.118439, 25.761198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368900, 31.851210, 26.128038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.678120, 31.598133, 26.146326>,  <33.863651, 31.446287, 26.157299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.678120, 31.598133, 26.146326>,  <33.368900, 31.851210, 26.128038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678120, 31.598133, 26.146326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216473, -0.195375, 0.956540,
		-0.596263, -0.749352, -0.287996,
		0.773052, -0.632693, 0.045720,
		33.910034, 31.408325, 26.160042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167931, 31.183315, 26.383699>,  <33.368900, 31.851210, 26.128038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167931, 31.183315, 26.383699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563889, 31.184969, 26.440411>,  <33.801464, 31.185961, 26.474438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563889, 31.184969, 26.440411>,  <33.167931, 31.183315, 26.383699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563889, 31.184969, 26.440411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139029, -0.169591, 0.975659,
		0.028078, -0.985506, -0.167301,
		0.989890, 0.004135, 0.141776,
		33.860855, 31.186209, 26.482943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227577, 30.528639, 26.775887>,  <33.167931, 31.183315, 26.383699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227577, 30.528639, 26.775887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.548893, 30.758110, 26.839907>,  <33.741684, 30.895792, 26.878319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.548893, 30.758110, 26.839907>,  <33.227577, 30.528639, 26.775887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548893, 30.758110, 26.839907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065761, -0.181656, 0.981161,
		0.591944, -0.798683, -0.108197,
		0.803291, 0.573678, 0.160052,
		33.789879, 30.930214, 26.887922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635834, 30.198030, 27.317759>,  <33.227577, 30.528639, 26.775887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635834, 30.198030, 27.317759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737858, 30.584692, 27.308611>,  <33.799072, 30.816689, 27.303122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737858, 30.584692, 27.308611>,  <33.635834, 30.198030, 27.317759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737858, 30.584692, 27.308611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029022, 0.015988, 0.999451,
		0.966489, -0.255587, -0.023976,
		0.255064, 0.966654, -0.022870,
		33.814377, 30.874687, 27.301750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189701, 30.282690, 27.841499>,  <33.635834, 30.198030, 27.317759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189701, 30.282690, 27.841499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031265, 30.645708, 27.785683>,  <33.936203, 30.863520, 27.752192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.031265, 30.645708, 27.785683>,  <34.189701, 30.282690, 27.841499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031265, 30.645708, 27.785683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022645, 0.142272, 0.989569,
		0.917932, 0.395119, -0.035802,
		-0.396090, 0.907546, -0.139543,
		33.912437, 30.917973, 27.743820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892895, 30.119768, 28.055447>,  <34.189701, 30.282690, 27.841499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892895, 30.119768, 28.055447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165848, 29.873333, 28.212820>,  <35.329620, 29.725471, 28.307245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165848, 29.873333, 28.212820>,  <34.892895, 30.119768, 28.055447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165848, 29.873333, 28.212820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243478, -0.315928, -0.917010,
		0.689255, 0.721545, -0.065580,
		0.682382, -0.616087, 0.393435,
		35.370564, 29.688507, 28.330851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471558, 30.170534, 27.642033>,  <34.892895, 30.119768, 28.055447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471558, 30.170534, 27.642033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539677, 29.836187, 27.850773>,  <35.580547, 29.635580, 27.976017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539677, 29.836187, 27.850773>,  <35.471558, 30.170534, 27.642033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539677, 29.836187, 27.850773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185176, -0.493005, -0.850092,
		0.967837, 0.241401, 0.070825,
		0.170296, -0.835866, 0.521850,
		35.590767, 29.585428, 28.007328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205872, 29.964575, 27.431700>,  <35.471558, 30.170534, 27.642033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205872, 29.964575, 27.431700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979893, 29.656311, 27.549633>,  <35.844307, 29.471354, 27.620394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.979893, 29.656311, 27.549633>,  <36.205872, 29.964575, 27.431700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979893, 29.656311, 27.549633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180238, -0.463946, -0.867334,
		0.805204, -0.436855, 0.401005,
		-0.564943, -0.770657, 0.294833,
		35.810410, 29.425114, 27.638083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644947, 29.405552, 27.296665>,  <36.205872, 29.964575, 27.431700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644947, 29.405552, 27.296665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.281139, 29.242170, 27.327490>,  <36.062855, 29.144140, 27.345984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.281139, 29.242170, 27.327490>,  <36.644947, 29.405552, 27.296665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281139, 29.242170, 27.327490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115469, -0.426375, -0.897146,
		0.399301, -0.807074, 0.434961,
		-0.909520, -0.408455, 0.077060,
		36.008282, 29.119635, 27.350607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717369, 28.743925, 27.154144>,  <36.644947, 29.405552, 27.296665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717369, 28.743925, 27.154144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.330711, 28.824280, 27.090582>,  <36.098717, 28.872492, 27.052444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.330711, 28.824280, 27.090582>,  <36.717369, 28.743925, 27.154144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330711, 28.824280, 27.090582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105646, -0.252474, -0.961819,
		-0.233327, -0.946522, 0.222830,
		-0.966642, 0.200877, -0.158905,
		36.040718, 28.884546, 27.042910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266743, 28.146385, 26.744764>,  <36.717369, 28.743925, 27.154144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266743, 28.146385, 26.744764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109791, 28.503981, 26.658216>,  <36.015617, 28.718538, 26.606287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.109791, 28.503981, 26.658216>,  <36.266743, 28.146385, 26.744764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109791, 28.503981, 26.658216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016386, -0.241994, -0.970139,
		-0.919656, -0.377122, 0.109603,
		-0.392384, 0.893990, -0.216371,
		35.992077, 28.772177, 26.593306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132893, 27.932381, 26.091116>,  <36.266743, 28.146385, 26.744764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132893, 27.932381, 26.091116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018654, 28.315361, 26.107742>,  <35.950111, 28.545149, 26.117718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.018654, 28.315361, 26.107742>,  <36.132893, 27.932381, 26.091116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018654, 28.315361, 26.107742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016354, 0.048237, -0.998702,
		-0.958212, -0.284542, -0.029434,
		-0.285592, 0.957450, 0.041568,
		35.932976, 28.602596, 26.120213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797009, 28.038124, 25.551008>,  <36.132893, 27.932381, 26.091116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797009, 28.038124, 25.551008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853817, 28.427479, 25.622948>,  <35.887901, 28.661093, 25.666111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.853817, 28.427479, 25.622948>,  <35.797009, 28.038124, 25.551008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853817, 28.427479, 25.622948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014796, 0.179581, -0.983632,
		-0.989753, 0.142358, 0.011102,
		0.142021, 0.973388, 0.179847,
		35.896423, 28.719496, 25.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333103, 28.334049, 25.072891>,  <35.797009, 28.038124, 25.551008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333103, 28.334049, 25.072891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627403, 28.581898, 25.182251>,  <35.803982, 28.730606, 25.247868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.627403, 28.581898, 25.182251>,  <35.333103, 28.334049, 25.072891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627403, 28.581898, 25.182251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238406, 0.140896, -0.960891,
		-0.633907, 0.772153, -0.044058,
		0.735747, 0.619619, 0.273401,
		35.848125, 28.767784, 25.264271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286160, 28.776695, 24.616436>,  <35.333103, 28.334049, 25.072891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286160, 28.776695, 24.616436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652733, 28.845764, 24.760843>,  <35.872677, 28.887205, 24.847486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652733, 28.845764, 24.760843>,  <35.286160, 28.776695, 24.616436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652733, 28.845764, 24.760843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334586, 0.164311, -0.927930,
		-0.219547, 0.971178, 0.092806,
		0.916434, 0.172673, 0.361016,
		35.927662, 28.897566, 24.869148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553196, 29.444405, 24.429296>,  <35.286160, 28.776695, 24.616436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553196, 29.444405, 24.429296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892242, 29.244326, 24.500114>,  <36.095673, 29.124279, 24.542604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.892242, 29.244326, 24.500114>,  <35.553196, 29.444405, 24.429296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892242, 29.244326, 24.500114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356052, 0.288793, -0.888721,
		0.393405, 0.816335, 0.422883,
		0.847620, -0.500195, 0.177045,
		36.146530, 29.094267, 24.553228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103714, 29.988583, 24.269403>,  <35.553196, 29.444405, 24.429296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103714, 29.988583, 24.269403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271496, 29.625521, 24.263504>,  <36.372166, 29.407682, 24.259964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271496, 29.625521, 24.263504>,  <36.103714, 29.988583, 24.269403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271496, 29.625521, 24.263504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430578, 0.213233, -0.877003,
		0.799162, 0.361513, 0.480259,
		0.419455, -0.907656, -0.014748,
		36.397331, 29.353224, 24.259079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707413, 30.098429, 23.980068>,  <36.103714, 29.988583, 24.269403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707413, 30.098429, 23.980068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676941, 29.701317, 23.943010>,  <36.658657, 29.463049, 23.920774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676941, 29.701317, 23.943010>,  <36.707413, 30.098429, 23.980068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676941, 29.701317, 23.943010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364489, 0.058757, -0.929352,
		0.928086, -0.104568, 0.357382,
		-0.076182, -0.992781, -0.092646,
		36.654087, 29.403482, 23.915216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296722, 29.921982, 23.692795>,  <36.707413, 30.098429, 23.980068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296722, 29.921982, 23.692795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.060932, 29.607441, 23.618860>,  <36.919456, 29.418716, 23.574499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.060932, 29.607441, 23.618860>,  <37.296722, 29.921982, 23.692795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060932, 29.607441, 23.618860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080423, 0.170552, -0.982061,
		0.803770, -0.593769, -0.037296,
		-0.589479, -0.786352, -0.184837,
		36.884087, 29.371536, 23.563410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835491, 29.395203, 23.972706>,  <37.296722, 29.921982, 23.692795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835491, 29.395203, 23.972706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.215935, 29.292648, 24.041580>,  <38.444202, 29.231115, 24.082905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.215935, 29.292648, 24.041580>,  <37.835491, 29.395203, 23.972706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215935, 29.292648, 24.041580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145632, 0.119333, 0.982116,
		-0.272351, -0.959179, 0.076160,
		0.951114, -0.256388, 0.172188,
		38.501270, 29.215733, 24.093237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709492, 28.993513, 24.489174>,  <37.835491, 29.395203, 23.972706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709492, 28.993513, 24.489174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100574, 29.077057, 24.497744>,  <38.335224, 29.127184, 24.502886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100574, 29.077057, 24.497744>,  <37.709492, 28.993513, 24.489174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100574, 29.077057, 24.497744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049018, 0.127863, 0.990580,
		0.204157, -0.969550, 0.135251,
		0.977710, 0.208864, 0.021421,
		38.393887, 29.139715, 24.504169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030624, 28.626863, 25.152903>,  <37.709492, 28.993513, 24.489174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030624, 28.626863, 25.152903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255554, 28.934149, 25.030502>,  <38.390511, 29.118521, 24.957062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255554, 28.934149, 25.030502>,  <38.030624, 28.626863, 25.152903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255554, 28.934149, 25.030502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135406, 0.279514, 0.950546,
		0.815755, -0.575949, 0.053156,
		0.562324, 0.768215, -0.306002,
		38.424252, 29.164614, 24.938702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594379, 28.473951, 25.541361>,  <38.030624, 28.626863, 25.152903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594379, 28.473951, 25.541361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624176, 28.857262, 25.430975>,  <38.642056, 29.087248, 25.364744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.624176, 28.857262, 25.430975>,  <38.594379, 28.473951, 25.541361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624176, 28.857262, 25.430975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144105, 0.263483, 0.953840,
		0.986754, -0.110824, -0.118465,
		0.074495, 0.958277, -0.275964,
		38.646523, 29.144745, 25.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334030, 28.680843, 25.662565>,  <38.594379, 28.473951, 25.541361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334030, 28.680843, 25.662565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103527, 29.007582, 25.652010>,  <38.965225, 29.203625, 25.645678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103527, 29.007582, 25.652010>,  <39.334030, 28.680843, 25.662565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103527, 29.007582, 25.652010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112867, 0.111520, 0.987332,
		0.809439, 0.565977, -0.156458,
		-0.576255, 0.816844, -0.026389,
		38.930649, 29.252634, 25.644093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674618, 29.229952, 26.240372>,  <39.334030, 28.680843, 25.662565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674618, 29.229952, 26.240372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303764, 29.359238, 26.164515>,  <39.081253, 29.436810, 26.119001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.303764, 29.359238, 26.164515>,  <39.674618, 29.229952, 26.240372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303764, 29.359238, 26.164515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166137, 0.099096, 0.981111,
		0.335900, 0.941124, -0.038177,
		-0.927130, 0.323213, -0.189642,
		39.025627, 29.456202, 26.107622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607349, 29.803940, 26.672760>,  <39.674618, 29.229952, 26.240372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607349, 29.803940, 26.672760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.241356, 29.676682, 26.573496>,  <39.021759, 29.600327, 26.513937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.241356, 29.676682, 26.573496>,  <39.607349, 29.803940, 26.672760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241356, 29.676682, 26.573496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278682, 0.053531, 0.958890,
		-0.291781, 0.946530, -0.137641,
		-0.914986, -0.318144, -0.248162,
		38.966862, 29.581238, 26.499046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127686, 30.289677, 26.980167>,  <39.607349, 29.803940, 26.672760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127686, 30.289677, 26.980167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932480, 29.944128, 26.930260>,  <38.815357, 29.736799, 26.900314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.932480, 29.944128, 26.930260>,  <39.127686, 30.289677, 26.980167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932480, 29.944128, 26.930260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269043, 0.012895, 0.963042,
		-0.830334, 0.503550, -0.238711,
		-0.488018, -0.863870, -0.124770,
		38.786076, 29.684967, 26.892828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667725, 30.321209, 27.381927>,  <39.127686, 30.289677, 26.980167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667725, 30.321209, 27.381927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692982, 29.925457, 27.329556>,  <38.708138, 29.688005, 27.298132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692982, 29.925457, 27.329556>,  <38.667725, 30.321209, 27.381927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692982, 29.925457, 27.329556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097719, -0.136692, 0.985782,
		-0.993209, -0.049454, -0.105313,
		0.063146, -0.989378, -0.130932,
		38.711926, 29.628643, 27.290276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006577, 30.110796, 27.616331>,  <38.667725, 30.321209, 27.381927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006577, 30.110796, 27.616331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227791, 29.777620, 27.623983>,  <38.360519, 29.577715, 27.628574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227791, 29.777620, 27.623983>,  <38.006577, 30.110796, 27.616331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227791, 29.777620, 27.623983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336543, -0.202330, 0.919675,
		-0.762162, -0.515050, -0.392215,
		0.553035, -0.832938, 0.019129,
		38.393700, 29.527739, 27.629723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595604, 29.503357, 27.842943>,  <38.006577, 30.110796, 27.616331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595604, 29.503357, 27.842943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974728, 29.407516, 27.927084>,  <38.202202, 29.350012, 27.977568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.974728, 29.407516, 27.927084>,  <37.595604, 29.503357, 27.842943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974728, 29.407516, 27.927084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282933, -0.327911, 0.901345,
		-0.146985, -0.913820, -0.378588,
		0.947810, -0.239600, 0.210352,
		38.259071, 29.335636, 27.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538738, 28.907148, 28.355371>,  <37.595604, 29.503357, 27.842943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538738, 28.907148, 28.355371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.917416, 29.029261, 28.396496>,  <38.144623, 29.102528, 28.421171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.917416, 29.029261, 28.396496>,  <37.538738, 28.907148, 28.355371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917416, 29.029261, 28.396496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039620, -0.206392, 0.977667,
		0.319685, -0.929626, -0.183295,
		0.946695, 0.305283, 0.102812,
		38.201424, 29.120846, 28.427340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817318, 28.398449, 28.777763>,  <37.538738, 28.907148, 28.355371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817318, 28.398449, 28.777763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072750, 28.705452, 28.800207>,  <38.226009, 28.889654, 28.813673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072750, 28.705452, 28.800207>,  <37.817318, 28.398449, 28.777763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072750, 28.705452, 28.800207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073294, -0.133235, 0.988371,
		0.766059, -0.627039, -0.141334,
		0.638578, 0.767509, 0.056108,
		38.264324, 28.935705, 28.817039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211510, 28.097549, 29.296139>,  <37.817318, 28.398449, 28.777763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211510, 28.097549, 29.296139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302486, 28.486580, 29.276665>,  <38.357071, 28.719997, 29.264980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.302486, 28.486580, 29.276665>,  <38.211510, 28.097549, 29.296139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302486, 28.486580, 29.276665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125587, 0.020281, 0.991875,
		0.965660, -0.231704, -0.117530,
		0.227438, 0.972575, -0.048684,
		38.370716, 28.778353, 29.262060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.471153, 30.998598, 24.397770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.106209, 31.111382, 24.279049>,  <40.887241, 31.179050, 24.207817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.106209, 31.111382, 24.279049>,  <41.471153, 30.998598, 24.397770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106209, 31.111382, 24.279049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125486, -0.497489, -0.858346,
		-0.389672, -0.820369, 0.418510,
		-0.912364, 0.281956, -0.296802,
		40.832500, 31.195969, 24.190008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348648, 30.420572, 24.011410>,  <41.471153, 30.998598, 24.397770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348648, 30.420572, 24.011410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.067997, 30.679651, 23.892607>,  <40.899609, 30.835098, 23.821325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.067997, 30.679651, 23.892607>,  <41.348648, 30.420572, 24.011410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067997, 30.679651, 23.892607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003899, -0.420306, -0.907374,
		-0.712537, -0.635477, 0.297422,
		-0.701623, 0.647698, -0.297006,
		40.857510, 30.873960, 23.803505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846176, 29.974903, 23.781147>,  <41.348648, 30.420572, 24.011410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846176, 29.974903, 23.781147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816463, 30.334494, 23.608488>,  <40.798637, 30.550249, 23.504892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.816463, 30.334494, 23.608488>,  <40.846176, 29.974903, 23.781147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816463, 30.334494, 23.608488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129043, -0.437871, -0.889728,
		-0.988853, -0.010389, 0.148533,
		-0.074282, 0.898978, -0.431649,
		40.794178, 30.604187, 23.478992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340805, 29.908545, 23.346960>,  <40.846176, 29.974903, 23.781147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340805, 29.908545, 23.346960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543293, 30.220242, 23.199162>,  <40.664783, 30.407259, 23.110483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543293, 30.220242, 23.199162>,  <40.340805, 29.908545, 23.346960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543293, 30.220242, 23.199162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114620, -0.363855, -0.924377,
		-0.854756, 0.510286, -0.094872,
		0.506216, 0.779242, -0.369496,
		40.695156, 30.454014, 23.088312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901592, 30.203558, 22.773401>,  <40.340805, 29.908545, 23.346960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901592, 30.203558, 22.773401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.277958, 30.321812, 22.707336>,  <40.503777, 30.392763, 22.667698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.277958, 30.321812, 22.707336>,  <39.901592, 30.203558, 22.773401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277958, 30.321812, 22.707336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085501, -0.264531, -0.960580,
		-0.327669, 0.917946, -0.223625,
		0.940916, 0.295632, -0.165164,
		40.560234, 30.410501, 22.657787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872936, 30.653555, 22.248646>,  <39.901592, 30.203558, 22.773401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872936, 30.653555, 22.248646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255405, 30.537006, 22.237131>,  <40.484886, 30.467077, 22.230223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.255405, 30.537006, 22.237131>,  <39.872936, 30.653555, 22.248646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255405, 30.537006, 22.237131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005607, 0.080080, -0.996773,
		0.292737, 0.953252, 0.074936,
		0.956176, -0.291372, -0.028788,
		40.542259, 30.449594, 22.228495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070976, 30.992260, 21.632563>,  <39.872936, 30.653555, 22.248646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070976, 30.992260, 21.632563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361923, 30.721233, 21.676077>,  <40.536491, 30.558617, 21.702187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.361923, 30.721233, 21.676077>,  <40.070976, 30.992260, 21.632563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361923, 30.721233, 21.676077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079616, -0.074134, -0.994065,
		0.681612, 0.731714, 0.000023,
		0.727369, -0.677569, 0.108787,
		40.580135, 30.517963, 21.708714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610348, 31.194952, 21.149794>,  <40.070976, 30.992260, 21.632563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610348, 31.194952, 21.149794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703163, 30.820631, 21.255947>,  <40.758854, 30.596039, 21.319639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703163, 30.820631, 21.255947>,  <40.610348, 31.194952, 21.149794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703163, 30.820631, 21.255947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034002, -0.264860, -0.963687,
		0.972111, 0.232639, -0.029639,
		0.232041, -0.935803, 0.265384,
		40.772774, 30.539890, 21.335562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206200, 31.037157, 20.810839>,  <40.610348, 31.194952, 21.149794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206200, 31.037157, 20.810839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032497, 30.686951, 20.895594>,  <40.928276, 30.476828, 20.946445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.032497, 30.686951, 20.895594>,  <41.206200, 31.037157, 20.810839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032497, 30.686951, 20.895594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089587, -0.276032, -0.956964,
		0.896325, -0.396583, 0.198302,
		-0.434254, -0.875516, 0.211886,
		40.902222, 30.424295, 20.959160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600590, 30.632631, 20.464083>,  <41.206200, 31.037157, 20.810839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600590, 30.632631, 20.464083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250599, 30.447733, 20.521692>,  <41.040604, 30.336794, 20.556259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250599, 30.447733, 20.521692>,  <41.600590, 30.632631, 20.464083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250599, 30.447733, 20.521692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064289, -0.183918, -0.980837,
		0.479875, -0.867470, 0.131208,
		-0.874978, -0.462244, 0.144026,
		40.988106, 30.309059, 20.564899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598938, 30.073729, 20.004005>,  <41.600590, 30.632631, 20.464083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598938, 30.073729, 20.004005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210907, 30.110369, 20.093946>,  <40.978088, 30.132353, 20.147911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210907, 30.110369, 20.093946>,  <41.598938, 30.073729, 20.004005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210907, 30.110369, 20.093946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242491, -0.319208, -0.916136,
		-0.012143, -0.943248, 0.331869,
		-0.970078, 0.091600, 0.224853,
		40.919884, 30.137848, 20.161402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301456, 29.464622, 19.886425>,  <41.598938, 30.073729, 20.004005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301456, 29.464622, 19.886425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.996563, 29.723022, 19.869993>,  <40.813629, 29.878063, 19.860134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.996563, 29.723022, 19.869993>,  <41.301456, 29.464622, 19.886425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996563, 29.723022, 19.869993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358262, -0.473876, -0.804419,
		-0.539122, -0.598435, 0.592641,
		-0.762231, 0.646001, -0.041081,
		40.767895, 29.916822, 19.857670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605705, 29.144995, 20.017412>,  <41.301456, 29.464622, 19.886425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605705, 29.144995, 20.017412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.631001, 29.463392, 19.776617>,  <40.646179, 29.654430, 19.632139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.631001, 29.463392, 19.776617>,  <40.605705, 29.144995, 20.017412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631001, 29.463392, 19.776617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218321, -0.577552, -0.786619,
		-0.973826, 0.181174, 0.137256,
		0.063242, 0.795996, -0.601989,
		40.649975, 29.702190, 19.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903416, 29.318848, 19.594561>,  <40.605705, 29.144995, 20.017412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903416, 29.318848, 19.594561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.282280, 29.325834, 19.466450>,  <40.509598, 29.330027, 19.389584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.282280, 29.325834, 19.466450>,  <39.903416, 29.318848, 19.594561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282280, 29.325834, 19.466450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151505, -0.855743, -0.494721,
		-0.282718, 0.517106, -0.807881,
		0.947162, 0.017468, -0.320278,
		40.566429, 29.331076, 19.370367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051109, 28.858891, 18.993813>,  <39.903416, 29.318848, 19.594561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051109, 28.858891, 18.993813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773293, 28.607529, 18.853683>,  <39.606602, 28.456711, 18.769606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.773293, 28.607529, 18.853683>,  <40.051109, 28.858891, 18.993813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773293, 28.607529, 18.853683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382954, -0.089314, 0.919440,
		-0.609068, 0.772743, -0.178618,
		-0.694537, -0.628404, -0.350323,
		39.564930, 28.419008, 18.748587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436672, 29.119423, 19.101068>,  <40.051109, 28.858891, 18.993813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436672, 29.119423, 19.101068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397350, 28.721752, 19.083406>,  <39.373756, 28.483150, 19.072809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397350, 28.721752, 19.083406>,  <39.436672, 29.119423, 19.101068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397350, 28.721752, 19.083406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279728, -0.014978, 0.959962,
		-0.955033, 0.106721, -0.276626,
		-0.098305, -0.994176, -0.044157,
		39.367859, 28.423500, 19.070160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710732, 29.066097, 19.364000>,  <39.436672, 29.119423, 19.101068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710732, 29.066097, 19.364000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902397, 28.715164, 19.374474>,  <39.017395, 28.504604, 19.380758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.902397, 28.715164, 19.374474>,  <38.710732, 29.066097, 19.364000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902397, 28.715164, 19.374474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218027, -0.090075, 0.971777,
		-0.850214, -0.471351, -0.234443,
		0.479166, -0.877334, 0.026185,
		39.046146, 28.451963, 19.382328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313541, 28.663252, 19.775578>,  <38.710732, 29.066097, 19.364000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313541, 28.663252, 19.775578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635685, 28.426142, 19.773800>,  <38.828972, 28.283876, 19.772734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635685, 28.426142, 19.773800>,  <38.313541, 28.663252, 19.775578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635685, 28.426142, 19.773800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141163, -0.199058, 0.969767,
		-0.575739, -0.780380, -0.243991,
		0.805356, -0.592775, -0.004445,
		38.877293, 28.248310, 19.772467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198750, 28.287975, 20.313057>,  <38.313541, 28.663252, 19.775578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198750, 28.287975, 20.313057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588421, 28.209944, 20.267580>,  <38.822224, 28.163126, 20.240294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588421, 28.209944, 20.267580>,  <38.198750, 28.287975, 20.313057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588421, 28.209944, 20.267580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061402, -0.255671, 0.964812,
		-0.217276, -0.946878, -0.237090,
		0.974177, -0.195073, -0.113692,
		38.880672, 28.151421, 20.233473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237114, 27.619003, 20.594807>,  <38.198750, 28.287975, 20.313057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237114, 27.619003, 20.594807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594242, 27.798376, 20.611710>,  <38.808517, 27.906000, 20.621851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594242, 27.798376, 20.611710>,  <38.237114, 27.619003, 20.594807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594242, 27.798376, 20.611710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047909, -0.187834, 0.981032,
		0.447863, -0.873858, -0.189186,
		0.892818, 0.448431, 0.042258,
		38.862087, 27.932905, 20.624388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546844, 27.336678, 21.172052>,  <38.237114, 27.619003, 20.594807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546844, 27.336678, 21.172052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786644, 27.650242, 21.107441>,  <38.930523, 27.838381, 21.068674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.786644, 27.650242, 21.107441>,  <38.546844, 27.336678, 21.172052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786644, 27.650242, 21.107441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082375, 0.140314, 0.986674,
		0.796129, -0.604811, 0.019543,
		0.599494, 0.783910, -0.161530,
		38.966492, 27.885414, 21.058983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194202, 27.228456, 21.554560>,  <38.546844, 27.336678, 21.172052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194202, 27.228456, 21.554560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109612, 27.617872, 21.519924>,  <39.058857, 27.851522, 21.499144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109612, 27.617872, 21.519924>,  <39.194202, 27.228456, 21.554560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109612, 27.617872, 21.519924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029765, 0.094967, 0.995035,
		0.976930, 0.207846, -0.049061,
		-0.211473, 0.973540, -0.086589,
		39.046169, 27.909935, 21.493948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563671, 27.515696, 22.054293>,  <39.194202, 27.228456, 21.554560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563671, 27.515696, 22.054293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327934, 27.826410, 21.965500>,  <39.186493, 28.012838, 21.912224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327934, 27.826410, 21.965500>,  <39.563671, 27.515696, 22.054293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327934, 27.826410, 21.965500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028744, 0.294761, 0.955139,
		0.807370, 0.556526, -0.196044,
		-0.589345, 0.776785, -0.221984,
		39.151131, 28.059446, 21.898905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844425, 28.103388, 22.445890>,  <39.563671, 27.515696, 22.054293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844425, 28.103388, 22.445890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477146, 28.236279, 22.359608>,  <39.256779, 28.316013, 22.307838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477146, 28.236279, 22.359608>,  <39.844425, 28.103388, 22.445890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477146, 28.236279, 22.359608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049544, 0.443957, 0.894677,
		0.393001, 0.832181, -0.391183,
		-0.918202, 0.332229, -0.215705,
		39.201687, 28.335947, 22.294897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735802, 28.911497, 22.730705>,  <39.844425, 28.103388, 22.445890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735802, 28.911497, 22.730705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368977, 28.756426, 22.693371>,  <39.148884, 28.663383, 22.670971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368977, 28.756426, 22.693371>,  <39.735802, 28.911497, 22.730705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368977, 28.756426, 22.693371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265461, 0.418888, 0.868368,
		-0.297548, 0.821121, -0.487058,
		-0.917058, -0.387676, -0.093336,
		39.093861, 28.640123, 22.665369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398869, 29.504328, 22.805084>,  <39.735802, 28.911497, 22.730705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398869, 29.504328, 22.805084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154701, 29.198242, 22.886900>,  <39.008202, 29.014591, 22.935989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.154701, 29.198242, 22.886900>,  <39.398869, 29.504328, 22.805084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154701, 29.198242, 22.886900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145307, 0.362031, 0.920771,
		-0.778637, 0.532334, -0.332181,
		-0.610418, -0.765215, 0.204539,
		38.971577, 28.968678, 22.948261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892170, 29.750998, 23.172979>,  <39.398869, 29.504328, 22.805084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892170, 29.750998, 23.172979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875481, 29.360561, 23.258310>,  <38.865467, 29.126301, 23.309509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.875481, 29.360561, 23.258310>,  <38.892170, 29.750998, 23.172979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875481, 29.360561, 23.258310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150075, 0.217213, 0.964519,
		-0.987794, 0.008226, -0.155549,
		-0.041721, -0.976089, 0.213327,
		38.862965, 29.067734, 23.322308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272713, 29.739000, 23.522276>,  <38.892170, 29.750998, 23.172979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272713, 29.739000, 23.522276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511051, 29.436743, 23.631063>,  <38.654057, 29.255388, 23.696337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.511051, 29.436743, 23.631063>,  <38.272713, 29.739000, 23.522276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511051, 29.436743, 23.631063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254988, 0.143119, 0.956294,
		-0.761541, -0.639156, -0.107402,
		0.595850, -0.755643, 0.271968,
		38.689808, 29.210051, 23.712654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632874, 29.418890, 23.250072>,  <38.272713, 29.739000, 23.522276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632874, 29.418890, 23.250072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248188, 29.315346, 23.214064>,  <37.017376, 29.253220, 23.192459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248188, 29.315346, 23.214064>,  <37.632874, 29.418890, 23.250072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248188, 29.315346, 23.214064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017713, 0.269071, -0.962958,
		0.273490, -0.927682, -0.254183,
		-0.961712, -0.258856, -0.090020,
		36.959675, 29.237688, 23.187057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545238, 28.820883, 22.753132>,  <37.632874, 29.418890, 23.250072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545238, 28.820883, 22.753132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202995, 29.027834, 22.759592>,  <36.997650, 29.152004, 22.763468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.202995, 29.027834, 22.759592>,  <37.545238, 28.820883, 22.753132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202995, 29.027834, 22.759592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018849, 0.062323, -0.997878,
		-0.517287, -0.853484, -0.063076,
		-0.855604, 0.517378, 0.016152,
		36.946316, 29.183048, 22.764437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206059, 28.420784, 22.348768>,  <37.545238, 28.820883, 22.753132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206059, 28.420784, 22.348768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995243, 28.760483, 22.361439>,  <36.868752, 28.964302, 22.369041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.995243, 28.760483, 22.361439>,  <37.206059, 28.420784, 22.348768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995243, 28.760483, 22.361439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208737, -0.093231, -0.973518,
		-0.823805, -0.519697, 0.226407,
		-0.527043, 0.849248, 0.031676,
		36.837132, 29.015257, 22.370941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564018, 28.297318, 21.891068>,  <37.206059, 28.420784, 22.348768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564018, 28.297318, 21.891068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545231, 28.695761, 21.920891>,  <36.533958, 28.934828, 21.938784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.545231, 28.695761, 21.920891>,  <36.564018, 28.297318, 21.891068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545231, 28.695761, 21.920891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106421, 0.069224, -0.991908,
		-0.993211, -0.054520, 0.102756,
		-0.046966, 0.996110, 0.074557,
		36.531139, 28.994595, 21.943258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842846, 28.606554, 21.706285>,  <36.564018, 28.297318, 21.891068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842846, 28.606554, 21.706285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131870, 28.874380, 21.637486>,  <36.305286, 29.035076, 21.596205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131870, 28.874380, 21.637486>,  <35.842846, 28.606554, 21.706285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131870, 28.874380, 21.637486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235014, 0.003927, -0.971984,
		-0.650131, 0.742743, 0.160195,
		0.722563, 0.669565, -0.172002,
		36.348640, 29.075251, 21.585884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541683, 29.106464, 21.201101>,  <35.842846, 28.606554, 21.706285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541683, 29.106464, 21.201101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932804, 29.181234, 21.163252>,  <36.167477, 29.226097, 21.140541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932804, 29.181234, 21.163252>,  <35.541683, 29.106464, 21.201101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932804, 29.181234, 21.163252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084207, -0.062926, -0.994459,
		-0.191845, 0.980357, -0.045789,
		0.977806, 0.186927, -0.094625,
		36.226147, 29.237312, 21.134865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649265, 29.677950, 20.800117>,  <35.541683, 29.106464, 21.201101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649265, 29.677950, 20.800117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975033, 29.452486, 20.744970>,  <36.170494, 29.317207, 20.711882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.975033, 29.452486, 20.744970>,  <35.649265, 29.677950, 20.800117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975033, 29.452486, 20.744970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251344, -0.128517, -0.959328,
		0.523014, 0.815949, -0.246339,
		0.814421, -0.563658, -0.137868,
		36.219360, 29.283388, 20.703609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580841, 30.387661, 20.613304>,  <35.649265, 29.677950, 20.800117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580841, 30.387661, 20.613304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.392899, 30.712791, 20.475582>,  <35.280132, 30.907869, 20.392948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.392899, 30.712791, 20.475582>,  <35.580841, 30.387661, 20.613304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392899, 30.712791, 20.475582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646369, -0.051155, 0.761309,
		0.601198, 0.580257, 0.549421,
		-0.469860, 0.812825, -0.344306,
		35.251942, 30.956638, 20.372290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699703, 30.881933, 21.138910>,  <35.580841, 30.387661, 20.613304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699703, 30.881933, 21.138910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372879, 30.979219, 20.929811>,  <35.176785, 31.037590, 20.804352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372879, 30.979219, 20.929811>,  <35.699703, 30.881933, 21.138910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372879, 30.979219, 20.929811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530450, 0.038162, 0.846857,
		0.225916, 0.969222, 0.097833,
		-0.817058, 0.243214, -0.522745,
		35.127762, 31.052183, 20.772987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359341, 31.441797, 21.474838>,  <35.699703, 30.881933, 21.138910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359341, 31.441797, 21.474838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.079781, 31.264826, 21.250057>,  <34.912045, 31.158642, 21.115189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.079781, 31.264826, 21.250057>,  <35.359341, 31.441797, 21.474838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079781, 31.264826, 21.250057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643726, 0.046711, 0.763829,
		-0.311691, 0.895586, -0.317450,
		-0.698903, -0.442430, -0.561952,
		34.870110, 31.132097, 21.081472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888390, 31.758535, 21.640974>,  <35.359341, 31.441797, 21.474838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888390, 31.758535, 21.640974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684071, 31.448950, 21.491272>,  <34.561478, 31.263199, 21.401451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.684071, 31.448950, 21.491272>,  <34.888390, 31.758535, 21.640974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684071, 31.448950, 21.491272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636470, 0.047806, 0.769819,
		-0.577920, 0.631424, -0.517023,
		-0.510799, -0.773963, -0.374254,
		34.530830, 31.216761, 21.378996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234035, 31.922962, 21.659035>,  <34.888390, 31.758535, 21.640974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234035, 31.922962, 21.659035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212887, 31.524132, 21.636974>,  <34.200199, 31.284834, 21.623737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.212887, 31.524132, 21.636974>,  <34.234035, 31.922962, 21.659035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212887, 31.524132, 21.636974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591156, -0.013262, 0.806448,
		-0.804822, 0.075238, -0.588728,
		-0.052868, -0.997077, -0.055151,
		34.197025, 31.225008, 21.620430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501598, 31.738464, 21.749273>,  <34.234035, 31.922962, 21.659035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501598, 31.738464, 21.749273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700878, 31.396387, 21.806461>,  <33.820446, 31.191141, 21.840775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700878, 31.396387, 21.806461>,  <33.501598, 31.738464, 21.749273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700878, 31.396387, 21.806461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447993, -0.112714, 0.886904,
		-0.742360, -0.505905, -0.439275,
		0.498201, -0.855193, 0.142968,
		33.850338, 31.139830, 21.849352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008312, 31.232141, 21.950041>,  <33.501598, 31.738464, 21.749273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008312, 31.232141, 21.950041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365711, 31.114590, 22.085859>,  <33.580151, 31.044058, 22.167351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.365711, 31.114590, 22.085859>,  <33.008312, 31.232141, 21.950041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365711, 31.114590, 22.085859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375649, -0.074822, 0.923737,
		-0.246064, -0.952909, -0.177250,
		0.893499, -0.293882, 0.339548,
		33.633762, 31.026426, 22.187723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.896854, 32.917027, 19.184956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.921211, 32.588409, 19.411711>,  <39.935825, 32.391239, 19.547764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.921211, 32.588409, 19.411711>,  <39.896854, 32.917027, 19.184956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921211, 32.588409, 19.411711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254016, 0.536490, 0.804770,
		-0.965281, -0.193004, -0.176015,
		0.060894, -0.821540, 0.566890,
		39.939480, 32.341946, 19.581778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315010, 32.972450, 19.659590>,  <39.896854, 32.917027, 19.184956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315010, 32.972450, 19.659590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.529022, 32.676132, 19.822052>,  <39.657429, 32.498341, 19.919529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.529022, 32.676132, 19.822052>,  <39.315010, 32.972450, 19.659590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529022, 32.676132, 19.822052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399507, 0.201754, 0.894254,
		-0.744401, -0.640719, -0.188007,
		0.535034, -0.740793, 0.406158,
		39.689533, 32.453896, 19.943899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865822, 32.656605, 20.087358>,  <39.315010, 32.972450, 19.659590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865822, 32.656605, 20.087358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234787, 32.565548, 20.212154>,  <39.456165, 32.510914, 20.287033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.234787, 32.565548, 20.212154>,  <38.865822, 32.656605, 20.087358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234787, 32.565548, 20.212154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243587, 0.283978, 0.927374,
		-0.299710, -0.931415, 0.206493,
		0.922409, -0.227644, 0.311992,
		39.511509, 32.497253, 20.305752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803959, 32.283737, 20.684084>,  <38.865822, 32.656605, 20.087358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803959, 32.283737, 20.684084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170475, 32.443237, 20.699131>,  <39.390385, 32.538937, 20.708160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.170475, 32.443237, 20.699131>,  <38.803959, 32.283737, 20.684084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170475, 32.443237, 20.699131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190854, 0.352122, 0.916288,
		0.352122, -0.846764, 0.398748,
		-0.916288, -0.398748, -0.037619,
		39.445362, 32.562862, 20.710417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068550, 32.044930, 21.260172>,  <38.803959, 32.283737, 20.684084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068550, 32.044930, 21.260172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.282597, 32.370262, 21.168835>,  <39.411022, 32.565464, 21.114033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.282597, 32.370262, 21.168835>,  <39.068550, 32.044930, 21.260172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282597, 32.370262, 21.168835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007083, 0.274608, 0.961530,
		0.844751, -0.512910, 0.152708,
		0.535113, 0.813335, -0.228342,
		39.443130, 32.614262, 21.100332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628208, 32.079830, 21.706087>,  <39.068550, 32.044930, 21.260172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628208, 32.079830, 21.706087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.595100, 32.454502, 21.569979>,  <39.575237, 32.679306, 21.488314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.595100, 32.454502, 21.569979>,  <39.628208, 32.079830, 21.706087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595100, 32.454502, 21.569979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182064, 0.321484, 0.929248,
		0.979797, 0.138865, 0.143926,
		-0.082770, 0.936678, -0.340271,
		39.570271, 32.735504, 21.467897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129440, 32.388302, 22.069536>,  <39.628208, 32.079830, 21.706087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129440, 32.388302, 22.069536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882496, 32.674305, 21.938307>,  <39.734329, 32.845909, 21.859570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.882496, 32.674305, 21.938307>,  <40.129440, 32.388302, 22.069536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882496, 32.674305, 21.938307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130362, 0.318285, 0.938989,
		0.775807, 0.622459, -0.103285,
		-0.617356, 0.715010, -0.328072,
		39.697289, 32.888809, 21.839886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310997, 32.846378, 22.581709>,  <40.129440, 32.388302, 22.069536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310997, 32.846378, 22.581709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976570, 32.998913, 22.423935>,  <39.775913, 33.090431, 22.329271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.976570, 32.998913, 22.423935>,  <40.310997, 32.846378, 22.581709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976570, 32.998913, 22.423935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254236, 0.367800, 0.894476,
		0.486166, 0.848121, -0.210556,
		-0.836066, 0.381333, -0.394435,
		39.725750, 33.113312, 22.305605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376892, 33.541508, 22.761730>,  <40.310997, 32.846378, 22.581709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376892, 33.541508, 22.761730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.997410, 33.481224, 22.650557>,  <39.769722, 33.445053, 22.583853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.997410, 33.481224, 22.650557>,  <40.376892, 33.541508, 22.761730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997410, 33.481224, 22.650557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316033, 0.477556, 0.819795,
		0.009176, 0.865579, -0.500689,
		-0.948704, -0.150712, -0.277934,
		39.712799, 33.436012, 22.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073978, 34.122330, 22.904871>,  <40.376892, 33.541508, 22.761730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073978, 34.122330, 22.904871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783257, 33.847939, 22.918655>,  <39.608822, 33.683304, 22.926926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783257, 33.847939, 22.918655>,  <40.073978, 34.122330, 22.904871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783257, 33.847939, 22.918655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425173, 0.488752, 0.761807,
		-0.539425, 0.539034, -0.646887,
		-0.726807, -0.685977, 0.034462,
		39.565216, 33.642147, 22.928993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479286, 34.544735, 22.972368>,  <40.073978, 34.122330, 22.904871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479286, 34.544735, 22.972368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.404697, 34.173138, 23.100239>,  <39.359943, 33.950180, 23.176960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.404697, 34.173138, 23.100239>,  <39.479286, 34.544735, 22.972368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404697, 34.173138, 23.100239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416654, 0.369452, 0.830605,
		-0.889734, 0.021694, -0.455964,
		-0.186476, -0.928997, 0.319675,
		39.348755, 33.894440, 23.196142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776176, 34.558746, 23.210735>,  <39.479286, 34.544735, 22.972368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776176, 34.558746, 23.210735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966801, 34.271980, 23.414274>,  <39.081177, 34.099922, 23.536398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.966801, 34.271980, 23.414274>,  <38.776176, 34.558746, 23.210735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966801, 34.271980, 23.414274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525670, 0.231561, 0.818566,
		-0.704670, -0.657583, -0.266506,
		0.476563, -0.716913, 0.508846,
		39.109768, 34.056908, 23.566929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140266, 34.491985, 22.904886>,  <38.776176, 34.558746, 23.210735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140266, 34.491985, 22.904886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.760826, 34.596432, 22.833363>,  <37.533161, 34.659100, 22.790447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.760826, 34.596432, 22.833363>,  <38.140266, 34.491985, 22.904886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760826, 34.596432, 22.833363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183786, -0.005450, -0.982951,
		-0.257641, -0.965292, -0.042820,
		-0.948601, 0.261118, -0.178811,
		37.476246, 34.674767, 22.779718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944160, 34.146271, 22.374861>,  <38.140266, 34.491985, 22.904886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944160, 34.146271, 22.374861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621857, 34.382687, 22.389950>,  <37.428474, 34.524536, 22.399004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.621857, 34.382687, 22.389950>,  <37.944160, 34.146271, 22.374861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621857, 34.382687, 22.389950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032652, 0.019263, -0.999281,
		-0.591343, -0.806412, 0.003777,
		-0.805759, 0.591041, 0.037722,
		37.380131, 34.559998, 22.401266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433601, 33.789539, 21.949638>,  <37.944160, 34.146271, 22.374861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433601, 33.789539, 21.949638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334457, 34.176121, 21.976585>,  <37.274971, 34.408070, 21.992754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.334457, 34.176121, 21.976585>,  <37.433601, 33.789539, 21.949638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334457, 34.176121, 21.976585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180542, 0.022240, -0.983316,
		-0.951825, -0.255886, 0.168973,
		-0.247858, 0.966451, 0.067367,
		37.260101, 34.466057, 21.996796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932678, 33.840385, 21.521563>,  <37.433601, 33.789539, 21.949638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932678, 33.840385, 21.521563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.020454, 34.226685, 21.576946>,  <37.073120, 34.458466, 21.610176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.020454, 34.226685, 21.576946>,  <36.932678, 33.840385, 21.521563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020454, 34.226685, 21.576946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251010, 0.193028, -0.948543,
		-0.942783, 0.173396, 0.284771,
		0.219442, 0.965751, 0.138459,
		37.086288, 34.516411, 21.618484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341560, 34.178158, 21.350744>,  <36.932678, 33.840385, 21.521563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341560, 34.178158, 21.350744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.665630, 34.409008, 21.309679>,  <36.860073, 34.547516, 21.285040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.665630, 34.409008, 21.309679>,  <36.341560, 34.178158, 21.350744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665630, 34.409008, 21.309679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170368, 0.064252, -0.983284,
		-0.560879, 0.814126, 0.150379,
		0.810179, 0.577122, -0.102663,
		36.908684, 34.582146, 21.278879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189682, 34.596287, 20.815477>,  <36.341560, 34.178158, 21.350744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189682, 34.596287, 20.815477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.588921, 34.601204, 20.839628>,  <36.828465, 34.604153, 20.854118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.588921, 34.601204, 20.839628>,  <36.189682, 34.596287, 20.815477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588921, 34.601204, 20.839628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060375, 0.000412, -0.998176,
		-0.012296, 0.999924, -0.000331,
		0.998100, 0.012294, 0.060376,
		36.888351, 34.604893, 20.857740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276691, 34.826710, 20.241098>,  <36.189682, 34.596287, 20.815477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276691, 34.826710, 20.241098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652317, 34.757698, 20.360020>,  <36.877693, 34.716290, 20.431372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.652317, 34.757698, 20.360020>,  <36.276691, 34.826710, 20.241098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652317, 34.757698, 20.360020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290081, -0.066254, -0.954706,
		0.184416, 0.982773, -0.012168,
		0.939065, -0.172533, 0.297302,
		36.934036, 34.705936, 20.449211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662289, 35.211948, 19.779362>,  <36.276691, 34.826710, 20.241098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662289, 35.211948, 19.779362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874668, 34.907143, 19.927649>,  <37.002094, 34.724258, 20.016621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.874668, 34.907143, 19.927649>,  <36.662289, 35.211948, 19.779362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874668, 34.907143, 19.927649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226387, -0.294021, -0.928601,
		0.816603, 0.576966, 0.016399,
		0.530950, -0.762011, 0.370717,
		37.033955, 34.678539, 20.038864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331200, 35.255962, 19.488304>,  <36.662289, 35.211948, 19.779362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331200, 35.255962, 19.488304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.318359, 34.875381, 19.610756>,  <37.310654, 34.647034, 19.684227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.318359, 34.875381, 19.610756>,  <37.331200, 35.255962, 19.488304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318359, 34.875381, 19.610756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250270, -0.304180, -0.919151,
		0.967644, 0.047109, 0.247883,
		-0.032100, -0.951449, 0.306128,
		37.308731, 34.589947, 19.702595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926949, 34.988132, 19.176418>,  <37.331200, 35.255962, 19.488304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926949, 34.988132, 19.176418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710369, 34.664185, 19.266706>,  <37.580421, 34.469814, 19.320879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710369, 34.664185, 19.266706>,  <37.926949, 34.988132, 19.176418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710369, 34.664185, 19.266706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403123, -0.485689, -0.775628,
		0.737788, -0.328965, 0.589450,
		-0.541444, -0.809869, 0.225722,
		37.547935, 34.421223, 19.334423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372345, 34.479282, 19.181892>,  <37.926949, 34.988132, 19.176418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372345, 34.479282, 19.181892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029243, 34.283421, 19.119272>,  <37.823383, 34.165905, 19.081699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.029243, 34.283421, 19.119272>,  <38.372345, 34.479282, 19.181892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029243, 34.283421, 19.119272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428159, -0.511927, -0.744722,
		0.284510, -0.705814, 0.648754,
		-0.857749, -0.489650, -0.156552,
		37.771919, 34.136524, 19.072306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438232, 33.718990, 19.183664>,  <38.372345, 34.479282, 19.181892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438232, 33.718990, 19.183664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124508, 33.804028, 18.950544>,  <37.936272, 33.855049, 18.810673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124508, 33.804028, 18.950544>,  <38.438232, 33.718990, 19.183664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124508, 33.804028, 18.950544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444779, -0.462193, -0.767170,
		-0.432457, -0.860920, 0.267951,
		-0.784317, 0.212589, -0.582798,
		37.889214, 33.867805, 18.775705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432880, 33.170094, 18.762804>,  <38.438232, 33.718990, 19.183664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432880, 33.170094, 18.762804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.170311, 33.410252, 18.580101>,  <38.012768, 33.554348, 18.470480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.170311, 33.410252, 18.580101>,  <38.432880, 33.170094, 18.762804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170311, 33.410252, 18.580101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303796, -0.343815, -0.888538,
		-0.690517, -0.722019, 0.043291,
		-0.656426, 0.600399, -0.456757,
		37.973385, 33.590370, 18.443073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957767, 32.798462, 18.329733>,  <38.432880, 33.170094, 18.762804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957767, 32.798462, 18.329733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969612, 33.163288, 18.166143>,  <37.976719, 33.382183, 18.067989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.969612, 33.163288, 18.166143>,  <37.957767, 32.798462, 18.329733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969612, 33.163288, 18.166143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245008, -0.403293, -0.881661,
		-0.969069, -0.074097, -0.235404,
		0.029608, 0.912066, -0.408973,
		37.978493, 33.436909, 18.043451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320038, 32.458572, 18.517580>,  <37.957767, 32.798462, 18.329733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320038, 32.458572, 18.517580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139046, 32.148788, 18.340733>,  <37.030449, 31.962917, 18.234623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139046, 32.148788, 18.340733>,  <37.320038, 32.458572, 18.517580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139046, 32.148788, 18.340733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774875, 0.096056, 0.624773,
		-0.441395, 0.625285, -0.643575,
		-0.452480, -0.774462, -0.442120,
		37.003300, 31.916451, 18.208097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585957, 32.648823, 18.507811>,  <37.320038, 32.458572, 18.517580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585957, 32.648823, 18.507811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618843, 32.250439, 18.493393>,  <36.638573, 32.011406, 18.484743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618843, 32.250439, 18.493393>,  <36.585957, 32.648823, 18.507811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618843, 32.250439, 18.493393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777018, -0.086704, 0.623478,
		-0.624086, -0.023253, -0.781009,
		0.082214, -0.995963, -0.036042,
		36.643509, 31.951651, 18.482580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961033, 32.340565, 18.525515>,  <36.585957, 32.648823, 18.507811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961033, 32.340565, 18.525515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146435, 32.017399, 18.671080>,  <36.257675, 31.823498, 18.758419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146435, 32.017399, 18.671080>,  <35.961033, 32.340565, 18.525515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146435, 32.017399, 18.671080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696870, -0.078694, 0.712867,
		-0.547300, -0.584017, -0.599489,
		0.463503, -0.807918, 0.363915,
		36.285484, 31.775024, 18.780254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432838, 31.839794, 18.580198>,  <35.961033, 32.340565, 18.525515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432838, 31.839794, 18.580198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.737045, 31.695562, 18.796198>,  <35.919571, 31.609024, 18.925797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.737045, 31.695562, 18.796198>,  <35.432838, 31.839794, 18.580198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737045, 31.695562, 18.796198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640012, -0.275985, 0.717089,
		-0.109535, -0.890964, -0.440665,
		0.760517, -0.360577, 0.539998,
		35.965202, 31.587389, 18.958197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151646, 31.127142, 18.712208>,  <35.432838, 31.839794, 18.580198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151646, 31.127142, 18.712208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.413624, 31.246698, 18.989828>,  <35.570812, 31.318432, 19.156401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.413624, 31.246698, 18.989828>,  <35.151646, 31.127142, 18.712208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413624, 31.246698, 18.989828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593493, -0.365083, 0.717273,
		0.467773, -0.881691, -0.061720,
		0.654946, 0.298891, 0.694053,
		35.610107, 31.336365, 19.198044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210533, 30.557121, 19.141047>,  <35.151646, 31.127142, 18.712208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210533, 30.557121, 19.141047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366524, 30.862993, 19.346251>,  <35.460117, 31.046516, 19.469374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366524, 30.862993, 19.346251>,  <35.210533, 30.557121, 19.141047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366524, 30.862993, 19.346251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621183, -0.192792, 0.759581,
		0.679741, -0.614894, 0.399822,
		0.389979, 0.764681, 0.513010,
		35.483517, 31.092398, 19.500154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422813, 30.266323, 19.753679>,  <35.210533, 30.557121, 19.141047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422813, 30.266323, 19.753679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366688, 30.656282, 19.822828>,  <35.333012, 30.890259, 19.864317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.366688, 30.656282, 19.822828>,  <35.422813, 30.266323, 19.753679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366688, 30.656282, 19.822828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637536, -0.222546, 0.737578,
		0.757536, -0.006723, 0.652759,
		-0.140310, 0.974899, 0.172873,
		35.324596, 30.948751, 19.874691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116367, 29.968792, 20.030121>,  <35.422813, 30.266323, 19.753679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116367, 29.968792, 20.030121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354259, 29.666965, 20.141062>,  <36.496994, 29.485870, 20.207626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354259, 29.666965, 20.141062>,  <36.116367, 29.968792, 20.030121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354259, 29.666965, 20.141062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298743, -0.112857, -0.947637,
		0.746356, 0.646446, 0.158302,
		0.594731, -0.754566, 0.277353,
		36.532681, 29.440596, 20.224268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820160, 30.170160, 19.826889>,  <36.116367, 29.968792, 20.030121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820160, 30.170160, 19.826889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.793079, 29.772324, 19.858387>,  <36.776833, 29.533621, 19.877285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.793079, 29.772324, 19.858387>,  <36.820160, 30.170160, 19.826889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793079, 29.772324, 19.858387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559052, -0.103186, -0.822687,
		0.826364, -0.011673, 0.563015,
		-0.067699, -0.994594, 0.078744,
		36.772770, 29.473946, 19.882010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466217, 29.826963, 19.696373>,  <36.820160, 30.170160, 19.826889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466217, 29.826963, 19.696373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.187130, 29.551102, 19.618835>,  <37.019680, 29.385586, 19.572313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.187130, 29.551102, 19.618835>,  <37.466217, 29.826963, 19.696373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187130, 29.551102, 19.618835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494644, -0.268055, -0.826724,
		0.518192, -0.672700, 0.528158,
		-0.697713, -0.689653, -0.193843,
		36.977818, 29.344206, 19.560682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834011, 29.302807, 19.364433>,  <37.466217, 29.826963, 19.696373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834011, 29.302807, 19.364433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.454620, 29.218744, 19.269592>,  <37.226986, 29.168306, 19.212688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.454620, 29.218744, 19.269592>,  <37.834011, 29.302807, 19.364433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454620, 29.218744, 19.269592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305802, -0.411488, -0.858581,
		0.082874, -0.886854, 0.454556,
		-0.948481, -0.210158, -0.237100,
		37.170074, 29.155697, 19.198462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829559, 28.584753, 19.061148>,  <37.834011, 29.302807, 19.364433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829559, 28.584753, 19.061148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.488846, 28.747330, 18.928923>,  <37.284416, 28.844875, 18.849588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.488846, 28.747330, 18.928923>,  <37.829559, 28.584753, 19.061148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488846, 28.747330, 18.928923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150317, -0.414834, -0.897395,
		-0.501868, -0.814075, 0.292253,
		-0.851783, 0.406443, -0.330561,
		37.233311, 28.869263, 18.829754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216389, 27.996548, 18.748497>,  <37.829559, 28.584753, 19.061148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216389, 27.996548, 18.748497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224022, 28.360346, 18.582386>,  <37.228603, 28.578625, 18.482719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224022, 28.360346, 18.582386>,  <37.216389, 27.996548, 18.748497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224022, 28.360346, 18.582386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068373, -0.415570, -0.906988,
		-0.997477, -0.011085, -0.070116,
		0.019084, 0.909494, -0.415280,
		37.229748, 28.633194, 18.457802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151745, 27.843636, 18.066509>,  <37.216389, 27.996548, 18.748497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151745, 27.843636, 18.066509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212250, 28.231890, 17.991690>,  <37.248550, 28.464842, 17.946798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.212250, 28.231890, 17.991690>,  <37.151745, 27.843636, 18.066509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212250, 28.231890, 17.991690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122304, -0.206150, -0.970847,
		-0.980899, 0.123972, -0.149895,
		0.151258, 0.970635, -0.187050,
		37.257626, 28.523081, 17.935575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743908, 27.940569, 17.428865>,  <37.151745, 27.843636, 18.066509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743908, 27.940569, 17.428865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992901, 28.253103, 17.446903>,  <37.142296, 28.440624, 17.457726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992901, 28.253103, 17.446903>,  <36.743908, 27.940569, 17.428865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992901, 28.253103, 17.446903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320392, -0.201838, -0.925532,
		-0.714048, 0.590575, -0.375974,
		0.622482, 0.781334, 0.045093,
		37.179646, 28.487503, 17.460430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770042, 28.240236, 16.761976>,  <36.743908, 27.940569, 17.428865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770042, 28.240236, 16.761976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.102795, 28.381460, 16.933243>,  <37.302444, 28.466194, 17.036003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.102795, 28.381460, 16.933243>,  <36.770042, 28.240236, 16.761976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102795, 28.381460, 16.933243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513005, -0.194956, -0.835954,
		-0.211670, 0.915063, -0.343302,
		0.831879, 0.353062, 0.428165,
		37.352360, 28.487379, 17.061693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.517754, 30.036606, 32.995598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912445, 30.049337, 33.059277>,  <35.149261, 30.056976, 33.097485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.912445, 30.049337, 33.059277>,  <34.517754, 30.036606, 32.995598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912445, 30.049337, 33.059277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153428, 0.137785, -0.978507,
		-0.053079, 0.989951, 0.131074,
		0.986733, 0.031828, 0.159200,
		35.208466, 30.058886, 33.107037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689838, 30.575153, 32.521862>,  <34.517754, 30.036606, 32.995598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689838, 30.575153, 32.521862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026001, 30.376736, 32.609180>,  <35.227699, 30.257685, 32.661572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.026001, 30.376736, 32.609180>,  <34.689838, 30.575153, 32.521862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026001, 30.376736, 32.609180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291737, 0.074613, -0.953584,
		0.456732, 0.865085, 0.207420,
		0.840408, -0.496044, 0.218299,
		35.278122, 30.227922, 32.674671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265614, 30.941967, 32.200638>,  <34.689838, 30.575153, 32.521862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265614, 30.941967, 32.200638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.403648, 30.572472, 32.267113>,  <35.486469, 30.350775, 32.306999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.403648, 30.572472, 32.267113>,  <35.265614, 30.941967, 32.200638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403648, 30.572472, 32.267113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465733, 0.014801, -0.884802,
		0.814867, 0.382734, 0.435324,
		0.345087, -0.923740, 0.166191,
		35.507175, 30.295349, 32.316971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879967, 30.946629, 31.856188>,  <35.265614, 30.941967, 32.200638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879967, 30.946629, 31.856188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760506, 30.565393, 31.875898>,  <35.688831, 30.336653, 31.887724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760506, 30.565393, 31.875898>,  <35.879967, 30.946629, 31.856188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760506, 30.565393, 31.875898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178915, -0.106629, -0.978069,
		0.937442, -0.283283, 0.202366,
		-0.298649, -0.953090, 0.049276,
		35.670910, 30.279467, 31.890680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405548, 30.656845, 31.534325>,  <35.879967, 30.946629, 31.856188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405548, 30.656845, 31.534325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100109, 30.398621, 31.539507>,  <35.916843, 30.243687, 31.542616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100109, 30.398621, 31.539507>,  <36.405548, 30.656845, 31.534325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100109, 30.398621, 31.539507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204627, -0.260979, -0.943408,
		0.612407, -0.717735, 0.331382,
		-0.763600, -0.645559, 0.012957,
		35.871029, 30.204952, 31.543394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651821, 30.106997, 31.068583>,  <36.405548, 30.656845, 31.534325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651821, 30.106997, 31.068583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258789, 30.038599, 31.097683>,  <36.022968, 29.997561, 31.115143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258789, 30.038599, 31.097683>,  <36.651821, 30.106997, 31.068583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258789, 30.038599, 31.097683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013548, -0.456390, -0.889677,
		0.185332, -0.873195, 0.450757,
		-0.982583, -0.170993, 0.072754,
		35.964016, 29.987301, 31.119509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659473, 29.481550, 30.713871>,  <36.651821, 30.106997, 31.068583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659473, 29.481550, 30.713871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295059, 29.646463, 30.716448>,  <36.076412, 29.745411, 30.717995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295059, 29.646463, 30.716448>,  <36.659473, 29.481550, 30.713871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295059, 29.646463, 30.716448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071124, -0.141732, -0.987347,
		-0.406153, -0.899964, 0.158446,
		-0.911033, 0.412283, 0.006444,
		36.021748, 29.770147, 30.718382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186821, 29.109413, 30.326923>,  <36.659473, 29.481550, 30.713871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186821, 29.109413, 30.326923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005360, 29.465883, 30.327526>,  <35.896481, 29.679766, 30.327887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005360, 29.465883, 30.327526>,  <36.186821, 29.109413, 30.326923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005360, 29.465883, 30.327526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244534, -0.122857, -0.961826,
		-0.856970, -0.436707, 0.273658,
		-0.453657, 0.891175, 0.001505,
		35.869263, 29.733236, 30.327978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564579, 28.911560, 29.975964>,  <36.186821, 29.109413, 30.326923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564579, 28.911560, 29.975964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592823, 29.308949, 29.940126>,  <35.609772, 29.547382, 29.918625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592823, 29.308949, 29.940126>,  <35.564579, 28.911560, 29.975964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592823, 29.308949, 29.940126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120976, -0.080625, -0.989376,
		-0.990141, 0.080701, 0.114493,
		0.070612, 0.993472, -0.089593,
		35.614006, 29.606991, 29.913248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961571, 29.110537, 29.653873>,  <35.564579, 28.911560, 29.975964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961571, 29.110537, 29.653873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253437, 29.379810, 29.605858>,  <35.428558, 29.541374, 29.577049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253437, 29.379810, 29.605858>,  <34.961571, 29.110537, 29.653873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253437, 29.379810, 29.605858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167093, 0.005307, -0.985927,
		-0.663072, 0.739457, 0.116356,
		0.729668, 0.673183, -0.120039,
		35.472336, 29.581766, 29.569847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547905, 29.578274, 29.370060>,  <34.961571, 29.110537, 29.653873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547905, 29.578274, 29.370060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939945, 29.629318, 29.309252>,  <35.175171, 29.659945, 29.272766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939945, 29.629318, 29.309252>,  <34.547905, 29.578274, 29.370060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939945, 29.629318, 29.309252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157230, 0.031724, -0.987052,
		-0.121136, 0.991317, 0.051157,
		0.980104, 0.127611, -0.152022,
		35.233978, 29.667603, 29.263645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580784, 29.998932, 28.727901>,  <34.547905, 29.578274, 29.370060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580784, 29.998932, 28.727901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956173, 29.861132, 28.737566>,  <35.181408, 29.778452, 28.743364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956173, 29.861132, 28.737566>,  <34.580784, 29.998932, 28.727901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956173, 29.861132, 28.737566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017888, -0.021380, -0.999611,
		0.344884, 0.938542, -0.013902,
		0.938475, -0.344501, 0.024162,
		35.237717, 29.757782, 28.744814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534306, 30.708958, 28.382769>,  <34.580784, 29.998932, 28.727901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534306, 30.708958, 28.382769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259445, 30.968401, 28.251842>,  <34.094528, 31.124067, 28.173286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.259445, 30.968401, 28.251842>,  <34.534306, 30.708958, 28.382769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259445, 30.968401, 28.251842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088381, 0.372551, 0.923794,
		0.721120, 0.663713, -0.198674,
		-0.687150, 0.648607, -0.327313,
		34.053299, 31.162983, 28.153648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726395, 31.457506, 28.573360>,  <34.534306, 30.708958, 28.382769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726395, 31.457506, 28.573360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330212, 31.416210, 28.536858>,  <34.092503, 31.391432, 28.514956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.330212, 31.416210, 28.536858>,  <34.726395, 31.457506, 28.573360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330212, 31.416210, 28.536858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128827, 0.458841, 0.879129,
		-0.048890, 0.882500, -0.467765,
		-0.990461, -0.103242, -0.091257,
		34.033073, 31.385237, 28.509481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583313, 32.000950, 28.941298>,  <34.726395, 31.457506, 28.573360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583313, 32.000950, 28.941298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226540, 31.823349, 28.907084>,  <34.012474, 31.716789, 28.886555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226540, 31.823349, 28.907084>,  <34.583313, 32.000950, 28.941298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226540, 31.823349, 28.907084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269831, 0.370863, 0.888624,
		-0.362826, 0.815675, -0.450591,
		-0.891935, -0.443999, -0.085535,
		33.958958, 31.690149, 28.881422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028435, 32.517326, 29.043728>,  <34.583313, 32.000950, 28.941298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028435, 32.517326, 29.043728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850407, 32.168819, 29.126484>,  <33.743591, 31.959715, 29.176138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.850407, 32.168819, 29.126484>,  <34.028435, 32.517326, 29.043728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850407, 32.168819, 29.126484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416039, 0.405768, 0.813796,
		-0.792985, 0.276120, -0.543077,
		-0.445069, -0.871269, 0.206892,
		33.716885, 31.907438, 29.188551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303772, 32.679573, 29.154036>,  <34.028435, 32.517326, 29.043728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303772, 32.679573, 29.154036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355373, 32.316959, 29.314812>,  <33.386333, 32.099392, 29.411278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355373, 32.316959, 29.314812>,  <33.303772, 32.679573, 29.154036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355373, 32.316959, 29.314812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625815, 0.239991, 0.742132,
		-0.769229, -0.347280, -0.536361,
		0.129005, -0.906532, 0.401941,
		33.394073, 32.044998, 29.435394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630878, 32.496189, 29.271025>,  <33.303772, 32.679573, 29.154036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630878, 32.496189, 29.271025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852825, 32.284691, 29.527945>,  <32.985992, 32.157791, 29.682096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852825, 32.284691, 29.527945>,  <32.630878, 32.496189, 29.271025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852825, 32.284691, 29.527945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562803, 0.330010, 0.757856,
		-0.612683, -0.781995, -0.114472,
		0.554863, -0.528751, 0.642301,
		33.019283, 32.126064, 29.720634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175766, 32.100182, 29.692972>,  <32.630878, 32.496189, 29.271025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175766, 32.100182, 29.692972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515545, 32.103554, 29.904015>,  <32.719414, 32.105576, 30.030640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515545, 32.103554, 29.904015>,  <32.175766, 32.100182, 29.692972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515545, 32.103554, 29.904015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487687, 0.394344, 0.778880,
		-0.201493, -0.918924, 0.339085,
		0.849448, 0.008428, 0.527605,
		32.770378, 32.106083, 30.062296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062141, 31.857529, 30.340809>,  <32.175766, 32.100182, 29.692972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062141, 31.857529, 30.340809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412300, 32.040504, 30.403334>,  <32.622395, 32.150291, 30.440849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412300, 32.040504, 30.403334>,  <32.062141, 31.857529, 30.340809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412300, 32.040504, 30.403334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296305, 0.252254, 0.921179,
		0.381954, -0.852711, 0.356364,
		0.875394, 0.457441, 0.156313,
		32.674919, 32.177734, 30.450228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248428, 31.501860, 30.921734>,  <32.062141, 31.857529, 30.340809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248428, 31.501860, 30.921734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426147, 31.859600, 30.900822>,  <32.532780, 32.074245, 30.888275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426147, 31.859600, 30.900822>,  <32.248428, 31.501860, 30.921734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426147, 31.859600, 30.900822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127961, 0.121109, 0.984357,
		0.886694, -0.430657, 0.168251,
		0.444297, 0.894353, -0.052280,
		32.559437, 32.127907, 30.885138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599384, 31.626879, 31.525782>,  <32.248428, 31.501860, 30.921734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599384, 31.626879, 31.525782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591820, 32.003651, 31.391670>,  <32.587280, 32.229713, 31.311203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591820, 32.003651, 31.391670>,  <32.599384, 31.626879, 31.525782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591820, 32.003651, 31.391670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195804, 0.325357, 0.925097,
		0.980461, 0.083144, 0.178281,
		-0.018912, 0.941929, -0.335280,
		32.586147, 32.286228, 31.291086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788933, 31.976152, 32.086494>,  <32.599384, 31.626879, 31.525782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788933, 31.976152, 32.086494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656616, 32.280670, 31.863420>,  <32.577225, 32.463379, 31.729576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656616, 32.280670, 31.863420>,  <32.788933, 31.976152, 32.086494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656616, 32.280670, 31.863420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287893, 0.481373, 0.827887,
		0.898719, 0.434410, 0.059938,
		-0.330790, 0.761293, -0.557683,
		32.557381, 32.509060, 31.696115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074509, 32.565632, 32.441917>,  <32.788933, 31.976152, 32.086494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074509, 32.565632, 32.441917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788116, 32.715950, 32.206581>,  <32.616280, 32.806141, 32.065380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788116, 32.715950, 32.206581>,  <33.074509, 32.565632, 32.441917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788116, 32.715950, 32.206581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314494, 0.578777, 0.752404,
		0.623269, 0.723738, -0.296209,
		-0.715982, 0.375794, -0.588344,
		32.573322, 32.828690, 32.030079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048153, 33.273350, 32.566425>,  <33.074509, 32.565632, 32.441917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048153, 33.273350, 32.566425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692829, 33.165417, 32.417782>,  <32.479633, 33.100658, 32.328594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.692829, 33.165417, 32.417782>,  <33.048153, 33.273350, 32.566425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692829, 33.165417, 32.417782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458358, 0.570999, 0.681078,
		0.028413, 0.775340, -0.630904,
		-0.888313, -0.269828, -0.371608,
		32.426334, 33.084469, 32.306301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671715, 33.821915, 32.377682>,  <33.048153, 33.273350, 32.566425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671715, 33.821915, 32.377682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402565, 33.534901, 32.449661>,  <32.241077, 33.362690, 32.492851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402565, 33.534901, 32.449661>,  <32.671715, 33.821915, 32.377682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402565, 33.534901, 32.449661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381239, 0.544817, 0.746881,
		-0.633956, 0.433951, -0.640146,
		-0.672872, -0.717538, 0.179951,
		32.200703, 33.319641, 32.503647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181862, 33.725361, 31.690132>,  <32.671715, 33.821915, 32.377682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181862, 33.725361, 31.690132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532326, 33.841442, 31.844078>,  <33.742603, 33.911091, 31.936445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532326, 33.841442, 31.844078>,  <33.181862, 33.725361, 31.690132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532326, 33.841442, 31.844078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134630, 0.619342, -0.773492,
		-0.462830, 0.729520, 0.503575,
		0.876164, 0.290199, 0.384866,
		33.795174, 33.928501, 31.959538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341728, 34.445492, 31.651579>,  <33.181862, 33.725361, 31.690132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341728, 34.445492, 31.651579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705330, 34.278828, 31.655817>,  <33.923489, 34.178829, 31.658360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705330, 34.278828, 31.655817>,  <33.341728, 34.445492, 31.651579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705330, 34.278828, 31.655817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277809, 0.586738, -0.760632,
		0.310704, 0.694360, 0.649097,
		0.909002, -0.416656, 0.010598,
		33.978031, 34.153831, 31.658997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001991, 34.878456, 31.788120>,  <33.341728, 34.445492, 31.651579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001991, 34.878456, 31.788120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043640, 34.572777, 31.533508>,  <34.068630, 34.389370, 31.380741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.043640, 34.572777, 31.533508>,  <34.001991, 34.878456, 31.788120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043640, 34.572777, 31.533508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219592, 0.641875, -0.734694,
		0.970020, -0.063282, 0.234641,
		0.104117, -0.764194, -0.636528,
		34.074875, 34.343517, 31.342550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671246, 35.066166, 31.445301>,  <34.001991, 34.878456, 31.788120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671246, 35.066166, 31.445301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452923, 34.812443, 31.226303>,  <34.321930, 34.660210, 31.094904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452923, 34.812443, 31.226303>,  <34.671246, 35.066166, 31.445301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452923, 34.812443, 31.226303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401807, 0.375245, -0.835310,
		0.735287, -0.675905, 0.050058,
		-0.545806, -0.634307, -0.547496,
		34.289181, 34.622150, 31.062054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633438, 35.009499, 32.159779>,  <34.671246, 35.066166, 31.445301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633438, 35.009499, 32.159779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805435, 34.685471, 32.000332>,  <34.908634, 34.491055, 31.904663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805435, 34.685471, 32.000332>,  <34.633438, 35.009499, 32.159779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805435, 34.685471, 32.000332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150016, 0.499491, -0.853231,
		0.890280, 0.307087, 0.336303,
		0.429996, -0.810065, -0.398619,
		34.934433, 34.442451, 31.880747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312462, 35.186127, 31.699514>,  <34.633438, 35.009499, 32.159779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312462, 35.186127, 31.699514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215244, 34.811981, 31.596737>,  <35.156914, 34.587494, 31.535070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215244, 34.811981, 31.596737>,  <35.312462, 35.186127, 31.699514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215244, 34.811981, 31.596737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227396, 0.202566, -0.952501,
		0.942985, -0.289928, 0.163465,
		-0.243044, -0.935365, -0.256945,
		35.142330, 34.531372, 31.519653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948307, 34.892178, 31.333681>,  <35.312462, 35.186127, 31.699514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948307, 34.892178, 31.333681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654770, 34.652866, 31.204975>,  <35.478649, 34.509277, 31.127750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654770, 34.652866, 31.204975>,  <35.948307, 34.892178, 31.333681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654770, 34.652866, 31.204975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278697, 0.166814, -0.945781,
		0.619518, -0.783730, 0.044324,
		-0.733843, -0.598281, -0.321767,
		35.434616, 34.473381, 31.108444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280624, 34.536877, 30.764906>,  <35.948307, 34.892178, 31.333681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280624, 34.536877, 30.764906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891975, 34.458794, 30.711479>,  <35.658787, 34.411945, 30.679422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891975, 34.458794, 30.711479>,  <36.280624, 34.536877, 30.764906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891975, 34.458794, 30.711479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120110, 0.079271, -0.989591,
		0.203764, -0.977553, -0.053575,
		-0.971624, -0.195208, -0.133567,
		35.600487, 34.400230, 30.671410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156116, 33.921818, 30.380293>,  <36.280624, 34.536877, 30.764906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156116, 33.921818, 30.380293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842892, 34.165394, 30.329693>,  <35.654957, 34.311539, 30.299334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.842892, 34.165394, 30.329693>,  <36.156116, 33.921818, 30.380293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842892, 34.165394, 30.329693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151441, -0.010584, -0.988410,
		-0.603224, -0.793144, -0.083931,
		-0.783062, 0.608943, -0.126499,
		35.607971, 34.348076, 30.291742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880276, 33.697704, 29.754917>,  <36.156116, 33.921818, 30.380293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880276, 33.697704, 29.754917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709900, 34.057762, 29.791393>,  <35.607674, 34.273796, 29.813280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709900, 34.057762, 29.791393>,  <35.880276, 33.697704, 29.754917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709900, 34.057762, 29.791393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101799, 0.147833, -0.983760,
		-0.899006, -0.409739, -0.154602,
		-0.425940, 0.900144, 0.091192,
		35.582119, 34.327805, 29.818750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256260, 33.814407, 29.278095>,  <35.880276, 33.697704, 29.754917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256260, 33.814407, 29.278095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364315, 34.188152, 29.371040>,  <35.429150, 34.412399, 29.426807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.364315, 34.188152, 29.371040>,  <35.256260, 33.814407, 29.278095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364315, 34.188152, 29.371040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035653, 0.250878, -0.967362,
		-0.962161, 0.253038, 0.101085,
		0.270139, 0.934362, 0.232364,
		35.445358, 34.468460, 29.440750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777107, 34.289803, 28.911898>,  <35.256260, 33.814407, 29.278095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777107, 34.289803, 28.911898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103718, 34.503540, 28.999313>,  <35.299683, 34.631783, 29.051764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103718, 34.503540, 28.999313>,  <34.777107, 34.289803, 28.911898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103718, 34.503540, 28.999313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146104, 0.174960, -0.973675,
		-0.558513, 0.826962, 0.064790,
		0.816528, 0.534343, 0.218540,
		35.348675, 34.663841, 29.064875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736923, 34.873093, 28.517643>,  <34.777107, 34.289803, 28.911898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736923, 34.873093, 28.517643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117092, 34.862583, 28.641582>,  <35.345192, 34.856277, 28.715946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.117092, 34.862583, 28.641582>,  <34.736923, 34.873093, 28.517643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117092, 34.862583, 28.641582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305025, 0.272510, -0.912523,
		-0.060465, 0.961794, 0.267013,
		0.950423, -0.026270, 0.309848,
		35.402218, 34.854702, 28.734537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080639, 35.441753, 28.200275>,  <34.736923, 34.873093, 28.517643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080639, 35.441753, 28.200275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360600, 35.175514, 28.303904>,  <35.528576, 35.015770, 28.366081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360600, 35.175514, 28.303904>,  <35.080639, 35.441753, 28.200275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360600, 35.175514, 28.303904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425333, 0.097012, -0.899823,
		0.573789, 0.739977, 0.351000,
		0.699899, -0.665600, 0.259072,
		35.570568, 34.975834, 28.381626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657986, 35.696087, 27.893770>,  <35.080639, 35.441753, 28.200275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657986, 35.696087, 27.893770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760639, 35.322044, 27.991516>,  <35.822231, 35.097618, 28.050163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.760639, 35.322044, 27.991516>,  <35.657986, 35.696087, 27.893770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760639, 35.322044, 27.991516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485097, -0.094062, -0.869387,
		0.835956, 0.341652, 0.429479,
		0.256630, -0.935108, 0.244366,
		35.837627, 35.041512, 28.064825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385128, 35.608219, 27.756929>,  <35.657986, 35.696087, 27.893770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385128, 35.608219, 27.756929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236153, 35.237072, 27.749376>,  <36.146767, 35.014385, 27.744844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236153, 35.237072, 27.749376>,  <36.385128, 35.608219, 27.756929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236153, 35.237072, 27.749376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487667, -0.178357, -0.854617,
		0.789600, -0.327503, 0.518916,
		-0.372441, -0.927864, -0.018882,
		36.124420, 34.958714, 27.743711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904522, 35.129971, 27.602379>,  <36.385128, 35.608219, 27.756929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904522, 35.129971, 27.602379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576015, 34.920959, 27.510748>,  <36.378910, 34.795551, 27.455769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576015, 34.920959, 27.510748>,  <36.904522, 35.129971, 27.602379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576015, 34.920959, 27.510748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408339, -0.257915, -0.875637,
		0.398465, -0.812675, 0.425188,
		-0.821270, -0.522532, -0.229077,
		36.329636, 34.764198, 27.442024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127831, 34.472069, 27.251202>,  <36.904522, 35.129971, 27.602379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127831, 34.472069, 27.251202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747746, 34.533272, 27.142628>,  <36.519695, 34.569996, 27.077482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747746, 34.533272, 27.142628>,  <37.127831, 34.472069, 27.251202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747746, 34.533272, 27.142628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217109, -0.299728, -0.928992,
		-0.223501, -0.941675, 0.251587,
		-0.950216, 0.153008, -0.271435,
		36.462681, 34.579174, 27.061197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997261, 33.938313, 26.772020>,  <37.127831, 34.472069, 27.251202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997261, 33.938313, 26.772020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703213, 34.205452, 26.725412>,  <36.526783, 34.365734, 26.697447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703213, 34.205452, 26.725412>,  <36.997261, 33.938313, 26.772020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703213, 34.205452, 26.725412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181235, 0.027975, -0.983042,
		-0.653264, -0.743771, -0.141602,
		-0.735119, 0.667850, -0.116522,
		36.482677, 34.405807, 26.690456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635834, 33.752747, 26.174555>,  <36.997261, 33.938313, 26.772020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635834, 33.752747, 26.174555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507538, 34.127968, 26.226992>,  <36.430561, 34.353100, 26.258453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.507538, 34.127968, 26.226992>,  <36.635834, 33.752747, 26.174555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507538, 34.127968, 26.226992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153894, 0.188179, -0.970003,
		-0.934582, -0.290944, -0.204717,
		-0.320740, 0.938051, 0.131094,
		36.411316, 34.409382, 26.266319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111038, 33.843494, 25.662233>,  <36.635834, 33.752747, 26.174555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111038, 33.843494, 25.662233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277145, 34.195442, 25.754654>,  <36.376812, 34.406609, 25.810106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.277145, 34.195442, 25.754654>,  <36.111038, 33.843494, 25.662233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277145, 34.195442, 25.754654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048359, 0.232277, -0.971447,
		-0.908411, 0.414587, 0.053909,
		0.415271, 0.879866, 0.231052,
		36.401726, 34.459404, 25.823969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693573, 34.372807, 25.352545>,  <36.111038, 33.843494, 25.662233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693573, 34.372807, 25.352545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059372, 34.527653, 25.399605>,  <36.278851, 34.620560, 25.427841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.059372, 34.527653, 25.399605>,  <35.693573, 34.372807, 25.352545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059372, 34.527653, 25.399605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031455, 0.221882, -0.974566,
		-0.403376, 0.894935, 0.190732,
		0.914494, 0.387117, 0.117652,
		36.333721, 34.643787, 25.434900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810944, 34.434330, 24.754866>,  <35.693573, 34.372807, 25.352545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810944, 34.434330, 24.754866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157089, 34.574875, 24.897802>,  <36.364777, 34.659203, 24.983564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157089, 34.574875, 24.897802>,  <35.810944, 34.434330, 24.754866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157089, 34.574875, 24.897802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296495, 0.215913, -0.930307,
		-0.404026, 0.911004, 0.082668,
		0.865363, 0.351358, 0.357343,
		36.416698, 34.680283, 25.005005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820171, 35.003788, 24.431705>,  <35.810944, 34.434330, 24.754866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820171, 35.003788, 24.431705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.180855, 34.877827, 24.550198>,  <36.397266, 34.802250, 24.621292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.180855, 34.877827, 24.550198>,  <35.820171, 35.003788, 24.431705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180855, 34.877827, 24.550198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333808, 0.071672, -0.939912,
		0.274748, 0.946415, 0.169744,
		0.901713, -0.314901, 0.296229,
		36.451370, 34.783356, 24.639067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185112, 35.365562, 24.040388>,  <35.820171, 35.003788, 24.431705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185112, 35.365562, 24.040388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431183, 35.077232, 24.168114>,  <36.578827, 34.904232, 24.244749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431183, 35.077232, 24.168114>,  <36.185112, 35.365562, 24.040388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431183, 35.077232, 24.168114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500984, 0.044689, -0.864302,
		0.608744, 0.691671, 0.388616,
		0.615180, -0.720829, 0.319312,
		36.615738, 34.860985, 24.263906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783672, 35.518452, 23.669731>,  <36.185112, 35.365562, 24.040388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783672, 35.518452, 23.669731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850697, 35.142406, 23.788467>,  <36.890911, 34.916779, 23.859709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850697, 35.142406, 23.788467>,  <36.783672, 35.518452, 23.669731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850697, 35.142406, 23.788467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449658, -0.195079, -0.871638,
		0.877344, 0.279527, 0.390041,
		0.167557, -0.940111, 0.296843,
		36.900963, 34.860374, 23.877520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452621, 35.412312, 23.585905>,  <36.783672, 35.518452, 23.669731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452621, 35.412312, 23.585905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259697, 35.062836, 23.560490>,  <37.143944, 34.853149, 23.545240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259697, 35.062836, 23.560490>,  <37.452621, 35.412312, 23.585905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259697, 35.062836, 23.560490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325420, -0.111359, -0.938989,
		0.813312, -0.473562, 0.338027,
		-0.482312, -0.873692, -0.063537,
		37.115002, 34.800728, 23.541430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923016, 34.969509, 23.424730>,  <37.452621, 35.412312, 23.585905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923016, 34.969509, 23.424730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561867, 34.842583, 23.308712>,  <37.345177, 34.766426, 23.239101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.561867, 34.842583, 23.308712>,  <37.923016, 34.969509, 23.424730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561867, 34.842583, 23.308712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283824, 0.066772, -0.956549,
		0.322900, -0.945965, 0.029777,
		-0.902873, -0.317321, -0.290048,
		37.291004, 34.747387, 23.221697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233795, 34.261318, 23.840883>,  <37.923016, 34.969509, 23.424730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233795, 34.261318, 23.840883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583385, 34.098541, 23.947140>,  <38.793140, 34.000877, 24.010893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.583385, 34.098541, 23.947140>,  <38.233795, 34.261318, 23.840883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583385, 34.098541, 23.947140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313423, -0.054259, 0.948062,
		-0.371392, -0.911842, -0.174966,
		0.873976, -0.406941, 0.265641,
		38.845577, 33.976460, 24.026833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143368, 33.741390, 24.357742>,  <38.233795, 34.261318, 23.840883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143368, 33.741390, 24.357742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528835, 33.830750, 24.416300>,  <38.760117, 33.884365, 24.451435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.528835, 33.830750, 24.416300>,  <38.143368, 33.741390, 24.357742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528835, 33.830750, 24.416300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137017, -0.056998, 0.988927,
		0.229268, -0.973059, -0.024317,
		0.963671, 0.223398, 0.146394,
		38.817936, 33.897770, 24.460218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376511, 33.284573, 24.911535>,  <38.143368, 33.741390, 24.357742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376511, 33.284573, 24.911535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648849, 33.577301, 24.899652>,  <38.812252, 33.752937, 24.892523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648849, 33.577301, 24.899652>,  <38.376511, 33.284573, 24.911535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648849, 33.577301, 24.899652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030825, 0.069154, 0.997130,
		0.731776, -0.677978, 0.069642,
		0.680848, 0.731822, -0.029707,
		38.853104, 33.796848, 24.890739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831059, 33.075317, 25.510509>,  <38.376511, 33.284573, 24.911535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831059, 33.075317, 25.510509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867340, 33.464123, 25.423830>,  <38.889111, 33.697407, 25.371822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867340, 33.464123, 25.423830>,  <38.831059, 33.075317, 25.510509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867340, 33.464123, 25.423830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087795, 0.224555, 0.970498,
		0.992000, -0.069005, 0.105707,
		0.090706, 0.972015, -0.216701,
		38.894550, 33.755726, 25.358820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400501, 33.236652, 25.899105>,  <38.831059, 33.075317, 25.510509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400501, 33.236652, 25.899105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.220104, 33.576588, 25.790010>,  <39.111866, 33.780548, 25.724554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.220104, 33.576588, 25.790010>,  <39.400501, 33.236652, 25.899105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220104, 33.576588, 25.790010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081757, 0.264958, 0.960788,
		0.888773, 0.455610, -0.050015,
		-0.450997, 0.849834, -0.272736,
		39.084805, 33.831539, 25.708189>
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
