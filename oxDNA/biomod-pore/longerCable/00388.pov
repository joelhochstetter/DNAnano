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
	<24.102560, 35.095772, 34.611038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.046518, 35.022980, 35.000347>,  <24.012894, 34.979305, 35.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.046518, 35.022980, 35.000347>,  <24.102560, 35.095772, 34.611038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.046518, 35.022980, 35.000347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916174, -0.396603, 0.057727,
		0.375496, 0.899771, 0.222294,
		-0.140104, -0.181984, 0.973269,
		24.004488, 34.968384, 35.292328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728767, 35.339432, 34.956276>,  <24.102560, 35.095772, 34.611038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728767, 35.339432, 34.956276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.552778, 35.084000, 35.208828>,  <24.447186, 34.930740, 35.360359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.552778, 35.084000, 35.208828>,  <24.728767, 35.339432, 34.956276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.552778, 35.084000, 35.208828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897620, -0.291971, 0.330198,
		-0.026516, 0.712014, 0.701665,
		-0.439971, -0.638584, 0.631376,
		24.420788, 34.892426, 35.398239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052156, 35.420338, 35.623463>,  <24.728767, 35.339432, 34.956276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052156, 35.420338, 35.623463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900322, 35.050686, 35.606030>,  <24.809221, 34.828896, 35.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.900322, 35.050686, 35.606030>,  <25.052156, 35.420338, 35.623463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.900322, 35.050686, 35.606030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876067, -0.374189, 0.304120,
		-0.297353, 0.077261, 0.951636,
		-0.379589, -0.924128, -0.043580,
		24.786446, 34.773449, 35.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422003, 36.043423, 35.950943>,  <25.052156, 35.420338, 35.623463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422003, 36.043423, 35.950943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799761, 36.174770, 35.957726>,  <26.026415, 36.253578, 35.961796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799761, 36.174770, 35.957726>,  <25.422003, 36.043423, 35.950943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799761, 36.174770, 35.957726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015960, 0.097294, -0.995128,
		-0.328424, 0.939524, 0.097125,
		0.944396, 0.328374, 0.016959,
		26.083080, 36.273281, 35.962814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442331, 36.662811, 35.433853>,  <25.422003, 36.043423, 35.950943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442331, 36.662811, 35.433853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815029, 36.537743, 35.507706>,  <26.038649, 36.462700, 35.552017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815029, 36.537743, 35.507706>,  <25.442331, 36.662811, 35.433853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815029, 36.537743, 35.507706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236849, 0.137899, -0.961710,
		0.275238, 0.939798, 0.202543,
		0.931744, -0.312671, 0.184635,
		26.094553, 36.443943, 35.563095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986441, 37.185135, 35.296856>,  <25.442331, 36.662811, 35.433853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986441, 37.185135, 35.296856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105055, 36.808018, 35.235924>,  <26.176224, 36.581749, 35.199364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105055, 36.808018, 35.235924>,  <25.986441, 37.185135, 35.296856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105055, 36.808018, 35.235924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172870, 0.209863, -0.962327,
		0.939246, 0.259031, 0.225213,
		0.296537, -0.942794, -0.152335,
		26.194016, 36.525181, 35.190224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471592, 37.241295, 34.845982>,  <25.986441, 37.185135, 35.296856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471592, 37.241295, 34.845982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372972, 36.857464, 34.791691>,  <26.313801, 36.627163, 34.759117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372972, 36.857464, 34.791691>,  <26.471592, 37.241295, 34.845982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372972, 36.857464, 34.791691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209191, 0.084051, -0.974256,
		0.946284, -0.268593, 0.180012,
		-0.246548, -0.959580, -0.135724,
		26.299007, 36.569592, 34.750973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950600, 36.719166, 34.564518>,  <26.471592, 37.241295, 34.845982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950600, 36.719166, 34.564518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576101, 36.656406, 34.438770>,  <26.351402, 36.618752, 34.363323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.576101, 36.656406, 34.438770>,  <26.950600, 36.719166, 34.564518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576101, 36.656406, 34.438770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286858, 0.175294, -0.941798,
		0.202885, -0.971932, -0.119107,
		-0.936242, -0.156910, -0.314371,
		26.295229, 36.609337, 34.344460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124327, 36.299786, 33.961365>,  <26.950600, 36.719166, 34.564518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124327, 36.299786, 33.961365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751514, 36.443703, 33.944061>,  <26.527828, 36.530052, 33.933681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751514, 36.443703, 33.944061>,  <27.124327, 36.299786, 33.961365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751514, 36.443703, 33.944061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094405, 0.125826, -0.987550,
		-0.349869, -0.924510, -0.151239,
		-0.932030, 0.359791, -0.043256,
		26.471905, 36.551640, 33.931084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814850, 35.892994, 33.479187>,  <27.124327, 36.299786, 33.961365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814850, 35.892994, 33.479187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624632, 36.244617, 33.492489>,  <26.510502, 36.455593, 33.500469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624632, 36.244617, 33.492489>,  <26.814850, 35.892994, 33.479187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624632, 36.244617, 33.492489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160946, 0.124106, -0.979129,
		-0.864843, -0.460268, -0.200499,
		-0.475545, 0.879062, 0.033254,
		26.481968, 36.508335, 33.502464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280212, 35.789822, 32.992821>,  <26.814850, 35.892994, 33.479187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280212, 35.789822, 32.992821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380957, 36.174873, 33.032658>,  <26.441404, 36.405903, 33.056561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380957, 36.174873, 33.032658>,  <26.280212, 35.789822, 32.992821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380957, 36.174873, 33.032658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105409, 0.075008, -0.991596,
		-0.962005, 0.260243, -0.082578,
		0.251862, 0.962625, 0.099590,
		26.456514, 36.463661, 33.062534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919590, 36.218094, 32.554794>,  <26.280212, 35.789822, 32.992821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919590, 36.218094, 32.554794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255455, 36.421658, 32.630672>,  <26.456974, 36.543797, 32.676197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.255455, 36.421658, 32.630672>,  <25.919590, 36.218094, 32.554794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.255455, 36.421658, 32.630672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183881, 0.062261, -0.980975,
		-0.511036, 0.858567, -0.041300,
		0.839661, 0.508908, 0.189692,
		26.507353, 36.574329, 32.687580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009426, 36.774738, 32.137756>,  <25.919590, 36.218094, 32.554794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009426, 36.774738, 32.137756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392967, 36.732422, 32.243141>,  <26.623091, 36.707031, 32.306374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.392967, 36.732422, 32.243141>,  <26.009426, 36.774738, 32.137756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392967, 36.732422, 32.243141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253565, -0.098342, -0.962306,
		0.127714, 0.989513, -0.067471,
		0.958850, -0.105792, 0.263465,
		26.680622, 36.700684, 32.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505232, 37.219673, 31.786757>,  <26.009426, 36.774738, 32.137756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505232, 37.219673, 31.786757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739878, 36.907082, 31.871765>,  <26.880665, 36.719524, 31.922771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739878, 36.907082, 31.871765>,  <26.505232, 37.219673, 31.786757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739878, 36.907082, 31.871765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391666, 0.044067, -0.919051,
		0.708857, 0.622369, 0.331931,
		0.586616, -0.781483, 0.212523,
		26.915863, 36.672638, 31.935522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667372, 37.800228, 32.191402>,  <26.505232, 37.219673, 31.786757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667372, 37.800228, 32.191402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957026, 37.601223, 32.000359>,  <27.130817, 37.481819, 31.885731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957026, 37.601223, 32.000359>,  <26.667372, 37.800228, 32.191402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957026, 37.601223, 32.000359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609636, 0.137974, 0.780581,
		-0.322449, -0.856415, 0.403211,
		0.724135, -0.497509, -0.477612,
		27.174267, 37.451969, 31.857075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100904, 37.959385, 32.691013>,  <26.667372, 37.800228, 32.191402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100904, 37.959385, 32.691013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960634, 37.755905, 32.376499>,  <25.876472, 37.633816, 32.187790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960634, 37.755905, 32.376499>,  <26.100904, 37.959385, 32.691013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960634, 37.755905, 32.376499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272213, 0.858723, -0.434159,
		0.896061, 0.061789, -0.439610,
		-0.350677, -0.508700, -0.786288,
		25.855431, 37.603294, 32.140614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494825, 37.814178, 33.333157>,  <26.100904, 37.959385, 32.691013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494825, 37.814178, 33.333157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451313, 37.430885, 33.227360>,  <26.425205, 37.200909, 33.163883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451313, 37.430885, 33.227360>,  <26.494825, 37.814178, 33.333157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451313, 37.430885, 33.227360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444757, -0.191040, 0.875040,
		-0.889021, 0.212822, -0.405399,
		-0.108781, -0.958233, -0.264493,
		26.418678, 37.143414, 33.148010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742126, 37.618046, 33.421608>,  <26.494825, 37.814178, 33.333157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742126, 37.618046, 33.421608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962765, 37.284523, 33.430584>,  <26.095148, 37.084408, 33.435970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.962765, 37.284523, 33.430584>,  <25.742126, 37.618046, 33.421608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.962765, 37.284523, 33.430584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442428, -0.269666, 0.855300,
		-0.707107, -0.481706, -0.517647,
		0.551595, -0.833810, 0.022437,
		26.128242, 37.034382, 33.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.299255, 37.111801, 33.640965>,  <25.742126, 37.618046, 33.421608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.299255, 37.111801, 33.640965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647648, 36.934620, 33.725990>,  <25.856684, 36.828312, 33.777004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647648, 36.934620, 33.725990>,  <25.299255, 37.111801, 33.640965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647648, 36.934620, 33.725990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339517, -0.229906, 0.912070,
		-0.355138, -0.866564, -0.350635,
		0.870980, -0.442957, 0.212565,
		25.908941, 36.801731, 33.789761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105492, 36.396904, 33.930023>,  <25.299255, 37.111801, 33.640965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105492, 36.396904, 33.930023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479740, 36.465149, 34.053635>,  <25.704290, 36.506096, 34.127804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479740, 36.465149, 34.053635>,  <25.105492, 36.396904, 33.930023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479740, 36.465149, 34.053635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286792, -0.143038, 0.947254,
		0.205816, -0.974901, -0.084899,
		0.935623, 0.170612, 0.309033,
		25.760427, 36.516331, 34.146343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596851, 35.761154, 34.029938>,  <25.105492, 36.396904, 33.930023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596851, 35.761154, 34.029938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899725, 36.000214, 34.135376>,  <26.081450, 36.143650, 34.198639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899725, 36.000214, 34.135376>,  <25.596851, 35.761154, 34.029938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899725, 36.000214, 34.135376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090579, -0.303574, 0.948493,
		0.646890, -0.742060, -0.175727,
		0.757185, 0.597653, 0.263593,
		26.126881, 36.179508, 34.214455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948050, 35.398499, 34.464657>,  <25.596851, 35.761154, 34.029938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948050, 35.398499, 34.464657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031580, 35.776421, 34.565639>,  <26.081697, 36.003174, 34.626228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031580, 35.776421, 34.565639>,  <25.948050, 35.398499, 34.464657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031580, 35.776421, 34.565639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015996, -0.254811, 0.966859,
		0.977822, -0.205944, -0.038098,
		0.208827, 0.944806, 0.252454,
		26.094229, 36.059864, 34.641376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526331, 35.333546, 34.836346>,  <25.948050, 35.398499, 34.464657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526331, 35.333546, 34.836346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415026, 35.703682, 34.939354>,  <26.348244, 35.925762, 35.001160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415026, 35.703682, 34.939354>,  <26.526331, 35.333546, 34.836346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415026, 35.703682, 34.939354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043341, -0.255744, 0.965773,
		0.959527, 0.279899, 0.031059,
		-0.278262, 0.925339, 0.257524,
		26.331547, 35.981285, 35.016613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927851, 35.621861, 35.411194>,  <26.526331, 35.333546, 34.836346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927851, 35.621861, 35.411194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559378, 35.776424, 35.429550>,  <26.338293, 35.869164, 35.440563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559378, 35.776424, 35.429550>,  <26.927851, 35.621861, 35.411194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559378, 35.776424, 35.429550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005072, -0.106010, 0.994352,
		0.389094, 0.916214, 0.095695,
		-0.921184, 0.386411, 0.045895,
		26.283022, 35.892349, 35.443317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280102, 36.085117, 35.773430>,  <26.927851, 35.621861, 35.411194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280102, 36.085117, 35.773430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901222, 36.196228, 35.709358>,  <26.673895, 36.262894, 35.670914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901222, 36.196228, 35.709358>,  <27.280102, 36.085117, 35.773430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901222, 36.196228, 35.709358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126294, 0.135982, 0.982629,
		0.294733, 0.950973, -0.093720,
		-0.947197, 0.277777, -0.160180,
		26.617064, 36.279560, 35.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273523, 36.782528, 36.058483>,  <27.280102, 36.085117, 35.773430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273523, 36.782528, 36.058483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918459, 36.600582, 36.029743>,  <26.705421, 36.491417, 36.012501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918459, 36.600582, 36.029743>,  <27.273523, 36.782528, 36.058483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918459, 36.600582, 36.029743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094651, 0.027526, 0.995130,
		-0.450670, 0.890136, -0.067487,
		-0.887659, -0.454863, -0.071847,
		26.652161, 36.464123, 36.008190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722342, 36.913960, 36.559631>,  <27.273523, 36.782528, 36.058483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722342, 36.913960, 36.559631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946653, 36.873695, 36.230904>,  <28.081242, 36.849537, 36.033665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946653, 36.873695, 36.230904>,  <27.722342, 36.913960, 36.559631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946653, 36.873695, 36.230904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696120, 0.480068, -0.533809,
		0.448265, 0.871436, 0.199141,
		0.560782, -0.100661, -0.821822,
		28.114887, 36.843498, 35.984356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270254, 37.528557, 36.403095>,  <27.722342, 36.913960, 36.559631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270254, 37.528557, 36.403095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388348, 37.329933, 36.076595>,  <27.459204, 37.210758, 35.880695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388348, 37.329933, 36.076595>,  <27.270254, 37.528557, 36.403095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388348, 37.329933, 36.076595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470248, -0.668169, 0.576556,
		-0.831688, -0.554059, 0.036240,
		0.295232, -0.496557, -0.816253,
		27.476917, 37.180965, 35.831718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746788, 38.125248, 36.585281>,  <27.270254, 37.528557, 36.403095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746788, 38.125248, 36.585281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490929, 38.402054, 36.451439>,  <27.337412, 38.568138, 36.371136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490929, 38.402054, 36.451439>,  <27.746788, 38.125248, 36.585281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490929, 38.402054, 36.451439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146592, 0.317492, 0.936861,
		0.754559, 0.648314, -0.101639,
		-0.639650, 0.692017, -0.334604,
		27.299034, 38.609657, 36.351059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501064, 38.023869, 36.693760>,  <27.746788, 38.125248, 36.585281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501064, 38.023869, 36.693760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725170, 38.115791, 37.012077>,  <28.859632, 38.170944, 37.203068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725170, 38.115791, 37.012077>,  <28.501064, 38.023869, 36.693760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725170, 38.115791, 37.012077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415701, 0.752983, -0.510106,
		-0.716448, 0.616608, 0.326338,
		0.560263, 0.229805, 0.795798,
		28.893250, 38.184734, 37.250816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397291, 38.653725, 36.879005>,  <28.501064, 38.023869, 36.693760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397291, 38.653725, 36.879005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774221, 38.593925, 36.998791>,  <29.000380, 38.558044, 37.070660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774221, 38.593925, 36.998791>,  <28.397291, 38.653725, 36.879005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774221, 38.593925, 36.998791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282009, 0.836515, -0.469801,
		-0.180268, 0.527155, 0.830428,
		0.942324, -0.149498, 0.299459,
		29.056919, 38.549076, 37.088627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648466, 39.284073, 37.216347>,  <28.397291, 38.653725, 36.879005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648466, 39.284073, 37.216347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944681, 39.062031, 37.064838>,  <29.122410, 38.928806, 36.973934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944681, 39.062031, 37.064838>,  <28.648466, 39.284073, 37.216347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944681, 39.062031, 37.064838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377346, 0.809867, -0.449139,
		0.556070, 0.189677, 0.809202,
		0.740538, -0.555102, -0.378769,
		29.166843, 38.895500, 36.951206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248400, 39.563702, 37.432220>,  <28.648466, 39.284073, 37.216347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248400, 39.563702, 37.432220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318951, 39.365265, 37.092152>,  <29.361280, 39.246204, 36.888111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318951, 39.365265, 37.092152>,  <29.248400, 39.563702, 37.432220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318951, 39.365265, 37.092152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284217, 0.852588, -0.438536,
		0.942397, -0.164285, 0.291375,
		0.176378, -0.496088, -0.850169,
		29.371864, 39.216438, 36.837101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969580, 39.756290, 37.236332>,  <29.248400, 39.563702, 37.432220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969580, 39.756290, 37.236332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793692, 39.621769, 36.903214>,  <29.688160, 39.541058, 36.703342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793692, 39.621769, 36.903214>,  <29.969580, 39.756290, 37.236332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793692, 39.621769, 36.903214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423777, 0.739850, -0.522527,
		0.791872, -0.582684, -0.182806,
		-0.439717, -0.336305, -0.832795,
		29.661776, 39.520878, 36.653374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111349, 40.234978, 36.697826>,  <29.969580, 39.756290, 37.236332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111349, 40.234978, 36.697826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895460, 39.964443, 36.497322>,  <29.765926, 39.802120, 36.377018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895460, 39.964443, 36.497322>,  <30.111349, 40.234978, 36.697826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895460, 39.964443, 36.497322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269216, 0.425501, -0.863986,
		0.797635, -0.601261, -0.047572,
		-0.539723, -0.676338, -0.501264,
		29.733543, 39.761543, 36.346943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477077, 40.063217, 36.112644>,  <30.111349, 40.234978, 36.697826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477077, 40.063217, 36.112644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095901, 39.995079, 36.012337>,  <29.867195, 39.954197, 35.952152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095901, 39.995079, 36.012337>,  <30.477077, 40.063217, 36.112644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095901, 39.995079, 36.012337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175150, 0.365791, -0.914067,
		0.247435, -0.914975, -0.318742,
		-0.952942, -0.170345, -0.250768,
		29.810019, 39.943974, 35.937107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551352, 39.817589, 35.453102>,  <30.477077, 40.063217, 36.112644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551352, 39.817589, 35.453102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157448, 39.887154, 35.453251>,  <29.921104, 39.928894, 35.453339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157448, 39.887154, 35.453251>,  <30.551352, 39.817589, 35.453102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157448, 39.887154, 35.453251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075083, 0.427074, -0.901094,
		-0.156870, -0.887334, -0.433624,
		-0.984761, 0.173913, 0.000371,
		29.862019, 39.939327, 35.453362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396036, 39.607735, 34.824387>,  <30.551352, 39.817589, 35.453102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396036, 39.607735, 34.824387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110725, 39.861252, 34.944077>,  <29.939539, 40.013363, 35.015892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110725, 39.861252, 34.944077>,  <30.396036, 39.607735, 34.824387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110725, 39.861252, 34.944077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163761, 0.565820, -0.808103,
		-0.681481, -0.527401, -0.507378,
		-0.713279, 0.633795, 0.299227,
		29.896742, 40.051392, 35.033844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235474, 39.844833, 34.072220>,  <30.396036, 39.607735, 34.824387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235474, 39.844833, 34.072220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051149, 40.074036, 34.343311>,  <29.940556, 40.211555, 34.505966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.051149, 40.074036, 34.343311>,  <30.235474, 39.844833, 34.072220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051149, 40.074036, 34.343311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144822, 0.801958, -0.579560,
		-0.875603, -0.168917, -0.452534,
		-0.460811, 0.573002, 0.677733,
		29.912907, 40.245937, 34.546631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226727, 40.241848, 33.450260>,  <30.235474, 39.844833, 34.072220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226727, 40.241848, 33.450260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020657, 40.583858, 33.474018>,  <29.897015, 40.789066, 33.488274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020657, 40.583858, 33.474018>,  <30.226727, 40.241848, 33.450260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020657, 40.583858, 33.474018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340296, -0.267650, 0.901422,
		0.786635, 0.444178, 0.428848,
		-0.515174, 0.855026, 0.059391,
		29.866104, 40.840366, 33.491837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382160, 40.638744, 34.006828>,  <30.226727, 40.241848, 33.450260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382160, 40.638744, 34.006828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016909, 40.778622, 33.923012>,  <29.797758, 40.862549, 33.872723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016909, 40.778622, 33.923012>,  <30.382160, 40.638744, 34.006828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016909, 40.778622, 33.923012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283316, -0.174755, 0.942970,
		0.293127, 0.920423, 0.258647,
		-0.913131, 0.349689, -0.209545,
		29.742970, 40.883530, 33.860149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158356, 41.174831, 34.571743>,  <30.382160, 40.638744, 34.006828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158356, 41.174831, 34.571743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885744, 40.940865, 34.395836>,  <29.722178, 40.800484, 34.290291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885744, 40.940865, 34.395836>,  <30.158356, 41.174831, 34.571743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885744, 40.940865, 34.395836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355134, -0.261082, 0.897617,
		-0.639844, 0.767928, -0.029788,
		-0.681528, -0.584913, -0.439769,
		29.681286, 40.765392, 34.263905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583744, 41.286678, 34.978146>,  <30.158356, 41.174831, 34.571743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583744, 41.286678, 34.978146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575781, 40.915630, 34.828945>,  <29.571003, 40.693001, 34.739426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575781, 40.915630, 34.828945>,  <29.583744, 41.286678, 34.978146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575781, 40.915630, 34.828945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212110, -0.360666, 0.908256,
		-0.977043, 0.097198, -0.189577,
		-0.019906, -0.927616, -0.373003,
		29.569809, 40.637344, 34.717045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967405, 40.952774, 35.318275>,  <29.583744, 41.286678, 34.978146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967405, 40.952774, 35.318275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220011, 40.655640, 35.229382>,  <29.371574, 40.477360, 35.176044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220011, 40.655640, 35.229382>,  <28.967405, 40.952774, 35.318275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220011, 40.655640, 35.229382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242897, -0.461721, 0.853120,
		-0.736336, -0.484779, -0.472016,
		0.631514, -0.742835, -0.222231,
		29.409466, 40.432789, 35.162712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626892, 40.297981, 35.444386>,  <28.967405, 40.952774, 35.318275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626892, 40.297981, 35.444386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013685, 40.196117, 35.440510>,  <29.245760, 40.134998, 35.438183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.013685, 40.196117, 35.440510>,  <28.626892, 40.297981, 35.444386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013685, 40.196117, 35.440510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157727, -0.627921, 0.762127,
		-0.200170, -0.735434, -0.647355,
		0.966982, -0.254660, -0.009693,
		29.303780, 40.119720, 35.437603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898266, 39.569859, 35.648449>,  <28.626892, 40.297981, 35.444386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898266, 39.569859, 35.648449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296520, 39.579666, 35.684464>,  <29.535473, 39.585552, 35.706070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.296520, 39.579666, 35.684464>,  <28.898266, 39.569859, 35.648449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.296520, 39.579666, 35.684464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060251, -0.567842, 0.820930,
		0.071255, -0.822772, -0.563887,
		0.995637, 0.024521, 0.090035,
		29.595211, 39.587021, 35.711475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246994, 38.867584, 35.538486>,  <28.898266, 39.569859, 35.648449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246994, 38.867584, 35.538486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388517, 39.073318, 35.850967>,  <29.473433, 39.196758, 36.038456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388517, 39.073318, 35.850967>,  <29.246994, 38.867584, 35.538486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388517, 39.073318, 35.850967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015700, -0.831845, 0.554787,
		0.935185, -0.208555, -0.286240,
		0.353811, 0.514334, 0.781203,
		29.494661, 39.227619, 36.085327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895630, 38.594830, 35.830784>,  <29.246994, 38.867584, 35.538486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895630, 38.594830, 35.830784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725851, 38.783119, 36.140175>,  <29.623983, 38.896091, 36.325809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725851, 38.783119, 36.140175>,  <29.895630, 38.594830, 35.830784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725851, 38.783119, 36.140175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049506, -0.865028, 0.499276,
		0.904099, 0.173624, 0.390461,
		-0.424446, 0.470725, 0.773475,
		29.598516, 38.924335, 36.372219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135176, 38.199436, 36.489868>,  <29.895630, 38.594830, 35.830784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135176, 38.199436, 36.489868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811069, 38.397102, 36.615898>,  <29.616606, 38.515701, 36.691517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811069, 38.397102, 36.615898>,  <30.135176, 38.199436, 36.489868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811069, 38.397102, 36.615898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258908, -0.784131, 0.564008,
		0.525771, 0.375421, 0.763298,
		-0.810266, 0.494163, 0.315074,
		29.567989, 38.545353, 36.710419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106413, 38.043537, 37.208263>,  <30.135176, 38.199436, 36.489868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106413, 38.043537, 37.208263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745613, 38.151382, 37.073380>,  <29.529133, 38.216091, 36.992451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745613, 38.151382, 37.073380>,  <30.106413, 38.043537, 37.208263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745613, 38.151382, 37.073380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431713, -0.572236, 0.697259,
		-0.004968, 0.774502, 0.632552,
		-0.901997, 0.269617, -0.337206,
		29.475014, 38.232269, 36.972218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875483, 38.252590, 37.127171>,  <30.106413, 38.043537, 37.208263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875483, 38.252590, 37.127171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146940, 38.467918, 36.927307>,  <31.309814, 38.597115, 36.807388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146940, 38.467918, 36.927307>,  <30.875483, 38.252590, 37.127171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146940, 38.467918, 36.927307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420528, 0.272953, 0.865247,
		0.602164, -0.797311, -0.041142,
		0.678642, 0.538322, -0.499654,
		31.350533, 38.629414, 36.777412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563618, 38.199650, 37.608242>,  <30.875483, 38.252590, 37.127171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563618, 38.199650, 37.608242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194504, 38.289371, 37.733562>,  <30.973036, 38.343204, 37.808754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194504, 38.289371, 37.733562>,  <31.563618, 38.199650, 37.608242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194504, 38.289371, 37.733562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365428, 0.251611, 0.896189,
		0.122194, 0.941476, -0.314151,
		-0.922784, 0.224309, 0.313297,
		30.917669, 38.356663, 37.827553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733391, 38.909225, 37.911835>,  <31.563618, 38.199650, 37.608242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733391, 38.909225, 37.911835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440067, 38.688606, 38.070858>,  <31.264072, 38.556236, 38.166271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440067, 38.688606, 38.070858>,  <31.733391, 38.909225, 37.911835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440067, 38.688606, 38.070858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392830, 0.133554, 0.909862,
		-0.554925, 0.823385, 0.118727,
		-0.733310, -0.551544, 0.397562,
		31.220074, 38.523144, 38.190128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042721, 39.391247, 38.514252>,  <31.733391, 38.909225, 37.911835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042721, 39.391247, 38.514252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308201, 39.447117, 38.808189>,  <32.467491, 39.480637, 38.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308201, 39.447117, 38.808189>,  <32.042721, 39.391247, 38.514252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308201, 39.447117, 38.808189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524512, -0.787306, -0.324093,
		0.533277, 0.600534, -0.595797,
		0.663704, 0.139672, 0.734840,
		32.507313, 39.489017, 39.028641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583878, 39.669792, 38.149662>,  <32.042721, 39.391247, 38.514252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583878, 39.669792, 38.149662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207912, 39.782539, 38.072598>,  <31.982334, 39.850185, 38.026360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207912, 39.782539, 38.072598>,  <32.583878, 39.669792, 38.149662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207912, 39.782539, 38.072598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235565, 0.126927, -0.963534,
		-0.247133, -0.951021, -0.185698,
		-0.939911, 0.281865, -0.192660,
		31.925940, 39.867100, 38.014801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996010, 40.218914, 37.869598>,  <32.583878, 39.669792, 38.149662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996010, 40.218914, 37.869598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188957, 39.904137, 38.023502>,  <33.304726, 39.715271, 38.115845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188957, 39.904137, 38.023502>,  <32.996010, 40.218914, 37.869598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188957, 39.904137, 38.023502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027322, -0.425507, -0.904543,
		0.875543, 0.446834, -0.183749,
		0.482367, -0.786946, 0.384758,
		33.333668, 39.668053, 38.138931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559513, 40.141342, 37.365601>,  <32.996010, 40.218914, 37.869598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559513, 40.141342, 37.365601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528278, 39.819401, 37.600925>,  <33.509537, 39.626236, 37.742119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528278, 39.819401, 37.600925>,  <33.559513, 40.141342, 37.365601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528278, 39.819401, 37.600925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246175, -0.587406, -0.770942,
		0.966075, 0.084629, 0.244002,
		-0.078084, -0.804855, 0.588312,
		33.504852, 39.577946, 37.777420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216686, 39.789177, 37.317451>,  <33.559513, 40.141342, 37.365601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216686, 39.789177, 37.317451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898453, 39.555447, 37.381462>,  <33.707512, 39.415207, 37.419868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898453, 39.555447, 37.381462>,  <34.216686, 39.789177, 37.317451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898453, 39.555447, 37.381462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239551, -0.546015, -0.802797,
		0.556472, -0.600359, 0.574377,
		-0.795585, -0.584326, 0.160026,
		33.659779, 39.380150, 37.429470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363365, 39.108704, 37.263760>,  <34.216686, 39.789177, 37.317451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363365, 39.108704, 37.263760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971458, 39.125198, 37.185421>,  <33.736313, 39.135094, 37.138416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971458, 39.125198, 37.185421>,  <34.363365, 39.108704, 37.263760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971458, 39.125198, 37.185421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129685, -0.614540, -0.778153,
		-0.152446, -0.787807, 0.596758,
		-0.979767, 0.041236, -0.195851,
		33.677528, 39.137569, 37.126667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277317, 38.522457, 36.903927>,  <34.363365, 39.108704, 37.263760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277317, 38.522457, 36.903927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934364, 38.720230, 36.846741>,  <33.728592, 38.838894, 36.812428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934364, 38.720230, 36.846741>,  <34.277317, 38.522457, 36.903927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934364, 38.720230, 36.846741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123182, -0.466819, -0.875732,
		-0.499735, -0.733219, 0.461145,
		-0.857374, 0.494439, -0.142967,
		33.677151, 38.868561, 36.803852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735779, 38.043446, 36.744495>,  <34.277317, 38.522457, 36.903927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735779, 38.043446, 36.744495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619160, 38.392277, 36.587280>,  <33.549191, 38.601578, 36.492950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619160, 38.392277, 36.587280>,  <33.735779, 38.043446, 36.744495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619160, 38.392277, 36.587280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196796, -0.456781, -0.867538,
		-0.936095, -0.175577, 0.304793,
		-0.291543, 0.872080, -0.393038,
		33.531696, 38.653900, 36.469368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961502, 38.036190, 36.624741>,  <33.735779, 38.043446, 36.744495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961502, 38.036190, 36.624741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199242, 38.250244, 36.384617>,  <33.341885, 38.378677, 36.240543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199242, 38.250244, 36.384617>,  <32.961502, 38.036190, 36.624741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199242, 38.250244, 36.384617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273778, -0.567240, -0.776714,
		-0.756168, 0.625995, -0.190633,
		0.594353, 0.535135, -0.600312,
		33.377548, 38.410786, 36.204525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665119, 38.356743, 35.901203>,  <32.961502, 38.036190, 36.624741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665119, 38.356743, 35.901203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037472, 38.212334, 35.878883>,  <33.260883, 38.125687, 35.865490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037472, 38.212334, 35.878883>,  <32.665119, 38.356743, 35.901203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037472, 38.212334, 35.878883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271863, -0.582597, -0.765945,
		0.244018, 0.728176, -0.640480,
		0.930885, -0.361027, -0.055800,
		33.316738, 38.104027, 35.862144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852699, 38.429787, 35.271683>,  <32.665119, 38.356743, 35.901203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852699, 38.429787, 35.271683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024204, 38.115662, 35.450321>,  <33.127106, 37.927185, 35.557503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024204, 38.115662, 35.450321>,  <32.852699, 38.429787, 35.271683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024204, 38.115662, 35.450321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263048, -0.581439, -0.769892,
		0.864275, 0.212622, -0.455873,
		0.428759, -0.785316, 0.446593,
		33.152832, 37.880066, 35.584301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430183, 38.051338, 34.896347>,  <32.852699, 38.429787, 35.271683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430183, 38.051338, 34.896347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244450, 37.776253, 35.119576>,  <33.133011, 37.611202, 35.253513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244450, 37.776253, 35.119576>,  <33.430183, 38.051338, 34.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244450, 37.776253, 35.119576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227810, -0.516178, -0.825629,
		0.855861, -0.510501, 0.083010,
		-0.464332, -0.687713, 0.558073,
		33.105148, 37.569939, 35.286999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621029, 38.522339, 35.418968>,  <33.430183, 38.051338, 34.896347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621029, 38.522339, 35.418968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971058, 38.476463, 35.230885>,  <34.181076, 38.448940, 35.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971058, 38.476463, 35.230885>,  <33.621029, 38.522339, 35.418968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971058, 38.476463, 35.230885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482623, -0.279721, -0.829958,
		-0.036343, 0.953207, -0.300126,
		0.875074, -0.114685, -0.470206,
		34.233582, 38.442059, 35.089825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722755, 38.951778, 34.735512>,  <33.621029, 38.522339, 35.418968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722755, 38.951778, 34.735512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902115, 38.594307, 34.742226>,  <34.009731, 38.379826, 34.746254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902115, 38.594307, 34.742226>,  <33.722755, 38.951778, 34.735512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902115, 38.594307, 34.742226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536791, -0.284253, -0.794390,
		0.714700, 0.347191, -0.607175,
		0.448397, -0.893677, 0.016787,
		34.036633, 38.326202, 34.747261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415333, 39.058628, 34.852730>,  <33.722755, 38.951778, 34.735512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415333, 39.058628, 34.852730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713787, 39.229008, 34.648041>,  <34.892860, 39.331234, 34.525227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713787, 39.229008, 34.648041>,  <34.415333, 39.058628, 34.852730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713787, 39.229008, 34.648041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113590, -0.838751, -0.532536,
		-0.656035, 0.339217, -0.674203,
		0.746134, 0.425945, -0.511718,
		34.937626, 39.356792, 34.494526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241432, 38.999989, 34.230473>,  <34.415333, 39.058628, 34.852730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241432, 38.999989, 34.230473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638535, 39.046047, 34.216709>,  <34.876797, 39.073681, 34.208450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638535, 39.046047, 34.216709>,  <34.241432, 38.999989, 34.230473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638535, 39.046047, 34.216709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072179, -0.800240, -0.595320,
		-0.096086, 0.588521, -0.802751,
		0.992752, 0.115144, -0.034413,
		34.936359, 39.080589, 34.206387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395790, 38.873322, 33.583271>,  <34.241432, 38.999989, 34.230473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395790, 38.873322, 33.583271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753067, 38.827358, 33.757168>,  <34.967434, 38.799782, 33.861507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753067, 38.827358, 33.757168>,  <34.395790, 38.873322, 33.583271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753067, 38.827358, 33.757168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106038, -0.885713, -0.451961,
		0.436993, 0.449788, -0.778927,
		0.893193, -0.114908, 0.434745,
		35.021027, 38.792885, 33.887592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788689, 38.638809, 33.051392>,  <34.395790, 38.873322, 33.583271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788689, 38.638809, 33.051392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002842, 38.533443, 33.372383>,  <35.131336, 38.470222, 33.564980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002842, 38.533443, 33.372383>,  <34.788689, 38.638809, 33.051392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002842, 38.533443, 33.372383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165932, -0.898802, -0.405736,
		0.828148, 0.350382, -0.437496,
		0.535385, -0.263415, 0.802481,
		35.163456, 38.454418, 33.613129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408718, 38.310471, 32.807686>,  <34.788689, 38.638809, 33.051392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408718, 38.310471, 32.807686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388168, 38.168716, 33.181160>,  <35.375839, 38.083664, 33.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388168, 38.168716, 33.181160>,  <35.408718, 38.310471, 32.807686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388168, 38.168716, 33.181160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393053, -0.866642, -0.307313,
		0.918079, 0.351201, 0.183814,
		-0.051372, -0.354386, 0.933687,
		35.372757, 38.062401, 33.461266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154442, 38.079235, 33.027359>,  <35.408718, 38.310471, 32.807686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154442, 38.079235, 33.027359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864471, 37.877331, 33.214851>,  <35.690491, 37.756187, 33.327347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864471, 37.877331, 33.214851>,  <36.154442, 38.079235, 33.027359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864471, 37.877331, 33.214851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423828, -0.863262, -0.274133,
		0.543006, -0.000065, 0.839729,
		-0.724924, -0.504757, 0.468728,
		35.646996, 37.725903, 33.355469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457775, 37.495655, 33.043118>,  <36.154442, 38.079235, 33.027359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457775, 37.495655, 33.043118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104218, 37.388134, 33.196213>,  <35.892082, 37.323624, 33.288071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104218, 37.388134, 33.196213>,  <36.457775, 37.495655, 33.043118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104218, 37.388134, 33.196213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158295, -0.941981, -0.295997,
		0.440093, -0.201043, 0.875157,
		-0.883889, -0.268799, 0.382735,
		35.839050, 37.307495, 33.311035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534672, 36.931225, 33.588604>,  <36.457775, 37.495655, 33.043118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534672, 36.931225, 33.588604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172188, 36.941601, 33.419788>,  <35.954697, 36.947826, 33.318501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.172188, 36.941601, 33.419788>,  <36.534672, 36.931225, 33.588604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172188, 36.941601, 33.419788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128026, -0.934431, -0.332338,
		-0.402987, -0.355199, 0.843466,
		-0.906207, 0.025943, -0.422038,
		35.900326, 36.949383, 33.293179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301693, 36.301212, 33.753029>,  <36.534672, 36.931225, 33.588604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301693, 36.301212, 33.753029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075771, 36.400654, 33.438274>,  <35.940216, 36.460320, 33.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075771, 36.400654, 33.438274>,  <36.301693, 36.301212, 33.753029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075771, 36.400654, 33.438274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053553, -0.962576, -0.265668,
		-0.823484, -0.107911, 0.556982,
		-0.564806, 0.248602, -0.786887,
		35.906330, 36.475235, 33.202209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735695, 35.836823, 33.839958>,  <36.301693, 36.301212, 33.753029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735695, 35.836823, 33.839958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740021, 35.951248, 33.456699>,  <35.742619, 36.019901, 33.226742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740021, 35.951248, 33.456699>,  <35.735695, 35.836823, 33.839958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740021, 35.951248, 33.456699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135895, -0.948895, -0.284833,
		-0.990664, 0.133290, 0.028608,
		0.010819, 0.286062, -0.958150,
		35.743267, 36.037067, 33.169254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211704, 35.423225, 33.433308>,  <35.735695, 35.836823, 33.839958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211704, 35.423225, 33.433308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441452, 35.590088, 33.151573>,  <35.579300, 35.690205, 32.982533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441452, 35.590088, 33.151573>,  <35.211704, 35.423225, 33.433308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441452, 35.590088, 33.151573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098120, -0.819129, -0.565155,
		-0.812697, 0.393715, -0.429549,
		0.574366, 0.417152, -0.704335,
		35.613762, 35.715233, 32.940273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998493, 35.149986, 32.663742>,  <35.211704, 35.423225, 33.433308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998493, 35.149986, 32.663742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368317, 35.291950, 32.608276>,  <35.590210, 35.377129, 32.574997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368317, 35.291950, 32.608276>,  <34.998493, 35.149986, 32.663742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368317, 35.291950, 32.608276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135273, -0.645938, -0.751309,
		-0.356219, 0.675871, -0.645218,
		0.924559, 0.354911, -0.138669,
		35.645683, 35.398422, 32.566677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059769, 35.174198, 31.957468>,  <34.998493, 35.149986, 32.663742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059769, 35.174198, 31.957468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443901, 35.205505, 32.064529>,  <35.674381, 35.224289, 32.128765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443901, 35.205505, 32.064529>,  <35.059769, 35.174198, 31.957468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443901, 35.205505, 32.064529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268999, -0.513001, -0.815150,
		0.073508, 0.854812, -0.513704,
		0.960331, 0.078266, 0.267653,
		35.732002, 35.228985, 32.144825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446781, 35.433105, 31.480955>,  <35.059769, 35.174198, 31.957468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446781, 35.433105, 31.480955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744072, 35.258198, 31.683504>,  <35.922447, 35.153255, 31.805035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744072, 35.258198, 31.683504>,  <35.446781, 35.433105, 31.480955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744072, 35.258198, 31.683504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353798, -0.385508, -0.852180,
		0.567840, 0.812516, -0.131816,
		0.743226, -0.437266, 0.506374,
		35.967041, 35.127018, 31.835417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016243, 35.688091, 31.243845>,  <35.446781, 35.433105, 31.480955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016243, 35.688091, 31.243845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130013, 35.335304, 31.394169>,  <36.198273, 35.123631, 31.484364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130013, 35.335304, 31.394169>,  <36.016243, 35.688091, 31.243845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130013, 35.335304, 31.394169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280467, -0.298301, -0.912334,
		0.916756, 0.364892, 0.162520,
		0.284423, -0.881970, 0.375810,
		36.215340, 35.070713, 31.506912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593067, 35.518520, 30.929426>,  <36.016243, 35.688091, 31.243845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593067, 35.518520, 30.929426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477142, 35.160110, 31.063971>,  <36.407585, 34.945065, 31.144697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477142, 35.160110, 31.063971>,  <36.593067, 35.518520, 30.929426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477142, 35.160110, 31.063971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209084, -0.402229, -0.891345,
		0.933965, -0.187999, 0.303918,
		-0.289816, -0.896029, 0.336360,
		36.390198, 34.891300, 31.164879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096546, 35.069096, 30.700315>,  <36.593067, 35.518520, 30.929426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096546, 35.069096, 30.700315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777493, 34.834560, 30.756868>,  <36.586060, 34.693840, 30.790800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777493, 34.834560, 30.756868>,  <37.096546, 35.069096, 30.700315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777493, 34.834560, 30.756868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132317, -0.398805, -0.907440,
		0.588452, -0.705096, 0.395682,
		-0.797632, -0.586340, 0.141382,
		36.538204, 34.658657, 30.799282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287991, 34.308475, 30.454067>,  <37.096546, 35.069096, 30.700315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287991, 34.308475, 30.454067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888447, 34.314640, 30.472109>,  <36.648720, 34.318336, 30.482933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888447, 34.314640, 30.472109>,  <37.287991, 34.308475, 30.454067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888447, 34.314640, 30.472109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046697, -0.505926, -0.861312,
		0.009549, -0.862440, 0.506070,
		-0.998863, 0.015407, 0.045105,
		36.588787, 34.319263, 30.485640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045883, 33.662014, 30.167076>,  <37.287991, 34.308475, 30.454067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045883, 33.662014, 30.167076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756702, 33.937122, 30.140823>,  <36.583195, 34.102188, 30.125072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.756702, 33.937122, 30.140823>,  <37.045883, 33.662014, 30.167076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756702, 33.937122, 30.140823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178899, -0.278107, -0.943743,
		-0.667331, -0.670543, 0.324100,
		-0.722955, 0.687771, -0.065630,
		36.539814, 34.143452, 30.121134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393040, 33.328899, 29.864050>,  <37.045883, 33.662014, 30.167076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393040, 33.328899, 29.864050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341801, 33.721333, 29.805986>,  <36.311058, 33.956791, 29.771149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341801, 33.721333, 29.805986>,  <36.393040, 33.328899, 29.864050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341801, 33.721333, 29.805986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096189, -0.157965, -0.982749,
		-0.987086, -0.111926, 0.114604,
		-0.128099, 0.981081, -0.145159,
		36.303371, 34.015656, 29.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815491, 33.343727, 29.388437>,  <36.393040, 33.328899, 29.864050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815491, 33.343727, 29.388437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975735, 33.708588, 29.353813>,  <36.071880, 33.927505, 29.333038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975735, 33.708588, 29.353813>,  <35.815491, 33.343727, 29.388437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975735, 33.708588, 29.353813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033310, -0.079911, -0.996245,
		-0.915643, 0.401990, -0.001629,
		0.400611, 0.912150, -0.086560,
		36.095917, 33.982231, 29.327845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516392, 33.542305, 28.912840>,  <35.815491, 33.343727, 29.388437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516392, 33.542305, 28.912840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805824, 33.817574, 28.934208>,  <35.979485, 33.982735, 28.947029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805824, 33.817574, 28.934208>,  <35.516392, 33.542305, 28.912840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805824, 33.817574, 28.934208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057322, 0.017218, -0.998207,
		-0.687859, 0.725342, -0.026989,
		0.723577, 0.688173, 0.053421,
		36.022896, 34.024025, 28.950233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282726, 34.146812, 28.494839>,  <35.516392, 33.542305, 28.912840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282726, 34.146812, 28.494839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679939, 34.156345, 28.541006>,  <35.918266, 34.162067, 28.568707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679939, 34.156345, 28.541006>,  <35.282726, 34.146812, 28.494839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679939, 34.156345, 28.541006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113966, 0.055312, -0.991944,
		-0.030028, 0.998185, 0.052210,
		0.993031, 0.023836, 0.115420,
		35.977848, 34.163498, 28.575632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448338, 34.793652, 28.163795>,  <35.282726, 34.146812, 28.494839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448338, 34.793652, 28.163795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743969, 34.524216, 28.161251>,  <35.921349, 34.362553, 28.159723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743969, 34.524216, 28.161251>,  <35.448338, 34.793652, 28.163795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743969, 34.524216, 28.161251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067240, 0.083169, -0.994264,
		0.670256, 0.734411, 0.106761,
		0.739078, -0.673590, -0.006363,
		35.965691, 34.322140, 28.159342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963772, 35.058815, 27.610458>,  <35.448338, 34.793652, 28.163795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963772, 35.058815, 27.610458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079460, 34.678375, 27.653845>,  <36.148872, 34.450111, 27.679876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079460, 34.678375, 27.653845>,  <35.963772, 35.058815, 27.610458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079460, 34.678375, 27.653845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212830, -0.046585, -0.975978,
		0.933304, 0.305354, 0.188949,
		0.289217, -0.951099, 0.108466,
		36.166225, 34.393047, 27.686384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535946, 34.941566, 27.235546>,  <35.963772, 35.058815, 27.610458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535946, 34.941566, 27.235546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383820, 34.572437, 27.260036>,  <36.292542, 34.350960, 27.274731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.383820, 34.572437, 27.260036>,  <36.535946, 34.941566, 27.235546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383820, 34.572437, 27.260036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166804, -0.133556, -0.976903,
		0.909689, -0.361321, 0.204726,
		-0.380318, -0.922827, 0.061225,
		36.269726, 34.295589, 27.278404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938046, 34.515797, 26.752710>,  <36.535946, 34.941566, 27.235546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938046, 34.515797, 26.752710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650120, 34.253361, 26.843412>,  <36.477364, 34.095901, 26.897833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650120, 34.253361, 26.843412>,  <36.938046, 34.515797, 26.752710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650120, 34.253361, 26.843412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113104, -0.433143, -0.894201,
		0.684891, -0.618011, 0.385988,
		-0.719814, -0.656087, 0.226756,
		36.434177, 34.056534, 26.911440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169353, 33.867352, 26.754894>,  <36.938046, 34.515797, 26.752710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169353, 33.867352, 26.754894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783131, 33.847954, 26.652634>,  <36.551399, 33.836315, 26.591278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783131, 33.847954, 26.652634>,  <37.169353, 33.867352, 26.754894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783131, 33.847954, 26.652634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252437, -0.412904, -0.875092,
		-0.063120, -0.909483, 0.410923,
		-0.965553, -0.048496, -0.255650,
		36.493465, 33.833405, 26.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075310, 33.289211, 26.381998>,  <37.169353, 33.867352, 26.754894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075310, 33.289211, 26.381998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754185, 33.501461, 26.273241>,  <36.561508, 33.628811, 26.207987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754185, 33.501461, 26.273241>,  <37.075310, 33.289211, 26.381998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754185, 33.501461, 26.273241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086196, -0.347938, -0.933547,
		-0.589966, -0.772900, 0.233592,
		-0.802814, 0.530627, -0.271893,
		36.513340, 33.660648, 26.191673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651085, 32.751736, 26.009628>,  <37.075310, 33.289211, 26.381998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651085, 32.751736, 26.009628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507214, 33.115543, 25.926294>,  <36.420891, 33.333828, 25.876293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507214, 33.115543, 25.926294>,  <36.651085, 32.751736, 26.009628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507214, 33.115543, 25.926294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185998, -0.288687, -0.939183,
		-0.914350, -0.299055, 0.273004,
		-0.359680, 0.909520, -0.208337,
		36.399311, 33.388401, 25.863792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070133, 32.601715, 25.588310>,  <36.651085, 32.751736, 26.009628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070133, 32.601715, 25.588310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199650, 32.971527, 25.507906>,  <36.277359, 33.193413, 25.459663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.199650, 32.971527, 25.507906>,  <36.070133, 32.601715, 25.588310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199650, 32.971527, 25.507906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106317, -0.246666, -0.963251,
		-0.940135, 0.290524, -0.178162,
		0.323794, 0.924528, -0.201012,
		36.296787, 33.248886, 25.447603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707241, 32.870079, 24.975407>,  <36.070133, 32.601715, 25.588310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707241, 32.870079, 24.975407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043793, 33.082539, 25.015320>,  <36.245724, 33.210014, 25.039268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.043793, 33.082539, 25.015320>,  <35.707241, 32.870079, 24.975407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043793, 33.082539, 25.015320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163731, -0.074562, -0.983683,
		-0.515045, 0.843989, -0.149701,
		0.841380, 0.531152, 0.099784,
		36.296207, 33.241882, 25.045256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727409, 33.106903, 24.349735>,  <35.707241, 32.870079, 24.975407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727409, 33.106903, 24.349735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 33.214718, 24.485638>,  <36.304089, 33.279408, 24.567179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087833, 33.214718, 24.485638>,  <35.727409, 33.106903, 24.349735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087833, 33.214718, 24.485638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366399, -0.053990, -0.928890,
		-0.232025, 0.961476, -0.147405,
		0.901064, 0.269535, 0.339757,
		36.358154, 33.295578, 24.587564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955399, 33.398113, 23.836882>,  <35.727409, 33.106903, 24.349735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955399, 33.398113, 23.836882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294342, 33.328957, 24.037714>,  <36.497707, 33.287464, 24.158213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294342, 33.328957, 24.037714>,  <35.955399, 33.398113, 23.836882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294342, 33.328957, 24.037714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493985, -0.090243, -0.864774,
		0.194820, 0.980798, 0.008937,
		0.847363, -0.172890, 0.502081,
		36.548550, 33.277088, 24.188339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492088, 33.883564, 23.587502>,  <35.955399, 33.398113, 23.836882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492088, 33.883564, 23.587502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695736, 33.572796, 23.735659>,  <36.817924, 33.386333, 23.824553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695736, 33.572796, 23.735659>,  <36.492088, 33.883564, 23.587502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695736, 33.572796, 23.735659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555086, -0.032501, -0.831158,
		0.657783, 0.628758, 0.414711,
		0.509118, -0.776922, 0.370393,
		36.848473, 33.339718, 23.846777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201508, 33.968792, 23.366760>,  <36.492088, 33.883564, 23.587502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201508, 33.968792, 23.366760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165222, 33.583946, 23.469606>,  <37.143452, 33.353039, 23.531315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165222, 33.583946, 23.469606>,  <37.201508, 33.968792, 23.366760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165222, 33.583946, 23.469606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447866, -0.270013, -0.852355,
		0.889487, 0.037830, 0.455392,
		-0.090717, -0.962113, 0.257116,
		37.138008, 33.295311, 23.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764961, 33.782169, 23.160046>,  <37.201508, 33.968792, 23.366760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764961, 33.782169, 23.160046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547447, 33.446556, 23.167150>,  <37.416939, 33.245186, 23.171413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547447, 33.446556, 23.167150>,  <37.764961, 33.782169, 23.160046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547447, 33.446556, 23.167150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431493, -0.297681, -0.851587,
		0.719799, -0.455417, 0.523913,
		-0.543786, -0.839036, 0.017761,
		37.384312, 33.194847, 23.172480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298161, 33.205791, 23.103024>,  <37.764961, 33.782169, 23.160046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298161, 33.205791, 23.103024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944656, 33.058323, 22.987753>,  <37.732555, 32.969841, 22.918591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944656, 33.058323, 22.987753>,  <38.298161, 33.205791, 23.103024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944656, 33.058323, 22.987753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382350, -0.213903, -0.898918,
		0.269767, -0.904613, 0.330002,
		-0.883761, -0.368675, -0.288174,
		37.679527, 32.947720, 22.901300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382782, 32.674870, 22.853397>,  <38.298161, 33.205791, 23.103024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382782, 32.674870, 22.853397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022148, 32.725632, 22.687967>,  <37.805767, 32.756088, 22.588709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022148, 32.725632, 22.687967>,  <38.382782, 32.674870, 22.853397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022148, 32.725632, 22.687967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404322, -0.092833, -0.909893,
		-0.153869, -0.987560, 0.032383,
		-0.901581, 0.126911, -0.413577,
		37.751675, 32.763706, 22.563894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306015, 32.103024, 22.366423>,  <38.382782, 32.674870, 22.853397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306015, 32.103024, 22.366423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017509, 32.349617, 22.240105>,  <37.844406, 32.497574, 22.164314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017509, 32.349617, 22.240105>,  <38.306015, 32.103024, 22.366423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017509, 32.349617, 22.240105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226829, -0.220561, -0.948631,
		-0.654467, -0.755846, 0.019247,
		-0.721264, 0.616482, -0.315797,
		37.801128, 32.534561, 22.145365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192936, 31.814560, 21.760845>,  <38.306015, 32.103024, 22.366423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192936, 31.814560, 21.760845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993023, 32.158527, 21.719357>,  <37.873077, 32.364910, 21.694464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993023, 32.158527, 21.719357>,  <38.192936, 31.814560, 21.760845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993023, 32.158527, 21.719357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232291, 0.017709, -0.972485,
		-0.834423, -0.510121, -0.208602,
		-0.499779, 0.859921, -0.103720,
		37.843090, 32.416504, 21.688240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740314, 31.715538, 21.184011>,  <38.192936, 31.814560, 21.760845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740314, 31.715538, 21.184011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823647, 32.105999, 21.208408>,  <37.873646, 32.340275, 21.223047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823647, 32.105999, 21.208408>,  <37.740314, 31.715538, 21.184011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823647, 32.105999, 21.208408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349497, -0.016056, -0.936800,
		-0.913481, 0.216485, -0.344508,
		0.208334, 0.976154, 0.060994,
		37.886147, 32.398846, 21.226707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464088, 32.068085, 20.538439>,  <37.740314, 31.715538, 21.184011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464088, 32.068085, 20.538439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749836, 32.316162, 20.668076>,  <37.921284, 32.465008, 20.745857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749836, 32.316162, 20.668076>,  <37.464088, 32.068085, 20.538439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749836, 32.316162, 20.668076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423116, -0.013933, -0.905968,
		-0.557363, 0.784322, -0.272369,
		0.714366, 0.620197, 0.324093,
		37.964146, 32.502220, 20.765303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477325, 32.646225, 20.105724>,  <37.464088, 32.068085, 20.538439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477325, 32.646225, 20.105724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829670, 32.641510, 20.295013>,  <38.041077, 32.638680, 20.408587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829670, 32.641510, 20.295013>,  <37.477325, 32.646225, 20.105724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829670, 32.641510, 20.295013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465783, 0.199869, -0.862032,
		-0.084423, 0.979752, 0.181547,
		0.880863, -0.011787, 0.473225,
		38.093929, 32.637974, 20.436981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006176, 33.198650, 20.183142>,  <37.477325, 32.646225, 20.105724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006176, 33.198650, 20.183142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149815, 32.904942, 19.952703>,  <38.236000, 32.728714, 19.814440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149815, 32.904942, 19.952703>,  <38.006176, 33.198650, 20.183142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149815, 32.904942, 19.952703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072803, 0.637426, -0.767065,
		0.930455, 0.233512, 0.282358,
		0.359101, -0.734276, -0.576096,
		38.257545, 32.684658, 19.779875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712906, 33.362827, 19.914059>,  <38.006176, 33.198650, 20.183142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712906, 33.362827, 19.914059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492290, 33.131538, 19.673571>,  <38.359921, 32.992764, 19.529278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492290, 33.131538, 19.673571>,  <38.712906, 33.362827, 19.914059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492290, 33.131538, 19.673571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073800, 0.684107, -0.725639,
		0.830880, -0.444586, -0.334637,
		-0.551537, -0.578222, -0.601221,
		38.326828, 32.958073, 19.493204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027897, 33.075291, 19.305285>,  <38.712906, 33.362827, 19.914059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027897, 33.075291, 19.305285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639740, 33.170238, 19.287401>,  <38.406845, 33.227207, 19.276670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.639740, 33.170238, 19.287401>,  <39.027897, 33.075291, 19.305285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639740, 33.170238, 19.287401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221580, 0.801126, -0.555967,
		-0.096153, -0.549412, -0.830001,
		-0.970390, 0.237369, -0.044708,
		38.348621, 33.241447, 19.273989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738815, 33.152203, 18.636997>,  <39.027897, 33.075291, 19.305285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738815, 33.152203, 18.636997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567139, 33.439571, 18.855961>,  <38.464134, 33.611992, 18.987339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567139, 33.439571, 18.855961>,  <38.738815, 33.152203, 18.636997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567139, 33.439571, 18.855961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295834, 0.684454, -0.666337,
		-0.853391, -0.124044, -0.506297,
		-0.429192, 0.718426, 0.547411,
		38.438381, 33.655098, 19.020184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234783, 33.391346, 18.160578>,  <38.738815, 33.152203, 18.636997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234783, 33.391346, 18.160578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430416, 33.740028, 18.148434>,  <39.547798, 33.949238, 18.141148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430416, 33.740028, 18.148434>,  <39.234783, 33.391346, 18.160578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430416, 33.740028, 18.148434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288880, 0.194730, 0.937352,
		0.823009, -0.449674, 0.347059,
		0.489085, 0.871708, -0.030362,
		39.577141, 34.001541, 18.139324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797112, 33.374073, 18.736488>,  <39.234783, 33.391346, 18.160578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797112, 33.374073, 18.736488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653908, 33.741047, 18.667048>,  <39.567986, 33.961231, 18.625383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653908, 33.741047, 18.667048>,  <39.797112, 33.374073, 18.736488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653908, 33.741047, 18.667048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389990, 0.022007, 0.920556,
		0.848374, 0.397269, 0.349913,
		-0.358008, 0.917438, -0.173601,
		39.546505, 34.016277, 18.614967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978889, 33.694736, 19.334415>,  <39.797112, 33.374073, 18.736488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978889, 33.694736, 19.334415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679249, 33.895046, 19.160948>,  <39.499462, 34.015232, 19.056868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679249, 33.895046, 19.160948>,  <39.978889, 33.694736, 19.334415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679249, 33.895046, 19.160948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370974, 0.225254, 0.900910,
		0.548837, 0.835756, 0.017035,
		-0.749104, 0.500772, -0.433671,
		39.454517, 34.045277, 19.030846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961292, 34.379055, 19.569172>,  <39.978889, 33.694736, 19.334415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961292, 34.379055, 19.569172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582924, 34.301785, 19.464926>,  <39.355904, 34.255421, 19.402378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.582924, 34.301785, 19.464926>,  <39.961292, 34.379055, 19.569172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582924, 34.301785, 19.464926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323803, 0.513421, 0.794701,
		-0.019714, 0.836111, -0.548206,
		-0.945919, -0.193177, -0.260614,
		39.299149, 34.243832, 19.386742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560036, 34.948086, 19.568018>,  <39.961292, 34.379055, 19.569172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560036, 34.948086, 19.568018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288795, 34.661343, 19.632874>,  <39.126049, 34.489296, 19.671787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288795, 34.661343, 19.632874>,  <39.560036, 34.948086, 19.568018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288795, 34.661343, 19.632874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226892, 0.414013, 0.881540,
		-0.699068, 0.560987, -0.443393,
		-0.678103, -0.716859, 0.162139,
		39.085365, 34.446285, 19.681515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832172, 35.207684, 19.810049>,  <39.560036, 34.948086, 19.568018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832172, 35.207684, 19.810049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913021, 34.840359, 19.946198>,  <38.961533, 34.619965, 20.027887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913021, 34.840359, 19.946198>,  <38.832172, 35.207684, 19.810049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913021, 34.840359, 19.946198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191880, 0.303678, 0.933253,
		-0.960379, -0.253946, -0.114824,
		0.202126, -0.918309, 0.340373,
		38.973660, 34.564865, 20.048309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288067, 35.121613, 20.244211>,  <38.832172, 35.207684, 19.810049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288067, 35.121613, 20.244211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577744, 34.865524, 20.346712>,  <38.751549, 34.711872, 20.408213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577744, 34.865524, 20.346712>,  <38.288067, 35.121613, 20.244211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577744, 34.865524, 20.346712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136107, 0.231586, 0.963246,
		-0.676034, -0.732452, 0.080574,
		0.724191, -0.640221, 0.256252,
		38.795002, 34.673458, 20.423588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095913, 34.927227, 20.948395>,  <38.288067, 35.121613, 20.244211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095913, 34.927227, 20.948395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473228, 34.794472, 20.945528>,  <38.699619, 34.714817, 20.943808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473228, 34.794472, 20.945528>,  <38.095913, 34.927227, 20.948395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473228, 34.794472, 20.945528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089352, 0.233049, 0.968351,
		-0.319714, -0.914078, 0.249488,
		0.943292, -0.331887, -0.007166,
		38.756218, 34.694904, 20.943378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215179, 34.961235, 21.625500>,  <38.095913, 34.927227, 20.948395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215179, 34.961235, 21.625500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583191, 34.874947, 21.494652>,  <38.803997, 34.823174, 21.416143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583191, 34.874947, 21.494652>,  <38.215179, 34.961235, 21.625500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583191, 34.874947, 21.494652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367378, 0.184502, 0.911588,
		-0.136292, -0.958866, 0.248998,
		0.920031, -0.215718, -0.327120,
		38.859200, 34.810230, 21.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424198, 34.643021, 22.129799>,  <38.215179, 34.961235, 21.625500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424198, 34.643021, 22.129799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741302, 34.805508, 21.948023>,  <38.931564, 34.903000, 21.838957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741302, 34.805508, 21.948023>,  <38.424198, 34.643021, 22.129799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741302, 34.805508, 21.948023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247162, 0.467275, 0.848861,
		0.557169, -0.785266, 0.270038,
		0.792763, 0.406216, -0.454439,
		38.979134, 34.927372, 21.811691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113056, 34.438248, 22.507841>,  <38.424198, 34.643021, 22.129799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113056, 34.438248, 22.507841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133972, 34.779598, 22.300377>,  <39.146523, 34.984409, 22.175898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133972, 34.779598, 22.300377>,  <39.113056, 34.438248, 22.507841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133972, 34.779598, 22.300377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267902, 0.488346, 0.830510,
		0.962026, -0.182380, -0.203086,
		0.052292, 0.853379, -0.518661,
		39.149658, 35.035610, 22.144779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673260, 34.628937, 22.725763>,  <39.113056, 34.438248, 22.507841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673260, 34.628937, 22.725763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518097, 34.963520, 22.570908>,  <39.424999, 35.164268, 22.477995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518097, 34.963520, 22.570908>,  <39.673260, 34.628937, 22.725763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518097, 34.963520, 22.570908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390695, 0.529643, 0.752885,
		0.834798, 0.140795, -0.532249,
		-0.387905, 0.836454, -0.387137,
		39.401726, 35.214455, 22.454767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165234, 35.084438, 22.942299>,  <39.673260, 34.628937, 22.725763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165234, 35.084438, 22.942299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841122, 35.283859, 22.819084>,  <39.646652, 35.403511, 22.745155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841122, 35.283859, 22.819084>,  <40.165234, 35.084438, 22.942299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841122, 35.283859, 22.819084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091111, 0.626406, 0.774154,
		0.578912, 0.599219, -0.552990,
		-0.810284, 0.498550, -0.308038,
		39.598038, 35.433426, 22.726673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277161, 35.799221, 22.924553>,  <40.165234, 35.084438, 22.942299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277161, 35.799221, 22.924553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878418, 35.809586, 22.954479>,  <39.639172, 35.815804, 22.972435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878418, 35.809586, 22.954479>,  <40.277161, 35.799221, 22.924553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878418, 35.809586, 22.954479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061124, 0.852472, 0.519188,
		-0.050326, 0.522131, -0.851379,
		-0.996861, 0.025911, 0.074817,
		39.579361, 35.817360, 22.976925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120308, 36.511284, 22.923809>,  <40.277161, 35.799221, 22.924553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120308, 36.511284, 22.923809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795803, 36.337463, 23.080275>,  <39.601101, 36.233170, 23.174154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795803, 36.337463, 23.080275>,  <40.120308, 36.511284, 22.923809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795803, 36.337463, 23.080275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021618, 0.690865, 0.722660,
		-0.584277, 0.577814, -0.569870,
		-0.811266, -0.434553, 0.391166,
		39.552422, 36.207096, 23.197624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779472, 37.037163, 23.235323>,  <40.120308, 36.511284, 22.923809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779472, 37.037163, 23.235323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586037, 36.737350, 23.416145>,  <39.469975, 36.557465, 23.524639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586037, 36.737350, 23.416145>,  <39.779472, 37.037163, 23.235323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586037, 36.737350, 23.416145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102266, 0.561305, 0.821266,
		-0.869303, 0.350922, -0.348090,
		-0.483585, -0.749527, 0.452056,
		39.440960, 36.512493, 23.551762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234753, 37.338745, 23.509922>,  <39.779472, 37.037163, 23.235323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234753, 37.338745, 23.509922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311256, 37.000687, 23.709581>,  <39.357159, 36.797852, 23.829376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311256, 37.000687, 23.709581>,  <39.234753, 37.338745, 23.509922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311256, 37.000687, 23.709581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141438, 0.479499, 0.866069,
		-0.971295, -0.236246, -0.027825,
		0.191263, -0.845144, 0.499149,
		39.368637, 36.747143, 23.859325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781681, 37.310326, 24.061853>,  <39.234753, 37.338745, 23.509922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781681, 37.310326, 24.061853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069500, 37.050320, 24.159620>,  <39.242191, 36.894318, 24.218281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069500, 37.050320, 24.159620>,  <38.781681, 37.310326, 24.061853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069500, 37.050320, 24.159620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080095, 0.271932, 0.958977,
		-0.689811, -0.709605, 0.143605,
		0.719546, -0.650011, 0.244417,
		39.285362, 36.855316, 24.232946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513252, 36.939999, 24.560137>,  <38.781681, 37.310326, 24.061853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513252, 36.939999, 24.560137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902290, 36.890755, 24.639034>,  <39.135712, 36.861206, 24.686373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902290, 36.890755, 24.639034>,  <38.513252, 36.939999, 24.560137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902290, 36.890755, 24.639034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142405, 0.355183, 0.923886,
		-0.183800, -0.926654, 0.327917,
		0.972594, -0.123113, 0.197243,
		39.194069, 36.853821, 24.698208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561600, 36.570072, 25.257494>,  <38.513252, 36.939999, 24.560137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561600, 36.570072, 25.257494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915733, 36.736763, 25.175009>,  <39.128212, 36.836777, 25.125519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915733, 36.736763, 25.175009>,  <38.561600, 36.570072, 25.257494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915733, 36.736763, 25.175009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064194, 0.329704, 0.941900,
		0.460509, -0.847130, 0.265146,
		0.885331, 0.416732, -0.206212,
		39.181332, 36.861782, 25.113146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133358, 36.353897, 25.764709>,  <38.561600, 36.570072, 25.257494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133358, 36.353897, 25.764709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211246, 36.717121, 25.616381>,  <39.257980, 36.935055, 25.527384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211246, 36.717121, 25.616381>,  <39.133358, 36.353897, 25.764709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211246, 36.717121, 25.616381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149667, 0.401137, 0.903709,
		0.969373, -0.120471, 0.214016,
		0.194720, 0.908062, -0.370820,
		39.269661, 36.989540, 25.505135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078743, 36.780254, 26.331112>,  <39.133358, 36.353897, 25.764709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078743, 36.780254, 26.331112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149605, 37.071419, 26.066154>,  <39.192120, 37.246117, 25.907179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149605, 37.071419, 26.066154>,  <39.078743, 36.780254, 26.331112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149605, 37.071419, 26.066154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104337, 0.655358, 0.748077,
		0.978637, -0.201636, 0.040150,
		0.177152, 0.727907, -0.662396,
		39.202751, 37.289791, 25.867435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717468, 37.169098, 26.510071>,  <39.078743, 36.780254, 26.331112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717468, 37.169098, 26.510071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457485, 37.378078, 26.289312>,  <39.301495, 37.503468, 26.156857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457485, 37.378078, 26.289312>,  <39.717468, 37.169098, 26.510071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457485, 37.378078, 26.289312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057244, 0.757808, 0.649962,
		0.757808, 0.390857, -0.522454,
		-0.649962, 0.522454, -0.551898,
		39.262497, 37.534813, 26.123743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935390, 37.862572, 26.696421>,  <39.717468, 37.169098, 26.510071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935390, 37.862572, 26.696421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580643, 37.911156, 26.518110>,  <39.367794, 37.940308, 26.411125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580643, 37.911156, 26.518110>,  <39.935390, 37.862572, 26.696421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580643, 37.911156, 26.518110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176715, 0.802291, 0.570176,
		0.426896, 0.584445, -0.690061,
		-0.886866, 0.121462, -0.445775,
		39.314583, 37.947594, 26.384378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705528, 38.565628, 26.622700>,  <39.935390, 37.862572, 26.696421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705528, 38.565628, 26.622700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345673, 38.393398, 26.593700>,  <39.129761, 38.290062, 26.576302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345673, 38.393398, 26.593700>,  <39.705528, 38.565628, 26.622700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345673, 38.393398, 26.593700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330269, 0.562431, 0.758020,
		-0.285608, 0.705888, -0.648190,
		-0.899639, -0.430574, -0.072498,
		39.075783, 38.264225, 26.571951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410084, 39.091087, 26.837458>,  <39.705528, 38.565628, 26.622700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410084, 39.091087, 26.837458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114044, 38.822102, 26.840115>,  <38.936420, 38.660709, 26.841709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114044, 38.822102, 26.840115>,  <39.410084, 39.091087, 26.837458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114044, 38.822102, 26.840115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469536, 0.523779, 0.710769,
		-0.481448, 0.522919, -0.703395,
		-0.740098, -0.672467, 0.006643,
		38.892014, 38.620361, 26.842108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815308, 39.450748, 26.752043>,  <39.410084, 39.091087, 26.837458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815308, 39.450748, 26.752043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722092, 39.094242, 26.907650>,  <38.666161, 38.880337, 27.001015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722092, 39.094242, 26.907650>,  <38.815308, 39.450748, 26.752043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722092, 39.094242, 26.907650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619982, 0.444360, 0.646658,
		-0.749208, -0.090482, -0.656125,
		-0.233044, -0.891267, 0.389016,
		38.652180, 38.826862, 27.024355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953163, 39.359352, 26.775311>,  <38.815308, 39.450748, 26.752043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953163, 39.359352, 26.775311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146729, 39.122086, 27.032675>,  <38.262867, 38.979725, 27.187094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146729, 39.122086, 27.032675>,  <37.953163, 39.359352, 26.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146729, 39.122086, 27.032675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698235, 0.181503, 0.692477,
		-0.527536, -0.784352, -0.326339,
		0.483914, -0.593168, 0.643412,
		38.291904, 38.944134, 27.225698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366589, 39.078819, 27.208004>,  <37.953163, 39.359352, 26.775311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366589, 39.078819, 27.208004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696945, 38.992638, 27.416422>,  <37.895161, 38.940929, 27.541471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696945, 38.992638, 27.416422>,  <37.366589, 39.078819, 27.208004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696945, 38.992638, 27.416422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477845, 0.223060, 0.849652,
		-0.299282, -0.950697, 0.081270,
		0.825890, -0.215451, 0.521044,
		37.944714, 38.928001, 27.572735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112988, 38.835484, 27.807583>,  <37.366589, 39.078819, 27.208004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112988, 38.835484, 27.807583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481552, 38.936214, 27.925962>,  <37.702690, 38.996655, 27.996990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481552, 38.936214, 27.925962>,  <37.112988, 38.835484, 27.807583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481552, 38.936214, 27.925962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373911, 0.367203, 0.851676,
		0.105802, -0.895402, 0.432506,
		0.921410, 0.251828, 0.295950,
		37.757977, 39.011761, 28.014748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238800, 38.469128, 28.376932>,  <37.112988, 38.835484, 27.807583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238800, 38.469128, 28.376932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520977, 38.747154, 28.432390>,  <37.690285, 38.913971, 28.465666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520977, 38.747154, 28.432390>,  <37.238800, 38.469128, 28.376932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520977, 38.747154, 28.432390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393855, 0.221803, 0.892010,
		0.589258, -0.683871, 0.430227,
		0.705445, 0.695071, 0.138647,
		37.732609, 38.955677, 28.473984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483559, 38.477119, 29.063559>,  <37.238800, 38.469128, 28.376932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483559, 38.477119, 29.063559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600838, 38.844528, 28.957464>,  <37.671207, 39.064972, 28.893806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600838, 38.844528, 28.957464>,  <37.483559, 38.477119, 29.063559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600838, 38.844528, 28.957464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209846, 0.332495, 0.919463,
		0.932736, -0.213929, 0.290236,
		0.293202, 0.918521, -0.265237,
		37.688797, 39.120083, 28.877893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787045, 38.752537, 29.651539>,  <37.483559, 38.477119, 29.063559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787045, 38.752537, 29.651539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721550, 39.078426, 29.429037>,  <37.682255, 39.273960, 29.295536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721550, 39.078426, 29.429037>,  <37.787045, 38.752537, 29.651539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721550, 39.078426, 29.429037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195295, 0.525934, 0.827800,
		0.966980, 0.244176, 0.072996,
		-0.163738, 0.814722, -0.556254,
		37.672428, 39.322842, 29.262161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178791, 39.195606, 29.958391>,  <37.787045, 38.752537, 29.651539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178791, 39.195606, 29.958391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907982, 39.410454, 29.757135>,  <37.745499, 39.539360, 29.636381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907982, 39.410454, 29.757135>,  <38.178791, 39.195606, 29.958391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907982, 39.410454, 29.757135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177562, 0.544243, 0.819922,
		0.714223, 0.644442, -0.273093,
		-0.677021, 0.537116, -0.503139,
		37.704876, 39.571590, 29.606194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245106, 39.883831, 30.186129>,  <38.178791, 39.195606, 29.958391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245106, 39.883831, 30.186129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883713, 39.865063, 30.015711>,  <37.666878, 39.853802, 29.913460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883713, 39.865063, 30.015711>,  <38.245106, 39.883831, 30.186129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883713, 39.865063, 30.015711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352425, 0.647043, 0.676115,
		0.243947, 0.761009, -0.601129,
		-0.903486, -0.046917, -0.426042,
		37.612667, 39.850986, 29.887897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096954, 40.570580, 30.075834>,  <38.245106, 39.883831, 30.186129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096954, 40.570580, 30.075834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766193, 40.348579, 30.112097>,  <37.567738, 40.215382, 30.133854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766193, 40.348579, 30.112097>,  <38.096954, 40.570580, 30.075834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766193, 40.348579, 30.112097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247014, 0.503289, 0.828061,
		-0.505197, 0.662328, -0.553260,
		-0.826898, -0.554997, 0.090656,
		37.518124, 40.182079, 30.139294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595814, 41.117912, 30.300875>,  <38.096954, 40.570580, 30.075834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595814, 41.117912, 30.300875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464272, 40.749672, 30.385109>,  <37.385345, 40.528728, 30.435650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464272, 40.749672, 30.385109>,  <37.595814, 41.117912, 30.300875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464272, 40.749672, 30.385109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299624, 0.313179, 0.901190,
		-0.895588, 0.233266, -0.378826,
		-0.328857, -0.920600, 0.210588,
		37.365616, 40.473492, 30.448286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046799, 41.247482, 30.669443>,  <37.595814, 41.117912, 30.300875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046799, 41.247482, 30.669443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094177, 40.859837, 30.755968>,  <37.122604, 40.627251, 30.807884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094177, 40.859837, 30.755968>,  <37.046799, 41.247482, 30.669443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094177, 40.859837, 30.755968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440585, 0.143934, 0.886097,
		-0.889862, -0.200263, -0.409928,
		0.118449, -0.969112, 0.216314,
		37.129711, 40.569103, 30.820862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453423, 41.094669, 31.063601>,  <37.046799, 41.247482, 30.669443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453423, 41.094669, 31.063601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697037, 40.788136, 31.145384>,  <36.843204, 40.604214, 31.194454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697037, 40.788136, 31.145384>,  <36.453423, 41.094669, 31.063601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697037, 40.788136, 31.145384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424817, -0.097490, 0.900015,
		-0.669783, -0.634997, -0.384928,
		0.609033, -0.766339, 0.204460,
		36.879745, 40.558235, 31.206722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055771, 40.547745, 31.431709>,  <36.453423, 41.094669, 31.063601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055771, 40.547745, 31.431709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439800, 40.496056, 31.530949>,  <36.670219, 40.465042, 31.590492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439800, 40.496056, 31.530949>,  <36.055771, 40.547745, 31.431709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439800, 40.496056, 31.530949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265834, -0.145385, 0.952993,
		-0.087074, -0.980901, -0.173931,
		0.960078, -0.129218, 0.248098,
		36.727825, 40.457291, 31.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069477, 39.990505, 31.757986>,  <36.055771, 40.547745, 31.431709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069477, 39.990505, 31.757986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406708, 40.173016, 31.871853>,  <36.609047, 40.282520, 31.940174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406708, 40.173016, 31.871853>,  <36.069477, 39.990505, 31.757986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406708, 40.173016, 31.871853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263790, -0.110428, 0.958238,
		0.468654, -0.882961, 0.027261,
		0.843077, 0.456273, 0.284669,
		36.659630, 40.309898, 31.957254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318535, 39.614147, 32.333797>,  <36.069477, 39.990505, 31.757986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318535, 39.614147, 32.333797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505783, 39.967361, 32.347061>,  <36.618134, 40.179291, 32.355019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505783, 39.967361, 32.347061>,  <36.318535, 39.614147, 32.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505783, 39.967361, 32.347061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030236, -0.021492, 0.999312,
		0.883145, -0.468805, 0.016639,
		0.468125, 0.883040, 0.033155,
		36.646221, 40.232273, 32.357006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883305, 39.497360, 32.760525>,  <36.318535, 39.614147, 32.333797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883305, 39.497360, 32.760525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814922, 39.891418, 32.767078>,  <36.773891, 40.127853, 32.771011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814922, 39.891418, 32.767078>,  <36.883305, 39.497360, 32.760525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814922, 39.891418, 32.767078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025887, -0.021117, 0.999442,
		0.984939, 0.170436, 0.029113,
		-0.170956, 0.985143, 0.016387,
		36.763638, 40.186962, 32.771996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347149, 39.735386, 33.362560>,  <36.883305, 39.497360, 32.760525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347149, 39.735386, 33.362560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058464, 39.990124, 33.254074>,  <36.885254, 40.142967, 33.188980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.058464, 39.990124, 33.254074>,  <37.347149, 39.735386, 33.362560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058464, 39.990124, 33.254074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223635, 0.156282, 0.962062,
		0.655068, 0.754989, 0.029629,
		-0.721715, 0.636842, -0.271217,
		36.841949, 40.181175, 33.172710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271667, 39.006058, 33.673157>,  <37.347149, 39.735386, 33.362560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271667, 39.006058, 33.673157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431271, 38.758839, 33.944099>,  <37.527035, 38.610508, 34.106667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431271, 38.758839, 33.944099>,  <37.271667, 39.006058, 33.673157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431271, 38.758839, 33.944099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674595, -0.302477, -0.673372,
		0.621058, 0.725624, 0.296238,
		0.399010, -0.618043, 0.677358,
		37.550972, 38.573425, 34.147308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057148, 39.137772, 33.628914>,  <37.271667, 39.006058, 33.673157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057148, 39.137772, 33.628914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014557, 38.780830, 33.804352>,  <37.989002, 38.566666, 33.909615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014557, 38.780830, 33.804352>,  <38.057148, 39.137772, 33.628914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014557, 38.780830, 33.804352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705140, -0.378759, -0.599433,
		0.701029, 0.245445, 0.669564,
		-0.106476, -0.892356, 0.438594,
		37.982613, 38.513123, 33.935928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720547, 38.967850, 33.547024>,  <38.057148, 39.137772, 33.628914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720547, 38.967850, 33.547024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521729, 38.635826, 33.648174>,  <38.402435, 38.436611, 33.708862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521729, 38.635826, 33.648174>,  <38.720547, 38.967850, 33.547024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521729, 38.635826, 33.648174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708802, -0.556498, -0.433486,
		0.500543, -0.036226, 0.864954,
		-0.497048, -0.830059, 0.252874,
		38.372616, 38.386810, 33.724037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175449, 38.585175, 33.860573>,  <38.720547, 38.967850, 33.547024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175449, 38.585175, 33.860573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891491, 38.342102, 33.718147>,  <38.721115, 38.196259, 33.632690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891491, 38.342102, 33.718147>,  <39.175449, 38.585175, 33.860573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891491, 38.342102, 33.718147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697474, -0.536281, -0.475324,
		0.097894, -0.585774, 0.804541,
		-0.709892, -0.607678, -0.356063,
		38.678524, 38.159798, 33.611328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505608, 37.969067, 33.779045>,  <39.175449, 38.585175, 33.860573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505608, 37.969067, 33.779045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177925, 37.932060, 33.552650>,  <38.981316, 37.909855, 33.416813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177925, 37.932060, 33.552650>,  <39.505608, 37.969067, 33.779045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177925, 37.932060, 33.552650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481564, -0.646922, -0.591260,
		-0.311447, -0.756923, 0.574515,
		-0.819205, -0.092520, -0.565989,
		38.932163, 37.904305, 33.382854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491985, 37.241867, 33.658352>,  <39.505608, 37.969067, 33.779045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491985, 37.241867, 33.658352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273918, 37.411755, 33.369240>,  <39.143078, 37.513687, 33.195774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273918, 37.411755, 33.369240>,  <39.491985, 37.241867, 33.658352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273918, 37.411755, 33.369240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431679, -0.596855, -0.676326,
		-0.718642, -0.680718, 0.142043,
		-0.545167, 0.424719, -0.722777,
		39.110367, 37.539169, 33.152409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484547, 36.650108, 33.156487>,  <39.491985, 37.241867, 33.658352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484547, 36.650108, 33.156487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346695, 36.971157, 32.961742>,  <39.263985, 37.163784, 32.844894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346695, 36.971157, 32.961742>,  <39.484547, 36.650108, 33.156487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346695, 36.971157, 32.961742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468441, -0.302408, -0.830128,
		-0.813507, -0.514152, -0.271761,
		-0.344630, 0.802619, -0.486861,
		39.243305, 37.211945, 32.815685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144821, 36.334290, 32.632065>,  <39.484547, 36.650108, 33.156487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144821, 36.334290, 32.632065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221451, 36.709320, 32.515961>,  <39.267429, 36.934338, 32.446297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221451, 36.709320, 32.515961>,  <39.144821, 36.334290, 32.632065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221451, 36.709320, 32.515961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209704, -0.328012, -0.921104,
		-0.958814, 0.115590, -0.259451,
		0.191573, 0.937575, -0.290263,
		39.278923, 36.990593, 32.428883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929592, 36.320320, 31.969269>,  <39.144821, 36.334290, 32.632065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929592, 36.320320, 31.969269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155357, 36.650425, 31.976982>,  <39.290817, 36.848488, 31.981609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.155357, 36.650425, 31.976982>,  <38.929592, 36.320320, 31.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155357, 36.650425, 31.976982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336343, -0.208576, -0.918351,
		-0.753861, 0.524818, -0.395296,
		0.564417, 0.825265, 0.019281,
		39.324684, 36.898003, 31.982767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906136, 36.583027, 31.266804>,  <38.929592, 36.320320, 31.969269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906136, 36.583027, 31.266804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231987, 36.728016, 31.447906>,  <39.427498, 36.815010, 31.556568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231987, 36.728016, 31.447906>,  <38.906136, 36.583027, 31.266804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231987, 36.728016, 31.447906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554826, -0.259627, -0.790419,
		-0.168958, 0.895102, -0.412609,
		0.814630, 0.362474, 0.452759,
		39.476376, 36.836758, 31.583735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123348, 37.040737, 30.811430>,  <38.906136, 36.583027, 31.266804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123348, 37.040737, 30.811430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434021, 36.929611, 31.037556>,  <39.620426, 36.862934, 31.173231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434021, 36.929611, 31.037556>,  <39.123348, 37.040737, 30.811430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434021, 36.929611, 31.037556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506684, -0.257630, -0.822738,
		0.374210, 0.925444, -0.059333,
		0.776684, -0.277813, 0.565315,
		39.667027, 36.846268, 31.207150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762451, 37.469387, 30.678514>,  <39.123348, 37.040737, 30.811430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762451, 37.469387, 30.678514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925186, 37.142273, 30.841349>,  <40.022827, 36.946007, 30.939049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925186, 37.142273, 30.841349>,  <39.762451, 37.469387, 30.678514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925186, 37.142273, 30.841349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455938, -0.204380, -0.866227,
		0.791584, 0.538017, 0.289709,
		0.406834, -0.817781, 0.407087,
		40.047237, 36.896938, 30.963474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468166, 37.460777, 30.559599>,  <39.762451, 37.469387, 30.678514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468166, 37.460777, 30.559599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380486, 37.073063, 30.604210>,  <40.327877, 36.840435, 30.630976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380486, 37.073063, 30.604210>,  <40.468166, 37.460777, 30.559599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380486, 37.073063, 30.604210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468271, -0.204794, -0.859524,
		0.855964, -0.136183, 0.498779,
		-0.219199, -0.969285, 0.111526,
		40.314724, 36.782276, 30.637667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098545, 37.066490, 30.517033>,  <40.468166, 37.460777, 30.559599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098545, 37.066490, 30.517033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784855, 36.834141, 30.429785>,  <40.596642, 36.694729, 30.377436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784855, 36.834141, 30.429785>,  <41.098545, 37.066490, 30.517033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784855, 36.834141, 30.429785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439450, -0.271801, -0.856159,
		0.438039, -0.767271, 0.468420,
		-0.784223, -0.580878, -0.218118,
		40.549587, 36.659878, 30.364349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426933, 36.671654, 30.048130>,  <41.098545, 37.066490, 30.517033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426933, 36.671654, 30.048130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034306, 36.633816, 29.981709>,  <40.798729, 36.611115, 29.941854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034306, 36.633816, 29.981709>,  <41.426933, 36.671654, 30.048130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034306, 36.633816, 29.981709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184521, -0.242972, -0.952322,
		0.049734, -0.965410, 0.255948,
		-0.981569, -0.094591, -0.166055,
		40.739834, 36.605438, 29.931892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416042, 35.960876, 29.635647>,  <41.426933, 36.671654, 30.048130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416042, 35.960876, 29.635647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073719, 36.163246, 29.592524>,  <40.868324, 36.284668, 29.566648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073719, 36.163246, 29.592524>,  <41.416042, 35.960876, 29.635647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073719, 36.163246, 29.592524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076534, -0.329958, -0.940888,
		-0.511595, -0.796972, 0.321103,
		-0.855811, 0.505929, -0.107809,
		40.816975, 36.315025, 29.560181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862240, 35.483486, 29.465422>,  <41.416042, 35.960876, 29.635647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862240, 35.483486, 29.465422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800678, 35.854404, 29.328932>,  <40.763741, 36.076954, 29.247038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800678, 35.854404, 29.328932>,  <40.862240, 35.483486, 29.465422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800678, 35.854404, 29.328932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108994, -0.359166, -0.926888,
		-0.982056, -0.105461, 0.156347,
		-0.153905, 0.927296, -0.341226,
		40.754505, 36.132595, 29.226564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475395, 35.355736, 28.920698>,  <40.862240, 35.483486, 29.465422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475395, 35.355736, 28.920698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573792, 35.738621, 28.859728>,  <40.632828, 35.968353, 28.823145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573792, 35.738621, 28.859728>,  <40.475395, 35.355736, 28.920698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573792, 35.738621, 28.859728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081231, -0.136348, -0.987325,
		-0.965863, 0.255252, 0.044215,
		0.245988, 0.957212, -0.152427,
		40.647587, 36.025784, 28.813999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979416, 35.691200, 28.369143>,  <40.475395, 35.355736, 28.920698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979416, 35.691200, 28.369143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307816, 35.919186, 28.382494>,  <40.504856, 36.055977, 28.390505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307816, 35.919186, 28.382494>,  <39.979416, 35.691200, 28.369143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307816, 35.919186, 28.382494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161736, -0.176107, -0.970993,
		-0.547548, 0.802579, -0.236766,
		0.820995, 0.569959, 0.033379,
		40.554115, 36.090172, 28.392508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924854, 36.089622, 27.819292>,  <39.979416, 35.691200, 28.369143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924854, 36.089622, 27.819292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316471, 36.121483, 27.894274>,  <40.551441, 36.140598, 27.939262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316471, 36.121483, 27.894274>,  <39.924854, 36.089622, 27.819292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316471, 36.121483, 27.894274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197988, -0.156270, -0.967667,
		-0.047778, 0.984498, -0.168764,
		0.979039, 0.079647, 0.187453,
		40.610184, 36.145378, 27.950510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163509, 36.600094, 27.326290>,  <39.924854, 36.089622, 27.819292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163509, 36.600094, 27.326290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512032, 36.430115, 27.424473>,  <40.721146, 36.328129, 27.483383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512032, 36.430115, 27.424473>,  <40.163509, 36.600094, 27.326290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512032, 36.430115, 27.424473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184499, -0.179822, -0.966242,
		0.454740, 0.887178, -0.078278,
		0.871305, -0.424947, 0.245456,
		40.773422, 36.302631, 27.498110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722107, 36.791882, 26.799480>,  <40.163509, 36.600094, 27.326290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722107, 36.791882, 26.799480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833355, 36.457653, 26.988995>,  <40.900105, 36.257118, 27.102703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833355, 36.457653, 26.988995>,  <40.722107, 36.791882, 26.799480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833355, 36.457653, 26.988995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283505, -0.399867, -0.871625,
		0.917755, 0.376736, 0.125677,
		0.278118, -0.835569, 0.473787,
		40.916790, 36.206982, 27.131130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364525, 36.596855, 26.436687>,  <40.722107, 36.791882, 26.799480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364525, 36.596855, 26.436687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240185, 36.262508, 26.617659>,  <41.165581, 36.061901, 26.726242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.240185, 36.262508, 26.617659>,  <41.364525, 36.596855, 26.436687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240185, 36.262508, 26.617659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212929, -0.525157, -0.823937,
		0.926300, -0.159787, 0.341227,
		-0.310852, -0.835870, 0.452430,
		41.146931, 36.011749, 26.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817253, 36.005131, 26.174904>,  <41.364525, 36.596855, 26.436687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817253, 36.005131, 26.174904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493011, 35.817768, 26.315483>,  <41.298466, 35.705349, 26.399830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493011, 35.817768, 26.315483>,  <41.817253, 36.005131, 26.174904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493011, 35.817768, 26.315483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053500, -0.656878, -0.752096,
		0.583147, -0.590849, 0.557527,
		-0.810603, -0.468410, 0.351446,
		41.249832, 35.677246, 26.420918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957024, 35.289398, 26.188395>,  <41.817253, 36.005131, 26.174904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957024, 35.289398, 26.188395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566303, 35.366573, 26.151241>,  <41.331871, 35.412880, 26.128948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566303, 35.366573, 26.151241>,  <41.957024, 35.289398, 26.188395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566303, 35.366573, 26.151241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071104, -0.701411, -0.709201,
		-0.201983, -0.686146, 0.698860,
		-0.976804, 0.192938, -0.092885,
		41.273262, 35.424454, 26.123375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647022, 34.594307, 25.983164>,  <41.957024, 35.289398, 26.188395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647022, 34.594307, 25.983164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380753, 34.876278, 25.885223>,  <41.220989, 35.045460, 25.826460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380753, 34.876278, 25.885223>,  <41.647022, 34.594307, 25.983164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380753, 34.876278, 25.885223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280918, -0.540693, -0.792928,
		-0.691346, -0.459051, 0.557954,
		-0.665676, 0.704928, -0.244851,
		41.181049, 35.087757, 25.811768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033134, 34.185837, 25.797096>,  <41.647022, 34.594307, 25.983164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033134, 34.185837, 25.797096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057076, 34.552647, 25.639370>,  <41.071442, 34.772732, 25.544735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057076, 34.552647, 25.639370>,  <41.033134, 34.185837, 25.797096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057076, 34.552647, 25.639370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053189, -0.391531, -0.918626,
		-0.996789, 0.075958, 0.025340,
		0.059855, 0.917024, -0.394314,
		41.075031, 34.827755, 25.521076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550423, 34.120632, 25.380533>,  <41.033134, 34.185837, 25.797096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550423, 34.120632, 25.380533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735420, 34.446106, 25.239668>,  <40.846416, 34.641392, 25.155149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735420, 34.446106, 25.239668>,  <40.550423, 34.120632, 25.380533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735420, 34.446106, 25.239668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150568, -0.319346, -0.935600,
		-0.873747, 0.485729, -0.025179,
		0.462489, 0.813686, -0.352163,
		40.874168, 34.690212, 25.134020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171295, 34.454689, 24.781532>,  <40.550423, 34.120632, 25.380533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171295, 34.454689, 24.781532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549355, 34.579819, 24.743944>,  <40.776192, 34.654896, 24.721392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549355, 34.579819, 24.743944>,  <40.171295, 34.454689, 24.781532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549355, 34.579819, 24.743944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008710, -0.263458, -0.964631,
		-0.326519, 0.912540, -0.246283,
		0.945150, 0.312825, -0.093972,
		40.832901, 34.673668, 24.715752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328922, 34.642258, 24.060738>,  <40.171295, 34.454689, 24.781532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328922, 34.642258, 24.060738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695892, 34.598289, 24.213705>,  <40.916077, 34.571907, 24.305485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695892, 34.598289, 24.213705>,  <40.328922, 34.642258, 24.060738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695892, 34.598289, 24.213705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304509, -0.424691, -0.852591,
		0.256127, 0.898641, -0.356152,
		0.917428, -0.109921, 0.382419,
		40.971119, 34.565311, 24.328430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787231, 34.844124, 23.425268>,  <40.328922, 34.642258, 24.060738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787231, 34.844124, 23.425268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038826, 34.637596, 23.657749>,  <41.189781, 34.513680, 23.797237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038826, 34.637596, 23.657749>,  <40.787231, 34.844124, 23.425268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038826, 34.637596, 23.657749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469132, -0.344060, -0.813350,
		0.619916, 0.784243, 0.025814,
		0.628983, -0.516319, 0.581201,
		41.227520, 34.482700, 23.832109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553780, 35.065395, 23.179008>,  <40.787231, 34.844124, 23.425268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553780, 35.065395, 23.179008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532883, 34.715317, 23.371384>,  <41.520344, 34.505268, 23.486809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532883, 34.715317, 23.371384>,  <41.553780, 35.065395, 23.179008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532883, 34.715317, 23.371384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370692, -0.464183, -0.804439,
		0.927285, 0.136252, 0.348679,
		-0.052244, -0.875197, 0.480938,
		41.517208, 34.452759, 23.515665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075909, 34.654713, 22.879824>,  <41.553780, 35.065395, 23.179008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075909, 34.654713, 22.879824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862236, 34.367447, 23.058214>,  <41.734032, 34.195087, 23.165249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.862236, 34.367447, 23.058214>,  <42.075909, 34.654713, 22.879824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.862236, 34.367447, 23.058214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275761, -0.646725, -0.711128,
		0.799131, -0.256886, 0.543507,
		-0.534178, -0.718162, 0.445978,
		41.701981, 34.151997, 23.192007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536320, 34.099266, 23.081385>,  <42.075909, 34.654713, 22.879824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536320, 34.099266, 23.081385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187119, 33.908924, 23.038626>,  <41.977596, 33.794720, 23.012970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187119, 33.908924, 23.038626>,  <42.536320, 34.099266, 23.081385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187119, 33.908924, 23.038626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433498, -0.656648, -0.617165,
		0.223488, -0.585126, 0.779538,
		-0.873002, -0.475857, -0.106898,
		41.925217, 33.766167, 23.006556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742737, 33.426815, 23.079195>,  <42.536320, 34.099266, 23.081385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742737, 33.426815, 23.079195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368214, 33.438442, 22.939207>,  <42.143497, 33.445419, 22.855215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368214, 33.438442, 22.939207>,  <42.742737, 33.426815, 23.079195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368214, 33.438442, 22.939207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225641, -0.713834, -0.662968,
		-0.269089, -0.699711, 0.661812,
		-0.936311, 0.029066, -0.349968,
		42.087322, 33.447163, 22.834217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535461, 32.739571, 23.022799>,  <42.742737, 33.426815, 23.079195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535461, 32.739571, 23.022799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252270, 32.901382, 22.791239>,  <42.082355, 32.998470, 22.652302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252270, 32.901382, 22.791239>,  <42.535461, 32.739571, 23.022799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252270, 32.901382, 22.791239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184491, -0.685298, -0.704506,
		-0.681674, -0.605598, 0.410575,
		-0.708014, 0.404496, -0.578878,
		42.039879, 33.022743, 22.617569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061119, 32.183220, 22.860157>,  <42.535461, 32.739571, 23.022799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061119, 32.183220, 22.860157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035332, 32.474339, 22.587055>,  <42.019859, 32.649010, 22.423193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035332, 32.474339, 22.587055>,  <42.061119, 32.183220, 22.860157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035332, 32.474339, 22.587055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304203, -0.637283, -0.708047,
		-0.950423, -0.253342, -0.180314,
		-0.064467, 0.727797, -0.682756,
		42.015991, 32.692677, 22.382229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967674, 31.908501, 22.301905>,  <42.061119, 32.183220, 22.860157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967674, 31.908501, 22.301905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110512, 32.253712, 22.158981>,  <42.196213, 32.460838, 22.073227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110512, 32.253712, 22.158981>,  <41.967674, 31.908501, 22.301905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110512, 32.253712, 22.158981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331393, -0.474701, -0.815376,
		-0.873306, 0.172757, -0.455514,
		0.357095, 0.863026, -0.357309,
		42.217640, 32.512619, 22.051788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317284, 31.432823, 22.608112>,  <41.967674, 31.908501, 22.301905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317284, 31.432823, 22.608112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620804, 31.176016, 22.651985>,  <42.802917, 31.021933, 22.678308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620804, 31.176016, 22.651985>,  <42.317284, 31.432823, 22.608112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620804, 31.176016, 22.651985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129116, 0.016783, 0.991487,
		-0.638392, -0.766507, -0.070159,
		0.758805, -0.642016, 0.109682,
		42.848446, 30.983412, 22.684891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126980, 30.945969, 23.095991>,  <42.317284, 31.432823, 22.608112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126980, 30.945969, 23.095991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524372, 30.901369, 23.105516>,  <42.762806, 30.874609, 23.111233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524372, 30.901369, 23.105516>,  <42.126980, 30.945969, 23.095991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524372, 30.901369, 23.105516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025283, -0.011766, 0.999611,
		-0.111179, -0.993694, -0.014508,
		0.993478, -0.111503, 0.023815,
		42.822414, 30.867920, 23.112661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262825, 30.390356, 23.588427>,  <42.126980, 30.945969, 23.095991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262825, 30.390356, 23.588427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576809, 30.633436, 23.540209>,  <42.765202, 30.779285, 23.511278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576809, 30.633436, 23.540209>,  <42.262825, 30.390356, 23.588427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576809, 30.633436, 23.540209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087078, 0.084418, 0.992618,
		0.613392, -0.789666, 0.013348,
		0.784964, 0.607701, -0.120544,
		42.812298, 30.815746, 23.504045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746658, 30.080372, 24.071146>,  <42.262825, 30.390356, 23.588427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746658, 30.080372, 24.071146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860203, 30.455473, 23.991104>,  <42.928329, 30.680532, 23.943079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860203, 30.455473, 23.991104>,  <42.746658, 30.080372, 24.071146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860203, 30.455473, 23.991104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287167, 0.115970, 0.950834,
		0.914853, -0.327373, -0.236371,
		0.283865, 0.937751, -0.200106,
		42.945362, 30.736799, 23.931072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297077, 30.166876, 24.399090>,  <42.746658, 30.080372, 24.071146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297077, 30.166876, 24.399090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179634, 30.545668, 24.346907>,  <43.109169, 30.772943, 24.315596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179634, 30.545668, 24.346907>,  <43.297077, 30.166876, 24.399090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179634, 30.545668, 24.346907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187836, 0.190968, 0.963457,
		0.937289, 0.258375, -0.233947,
		-0.293610, 0.946981, -0.130460,
		43.091553, 30.829762, 24.307768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784195, 30.570120, 24.832926>,  <43.297077, 30.166876, 24.399090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784195, 30.570120, 24.832926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484646, 30.825193, 24.760767>,  <43.304916, 30.978237, 24.717472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484646, 30.825193, 24.760767>,  <43.784195, 30.570120, 24.832926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484646, 30.825193, 24.760767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116144, 0.394285, 0.911619,
		0.652454, 0.661737, -0.369333,
		-0.748875, 0.637686, -0.180396,
		43.259983, 31.016499, 24.706648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997269, 31.272778, 25.096256>,  <43.784195, 30.570120, 24.832926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997269, 31.272778, 25.096256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597679, 31.261208, 25.082336>,  <43.357925, 31.254265, 25.073984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597679, 31.261208, 25.082336>,  <43.997269, 31.272778, 25.096256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597679, 31.261208, 25.082336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043579, 0.407901, 0.911985,
		-0.012187, 0.912568, -0.408744,
		-0.998976, -0.028927, -0.034798,
		43.297985, 31.252529, 25.071898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795738, 32.020367, 25.253069>,  <43.997269, 31.272778, 25.096256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795738, 32.020367, 25.253069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504402, 31.753593, 25.315958>,  <43.329601, 31.593531, 25.353691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504402, 31.753593, 25.315958>,  <43.795738, 32.020367, 25.253069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504402, 31.753593, 25.315958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174783, 0.402692, 0.898493,
		-0.662545, 0.626932, -0.409866,
		-0.728344, -0.666930, 0.157224,
		43.285900, 31.553514, 25.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189602, 32.425686, 25.345060>,  <43.795738, 32.020367, 25.253069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189602, 32.425686, 25.345060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094055, 32.083054, 25.528017>,  <43.036728, 31.877474, 25.637791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094055, 32.083054, 25.528017>,  <43.189602, 32.425686, 25.345060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094055, 32.083054, 25.528017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074743, 0.485848, 0.870842,
		-0.968172, 0.173827, -0.180076,
		-0.238865, -0.856584, 0.457392,
		43.022396, 31.826078, 25.665236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706612, 32.562622, 25.846128>,  <43.189602, 32.425686, 25.345060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706612, 32.562622, 25.846128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796307, 32.191822, 25.966387>,  <42.850124, 31.969341, 26.038542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796307, 32.191822, 25.966387>,  <42.706612, 32.562622, 25.846128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796307, 32.191822, 25.966387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239826, 0.246520, 0.938995,
		-0.944563, -0.282664, -0.167038,
		0.224241, -0.927000, 0.300644,
		42.863579, 31.913723, 26.056580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160019, 32.345268, 26.321039>,  <42.706612, 32.562622, 25.846128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160019, 32.345268, 26.321039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488861, 32.136585, 26.412220>,  <42.686165, 32.011375, 26.466928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488861, 32.136585, 26.412220>,  <42.160019, 32.345268, 26.321039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488861, 32.136585, 26.412220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105226, 0.254250, 0.961397,
		-0.559525, -0.814357, 0.154123,
		0.822106, -0.521708, 0.227951,
		42.735493, 31.980072, 26.480606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042316, 31.909964, 26.948772>,  <42.160019, 32.345268, 26.321039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042316, 31.909964, 26.948772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440716, 31.943048, 26.935263>,  <42.679756, 31.962900, 26.927156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440716, 31.943048, 26.935263>,  <42.042316, 31.909964, 26.948772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440716, 31.943048, 26.935263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003186, 0.410693, 0.911768,
		0.089285, -0.908014, 0.409314,
		0.996001, 0.082711, -0.033776,
		42.739517, 31.967861, 26.925131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233593, 31.634665, 27.546865>,  <42.042316, 31.909964, 26.948772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233593, 31.634665, 27.546865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528629, 31.884932, 27.445278>,  <42.705650, 32.035091, 27.384327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528629, 31.884932, 27.445278>,  <42.233593, 31.634665, 27.546865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528629, 31.884932, 27.445278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034457, 0.410493, 0.911213,
		0.674369, -0.663350, 0.324334,
		0.737590, 0.625670, -0.253967,
		42.749905, 32.072632, 27.369087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671951, 31.738977, 28.197184>,  <42.233593, 31.634665, 27.546865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671951, 31.738977, 28.197184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759995, 32.041634, 27.950914>,  <42.812820, 32.223228, 27.803154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759995, 32.041634, 27.950914>,  <42.671951, 31.738977, 28.197184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759995, 32.041634, 27.950914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127616, 0.648061, 0.750820,
		0.967092, -0.086691, 0.239202,
		0.220107, 0.756638, -0.615671,
		42.826027, 32.268623, 27.766212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108170, 32.137863, 28.666792>,  <42.671951, 31.738977, 28.197184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108170, 32.137863, 28.666792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967690, 32.348286, 28.356974>,  <42.883400, 32.474541, 28.171083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967690, 32.348286, 28.356974>,  <43.108170, 32.137863, 28.666792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967690, 32.348286, 28.356974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198013, 0.766800, 0.610581,
		0.915121, 0.367808, -0.165138,
		-0.351204, 0.526056, -0.774545,
		42.862328, 32.506104, 28.124611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529812, 32.751167, 28.544382>,  <43.108170, 32.137863, 28.666792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529812, 32.751167, 28.544382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157234, 32.815464, 28.413799>,  <42.933689, 32.854042, 28.335449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157234, 32.815464, 28.413799>,  <43.529812, 32.751167, 28.544382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157234, 32.815464, 28.413799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114733, 0.721653, 0.682681,
		0.345325, 0.673334, -0.653737,
		-0.931443, 0.160742, -0.326459,
		42.877800, 32.863686, 28.315861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387012, 33.493122, 28.611273>,  <43.529812, 32.751167, 28.544382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387012, 33.493122, 28.611273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015369, 33.364784, 28.537710>,  <42.792385, 33.287781, 28.493572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015369, 33.364784, 28.537710>,  <43.387012, 33.493122, 28.611273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015369, 33.364784, 28.537710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360810, 0.677393, 0.641058,
		-0.081104, 0.661965, -0.745134,
		-0.929106, -0.320844, -0.183904,
		42.736637, 33.268532, 28.482538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111210, 34.084564, 28.458450>,  <43.387012, 33.493122, 28.611273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111210, 34.084564, 28.458450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828793, 33.833733, 28.590075>,  <42.659344, 33.683235, 28.669048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828793, 33.833733, 28.590075>,  <43.111210, 34.084564, 28.458450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828793, 33.833733, 28.590075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339075, 0.707279, 0.620310,
		-0.621719, 0.326389, -0.711994,
		-0.706041, -0.627078, 0.329058,
		42.616982, 33.645611, 28.688791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570644, 34.496464, 28.714331>,  <43.111210, 34.084564, 28.458450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570644, 34.496464, 28.714331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403553, 34.155697, 28.840652>,  <42.303299, 33.951237, 28.916447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403553, 34.155697, 28.840652>,  <42.570644, 34.496464, 28.714331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403553, 34.155697, 28.840652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533132, 0.511286, 0.674060,
		-0.735713, 0.113207, -0.667765,
		-0.417728, -0.851922, 0.315806,
		42.278236, 33.900120, 28.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851131, 34.677917, 28.803282>,  <42.570644, 34.496464, 28.714331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851131, 34.677917, 28.803282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929943, 34.347469, 29.014456>,  <41.977230, 34.149200, 29.141159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929943, 34.347469, 29.014456>,  <41.851131, 34.677917, 28.803282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929943, 34.347469, 29.014456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557595, 0.348492, 0.753420,
		-0.806393, -0.442815, -0.391976,
		0.197025, -0.826116, 0.527933,
		41.989052, 34.099636, 29.172836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198624, 34.319443, 28.960670>,  <41.851131, 34.677917, 28.803282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198624, 34.319443, 28.960670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499893, 34.235428, 29.210026>,  <41.680653, 34.185017, 29.359640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499893, 34.235428, 29.210026>,  <41.198624, 34.319443, 28.960670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499893, 34.235428, 29.210026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575563, 0.248456, 0.779100,
		-0.318528, -0.945596, 0.066239,
		0.753172, -0.210041, 0.623390,
		41.725845, 34.172417, 29.397043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771896, 34.078472, 29.555128>,  <41.198624, 34.319443, 28.960670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771896, 34.078472, 29.555128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140732, 34.137009, 29.698427>,  <41.362034, 34.172131, 29.784407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140732, 34.137009, 29.698427>,  <40.771896, 34.078472, 29.555128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140732, 34.137009, 29.698427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386563, 0.305059, 0.870349,
		0.018079, -0.941023, 0.337860,
		0.922086, 0.146339, 0.358249,
		41.417358, 34.180912, 29.805902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708485, 33.882561, 30.207100>,  <40.771896, 34.078472, 29.555128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708485, 33.882561, 30.207100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038860, 34.108032, 30.210958>,  <41.237087, 34.243317, 30.213274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038860, 34.108032, 30.210958>,  <40.708485, 33.882561, 30.207100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038860, 34.108032, 30.210958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293676, 0.415578, 0.860843,
		0.481232, -0.713834, 0.508780,
		0.825936, 0.563681, 0.009647,
		41.286640, 34.277134, 30.213854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940506, 33.842064, 30.903637>,  <40.708485, 33.882561, 30.207100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940506, 33.842064, 30.903637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156078, 34.153366, 30.774721>,  <41.285423, 34.340149, 30.697372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156078, 34.153366, 30.774721>,  <40.940506, 33.842064, 30.903637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156078, 34.153366, 30.774721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023997, 0.368266, 0.929410,
		0.842006, -0.508624, 0.179796,
		0.538934, 0.778255, -0.322288,
		41.317757, 34.386841, 30.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570438, 33.928738, 31.383392>,  <40.940506, 33.842064, 30.903637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570438, 33.928738, 31.383392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482548, 34.266727, 31.188360>,  <41.429813, 34.469521, 31.071341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482548, 34.266727, 31.188360>,  <41.570438, 33.928738, 31.383392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482548, 34.266727, 31.188360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170584, 0.525372, 0.833597,
		0.960533, 0.099987, -0.259576,
		-0.219723, 0.844977, -0.487581,
		41.416630, 34.520222, 31.042086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966892, 34.372234, 31.755262>,  <41.570438, 33.928738, 31.383392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966892, 34.372234, 31.755262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722546, 34.622223, 31.560839>,  <41.575935, 34.772217, 31.444185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722546, 34.622223, 31.560839>,  <41.966892, 34.372234, 31.755262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722546, 34.622223, 31.560839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105718, 0.672809, 0.732224,
		0.784641, 0.395908, -0.477069,
		-0.610870, 0.624968, -0.486059,
		41.539284, 34.809711, 31.415022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126591, 35.228096, 31.825397>,  <41.966892, 34.372234, 31.755262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126591, 35.228096, 31.825397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732853, 35.197845, 31.761724>,  <41.496609, 35.179695, 31.723520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.732853, 35.197845, 31.761724>,  <42.126591, 35.228096, 31.825397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732853, 35.197845, 31.761724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176063, 0.461359, 0.869569,
		0.007681, 0.883985, -0.467452,
		-0.984349, -0.075622, -0.159181,
		41.437550, 35.175159, 31.713970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868839, 35.913853, 31.874140>,  <42.126591, 35.228096, 31.825397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868839, 35.913853, 31.874140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588543, 35.642570, 31.962685>,  <41.420364, 35.479801, 32.015812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588543, 35.642570, 31.962685>,  <41.868839, 35.913853, 31.874140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588543, 35.642570, 31.962685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083136, 0.385799, 0.918829,
		-0.708556, 0.625458, -0.326728,
		-0.700741, -0.678204, 0.221362,
		41.378323, 35.439110, 32.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450180, 36.226555, 32.304646>,  <41.868839, 35.913853, 31.874140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450180, 36.226555, 32.304646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342987, 35.848991, 32.381821>,  <41.278671, 35.622456, 32.428127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342987, 35.848991, 32.381821>,  <41.450180, 36.226555, 32.304646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342987, 35.848991, 32.381821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200826, 0.250597, 0.947032,
		-0.942259, 0.215044, -0.256718,
		-0.267987, -0.943905, 0.192941,
		41.262592, 35.565819, 32.439701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902485, 36.215641, 32.724949>,  <41.450180, 36.226555, 32.304646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902485, 36.215641, 32.724949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026814, 35.841534, 32.792679>,  <41.101410, 35.617069, 32.833317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026814, 35.841534, 32.792679>,  <40.902485, 36.215641, 32.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026814, 35.841534, 32.792679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302458, 0.071565, 0.950472,
		-0.901061, -0.346639, -0.260635,
		0.310818, -0.935265, 0.169328,
		41.120060, 35.560955, 32.843475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259136, 35.928284, 33.118324>,  <40.902485, 36.215641, 32.724949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259136, 35.928284, 33.118324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594349, 35.717415, 33.174599>,  <40.795475, 35.590893, 33.208363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.594349, 35.717415, 33.174599>,  <40.259136, 35.928284, 33.118324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594349, 35.717415, 33.174599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232554, -0.111863, 0.966129,
		-0.493580, -0.842363, -0.216341,
		0.838032, -0.527173, 0.140682,
		40.845757, 35.559261, 33.216805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031662, 35.310650, 33.534382>,  <40.259136, 35.928284, 33.118324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031662, 35.310650, 33.534382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422245, 35.379059, 33.586960>,  <40.656597, 35.420105, 33.618507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422245, 35.379059, 33.586960>,  <40.031662, 35.310650, 33.534382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422245, 35.379059, 33.586960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148002, 0.087933, 0.985070,
		0.156914, -0.981335, 0.111175,
		0.976460, 0.171026, 0.131442,
		40.715183, 35.430367, 33.626392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383171, 34.874969, 34.093620>,  <40.031662, 35.310650, 33.534382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383171, 34.874969, 34.093620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674679, 35.148342, 34.076557>,  <40.849583, 35.312366, 34.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674679, 35.148342, 34.076557>,  <40.383171, 34.874969, 34.093620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674679, 35.148342, 34.076557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083849, 0.150889, 0.984988,
		0.679604, -0.714254, 0.167268,
		0.728771, 0.683428, -0.042656,
		40.893311, 35.353371, 34.063759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764244, 34.715130, 34.593880>,  <40.383171, 34.874969, 34.093620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764244, 34.715130, 34.593880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861893, 35.093414, 34.508060>,  <40.920483, 35.320385, 34.456570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861893, 35.093414, 34.508060>,  <40.764244, 34.715130, 34.593880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861893, 35.093414, 34.508060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242946, 0.273831, 0.930588,
		0.938819, -0.175053, 0.296606,
		0.244122, 0.945713, -0.214549,
		40.935131, 35.377129, 34.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252590, 34.873543, 35.152431>,  <40.764244, 34.715130, 34.593880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252590, 34.873543, 35.152431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119038, 35.219082, 35.001549>,  <41.038906, 35.426407, 34.911018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119038, 35.219082, 35.001549>,  <41.252590, 34.873543, 35.152431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119038, 35.219082, 35.001549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045449, 0.384947, 0.921819,
		0.941517, 0.324925, -0.089267,
		-0.333886, 0.863851, -0.377202,
		41.018871, 35.478237, 34.888390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527908, 35.387825, 35.468708>,  <41.252590, 34.873543, 35.152431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527908, 35.387825, 35.468708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210857, 35.575130, 35.312523>,  <41.020626, 35.687515, 35.218811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210857, 35.575130, 35.312523>,  <41.527908, 35.387825, 35.468708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210857, 35.575130, 35.312523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099809, 0.532129, 0.840760,
		0.601477, 0.705384, -0.375044,
		-0.792631, 0.468265, -0.390467,
		40.973068, 35.715611, 35.195381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677414, 36.117222, 35.663799>,  <41.527908, 35.387825, 35.468708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677414, 36.117222, 35.663799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290794, 36.119640, 35.561241>,  <41.058823, 36.121090, 35.499706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290794, 36.119640, 35.561241>,  <41.677414, 36.117222, 35.663799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290794, 36.119640, 35.561241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219389, 0.498281, 0.838799,
		0.132827, 0.866994, -0.480289,
		-0.966553, 0.006045, -0.256395,
		41.000828, 36.121452, 35.484322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308819, 36.799515, 35.826790>,  <41.677414, 36.117222, 35.663799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308819, 36.799515, 35.826790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017956, 36.525780, 35.805149>,  <40.843437, 36.361538, 35.792164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017956, 36.525780, 35.805149>,  <41.308819, 36.799515, 35.826790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017956, 36.525780, 35.805149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392617, 0.349947, 0.850523,
		-0.563111, 0.639704, -0.523148,
		-0.727157, -0.684336, -0.054100,
		40.799809, 36.320480, 35.788918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837086, 37.191696, 35.889191>,  <41.308819, 36.799515, 35.826790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837086, 37.191696, 35.889191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710789, 36.832302, 36.011196>,  <40.635010, 36.616665, 36.084400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710789, 36.832302, 36.011196>,  <40.837086, 37.191696, 35.889191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710789, 36.832302, 36.011196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292720, 0.398019, 0.869423,
		-0.902563, 0.185231, -0.388676,
		-0.315744, -0.898482, 0.305016,
		40.616066, 36.562756, 36.102699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287399, 37.378975, 36.342583>,  <40.837086, 37.191696, 35.889191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287399, 37.378975, 36.342583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390678, 36.998734, 36.411503>,  <40.452648, 36.770588, 36.452854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390678, 36.998734, 36.411503>,  <40.287399, 37.378975, 36.342583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390678, 36.998734, 36.411503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089647, 0.154001, 0.983996,
		-0.961923, -0.269515, -0.045456,
		0.258201, -0.950603, 0.172298,
		40.468140, 36.713554, 36.463192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860523, 37.168430, 36.870525>,  <40.287399, 37.378975, 36.342583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860523, 37.168430, 36.870525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180191, 36.928204, 36.880661>,  <40.371990, 36.784065, 36.886742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180191, 36.928204, 36.880661>,  <39.860523, 37.168430, 36.870525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180191, 36.928204, 36.880661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056392, 0.116883, 0.991543,
		-0.598455, -0.790982, 0.127277,
		0.799169, -0.600571, 0.025344,
		40.419941, 36.748032, 36.888264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769554, 36.867386, 37.510715>,  <39.860523, 37.168430, 36.870525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769554, 36.867386, 37.510715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147640, 36.794384, 37.402447>,  <40.374493, 36.750584, 37.337486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147640, 36.794384, 37.402447>,  <39.769554, 36.867386, 37.510715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147640, 36.794384, 37.402447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261972, -0.070656, 0.962485,
		-0.194780, -0.980663, -0.018975,
		0.945215, -0.182502, -0.270669,
		40.431206, 36.739635, 37.321247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908791, 36.385414, 37.964478>,  <39.769554, 36.867386, 37.510715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908791, 36.385414, 37.964478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250256, 36.551140, 37.838238>,  <40.455135, 36.650574, 37.762493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250256, 36.551140, 37.838238>,  <39.908791, 36.385414, 37.964478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250256, 36.551140, 37.838238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320702, 0.059302, 0.945322,
		0.410375, -0.908200, -0.082247,
		0.853664, 0.414313, -0.315597,
		40.506355, 36.675434, 37.743557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421043, 36.133430, 38.429146>,  <39.908791, 36.385414, 37.964478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421043, 36.133430, 38.429146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554531, 36.471493, 38.262127>,  <40.634624, 36.674328, 38.161915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554531, 36.471493, 38.262127>,  <40.421043, 36.133430, 38.429146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554531, 36.471493, 38.262127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476453, 0.230979, 0.848317,
		0.813402, -0.482045, -0.325592,
		0.333721, 0.845152, -0.417550,
		40.654648, 36.725037, 38.136864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132206, 36.233536, 38.371456>,  <40.421043, 36.133430, 38.429146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132206, 36.233536, 38.371456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962513, 36.592968, 38.416328>,  <40.860695, 36.808628, 38.443253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.962513, 36.592968, 38.416328>,  <41.132206, 36.233536, 38.371456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962513, 36.592968, 38.416328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649362, 0.215531, 0.729298,
		0.631152, 0.382238, -0.674938,
		-0.424235, 0.898577, 0.112178,
		40.835243, 36.862541, 38.449982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597336, 36.466007, 38.855911>,  <41.132206, 36.233536, 38.371456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597336, 36.466007, 38.855911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334900, 36.763279, 38.803402>,  <41.177437, 36.941643, 38.771896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334900, 36.763279, 38.803402>,  <41.597336, 36.466007, 38.855911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334900, 36.763279, 38.803402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371987, 0.469804, 0.800568,
		0.656637, 0.476413, -0.584687,
		-0.656089, 0.743179, -0.131271,
		41.138073, 36.986233, 38.764019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972080, 37.131420, 38.952293>,  <41.597336, 36.466007, 38.855911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972080, 37.131420, 38.952293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585049, 37.201866, 39.024712>,  <41.352829, 37.244133, 39.068161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585049, 37.201866, 39.024712>,  <41.972080, 37.131420, 38.952293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585049, 37.201866, 39.024712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244746, 0.476672, 0.844324,
		0.062398, 0.861260, -0.504320,
		-0.967577, 0.176114, 0.181046,
		41.294777, 37.254700, 39.079025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046944, 37.826859, 39.169823>,  <41.972080, 37.131420, 38.952293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046944, 37.826859, 39.169823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694420, 37.681679, 39.290855>,  <41.482906, 37.594570, 39.363476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694420, 37.681679, 39.290855>,  <42.046944, 37.826859, 39.169823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694420, 37.681679, 39.290855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141772, 0.407748, 0.902021,
		-0.450764, 0.837861, -0.307898,
		-0.881313, -0.362947, 0.302583,
		41.430027, 37.572796, 39.381630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771172, 38.301521, 39.571407>,  <42.046944, 37.826859, 39.169823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771172, 38.301521, 39.571407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596443, 37.964947, 39.698639>,  <41.491608, 37.763000, 39.774979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596443, 37.964947, 39.698639>,  <41.771172, 38.301521, 39.571407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596443, 37.964947, 39.698639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185054, 0.261983, 0.947164,
		-0.880310, 0.472601, 0.041272,
		-0.436818, -0.841435, 0.318083,
		41.465397, 37.712517, 39.794064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844563, 38.477642, 40.239685>,  <41.771172, 38.301521, 39.571407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844563, 38.477642, 40.239685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677067, 38.114685, 40.225296>,  <41.576569, 37.896912, 40.216663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677067, 38.114685, 40.225296>,  <41.844563, 38.477642, 40.239685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677067, 38.114685, 40.225296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235833, -0.146918, 0.960624,
		-0.876948, 0.393770, 0.275514,
		-0.418743, -0.907392, -0.035976,
		41.551445, 37.842468, 40.214504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467197, 38.338993, 40.880344>,  <41.844563, 38.477642, 40.239685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467197, 38.338993, 40.880344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595798, 37.992748, 40.726799>,  <41.672958, 37.785000, 40.634674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595798, 37.992748, 40.726799>,  <41.467197, 38.338993, 40.880344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595798, 37.992748, 40.726799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524813, -0.174529, 0.833133,
		-0.788165, -0.469313, 0.398173,
		0.321507, -0.865613, -0.383859,
		41.692249, 37.733063, 40.611641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437618, 37.815186, 41.392422>,  <41.467197, 38.338993, 40.880344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437618, 37.815186, 41.392422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729427, 37.710754, 41.139553>,  <41.904510, 37.648094, 40.987831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729427, 37.710754, 41.139553>,  <41.437618, 37.815186, 41.392422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729427, 37.710754, 41.139553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601305, -0.195635, 0.774700,
		-0.325935, -0.945284, 0.014270,
		0.729520, -0.261083, -0.632168,
		41.948284, 37.632431, 40.949902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708981, 37.220268, 41.641132>,  <41.437618, 37.815186, 41.392422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708981, 37.220268, 41.641132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994423, 37.348175, 41.391808>,  <42.165688, 37.424919, 41.242210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994423, 37.348175, 41.391808>,  <41.708981, 37.220268, 41.641132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994423, 37.348175, 41.391808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684834, -0.131002, 0.716827,
		0.147565, -0.938395, -0.312473,
		0.713601, 0.319771, -0.623313,
		42.208504, 37.444107, 41.204815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256294, 36.768288, 41.734844>,  <41.708981, 37.220268, 41.641132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256294, 36.768288, 41.734844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377502, 37.116432, 41.579586>,  <42.450226, 37.325317, 41.486431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377502, 37.116432, 41.579586>,  <42.256294, 36.768288, 41.734844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377502, 37.116432, 41.579586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789112, -0.000805, 0.614249,
		0.534305, -0.492416, -0.687055,
		0.303019, 0.870359, -0.388142,
		42.468407, 37.377541, 41.463142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989727, 36.780678, 41.606838>,  <42.256294, 36.768288, 41.734844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989727, 36.780678, 41.606838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893658, 37.165062, 41.661793>,  <42.836014, 37.395691, 41.694763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.893658, 37.165062, 41.661793>,  <42.989727, 36.780678, 41.606838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893658, 37.165062, 41.661793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680571, 0.065775, 0.729723,
		0.692198, 0.268761, -0.669798,
		-0.240177, 0.960958, 0.137382,
		42.821606, 37.453350, 41.703007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602959, 37.133587, 41.567356>,  <42.989727, 36.780678, 41.606838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602959, 37.133587, 41.567356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366142, 37.400055, 41.748775>,  <43.224052, 37.559937, 41.857628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.366142, 37.400055, 41.748775>,  <43.602959, 37.133587, 41.567356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366142, 37.400055, 41.748775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680106, 0.111060, 0.724652,
		0.432372, 0.737482, -0.518820,
		-0.592038, 0.666172, 0.453547,
		43.188530, 37.599907, 41.884838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060299, 37.540039, 41.865856>,  <43.602959, 37.133587, 41.567356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060299, 37.540039, 41.865856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706276, 37.593056, 42.044342>,  <43.493862, 37.624866, 42.151432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706276, 37.593056, 42.044342>,  <44.060299, 37.540039, 41.865856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706276, 37.593056, 42.044342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461455, 0.123956, 0.878461,
		0.061124, 0.983396, -0.170871,
		-0.885055, 0.132544, 0.446216,
		43.440758, 37.632820, 42.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078613, 38.029972, 42.258492>,  <44.060299, 37.540039, 41.865856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078613, 38.029972, 42.258492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775772, 37.819427, 42.413273>,  <43.594067, 37.693100, 42.506142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.775772, 37.819427, 42.413273>,  <44.078613, 38.029972, 42.258492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.775772, 37.819427, 42.413273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496546, -0.078744, 0.864431,
		-0.424535, 0.846605, 0.320981,
		-0.757108, -0.526363, 0.386949,
		43.548641, 37.661518, 42.529358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954033, 38.223568, 42.897392>,  <44.078613, 38.029972, 42.258492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954033, 38.223568, 42.897392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791027, 37.858459, 42.908592>,  <43.693222, 37.639397, 42.915310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791027, 37.858459, 42.908592>,  <43.954033, 38.223568, 42.897392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791027, 37.858459, 42.908592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463203, -0.180187, 0.867741,
		-0.787003, 0.366587, 0.496227,
		-0.407516, -0.912769, 0.027997,
		43.668774, 37.584629, 42.916992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575336, 38.225460, 43.570091>,  <43.954033, 38.223568, 42.897392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575336, 38.225460, 43.570091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678970, 37.871078, 43.416229>,  <43.741150, 37.658451, 43.323914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678970, 37.871078, 43.416229>,  <43.575336, 38.225460, 43.570091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678970, 37.871078, 43.416229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363111, -0.279691, 0.888776,
		-0.895000, -0.369940, 0.249236,
		0.259085, -0.885955, -0.384653,
		43.756695, 37.605293, 43.300835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348473, 37.732243, 43.943470>,  <43.575336, 38.225460, 43.570091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348473, 37.732243, 43.943470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655708, 37.564991, 43.749481>,  <43.840050, 37.464638, 43.633087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655708, 37.564991, 43.749481>,  <43.348473, 37.732243, 43.943470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655708, 37.564991, 43.749481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298794, -0.435833, 0.848983,
		-0.566357, -0.797003, -0.209824,
		0.768090, -0.418133, -0.484977,
		43.886135, 37.439552, 43.603989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338966, 37.064445, 44.154285>,  <43.348473, 37.732243, 43.943470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338966, 37.064445, 44.154285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707397, 37.182419, 44.052593>,  <43.928455, 37.253204, 43.991577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707397, 37.182419, 44.052593>,  <43.338966, 37.064445, 44.154285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707397, 37.182419, 44.052593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382017, -0.558046, 0.736646,
		0.075388, -0.775628, -0.626672,
		0.921075, 0.294934, -0.254233,
		43.983719, 37.270901, 43.976322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891987, 36.567951, 44.000000>,  <43.338966, 37.064445, 44.154285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891987, 36.567951, 44.000000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045139, 36.876621, 44.203140>,  <44.137032, 37.061825, 44.325024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045139, 36.876621, 44.203140>,  <43.891987, 36.567951, 44.000000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045139, 36.876621, 44.203140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495089, -0.635536, 0.592436,
		0.779930, 0.024602, -0.625383,
		0.382879, 0.771679, 0.507853,
		44.160004, 37.108124, 44.355495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626419, 36.549965, 43.978371>,  <43.891987, 36.567951, 44.000000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626419, 36.549965, 43.978371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485977, 36.675903, 44.331097>,  <44.401711, 36.751465, 44.542732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485977, 36.675903, 44.331097>,  <44.626419, 36.549965, 43.978371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485977, 36.675903, 44.331097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449584, -0.769422, 0.453722,
		0.821338, 0.555756, 0.128603,
		-0.351108, 0.314842, 0.881815,
		44.380646, 36.770355, 44.595642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370968, 36.576305, 43.276566>,  <44.626419, 36.549965, 43.978371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370968, 36.576305, 43.276566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079742, 36.792225, 43.445580>,  <43.905006, 36.921776, 43.546989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.079742, 36.792225, 43.445580>,  <44.370968, 36.576305, 43.276566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079742, 36.792225, 43.445580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346598, 0.241922, -0.906280,
		-0.591430, -0.806282, 0.010958,
		-0.728066, 0.539800, 0.422535,
		43.861324, 36.954166, 43.572342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806877, 36.392941, 42.892437>,  <44.370968, 36.576305, 43.276566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806877, 36.392941, 42.892437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702744, 36.730137, 43.080730>,  <43.640263, 36.932457, 43.193707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702744, 36.730137, 43.080730>,  <43.806877, 36.392941, 42.892437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702744, 36.730137, 43.080730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434791, 0.332955, -0.836718,
		-0.862082, -0.422492, 0.279848,
		-0.260330, 0.842995, 0.470730,
		43.624645, 36.983036, 43.221951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009312, 36.494423, 42.886253>,  <43.806877, 36.392941, 42.892437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009312, 36.494423, 42.886253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208241, 36.840656, 42.909676>,  <43.327599, 37.048397, 42.923729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208241, 36.840656, 42.909676>,  <43.009312, 36.494423, 42.886253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208241, 36.840656, 42.909676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482176, 0.331883, -0.810778,
		-0.721230, 0.374987, 0.582419,
		0.497326, 0.865585, 0.058554,
		43.357437, 37.100330, 42.927242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573967, 36.973103, 42.922138>,  <43.009312, 36.494423, 42.886253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573967, 36.973103, 42.922138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894192, 37.166656, 42.780739>,  <43.086327, 37.282791, 42.695900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894192, 37.166656, 42.780739>,  <42.573967, 36.973103, 42.922138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894192, 37.166656, 42.780739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527402, 0.288846, -0.799009,
		-0.284523, 0.826088, 0.486441,
		0.800558, 0.483887, -0.353497,
		43.134357, 37.311821, 42.674690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236980, 37.535355, 42.659599>,  <42.573967, 36.973103, 42.922138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236980, 37.535355, 42.659599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605156, 37.552769, 42.504215>,  <42.826061, 37.563217, 42.410984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605156, 37.552769, 42.504215>,  <42.236980, 37.535355, 42.659599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605156, 37.552769, 42.504215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364816, 0.452570, -0.813689,
		0.140380, 0.890665, 0.432445,
		0.920436, 0.043537, -0.388461,
		42.881287, 37.565830, 42.387676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304344, 38.297127, 42.434036>,  <42.236980, 37.535355, 42.659599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304344, 38.297127, 42.434036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545677, 38.042385, 42.242031>,  <42.690475, 37.889542, 42.126827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545677, 38.042385, 42.242031>,  <42.304344, 38.297127, 42.434036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545677, 38.042385, 42.242031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381477, 0.298101, -0.874992,
		0.700332, 0.711024, -0.063090,
		0.603333, -0.636852, -0.480010,
		42.726677, 37.851330, 42.098030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279423, 38.603634, 41.759953>,  <42.304344, 38.297127, 42.434036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279423, 38.603634, 41.759953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486034, 38.261551, 41.742867>,  <42.610001, 38.056301, 41.732613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486034, 38.261551, 41.742867>,  <42.279423, 38.603634, 41.759953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486034, 38.261551, 41.742867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221498, -0.085259, -0.971427,
		0.827125, 0.511233, -0.233464,
		0.516530, -0.855203, -0.042718,
		42.640995, 38.004990, 41.730053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726387, 38.620167, 41.114998>,  <42.279423, 38.603634, 41.759953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726387, 38.620167, 41.114998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658421, 38.235134, 41.199440>,  <42.617641, 38.004116, 41.250107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658421, 38.235134, 41.199440>,  <42.726387, 38.620167, 41.114998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658421, 38.235134, 41.199440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351818, -0.140854, -0.925411,
		0.920517, -0.231516, -0.314719,
		-0.169918, -0.962580, 0.211110,
		42.607445, 37.946362, 41.262772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970474, 38.198151, 40.628738>,  <42.726387, 38.620167, 41.114998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970474, 38.198151, 40.628738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675873, 37.986729, 40.797585>,  <42.499111, 37.859875, 40.898891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675873, 37.986729, 40.797585>,  <42.970474, 38.198151, 40.628738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675873, 37.986729, 40.797585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143885, -0.487340, -0.861276,
		0.660949, -0.695073, 0.282878,
		-0.736508, -0.528558, 0.422117,
		42.454922, 37.828163, 40.924221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973843, 37.636082, 40.195499>,  <42.970474, 38.198151, 40.628738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973843, 37.636082, 40.195499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757263, 37.564415, 40.524067>,  <42.627316, 37.521416, 40.721207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757263, 37.564415, 40.524067>,  <42.973843, 37.636082, 40.195499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757263, 37.564415, 40.524067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809549, -0.152520, -0.566894,
		0.226854, -0.971924, -0.062466,
		-0.541450, -0.179171, 0.821419,
		42.594830, 37.510662, 40.770493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625603, 37.002579, 40.036541>,  <42.973843, 37.636082, 40.195499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625603, 37.002579, 40.036541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440445, 37.199135, 40.331638>,  <42.329350, 37.317066, 40.508698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440445, 37.199135, 40.331638>,  <42.625603, 37.002579, 40.036541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440445, 37.199135, 40.331638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831112, 0.048769, -0.553963,
		-0.308190, -0.869574, 0.385823,
		-0.462895, 0.491388, 0.737744,
		42.301575, 37.346550, 40.552963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040524, 36.581989, 40.180565>,  <42.625603, 37.002579, 40.036541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040524, 36.581989, 40.180565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925896, 36.938625, 40.320824>,  <41.857121, 37.152607, 40.404980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925896, 36.938625, 40.320824>,  <42.040524, 36.581989, 40.180565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925896, 36.938625, 40.320824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789670, -0.012572, -0.613403,
		-0.542494, -0.452674, 0.707663,
		-0.286568, 0.891588, 0.350643,
		41.839924, 37.206100, 40.426018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207939, 36.499355, 40.241062>,  <42.040524, 36.581989, 40.180565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207939, 36.499355, 40.241062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324837, 36.879211, 40.195827>,  <41.394974, 37.107124, 40.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324837, 36.879211, 40.195827>,  <41.207939, 36.499355, 40.241062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324837, 36.879211, 40.195827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774608, 0.165696, -0.610351,
		-0.560873, 0.265965, 0.784018,
		0.292240, 0.949636, -0.113084,
		41.412510, 37.164101, 40.161903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579033, 36.909107, 40.306435>,  <41.207939, 36.499355, 40.241062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579033, 36.909107, 40.306435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855637, 37.111076, 40.099800>,  <41.021599, 37.232258, 39.975819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855637, 37.111076, 40.099800>,  <40.579033, 36.909107, 40.306435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855637, 37.111076, 40.099800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632028, 0.076623, -0.771148,
		-0.349785, 0.859759, 0.372109,
		0.691514, 0.504919, -0.516590,
		41.063091, 37.262550, 39.944824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244141, 37.175610, 39.735058>,  <40.579033, 36.909107, 40.306435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244141, 37.175610, 39.735058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615891, 37.275051, 39.625912>,  <40.838940, 37.334717, 39.560425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615891, 37.275051, 39.625912>,  <40.244141, 37.175610, 39.735058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615891, 37.275051, 39.625912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217842, -0.227387, -0.949126,
		-0.298005, 0.941536, -0.157171,
		0.929375, 0.248606, -0.272869,
		40.894703, 37.349632, 39.544052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080750, 37.744347, 39.219170>,  <40.244141, 37.175610, 39.735058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080750, 37.744347, 39.219170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437332, 37.566296, 39.185287>,  <40.651279, 37.459465, 39.164959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437332, 37.566296, 39.185287>,  <40.080750, 37.744347, 39.219170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437332, 37.566296, 39.185287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257869, -0.344668, -0.902611,
		0.372581, 0.826478, -0.422040,
		0.891452, -0.445127, -0.084707,
		40.704769, 37.432758, 39.159874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135487, 37.682598, 38.490658>,  <40.080750, 37.744347, 39.219170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135487, 37.682598, 38.490658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453735, 37.475552, 38.616554>,  <40.644684, 37.351326, 38.692093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453735, 37.475552, 38.616554>,  <40.135487, 37.682598, 38.490658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453735, 37.475552, 38.616554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203232, -0.261376, -0.943599,
		0.570685, 0.814714, -0.102761,
		0.795623, -0.517614, 0.314739,
		40.692421, 37.320267, 38.710976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694962, 37.996437, 38.121479>,  <40.135487, 37.682598, 38.490658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694962, 37.996437, 38.121479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814980, 37.636402, 38.247852>,  <40.886990, 37.420380, 38.323677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814980, 37.636402, 38.247852>,  <40.694962, 37.996437, 38.121479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814980, 37.636402, 38.247852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391518, -0.185812, -0.901215,
		0.869876, 0.394100, 0.296648,
		0.300048, -0.900088, 0.315930,
		40.904995, 37.366375, 38.342632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237953, 37.815773, 37.782436>,  <40.694962, 37.996437, 38.121479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237953, 37.815773, 37.782436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088875, 37.461121, 37.891964>,  <40.999428, 37.248329, 37.957680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088875, 37.461121, 37.891964>,  <41.237953, 37.815773, 37.782436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088875, 37.461121, 37.891964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037836, -0.309351, -0.950195,
		0.927182, -0.343772, 0.148840,
		-0.372695, -0.886635, 0.273818,
		40.977066, 37.195129, 37.974110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642078, 37.329441, 37.464718>,  <41.237953, 37.815773, 37.782436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642078, 37.329441, 37.464718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325775, 37.094379, 37.533253>,  <41.135994, 36.953342, 37.574375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325775, 37.094379, 37.533253>,  <41.642078, 37.329441, 37.464718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325775, 37.094379, 37.533253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071919, -0.188772, -0.979384,
		0.607886, -0.786781, 0.107010,
		-0.790761, -0.587657, 0.171336,
		41.088547, 36.918083, 37.584652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647655, 36.636452, 36.984943>,  <41.642078, 37.329441, 37.464718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647655, 36.636452, 36.984943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264633, 36.637768, 37.100231>,  <41.034821, 36.638557, 37.169403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264633, 36.637768, 37.100231>,  <41.647655, 36.636452, 36.984943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264633, 36.637768, 37.100231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264299, -0.409041, -0.873402,
		0.115022, -0.912510, 0.392550,
		-0.957557, 0.003290, 0.288224,
		40.977367, 36.638756, 37.186699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412224, 35.952827, 36.857590>,  <41.647655, 36.636452, 36.984943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412224, 35.952827, 36.857590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095451, 36.197052, 36.860710>,  <40.905388, 36.343586, 36.862583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095451, 36.197052, 36.860710>,  <41.412224, 35.952827, 36.857590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095451, 36.197052, 36.860710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295203, -0.371645, -0.880191,
		-0.534509, -0.699354, 0.474556,
		-0.791931, 0.610560, 0.007804,
		40.857872, 36.380219, 36.863052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772213, 35.401901, 36.443989>,  <41.412224, 35.952827, 36.857590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772213, 35.401901, 36.443989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062000, 35.660622, 36.348660>,  <42.235874, 35.815853, 36.291462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062000, 35.660622, 36.348660>,  <41.772213, 35.401901, 36.443989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062000, 35.660622, 36.348660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226828, 0.102786, 0.968496,
		0.650916, -0.755704, -0.072246,
		0.724470, 0.646797, -0.238320,
		42.279343, 35.854660, 36.277164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356838, 35.110085, 36.752262>,  <41.772213, 35.401901, 36.443989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356838, 35.110085, 36.752262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400753, 35.504658, 36.703434>,  <42.427101, 35.741402, 36.674137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400753, 35.504658, 36.703434>,  <42.356838, 35.110085, 36.752262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400753, 35.504658, 36.703434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332023, 0.079361, 0.939927,
		0.936860, -0.143722, -0.318805,
		0.109788, 0.986431, -0.122069,
		42.433689, 35.800587, 36.666813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956356, 35.336441, 36.991013>,  <42.356838, 35.110085, 36.752262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956356, 35.336441, 36.991013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751114, 35.678719, 37.017895>,  <42.627968, 35.884083, 37.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751114, 35.678719, 37.017895>,  <42.956356, 35.336441, 36.991013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751114, 35.678719, 37.017895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315865, 0.115443, 0.941755,
		0.798094, 0.504445, -0.329517,
		-0.513104, 0.855692, 0.067202,
		42.597183, 35.935425, 37.038055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084614, 34.751923, 37.571182>,  <42.956356, 35.336441, 36.991013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084614, 34.751923, 37.571182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083721, 35.129910, 37.702042>,  <43.083187, 35.356701, 37.780556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.083721, 35.129910, 37.702042>,  <43.084614, 34.751923, 37.571182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083721, 35.129910, 37.702042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925470, -0.125880, 0.357295,
		0.378815, -0.301964, 0.874824,
		-0.002232, 0.944972, 0.327144,
		43.083050, 35.413403, 37.800186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708729, 34.742039, 38.145500>,  <43.084614, 34.751923, 37.571182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708729, 34.742039, 38.145500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706501, 35.115585, 38.002464>,  <42.705166, 35.339714, 37.916641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706501, 35.115585, 38.002464>,  <42.708729, 34.742039, 38.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706501, 35.115585, 38.002464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985431, 0.055661, 0.160711,
		0.169986, 0.353276, 0.919946,
		-0.005570, 0.933861, -0.357591,
		42.704830, 35.395744, 37.895187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578205, 34.130886, 37.762543>,  <42.708729, 34.742039, 38.145500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578205, 34.130886, 37.762543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426460, 33.984055, 37.422817>,  <42.335415, 33.895954, 37.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426460, 33.984055, 37.422817>,  <42.578205, 34.130886, 37.762543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426460, 33.984055, 37.422817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721161, 0.457774, -0.519971,
		0.579664, -0.809751, 0.091060,
		-0.379362, -0.367077, -0.849316,
		42.312653, 33.873932, 37.168022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187283, 33.753769, 37.451057>,  <42.578205, 34.130886, 37.762543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187283, 33.753769, 37.451057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922344, 33.887356, 37.182800>,  <42.763382, 33.967506, 37.021847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.922344, 33.887356, 37.182800>,  <43.187283, 33.753769, 37.451057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922344, 33.887356, 37.182800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746449, 0.370741, -0.552599,
		0.064085, -0.866613, -0.494848,
		-0.662350, 0.333965, -0.670641,
		42.723640, 33.987545, 36.981609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512444, 33.674728, 36.917690>,  <43.187283, 33.753769, 37.451057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512444, 33.674728, 36.917690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238346, 33.945175, 36.809387>,  <43.073887, 34.107441, 36.744404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238346, 33.945175, 36.809387>,  <43.512444, 33.674728, 36.917690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238346, 33.945175, 36.809387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707210, 0.528849, -0.469226,
		-0.174060, -0.513018, -0.840545,
		-0.685243, 0.676115, -0.270760,
		43.032772, 34.148010, 36.728161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238804, 33.769756, 36.145199>,  <43.512444, 33.674728, 36.917690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238804, 33.769756, 36.145199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257057, 34.105724, 36.361511>,  <43.268009, 34.307304, 36.491299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257057, 34.105724, 36.361511>,  <43.238804, 33.769756, 36.145199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257057, 34.105724, 36.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704679, 0.356638, -0.613381,
		-0.708057, 0.409070, -0.575601,
		0.045635, 0.839923, 0.540784,
		43.270748, 34.357700, 36.523746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071693, 34.244694, 35.745148>,  <43.238804, 33.769756, 36.145199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071693, 34.244694, 35.745148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257812, 34.434376, 36.044113>,  <43.369484, 34.548183, 36.223492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257812, 34.434376, 36.044113>,  <43.071693, 34.244694, 35.745148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257812, 34.434376, 36.044113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531048, 0.525993, -0.664319,
		-0.708156, 0.706020, -0.007079,
		0.465299, 0.474201, 0.747416,
		43.397404, 34.576637, 36.268337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876785, 34.141712, 35.984756>,  <43.071693, 34.244694, 35.745148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876785, 34.141712, 35.984756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177292, 34.382694, 36.092571>,  <44.357594, 34.527283, 36.157261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177292, 34.382694, 36.092571>,  <43.876785, 34.141712, 35.984756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177292, 34.382694, 36.092571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433647, 0.758441, -0.486536,
		-0.497546, 0.248632, 0.831042,
		0.751264, 0.602453, 0.269540,
		44.402672, 34.563431, 36.173435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027733, 33.463837, 35.667870>,  <43.876785, 34.141712, 35.984756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027733, 33.463837, 35.667870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197029, 33.711430, 35.403225>,  <44.298607, 33.859985, 35.244438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197029, 33.711430, 35.403225>,  <44.027733, 33.463837, 35.667870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197029, 33.711430, 35.403225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023239, 0.722585, 0.690891,
		0.905720, -0.307787, 0.291441,
		0.423238, 0.618981, -0.661613,
		44.324001, 33.897125, 35.204742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766422, 33.296383, 35.678448>,  <44.027733, 33.463837, 35.667870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766422, 33.296383, 35.678448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519440, 33.611023, 35.679363>,  <44.371250, 33.799809, 35.679913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519440, 33.611023, 35.679363>,  <44.766422, 33.296383, 35.678448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519440, 33.611023, 35.679363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786372, 0.617336, -0.022684,
		-0.019259, -0.012203, -0.999740,
		-0.617453, 0.786605, 0.002294,
		44.334206, 33.847004, 35.680050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.148403, 33.583817, 35.131123>,  <44.766422, 33.296383, 35.678448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.148403, 33.583817, 35.131123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982498, 33.892807, 35.323475>,  <44.882954, 34.078201, 35.438885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982498, 33.892807, 35.323475>,  <45.148403, 33.583817, 35.131123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982498, 33.892807, 35.323475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827402, 0.540096, -0.153954,
		-0.378648, 0.334026, -0.863164,
		-0.414767, 0.772478, 0.480880,
		44.858067, 34.124550, 35.467739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955273, 34.077995, 34.643055>,  <45.148403, 33.583817, 35.131123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955273, 34.077995, 34.643055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000519, 34.271999, 34.989922>,  <45.027668, 34.388401, 35.198040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.000519, 34.271999, 34.989922>,  <44.955273, 34.077995, 34.643055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000519, 34.271999, 34.989922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792383, 0.482516, -0.373240,
		-0.599444, 0.729345, -0.329731,
		0.113120, 0.485009, 0.867162,
		45.034454, 34.417503, 35.250069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242279, 33.730282, 33.994293>,  <44.955273, 34.077995, 34.643055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242279, 33.730282, 33.994293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512188, 33.864986, 33.731609>,  <45.674133, 33.945808, 33.573997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512188, 33.864986, 33.731609>,  <45.242279, 33.730282, 33.994293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512188, 33.864986, 33.731609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031714, 0.875775, 0.481678,
		0.737343, -0.345851, 0.580270,
		0.674774, 0.336759, -0.656714,
		45.714619, 33.966015, 33.534595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010036, 34.037479, 34.293743>,  <45.242279, 33.730282, 33.994293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010036, 34.037479, 34.293743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876602, 34.187111, 33.947613>,  <45.796543, 34.276890, 33.739937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876602, 34.187111, 33.947613>,  <46.010036, 34.037479, 34.293743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876602, 34.187111, 33.947613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076688, 0.904090, 0.420404,
		0.939595, 0.206601, -0.272904,
		-0.333586, 0.374082, -0.865323,
		45.776527, 34.299335, 33.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147854, 34.339981, 35.013100>,  <46.010036, 34.037479, 34.293743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147854, 34.339981, 35.013100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493404, 34.309113, 34.813999>,  <46.700733, 34.290592, 34.694538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.493404, 34.309113, 34.813999>,  <46.147854, 34.339981, 35.013100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493404, 34.309113, 34.813999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429112, 0.630252, 0.647028,
		0.263775, -0.772545, 0.577578,
		0.863878, -0.077176, -0.497754,
		46.752567, 34.285961, 34.664673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537247, 34.429539, 35.582233>,  <46.147854, 34.339981, 35.013100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537247, 34.429539, 35.582233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748810, 34.484329, 35.247211>,  <46.875748, 34.517204, 35.046200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.748810, 34.484329, 35.247211>,  <46.537247, 34.429539, 35.582233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748810, 34.484329, 35.247211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450229, 0.791284, 0.413719,
		0.719411, -0.595910, 0.356847,
		0.528906, 0.136971, -0.837554,
		46.907482, 34.525421, 34.995945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.289944, 34.422508, 35.624069>,  <46.537247, 34.429539, 35.582233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.289944, 34.422508, 35.624069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209003, 34.649944, 35.305130>,  <47.160439, 34.786407, 35.113766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.209003, 34.649944, 35.305130>,  <47.289944, 34.422508, 35.624069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.209003, 34.649944, 35.305130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469702, 0.770778, 0.430442,
		0.859322, -0.287416, -0.423033,
		-0.202349, 0.568589, -0.797347,
		47.148300, 34.820522, 35.065926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904102, 34.637360, 35.447960>,  <47.289944, 34.422508, 35.624069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904102, 34.637360, 35.447960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625717, 34.899391, 35.330311>,  <47.458687, 35.056610, 35.259724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625717, 34.899391, 35.330311>,  <47.904102, 34.637360, 35.447960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625717, 34.899391, 35.330311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534586, 0.746138, 0.396858,
		0.479426, 0.118967, -0.869481,
		-0.695966, 0.655076, -0.294120,
		47.416927, 35.095913, 35.242073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.010269, 31.035898, 29.706518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658596, 31.199982, 29.609556>,  <38.447590, 31.298431, 29.551378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.658596, 31.199982, 29.609556>,  <39.010269, 31.035898, 29.706518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658596, 31.199982, 29.609556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007657, 0.520843, 0.853618,
		0.476416, 0.748633, -0.461060,
		-0.879187, 0.410208, -0.242406,
		38.394840, 31.323044, 29.536835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008850, 31.765793, 29.752647>,  <39.010269, 31.035898, 29.706518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008850, 31.765793, 29.752647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625652, 31.665407, 29.808157>,  <38.395733, 31.605177, 29.841463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625652, 31.665407, 29.808157>,  <39.008850, 31.765793, 29.752647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625652, 31.665407, 29.808157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049804, 0.622157, 0.781307,
		-0.282418, 0.741578, -0.608524,
		-0.957998, -0.250962, 0.138775,
		38.338253, 31.590118, 29.849789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645237, 32.361012, 30.007362>,  <39.008850, 31.765793, 29.752647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645237, 32.361012, 30.007362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391487, 32.062080, 30.086420>,  <38.239239, 31.882721, 30.133856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.391487, 32.062080, 30.086420>,  <38.645237, 32.361012, 30.007362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391487, 32.062080, 30.086420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224097, 0.422489, 0.878228,
		-0.739831, 0.512833, -0.435491,
		-0.634374, -0.747333, 0.197646,
		38.201176, 31.837881, 30.145714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048656, 32.660450, 30.189615>,  <38.645237, 32.361012, 30.007362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048656, 32.660450, 30.189615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020519, 32.283379, 30.320101>,  <38.003635, 32.057137, 30.398392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.020519, 32.283379, 30.320101>,  <38.048656, 32.660450, 30.189615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020519, 32.283379, 30.320101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307355, 0.331595, 0.891952,
		-0.948991, -0.037520, -0.313062,
		-0.070344, -0.942676, 0.326212,
		37.999416, 32.000576, 30.417965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399082, 32.636032, 30.514032>,  <38.048656, 32.660450, 30.189615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399082, 32.636032, 30.514032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604244, 32.335899, 30.680853>,  <37.727341, 32.155819, 30.780945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.604244, 32.335899, 30.680853>,  <37.399082, 32.636032, 30.514032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604244, 32.335899, 30.680853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104450, 0.427662, 0.897884,
		-0.852068, -0.504089, 0.140976,
		0.512903, -0.750333, 0.417049,
		37.758114, 32.110798, 30.805967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009712, 32.387051, 31.038240>,  <37.399082, 32.636032, 30.514032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009712, 32.387051, 31.038240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386070, 32.288761, 31.131477>,  <37.611885, 32.229790, 31.187420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.386070, 32.288761, 31.131477>,  <37.009712, 32.387051, 31.038240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386070, 32.288761, 31.131477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147812, 0.321302, 0.935370,
		-0.304734, -0.914541, 0.265991,
		0.940898, -0.245722, 0.233092,
		37.668339, 32.215046, 31.201405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895901, 32.222305, 31.849771>,  <37.009712, 32.387051, 31.038240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895901, 32.222305, 31.849771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276546, 32.286541, 31.744972>,  <37.504932, 32.325081, 31.682093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276546, 32.286541, 31.744972>,  <36.895901, 32.222305, 31.849771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276546, 32.286541, 31.744972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195701, 0.340638, 0.919601,
		0.236921, -0.926379, 0.292729,
		0.951614, 0.160586, -0.261998,
		37.562031, 32.334717, 31.666372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348125, 31.856380, 32.389881>,  <36.895901, 32.222305, 31.849771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348125, 31.856380, 32.389881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579155, 32.126778, 32.206821>,  <37.717773, 32.289017, 32.096985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579155, 32.126778, 32.206821>,  <37.348125, 31.856380, 32.389881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579155, 32.126778, 32.206821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180488, 0.440994, 0.879175,
		0.796137, -0.590387, 0.132697,
		0.577572, 0.675994, -0.457650,
		37.752426, 32.329575, 32.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769215, 32.020531, 32.939564>,  <37.348125, 31.856380, 32.389881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769215, 32.020531, 32.939564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840969, 32.311115, 32.674210>,  <37.884022, 32.485466, 32.514999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840969, 32.311115, 32.674210>,  <37.769215, 32.020531, 32.939564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840969, 32.311115, 32.674210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084327, 0.660485, 0.746089,
		0.980158, -0.189777, 0.057220,
		0.179384, 0.726460, -0.663383,
		37.894783, 32.529053, 32.475193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516361, 32.270397, 32.906174>,  <37.769215, 32.020531, 32.939564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516361, 32.270397, 32.906174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277313, 32.563129, 32.775162>,  <38.133884, 32.738770, 32.696556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.277313, 32.563129, 32.775162>,  <38.516361, 32.270397, 32.906174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277313, 32.563129, 32.775162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140770, 0.497925, 0.855719,
		0.789327, 0.465287, -0.400589,
		-0.597618, 0.731833, -0.327527,
		38.098026, 32.782681, 32.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886086, 32.842892, 33.038651>,  <38.516361, 32.270397, 32.906174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886086, 32.842892, 33.038651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505371, 32.962860, 33.012856>,  <38.276943, 33.034840, 32.997379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505371, 32.962860, 33.012856>,  <38.886086, 32.842892, 33.038651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505371, 32.962860, 33.012856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138596, 0.607932, 0.781799,
		0.273679, 0.735166, -0.620186,
		-0.951783, 0.299918, -0.064487,
		38.219837, 33.052834, 32.993511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995556, 33.603550, 33.121639>,  <38.886086, 32.842892, 33.038651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995556, 33.603550, 33.121639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607616, 33.539093, 33.194763>,  <38.374851, 33.500420, 33.238636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.607616, 33.539093, 33.194763>,  <38.995556, 33.603550, 33.121639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607616, 33.539093, 33.194763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011241, 0.719774, 0.694118,
		-0.243434, 0.675246, -0.696263,
		-0.969852, -0.161145, 0.182808,
		38.316662, 33.490749, 33.249607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732903, 34.279785, 33.302994>,  <38.995556, 33.603550, 33.121639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732903, 34.279785, 33.302994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471504, 34.017113, 33.453575>,  <38.314667, 33.859509, 33.543926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471504, 34.017113, 33.453575>,  <38.732903, 34.279785, 33.302994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471504, 34.017113, 33.453575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218721, 0.639950, 0.736631,
		-0.724645, 0.399043, -0.561831,
		-0.653491, -0.656680, 0.376458,
		38.275455, 33.820110, 33.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267460, 34.794731, 33.386330>,  <38.732903, 34.279785, 33.302994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267460, 34.794731, 33.386330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200344, 34.480595, 33.624683>,  <38.160072, 34.292110, 33.767696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.200344, 34.480595, 33.624683>,  <38.267460, 34.794731, 33.386330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200344, 34.480595, 33.624683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214818, 0.619058, 0.755395,
		-0.962132, -0.001256, -0.272580,
		-0.167794, -0.785344, 0.595885,
		38.150005, 34.244991, 33.803448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680317, 34.999908, 33.883686>,  <38.267460, 34.794731, 33.386330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680317, 34.999908, 33.883686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828655, 34.676960, 34.067261>,  <37.917660, 34.483192, 34.177406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828655, 34.676960, 34.067261>,  <37.680317, 34.999908, 33.883686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828655, 34.676960, 34.067261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041271, 0.508013, 0.860360,
		-0.927777, -0.300121, 0.221716,
		0.370847, -0.807372, 0.458937,
		37.939911, 34.434750, 34.204941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315506, 35.004169, 34.484077>,  <37.680317, 34.999908, 33.883686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315506, 35.004169, 34.484077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623432, 34.770412, 34.586731>,  <37.808189, 34.630157, 34.648323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623432, 34.770412, 34.586731>,  <37.315506, 35.004169, 34.484077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623432, 34.770412, 34.586731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109357, 0.516904, 0.849030,
		-0.628825, -0.625533, 0.461830,
		0.769818, -0.584396, 0.256636,
		37.854378, 34.595093, 34.663723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201897, 34.944195, 35.145996>,  <37.315506, 35.004169, 34.484077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201897, 34.944195, 35.145996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585625, 34.835495, 35.115383>,  <37.815861, 34.770275, 35.097015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585625, 34.835495, 35.115383>,  <37.201897, 34.944195, 35.145996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585625, 34.835495, 35.115383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119963, 0.146988, 0.981837,
		-0.255564, -0.951077, 0.173608,
		0.959321, -0.271749, -0.076530,
		37.873421, 34.753971, 35.092422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388664, 34.407124, 35.563679>,  <37.201897, 34.944195, 35.145996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388664, 34.407124, 35.563679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736382, 34.599358, 35.517422>,  <37.945011, 34.714699, 35.489666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736382, 34.599358, 35.517422>,  <37.388664, 34.407124, 35.563679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736382, 34.599358, 35.517422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114712, 0.031434, 0.992901,
		0.480809, -0.876384, -0.027803,
		0.869289, 0.480585, -0.115645,
		37.997169, 34.743534, 35.482727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886993, 34.036880, 35.910133>,  <37.388664, 34.407124, 35.563679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886993, 34.036880, 35.910133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075058, 34.388432, 35.877834>,  <38.187897, 34.599361, 35.858456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.075058, 34.388432, 35.877834>,  <37.886993, 34.036880, 35.910133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075058, 34.388432, 35.877834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342270, -0.097239, 0.934556,
		0.813510, -0.467030, -0.346532,
		0.470163, 0.878878, -0.080746,
		38.216106, 34.652096, 35.853611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450306, 33.953953, 36.265308>,  <37.886993, 34.036880, 35.910133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450306, 33.953953, 36.265308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507534, 34.346287, 36.212406>,  <38.541870, 34.581688, 36.180664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507534, 34.346287, 36.212406>,  <38.450306, 33.953953, 36.265308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507534, 34.346287, 36.212406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513435, 0.040686, 0.857164,
		0.846118, -0.190539, -0.497774,
		0.143071, 0.980836, -0.132255,
		38.550457, 34.640537, 36.172729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196941, 34.132568, 36.353260>,  <38.450306, 33.953953, 36.265308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196941, 34.132568, 36.353260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988480, 34.455612, 36.463646>,  <38.863403, 34.649441, 36.529877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.988480, 34.455612, 36.463646>,  <39.196941, 34.132568, 36.353260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988480, 34.455612, 36.463646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623644, 0.139626, 0.769137,
		0.582635, 0.572943, -0.576431,
		-0.521157, 0.807614, 0.275962,
		38.832134, 34.697895, 36.546436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716591, 34.483795, 36.698551>,  <39.196941, 34.132568, 36.353260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716591, 34.483795, 36.698551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380447, 34.677750, 36.795441>,  <39.178761, 34.794121, 36.853577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.380447, 34.677750, 36.795441>,  <39.716591, 34.483795, 36.698551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380447, 34.677750, 36.795441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455242, 0.388863, 0.800962,
		0.294183, 0.783371, -0.547528,
		-0.840364, 0.484887, 0.242226,
		39.128338, 34.823215, 36.868107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803070, 34.459534, 36.030880>,  <39.716591, 34.483795, 36.698551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803070, 34.459534, 36.030880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.071091, 34.300297, 36.281498>,  <40.231903, 34.204754, 36.431870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.071091, 34.300297, 36.281498>,  <39.803070, 34.459534, 36.030880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071091, 34.300297, 36.281498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139792, -0.761267, -0.633191,
		0.729036, 0.511855, -0.454436,
		0.670049, -0.398092, 0.626544,
		40.272106, 34.180870, 36.469460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458641, 34.414200, 35.639717>,  <39.803070, 34.459534, 36.030880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458641, 34.414200, 35.639717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.500473, 34.143093, 35.930836>,  <40.525574, 33.980427, 36.105507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.500473, 34.143093, 35.930836>,  <40.458641, 34.414200, 35.639717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500473, 34.143093, 35.930836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274861, -0.683609, -0.676114,
		0.955779, 0.270752, 0.114800,
		0.104581, -0.677770, 0.727798,
		40.531849, 33.939762, 36.149174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083900, 34.030075, 35.521637>,  <40.458641, 34.414200, 35.639717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083900, 34.030075, 35.521637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.840561, 33.797035, 35.737225>,  <40.694557, 33.657211, 35.866577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.840561, 33.797035, 35.737225>,  <41.083900, 34.030075, 35.521637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840561, 33.797035, 35.737225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204010, -0.771056, -0.603202,
		0.766999, -0.257006, 0.587930,
		-0.608353, -0.582599, 0.538967,
		40.658054, 33.622257, 35.898914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462463, 33.453354, 35.555809>,  <41.083900, 34.030075, 35.521637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462463, 33.453354, 35.555809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.086582, 33.350895, 35.646442>,  <40.861053, 33.289421, 35.700821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.086582, 33.350895, 35.646442>,  <41.462463, 33.453354, 35.555809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086582, 33.350895, 35.646442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078155, -0.805876, -0.586904,
		0.332931, -0.533809, 0.777306,
		-0.939707, -0.256149, 0.226582,
		40.804668, 33.274052, 35.714417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551365, 32.766140, 35.685658>,  <41.462463, 33.453354, 35.555809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551365, 32.766140, 35.685658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.169056, 32.833347, 35.589104>,  <40.939671, 32.873672, 35.531170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.169056, 32.833347, 35.589104>,  <41.551365, 32.766140, 35.685658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169056, 32.833347, 35.589104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006703, -0.832974, -0.553272,
		-0.294031, -0.527184, 0.797259,
		-0.955772, 0.168023, -0.241387,
		40.882324, 32.883755, 35.516689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235790, 32.127743, 35.643795>,  <41.551365, 32.766140, 35.685658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235790, 32.127743, 35.643795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.994938, 32.361519, 35.426220>,  <40.850426, 32.501785, 35.295673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.994938, 32.361519, 35.426220>,  <41.235790, 32.127743, 35.643795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994938, 32.361519, 35.426220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037556, -0.659802, -0.750501,
		-0.797513, -0.472328, 0.375338,
		-0.602132, 0.584438, -0.543939,
		40.814297, 32.536850, 35.263039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622204, 31.806732, 35.409695>,  <41.235790, 32.127743, 35.643795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622204, 31.806732, 35.409695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607174, 32.127247, 35.170853>,  <40.598156, 32.319557, 35.027550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607174, 32.127247, 35.170853>,  <40.622204, 31.806732, 35.409695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607174, 32.127247, 35.170853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186628, -0.592636, -0.783551,
		-0.981712, 0.081998, 0.171808,
		-0.037570, 0.801286, -0.597101,
		40.595901, 32.367634, 34.991722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993134, 31.761635, 35.015224>,  <40.622204, 31.806732, 35.409695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993134, 31.761635, 35.015224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210072, 32.018051, 34.797997>,  <40.340233, 32.171902, 34.667660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.210072, 32.018051, 34.797997>,  <39.993134, 31.761635, 35.015224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210072, 32.018051, 34.797997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326190, -0.435028, -0.839256,
		-0.774251, 0.632309, -0.026833,
		0.542342, 0.641042, -0.543074,
		40.372776, 32.210365, 34.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597183, 31.900656, 34.414402>,  <39.993134, 31.761635, 35.015224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597183, 31.900656, 34.414402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966976, 32.029053, 34.332130>,  <40.188850, 32.106091, 34.282768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.966976, 32.029053, 34.332130>,  <39.597183, 31.900656, 34.414402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966976, 32.029053, 34.332130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019583, -0.578775, -0.815252,
		-0.380732, 0.749655, -0.541350,
		0.924478, 0.320994, -0.205678,
		40.244320, 32.125351, 34.270428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618996, 32.172630, 33.700924>,  <39.597183, 31.900656, 34.414402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618996, 32.172630, 33.700924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983139, 32.027866, 33.781200>,  <40.201626, 31.941010, 33.829365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.983139, 32.027866, 33.781200>,  <39.618996, 32.172630, 33.700924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983139, 32.027866, 33.781200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052213, -0.380632, -0.923251,
		0.410518, 0.850966, -0.327615,
		0.910356, -0.361906, 0.200688,
		40.256245, 31.919294, 33.841408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948051, 32.481087, 33.138260>,  <39.618996, 32.172630, 33.700924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948051, 32.481087, 33.138260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193157, 32.192226, 33.266644>,  <40.340221, 32.018909, 33.343674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.193157, 32.192226, 33.266644>,  <39.948051, 32.481087, 33.138260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193157, 32.192226, 33.266644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308467, -0.155356, -0.938463,
		0.727573, 0.674066, 0.127562,
		0.612769, -0.722149, 0.320960,
		40.376987, 31.975582, 33.362930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535374, 32.510574, 32.724308>,  <39.948051, 32.481087, 33.138260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535374, 32.510574, 32.724308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553936, 32.144672, 32.884838>,  <40.565075, 31.925131, 32.981155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.553936, 32.144672, 32.884838>,  <40.535374, 32.510574, 32.724308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553936, 32.144672, 32.884838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388828, -0.353530, -0.850782,
		0.920141, 0.195530, 0.339277,
		0.046408, -0.914759, 0.401325,
		40.567860, 31.870245, 33.005234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128456, 32.174568, 32.444084>,  <40.535374, 32.510574, 32.724308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128456, 32.174568, 32.444084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910797, 31.862791, 32.568256>,  <40.780201, 31.675724, 32.642761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910797, 31.862791, 32.568256>,  <41.128456, 32.174568, 32.444084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910797, 31.862791, 32.568256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264249, -0.510397, -0.818332,
		0.796291, -0.363258, 0.483698,
		-0.544144, -0.779448, 0.310434,
		40.747555, 31.628958, 32.661385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640263, 31.599083, 32.512745>,  <41.128456, 32.174568, 32.444084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640263, 31.599083, 32.512745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.259212, 31.486227, 32.467300>,  <41.030582, 31.418514, 32.440033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.259212, 31.486227, 32.467300>,  <41.640263, 31.599083, 32.512745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259212, 31.486227, 32.467300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240543, -0.470267, -0.849110,
		0.186140, -0.836210, 0.515854,
		-0.952623, -0.282139, -0.113609,
		40.973427, 31.401585, 32.433216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666622, 30.875563, 32.266109>,  <41.640263, 31.599083, 32.512745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666622, 30.875563, 32.266109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.308437, 31.014986, 32.155365>,  <41.093525, 31.098640, 32.088917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.308437, 31.014986, 32.155365>,  <41.666622, 30.875563, 32.266109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308437, 31.014986, 32.155365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191251, -0.260382, -0.946375,
		-0.401960, -0.900392, 0.166499,
		-0.895462, 0.348562, -0.276864,
		41.039799, 31.119555, 32.072308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413185, 30.352297, 31.795603>,  <41.666622, 30.875563, 32.266109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413185, 30.352297, 31.795603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.162331, 30.655628, 31.724459>,  <41.011818, 30.837627, 31.681772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.162331, 30.655628, 31.724459>,  <41.413185, 30.352297, 31.795603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162331, 30.655628, 31.724459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001765, -0.226960, -0.973902,
		-0.778905, -0.611086, 0.140997,
		-0.627139, 0.758329, -0.177859,
		40.974190, 30.883127, 31.671101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842663, 30.096981, 31.479994>,  <41.413185, 30.352297, 31.795603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842663, 30.096981, 31.479994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837975, 30.480091, 31.365082>,  <40.835163, 30.709957, 31.296135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837975, 30.480091, 31.365082>,  <40.842663, 30.096981, 31.479994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837975, 30.480091, 31.365082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144491, -0.282663, -0.948274,
		-0.989437, -0.052623, -0.135078,
		-0.011719, 0.957775, -0.287280,
		40.834457, 30.767424, 31.278898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445251, 30.127708, 30.920561>,  <40.842663, 30.096981, 31.479994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445251, 30.127708, 30.920561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641483, 30.472015, 30.866285>,  <40.759224, 30.678598, 30.833719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.641483, 30.472015, 30.866285>,  <40.445251, 30.127708, 30.920561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641483, 30.472015, 30.866285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100626, -0.210635, -0.972372,
		-0.865565, 0.463375, -0.189950,
		0.490583, 0.860765, -0.135690,
		40.788658, 30.730246, 30.825579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.986446, 30.485960, 30.512081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337685, 30.668253, 30.453772>,  <40.548428, 30.777630, 30.418785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337685, 30.668253, 30.453772>,  <39.986446, 30.485960, 30.512081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337685, 30.668253, 30.453772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171729, 0.015809, -0.985017,
		-0.446600, 0.889976, 0.092145,
		0.878098, 0.455733, -0.145775,
		40.601112, 30.804974, 30.410040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775406, 30.959356, 30.089687>,  <39.986446, 30.485960, 30.512081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775406, 30.959356, 30.089687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172073, 30.932999, 30.045418>,  <40.410072, 30.917185, 30.018856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172073, 30.932999, 30.045418>,  <39.775406, 30.959356, 30.089687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172073, 30.932999, 30.045418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112564, -0.025707, -0.993312,
		0.062608, 0.997496, -0.032910,
		0.991670, -0.065894, -0.110673,
		40.469574, 30.913231, 30.012217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947685, 31.282480, 29.501266>,  <39.775406, 30.959356, 30.089687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947685, 31.282480, 29.501266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285503, 31.069086, 29.519773>,  <40.488194, 30.941050, 29.530878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285503, 31.069086, 29.519773>,  <39.947685, 31.282480, 29.501266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285503, 31.069086, 29.519773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012711, -0.066407, -0.997712,
		0.535335, 0.843199, -0.049302,
		0.844544, -0.533484, 0.046268,
		40.538868, 30.909040, 29.533653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303650, 31.491821, 28.933233>,  <39.947685, 31.282480, 29.501266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303650, 31.491821, 28.933233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478653, 31.149197, 29.042694>,  <40.583656, 30.943621, 29.108370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.478653, 31.149197, 29.042694>,  <40.303650, 31.491821, 28.933233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478653, 31.149197, 29.042694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013025, -0.298253, -0.954398,
		0.899119, 0.421124, -0.119332,
		0.437511, -0.856563, 0.273650,
		40.609905, 30.892227, 29.124788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833435, 31.399342, 28.487339>,  <40.303650, 31.491821, 28.933233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833435, 31.399342, 28.487339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760662, 31.033056, 28.630655>,  <40.716999, 30.813286, 28.716644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.760662, 31.033056, 28.630655>,  <40.833435, 31.399342, 28.487339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760662, 31.033056, 28.630655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009144, -0.362779, -0.931831,
		0.983269, -0.172805, 0.057627,
		-0.181931, -0.915713, 0.358289,
		40.706081, 30.758343, 28.738142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312656, 30.864477, 28.161304>,  <40.833435, 31.399342, 28.487339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312656, 30.864477, 28.161304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990776, 30.677305, 28.307459>,  <40.797649, 30.565002, 28.395151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.990776, 30.677305, 28.307459>,  <41.312656, 30.864477, 28.161304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990776, 30.677305, 28.307459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213803, -0.345750, -0.913644,
		0.553852, -0.813327, 0.178179,
		-0.804697, -0.467928, 0.365386,
		40.749367, 30.536926, 28.417074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402672, 30.218029, 27.914715>,  <41.312656, 30.864477, 28.161304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402672, 30.218029, 27.914715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016041, 30.223560, 28.017120>,  <40.784061, 30.226879, 28.078564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.016041, 30.223560, 28.017120>,  <41.402672, 30.218029, 27.914715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016041, 30.223560, 28.017120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233700, -0.458185, -0.857584,
		0.105442, -0.888749, 0.446102,
		-0.966574, 0.013829, 0.256013,
		40.726067, 30.227709, 28.093924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134335, 29.548185, 27.723989>,  <41.402672, 30.218029, 27.914715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134335, 29.548185, 27.723989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807575, 29.777769, 27.746799>,  <40.611519, 29.915520, 27.760487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807575, 29.777769, 27.746799>,  <41.134335, 29.548185, 27.723989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807575, 29.777769, 27.746799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283700, -0.313752, -0.906131,
		-0.502190, -0.756394, 0.419135,
		-0.816896, 0.573958, 0.057026,
		40.562508, 29.949957, 27.763906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583099, 29.106428, 27.444029>,  <41.134335, 29.548185, 27.723989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583099, 29.106428, 27.444029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.497627, 29.496773, 27.425987>,  <40.446342, 29.730980, 27.415163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.497627, 29.496773, 27.425987>,  <40.583099, 29.106428, 27.444029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497627, 29.496773, 27.425987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464183, -0.142049, -0.874275,
		-0.859578, -0.165879, 0.483332,
		-0.213680, 0.975862, -0.045104,
		40.433521, 29.789532, 27.412457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931065, 29.087969, 27.200947>,  <40.583099, 29.106428, 27.444029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931065, 29.087969, 27.200947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027306, 29.466776, 27.115847>,  <40.085052, 29.694061, 27.064787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.027306, 29.466776, 27.115847>,  <39.931065, 29.087969, 27.200947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027306, 29.466776, 27.115847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344402, -0.121630, -0.930910,
		-0.907467, 0.297254, 0.296891,
		0.240606, 0.947020, -0.212750,
		40.099487, 29.750881, 27.052021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528168, 29.230623, 26.696009>,  <39.931065, 29.087969, 27.200947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528168, 29.230623, 26.696009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781307, 29.535885, 26.643711>,  <39.933193, 29.719042, 26.612333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781307, 29.535885, 26.643711>,  <39.528168, 29.230623, 26.696009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781307, 29.535885, 26.643711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090752, -0.094585, -0.991372,
		-0.768935, 0.639258, 0.009399,
		0.632854, 0.763153, -0.130744,
		39.971165, 29.764832, 26.604488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173252, 29.684971, 26.167377>,  <39.528168, 29.230623, 26.696009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173252, 29.684971, 26.167377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.568645, 29.743990, 26.180841>,  <39.805882, 29.779402, 26.188919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.568645, 29.743990, 26.180841>,  <39.173252, 29.684971, 26.167377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568645, 29.743990, 26.180841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060185, -0.179188, -0.981972,
		-0.138856, 0.972688, -0.186004,
		0.988482, 0.147548, 0.033660,
		39.865189, 29.788254, 26.190939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359627, 30.078218, 25.643997>,  <39.173252, 29.684971, 26.167377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359627, 30.078218, 25.643997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728775, 29.951748, 25.731949>,  <39.950264, 29.875866, 25.784719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.728775, 29.951748, 25.731949>,  <39.359627, 30.078218, 25.643997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728775, 29.951748, 25.731949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273822, 0.137226, -0.951940,
		0.270808, 0.938723, 0.213218,
		0.922868, -0.316177, 0.219881,
		40.005634, 29.856895, 25.797913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818680, 30.458763, 25.259489>,  <39.359627, 30.078218, 25.643997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818680, 30.458763, 25.259489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039116, 30.141281, 25.362513>,  <40.171379, 29.950792, 25.424328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.039116, 30.141281, 25.362513>,  <39.818680, 30.458763, 25.259489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039116, 30.141281, 25.362513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432330, 0.007578, -0.901683,
		0.713717, 0.608259, 0.347318,
		0.551089, -0.793703, 0.257560,
		40.204441, 29.903170, 25.439781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363285, 30.596014, 25.005651>,  <39.818680, 30.458763, 25.259489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363285, 30.596014, 25.005651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390358, 30.198616, 25.042282>,  <40.406601, 29.960176, 25.064260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390358, 30.198616, 25.042282>,  <40.363285, 30.596014, 25.005651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390358, 30.198616, 25.042282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431767, -0.053579, -0.900392,
		0.899442, 0.100480, 0.425332,
		0.067683, -0.993495, 0.091576,
		40.410664, 29.900568, 25.069756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989491, 30.462017, 24.671385>,  <40.363285, 30.596014, 25.005651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989491, 30.462017, 24.671385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828827, 30.098412, 24.715864>,  <40.732430, 29.880249, 24.742552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.828827, 30.098412, 24.715864>,  <40.989491, 30.462017, 24.671385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828827, 30.098412, 24.715864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484639, -0.314013, -0.816407,
		0.777041, -0.274029, 0.566670,
		-0.401661, -0.909013, 0.111196,
		40.708328, 29.825708, 24.749224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539532, 29.996904, 24.694351>,  <40.989491, 30.462017, 24.671385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539532, 29.996904, 24.694351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.216885, 29.776262, 24.609407>,  <41.023296, 29.643877, 24.558441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.216885, 29.776262, 24.609407>,  <41.539532, 29.996904, 24.694351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216885, 29.776262, 24.609407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478504, -0.398484, -0.782460,
		0.346988, -0.732762, 0.585371,
		-0.806618, -0.551607, -0.212360,
		40.974899, 29.610781, 24.545700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763290, 29.197065, 24.588314>,  <41.539532, 29.996904, 24.694351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763290, 29.197065, 24.588314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.410545, 29.280277, 24.419064>,  <41.198898, 29.330204, 24.317514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.410545, 29.280277, 24.419064>,  <41.763290, 29.197065, 24.588314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410545, 29.280277, 24.419064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296707, -0.452593, -0.840907,
		-0.366434, -0.867113, 0.337404,
		-0.881868, 0.208027, -0.423124,
		41.145985, 29.342686, 24.292126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683514, 28.605818, 24.243937>,  <41.763290, 29.197065, 24.588314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683514, 28.605818, 24.243937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453358, 28.881823, 24.068295>,  <41.315266, 29.047424, 23.962910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453358, 28.881823, 24.068295>,  <41.683514, 28.605818, 24.243937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453358, 28.881823, 24.068295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176305, -0.419619, -0.890414,
		-0.798651, -0.589751, 0.119792,
		-0.575390, 0.690010, -0.439105,
		41.280743, 29.088825, 23.936563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310532, 28.283632, 23.721491>,  <41.683514, 28.605818, 24.243937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310532, 28.283632, 23.721491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269184, 28.661572, 23.597181>,  <41.244373, 28.888334, 23.522596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.269184, 28.661572, 23.597181>,  <41.310532, 28.283632, 23.721491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269184, 28.661572, 23.597181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222005, -0.326481, -0.918762,
		-0.969550, -0.025982, 0.243510,
		-0.103372, 0.944846, -0.310772,
		41.238171, 28.945026, 23.503950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789326, 28.276356, 23.259739>,  <41.310532, 28.283632, 23.721491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789326, 28.276356, 23.259739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.985210, 28.606035, 23.145987>,  <41.102741, 28.803843, 23.077734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.985210, 28.606035, 23.145987>,  <40.789326, 28.276356, 23.259739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985210, 28.606035, 23.145987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192504, -0.215909, -0.957249,
		-0.850365, 0.523525, 0.052928,
		0.489716, 0.824200, -0.284382,
		41.132126, 28.853294, 23.060673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404358, 28.604073, 22.776384>,  <40.789326, 28.276356, 23.259739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404358, 28.604073, 22.776384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765228, 28.764345, 22.712458>,  <40.981750, 28.860508, 22.674101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765228, 28.764345, 22.712458>,  <40.404358, 28.604073, 22.776384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765228, 28.764345, 22.712458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149162, -0.057872, -0.987118,
		-0.404769, 0.914388, 0.007556,
		0.902171, 0.400681, -0.159817,
		41.035881, 28.884550, 22.664513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283405, 29.227938, 22.404104>,  <40.404358, 28.604073, 22.776384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283405, 29.227938, 22.404104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629238, 29.043633, 22.323914>,  <40.836739, 28.933050, 22.275799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.629238, 29.043633, 22.323914>,  <40.283405, 29.227938, 22.404104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629238, 29.043633, 22.323914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173068, 0.101499, -0.979666,
		0.471742, 0.881700, 0.008011,
		0.864585, -0.460763, -0.200475,
		40.888615, 28.905403, 22.263771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528473, 29.023506, 22.229240>,  <40.283405, 29.227938, 22.404104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528473, 29.023506, 22.229240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382950, 29.199818, 21.901007>,  <39.295635, 29.305605, 21.704067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.382950, 29.199818, 21.901007>,  <39.528473, 29.023506, 22.229240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382950, 29.199818, 21.901007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336880, 0.759057, 0.557086,
		0.868420, 0.479112, -0.127665,
		-0.363812, 0.440777, -0.820583,
		39.273808, 29.332050, 21.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.850246, 29.728247, 22.154545>,  <39.528473, 29.023506, 22.229240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.850246, 29.728247, 22.154545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485268, 29.666798, 22.002844>,  <39.266281, 29.629929, 21.911823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.485268, 29.666798, 22.002844>,  <39.850246, 29.728247, 22.154545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485268, 29.666798, 22.002844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390508, 0.603769, 0.694958,
		0.122219, 0.782216, -0.610901,
		-0.912451, -0.153625, -0.379253,
		39.211533, 29.620710, 21.889069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496487, 30.430918, 22.136461>,  <39.850246, 29.728247, 22.154545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496487, 30.430918, 22.136461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184246, 30.181820, 22.115107>,  <38.996902, 30.032362, 22.102295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184246, 30.181820, 22.115107>,  <39.496487, 30.430918, 22.136461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184246, 30.181820, 22.115107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506256, 0.579864, 0.638328,
		-0.366559, 0.525307, -0.767911,
		-0.780603, -0.622744, -0.053386,
		38.950066, 29.994997, 22.099091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035374, 30.910551, 22.074293>,  <39.496487, 30.430918, 22.136461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035374, 30.910551, 22.074293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863911, 30.579330, 22.218838>,  <38.761032, 30.380598, 22.305565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863911, 30.579330, 22.218838>,  <39.035374, 30.910551, 22.074293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863911, 30.579330, 22.218838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415175, 0.535779, 0.735235,
		-0.802422, 0.165138, -0.573453,
		-0.428660, -0.828052, 0.361360,
		38.735313, 30.330915, 22.327246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269657, 31.165758, 22.427740>,  <39.035374, 30.910551, 22.074293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269657, 31.165758, 22.427740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308952, 30.798515, 22.581326>,  <38.332531, 30.578169, 22.673477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308952, 30.798515, 22.581326>,  <38.269657, 31.165758, 22.427740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308952, 30.798515, 22.581326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325670, 0.334924, 0.884175,
		-0.940366, -0.211907, -0.266097,
		0.098241, -0.918107, 0.383963,
		38.338425, 30.523083, 22.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629326, 30.979448, 22.772869>,  <38.269657, 31.165758, 22.427740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629326, 30.979448, 22.772869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892181, 30.730604, 22.943115>,  <38.049896, 30.581297, 23.045263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.892181, 30.730604, 22.943115>,  <37.629326, 30.979448, 22.772869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892181, 30.730604, 22.943115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410602, 0.178083, 0.894255,
		-0.632121, -0.762407, -0.138415,
		0.657137, -0.622111, 0.425615,
		38.089321, 30.543970, 23.070801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287819, 30.709213, 23.289284>,  <37.629326, 30.979448, 22.772869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287819, 30.709213, 23.289284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654903, 30.594707, 23.399454>,  <37.875153, 30.526005, 23.465555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.654903, 30.594707, 23.399454>,  <37.287819, 30.709213, 23.289284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654903, 30.594707, 23.399454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195809, 0.277277, 0.940626,
		-0.345638, -0.917153, 0.198407,
		0.917711, -0.286266, 0.275424,
		37.930218, 30.508827, 23.482080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247906, 30.198380, 23.846441>,  <37.287819, 30.709213, 23.289284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247906, 30.198380, 23.846441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604088, 30.378325, 23.873898>,  <37.817799, 30.486292, 23.890371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.604088, 30.378325, 23.873898>,  <37.247906, 30.198380, 23.846441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604088, 30.378325, 23.873898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157550, 0.163246, 0.973925,
		0.426929, -0.878050, 0.216239,
		0.890454, 0.449865, 0.068642,
		37.871223, 30.513285, 23.894489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384022, 30.173008, 24.588373>,  <37.247906, 30.198380, 23.846441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384022, 30.173008, 24.588373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706425, 30.380951, 24.475168>,  <37.899868, 30.505716, 24.407246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706425, 30.380951, 24.475168>,  <37.384022, 30.173008, 24.588373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706425, 30.380951, 24.475168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218102, 0.183646, 0.958491,
		0.550254, -0.834278, 0.034638,
		0.806010, 0.519859, -0.283010,
		37.948227, 30.536909, 24.390265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075932, 29.879595, 24.948952>,  <37.384022, 30.173008, 24.588373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075932, 29.879595, 24.948952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030094, 30.266808, 24.859701>,  <38.002594, 30.499134, 24.806150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030094, 30.266808, 24.859701>,  <38.075932, 29.879595, 24.948952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030094, 30.266808, 24.859701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205590, 0.242852, 0.948027,
		0.971906, 0.062762, -0.226846,
		-0.114590, 0.968031, -0.223127,
		37.995716, 30.557217, 24.792763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621750, 30.264505, 25.241392>,  <38.075932, 29.879595, 24.948952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621750, 30.264505, 25.241392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341618, 30.543327, 25.179878>,  <38.173538, 30.710621, 25.142971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.341618, 30.543327, 25.179878>,  <38.621750, 30.264505, 25.241392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341618, 30.543327, 25.179878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190841, 0.390435, 0.900633,
		0.687834, 0.601393, -0.406461,
		-0.700331, 0.697056, -0.153784,
		38.131519, 30.752443, 25.133743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889637, 30.992401, 25.389299>,  <38.621750, 30.264505, 25.241392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889637, 30.992401, 25.389299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490952, 30.980314, 25.419338>,  <38.251740, 30.973063, 25.437363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.490952, 30.980314, 25.419338>,  <38.889637, 30.992401, 25.389299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490952, 30.980314, 25.419338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054761, 0.431545, 0.900428,
		-0.059615, 0.901585, -0.428474,
		-0.996718, -0.030215, 0.075099,
		38.191936, 30.971251, 25.441868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849819, 31.594072, 25.818821>,  <38.889637, 30.992401, 25.389299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849819, 31.594072, 25.818821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487576, 31.424667, 25.827808>,  <38.270229, 31.323025, 25.833200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487576, 31.424667, 25.827808>,  <38.849819, 31.594072, 25.818821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487576, 31.424667, 25.827808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025434, 0.107114, 0.993921,
		-0.423347, 0.899534, -0.107775,
		-0.905611, -0.423514, 0.022467,
		38.215893, 31.297613, 25.834549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512913, 31.981159, 26.268089>,  <38.849819, 31.594072, 25.818821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512913, 31.981159, 26.268089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283558, 31.653677, 26.280439>,  <38.145947, 31.457188, 26.287849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.283558, 31.653677, 26.280439>,  <38.512913, 31.981159, 26.268089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283558, 31.653677, 26.280439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011690, 0.045859, 0.998879,
		-0.819202, 0.572382, -0.035866,
		-0.573386, -0.818704, 0.030877,
		38.111542, 31.408066, 26.289701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019264, 32.125099, 26.843206>,  <38.512913, 31.981159, 26.268089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019264, 32.125099, 26.843206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018482, 31.730724, 26.776365>,  <38.018013, 31.494099, 26.736261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.018482, 31.730724, 26.776365>,  <38.019264, 32.125099, 26.843206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018482, 31.730724, 26.776365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114878, -0.165775, 0.979450,
		-0.993378, 0.021108, -0.112939,
		-0.001952, -0.985938, -0.167102,
		38.017899, 31.434942, 26.726234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643810, 31.809565, 27.408659>,  <38.019264, 32.125099, 26.843206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643810, 31.809565, 27.408659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874825, 31.521395, 27.255066>,  <38.013432, 31.348494, 27.162910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.874825, 31.521395, 27.255066>,  <37.643810, 31.809565, 27.408659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874825, 31.521395, 27.255066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199464, -0.331574, 0.922102,
		-0.791622, -0.609138, -0.047798,
		0.577536, -0.720423, -0.383982,
		38.048084, 31.305267, 27.139872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381348, 31.286047, 27.693493>,  <37.643810, 31.809565, 27.408659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381348, 31.286047, 27.693493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754276, 31.166895, 27.611475>,  <37.978035, 31.095404, 27.562263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.754276, 31.166895, 27.611475>,  <37.381348, 31.286047, 27.693493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754276, 31.166895, 27.611475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153046, -0.188705, 0.970035,
		-0.327651, -0.935765, -0.130344,
		0.932321, -0.297884, -0.205044,
		38.033974, 31.077530, 27.549961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249767, 30.643427, 27.829983>,  <37.381348, 31.286047, 27.693493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249767, 30.643427, 27.829983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629429, 30.765017, 27.862724>,  <37.857227, 30.837971, 27.882370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629429, 30.765017, 27.862724>,  <37.249767, 30.643427, 27.829983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629429, 30.765017, 27.862724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095456, 0.030130, 0.994978,
		0.299979, -0.952204, 0.057614,
		0.949158, 0.303972, 0.081855,
		37.914177, 30.856209, 27.887281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562840, 30.270117, 28.444881>,  <37.249767, 30.643427, 27.829983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562840, 30.270117, 28.444881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801704, 30.575714, 28.347141>,  <37.945023, 30.759073, 28.288496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801704, 30.575714, 28.347141>,  <37.562840, 30.270117, 28.444881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801704, 30.575714, 28.347141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248926, 0.113079, 0.961899,
		0.762517, -0.635236, -0.122651,
		0.597163, 0.763995, -0.244351,
		37.980854, 30.804913, 28.273836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134499, 30.198170, 28.914139>,  <37.562840, 30.270117, 28.444881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134499, 30.198170, 28.914139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135231, 30.581297, 28.799189>,  <38.135670, 30.811172, 28.730219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.135231, 30.581297, 28.799189>,  <38.134499, 30.198170, 28.914139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135231, 30.581297, 28.799189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037769, 0.287236, 0.957115,
		0.999285, 0.009103, 0.036701,
		0.001829, 0.957816, -0.287374,
		38.135780, 30.868643, 28.712976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579712, 30.463533, 29.322308>,  <38.134499, 30.198170, 28.914139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579712, 30.463533, 29.322308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.354004, 30.776892, 29.218082>,  <38.218578, 30.964907, 29.155548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.354004, 30.776892, 29.218082>,  <38.579712, 30.463533, 29.322308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354004, 30.776892, 29.218082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188743, 0.184842, 0.964474,
		0.803727, 0.593402, 0.043559,
		-0.564269, 0.783395, -0.260563,
		38.184723, 31.011909, 29.139914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.507690, 30.638895, 33.496777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500957, 31.009363, 33.346085>,  <40.496918, 31.231644, 33.255669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500957, 31.009363, 33.346085>,  <40.507690, 30.638895, 33.496777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500957, 31.009363, 33.346085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173737, 0.373761, 0.911109,
		0.984648, -0.050113, -0.167203,
		-0.016835, 0.926171, -0.376729,
		40.495907, 31.287214, 33.233067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055077, 30.978106, 33.713486>,  <40.507690, 30.638895, 33.496777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055077, 30.978106, 33.713486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842697, 31.302532, 33.615292>,  <40.715267, 31.497189, 33.556374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.842697, 31.302532, 33.615292>,  <41.055077, 30.978106, 33.713486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842697, 31.302532, 33.615292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040168, 0.313456, 0.948753,
		0.846450, 0.493880, -0.199008,
		-0.530951, 0.811066, -0.245487,
		40.683411, 31.545853, 33.541645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489738, 31.632811, 34.033249>,  <41.055077, 30.978106, 33.713486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489738, 31.632811, 34.033249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106045, 31.727783, 33.971924>,  <40.875828, 31.784767, 33.935131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106045, 31.727783, 33.971924>,  <41.489738, 31.632811, 34.033249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106045, 31.727783, 33.971924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023495, 0.607556, 0.793929,
		0.281647, 0.757959, -0.588365,
		-0.959230, 0.237432, -0.153309,
		40.818275, 31.799013, 33.925930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451904, 32.433655, 34.009338>,  <41.489738, 31.632811, 34.033249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451904, 32.433655, 34.009338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077255, 32.316696, 34.086533>,  <40.852467, 32.246521, 34.132851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.077255, 32.316696, 34.086533>,  <41.451904, 32.433655, 34.009338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.077255, 32.316696, 34.086533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060948, 0.678441, 0.732122,
		-0.345001, 0.673959, -0.653263,
		-0.936621, -0.292398, 0.192987,
		40.796268, 32.228977, 34.144428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109985, 33.034466, 34.000568>,  <41.451904, 32.433655, 34.009338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109985, 33.034466, 34.000568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902508, 32.767052, 34.213741>,  <40.778023, 32.606602, 34.341644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902508, 32.767052, 34.213741>,  <41.109985, 33.034466, 34.000568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902508, 32.767052, 34.213741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169125, 0.691258, 0.702538,
		-0.838065, 0.274271, -0.471618,
		-0.518695, -0.668535, 0.532933,
		40.746899, 32.566490, 34.373623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503063, 33.335991, 34.189651>,  <41.109985, 33.034466, 34.000568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503063, 33.335991, 34.189651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551384, 33.024696, 34.436150>,  <40.580376, 32.837921, 34.584049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.551384, 33.024696, 34.436150>,  <40.503063, 33.335991, 34.189651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551384, 33.024696, 34.436150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055589, 0.614516, 0.786943,
		-0.991119, -0.129324, 0.030976,
		0.120806, -0.778232, 0.616248,
		40.587627, 32.791225, 34.621025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927605, 33.282166, 34.727341>,  <40.503063, 33.335991, 34.189651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927605, 33.282166, 34.727341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197586, 33.039852, 34.895847>,  <40.359573, 32.894463, 34.996952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.197586, 33.039852, 34.895847>,  <39.927605, 33.282166, 34.727341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197586, 33.039852, 34.895847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119504, 0.473642, 0.872572,
		-0.728120, -0.639287, 0.247292,
		0.674952, -0.605785, 0.421265,
		40.400070, 32.858116, 35.022228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602943, 33.028870, 35.313087>,  <39.927605, 33.282166, 34.727341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602943, 33.028870, 35.313087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.994839, 32.980507, 35.376961>,  <40.229977, 32.951488, 35.415283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.994839, 32.980507, 35.376961>,  <39.602943, 33.028870, 35.313087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994839, 32.980507, 35.376961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091192, 0.440540, 0.893090,
		-0.178331, -0.889553, 0.420586,
		0.979736, -0.120912, 0.159682,
		40.288761, 32.944233, 35.424866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619652, 32.791321, 36.034740>,  <39.602943, 33.028870, 35.313087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619652, 32.791321, 36.034740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974594, 32.943790, 35.930962>,  <40.187557, 33.035271, 35.868694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974594, 32.943790, 35.930962>,  <39.619652, 32.791321, 36.034740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974594, 32.943790, 35.930962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017050, 0.535172, 0.844571,
		0.460772, -0.753858, 0.468388,
		0.887355, 0.381169, -0.259445,
		40.240799, 33.058144, 35.853127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970554, 32.855846, 36.654366>,  <39.619652, 32.791321, 36.034740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970554, 32.855846, 36.654366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.198799, 33.093735, 36.427841>,  <40.335747, 33.236469, 36.291927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.198799, 33.093735, 36.427841>,  <39.970554, 32.855846, 36.654366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198799, 33.093735, 36.427841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183615, 0.579748, 0.793837,
		0.800432, -0.556954, 0.221609,
		0.570609, 0.594722, -0.566314,
		40.369980, 33.272152, 36.257946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479939, 33.057247, 37.091461>,  <39.970554, 32.855846, 36.654366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479939, 33.057247, 37.091461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478725, 33.331181, 36.799984>,  <40.477997, 33.495541, 36.625099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.478725, 33.331181, 36.799984>,  <40.479939, 33.057247, 37.091461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478725, 33.331181, 36.799984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264873, 0.703216, 0.659796,
		0.964279, -0.191011, -0.183525,
		-0.003029, 0.684838, -0.728689,
		40.477818, 33.536633, 36.581379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137264, 33.464958, 37.185432>,  <40.479939, 33.057247, 37.091461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137264, 33.464958, 37.185432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860905, 33.685398, 36.998264>,  <40.695091, 33.817661, 36.885963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.860905, 33.685398, 36.998264>,  <41.137264, 33.464958, 37.185432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860905, 33.685398, 36.998264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027566, 0.666840, 0.744691,
		0.722427, 0.501606, -0.475910,
		-0.690897, 0.551104, -0.467916,
		40.653637, 33.850731, 36.857891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355827, 34.155983, 37.074371>,  <41.137264, 33.464958, 37.185432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355827, 34.155983, 37.074371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955906, 34.163876, 37.074120>,  <40.715954, 34.168613, 37.073971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.955906, 34.163876, 37.074120>,  <41.355827, 34.155983, 37.074371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955906, 34.163876, 37.074120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013776, 0.719957, 0.693882,
		0.014143, 0.693738, -0.720088,
		-0.999805, 0.019734, -0.000625,
		40.655964, 34.169796, 37.073933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104134, 34.777706, 36.659309>,  <41.355827, 34.155983, 37.074371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104134, 34.777706, 36.659309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909042, 34.635696, 36.978325>,  <40.791988, 34.550491, 37.169735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909042, 34.635696, 36.978325>,  <41.104134, 34.777706, 36.659309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909042, 34.635696, 36.978325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150470, 0.934087, 0.323792,
		-0.859928, 0.037918, -0.509005,
		-0.487732, -0.355028, 0.797542,
		40.762722, 34.529186, 37.217587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855663, 35.493034, 36.713196>,  <41.104134, 34.777706, 36.659309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855663, 35.493034, 36.713196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749016, 35.870239, 36.633556>,  <40.685028, 36.096561, 36.585773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.749016, 35.870239, 36.633556>,  <40.855663, 35.493034, 36.713196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749016, 35.870239, 36.633556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079646, -0.227422, -0.970534,
		-0.960507, -0.242902, 0.135741,
		-0.266615, 0.943015, -0.199094,
		40.669033, 36.153145, 36.573830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161480, 35.373985, 36.443157>,  <40.855663, 35.493034, 36.713196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161480, 35.373985, 36.443157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304028, 35.730820, 36.332035>,  <40.389557, 35.944920, 36.265362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304028, 35.730820, 36.332035>,  <40.161480, 35.373985, 36.443157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304028, 35.730820, 36.332035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027373, -0.287231, -0.957470,
		-0.933943, 0.348821, -0.077943,
		0.356373, 0.892089, -0.277806,
		40.410938, 35.998447, 36.248692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841400, 35.483887, 35.809620>,  <40.161480, 35.373985, 36.443157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841400, 35.483887, 35.809620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.132015, 35.758591, 35.800617>,  <40.306385, 35.923412, 35.795216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.132015, 35.758591, 35.800617>,  <39.841400, 35.483887, 35.809620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132015, 35.758591, 35.800617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140441, -0.180476, -0.973501,
		-0.672620, 0.704126, -0.227572,
		0.726539, 0.686757, -0.022503,
		40.349976, 35.964619, 35.793865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724224, 36.000267, 35.294220>,  <39.841400, 35.483887, 35.809620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724224, 36.000267, 35.294220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.120380, 36.024906, 35.343758>,  <40.358074, 36.039688, 35.373482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.120380, 36.024906, 35.343758>,  <39.724224, 36.000267, 35.294220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120380, 36.024906, 35.343758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128407, -0.076597, -0.988759,
		-0.051419, 0.995158, -0.083771,
		0.990388, 0.061598, 0.123847,
		40.417496, 36.043385, 35.380913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980968, 36.277943, 34.680607>,  <39.724224, 36.000267, 35.294220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980968, 36.277943, 34.680607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309456, 36.131313, 34.855522>,  <40.506550, 36.043335, 34.960472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309456, 36.131313, 34.855522>,  <39.980968, 36.277943, 34.680607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309456, 36.131313, 34.855522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384997, -0.209680, -0.898783,
		0.421163, 0.906453, -0.031062,
		0.821218, -0.366575, 0.437291,
		40.555820, 36.021339, 34.986710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532516, 36.636269, 34.342670>,  <39.980968, 36.277943, 34.680607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532516, 36.636269, 34.342670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.690975, 36.315819, 34.522118>,  <40.786053, 36.123547, 34.629787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.690975, 36.315819, 34.522118>,  <40.532516, 36.636269, 34.342670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690975, 36.315819, 34.522118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470045, -0.242770, -0.848599,
		0.788748, 0.547044, 0.280393,
		0.396150, -0.801128, 0.448619,
		40.809822, 36.075481, 34.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172424, 36.615524, 34.071926>,  <40.532516, 36.636269, 34.342670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172424, 36.615524, 34.071926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106106, 36.245548, 34.208752>,  <41.066315, 36.023563, 34.290848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.106106, 36.245548, 34.208752>,  <41.172424, 36.615524, 34.071926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106106, 36.245548, 34.208752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462798, -0.379266, -0.801234,
		0.870822, 0.025467, 0.490938,
		-0.165791, -0.924937, 0.342059,
		41.056370, 35.968067, 34.311371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768543, 36.221336, 33.787022>,  <41.172424, 36.615524, 34.071926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768543, 36.221336, 33.787022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493153, 35.953217, 33.897804>,  <41.327919, 35.792343, 33.964272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493153, 35.953217, 33.897804>,  <41.768543, 36.221336, 33.787022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493153, 35.953217, 33.897804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175694, -0.524633, -0.833002,
		0.703660, -0.524840, 0.478963,
		-0.688473, -0.670301, 0.276952,
		41.286610, 35.752125, 33.980888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039200, 35.589935, 33.667496>,  <41.768543, 36.221336, 33.787022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039200, 35.589935, 33.667496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646664, 35.514889, 33.650642>,  <41.411144, 35.469860, 33.640530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.646664, 35.514889, 33.650642>,  <42.039200, 35.589935, 33.667496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646664, 35.514889, 33.650642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118287, -0.416219, -0.901538,
		0.151606, -0.889697, 0.430644,
		-0.981338, -0.187618, -0.042138,
		41.352261, 35.458603, 33.638000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926189, 34.823475, 33.400135>,  <42.039200, 35.589935, 33.667496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926189, 34.823475, 33.400135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587173, 35.026779, 33.339027>,  <41.383762, 35.148762, 33.302364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.587173, 35.026779, 33.339027>,  <41.926189, 34.823475, 33.400135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587173, 35.026779, 33.339027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078155, -0.165178, -0.983162,
		-0.524940, -0.845212, 0.100272,
		-0.847543, 0.508265, -0.152766,
		41.332909, 35.179260, 33.293198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423340, 34.383247, 33.209442>,  <41.926189, 34.823475, 33.400135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423340, 34.383247, 33.209442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368580, 34.757477, 33.079235>,  <41.335724, 34.982014, 33.001110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.368580, 34.757477, 33.079235>,  <41.423340, 34.383247, 33.209442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368580, 34.757477, 33.079235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115713, -0.311259, -0.943254,
		-0.983803, -0.166797, -0.065647,
		-0.136899, 0.935573, -0.325519,
		41.327511, 35.038147, 32.981579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920444, 34.364635, 32.711021>,  <41.423340, 34.383247, 33.209442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920444, 34.364635, 32.711021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050835, 34.730637, 32.615929>,  <41.129070, 34.950237, 32.558872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.050835, 34.730637, 32.615929>,  <40.920444, 34.364635, 32.711021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050835, 34.730637, 32.615929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127401, -0.206658, -0.970083,
		-0.936755, 0.346510, 0.049206,
		0.325975, 0.914999, -0.237733,
		41.148628, 35.005135, 32.544609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382118, 34.601196, 32.224438>,  <40.920444, 34.364635, 32.711021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382118, 34.601196, 32.224438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691105, 34.845974, 32.156528>,  <40.876495, 34.992840, 32.115784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.691105, 34.845974, 32.156528>,  <40.382118, 34.601196, 32.224438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691105, 34.845974, 32.156528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101129, -0.145386, -0.984193,
		-0.626951, 0.777425, -0.050420,
		0.772467, 0.611942, -0.169770,
		40.922844, 35.029556, 32.105598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129936, 35.166893, 31.828508>,  <40.382118, 34.601196, 32.224438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129936, 35.166893, 31.828508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524593, 35.151199, 31.765265>,  <40.761387, 35.141785, 31.727318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.524593, 35.151199, 31.765265>,  <40.129936, 35.166893, 31.828508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524593, 35.151199, 31.765265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161415, -0.104409, -0.981348,
		0.021993, 0.993760, -0.109347,
		0.986641, -0.039233, -0.158112,
		40.820587, 35.139431, 31.717831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354351, 35.817562, 31.566917>,  <40.129936, 35.166893, 31.828508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354351, 35.817562, 31.566917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304317, 36.168232, 31.381104>,  <40.274296, 36.378635, 31.269615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.304317, 36.168232, 31.381104>,  <40.354351, 35.817562, 31.566917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304317, 36.168232, 31.381104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464931, 0.361828, 0.808035,
		0.876466, 0.317051, 0.362333,
		-0.125086, 0.876675, -0.464537,
		40.266792, 36.431236, 31.241743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638687, 36.406990, 32.042496>,  <40.354351, 35.817562, 31.566917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638687, 36.406990, 32.042496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373299, 36.550339, 31.779781>,  <40.214066, 36.636349, 31.622152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.373299, 36.550339, 31.779781>,  <40.638687, 36.406990, 32.042496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373299, 36.550339, 31.779781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471916, 0.480746, 0.739038,
		0.580602, 0.800281, -0.149839,
		-0.663473, 0.358375, -0.656788,
		40.174255, 36.657852, 31.582745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564564, 37.180435, 32.192554>,  <40.638687, 36.406990, 32.042496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564564, 37.180435, 32.192554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229507, 37.087917, 31.994621>,  <40.028473, 37.032406, 31.875862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229507, 37.087917, 31.994621>,  <40.564564, 37.180435, 32.192554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229507, 37.087917, 31.994621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507394, 0.664920, 0.548117,
		0.202250, 0.710201, -0.674321,
		-0.837643, -0.231290, -0.494832,
		39.978214, 37.018532, 31.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261841, 37.769104, 32.156147>,  <40.564564, 37.180435, 32.192554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261841, 37.769104, 32.156147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955769, 37.522110, 32.083260>,  <39.772125, 37.373913, 32.039528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955769, 37.522110, 32.083260>,  <40.261841, 37.769104, 32.156147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955769, 37.522110, 32.083260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593707, 0.567308, 0.570678,
		-0.249011, 0.544859, -0.800701,
		-0.765183, -0.617487, -0.182222,
		39.726215, 37.336864, 32.028595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672150, 38.174221, 32.093895>,  <40.261841, 37.769104, 32.156147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672150, 38.174221, 32.093895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.559612, 37.803204, 32.192295>,  <39.492088, 37.580593, 32.251335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.559612, 37.803204, 32.192295>,  <39.672150, 38.174221, 32.093895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559612, 37.803204, 32.192295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708234, 0.373679, 0.598973,
		-0.647496, -0.005708, -0.762047,
		-0.281342, -0.927540, 0.245998,
		39.475208, 37.524940, 32.266094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009090, 38.264587, 32.150604>,  <39.672150, 38.174221, 32.093895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009090, 38.264587, 32.150604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083046, 37.925846, 32.350063>,  <39.127419, 37.722599, 32.469738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083046, 37.925846, 32.350063>,  <39.009090, 38.264587, 32.150604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083046, 37.925846, 32.350063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680479, 0.255767, 0.686681,
		-0.709058, -0.466280, -0.528979,
		0.184891, -0.846856, 0.498648,
		39.138512, 37.671791, 32.499657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450047, 37.798721, 32.108849>,  <39.009090, 38.264587, 32.150604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450047, 37.798721, 32.108849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629684, 37.715706, 32.456467>,  <38.737465, 37.665897, 32.665039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629684, 37.715706, 32.456467>,  <38.450047, 37.798721, 32.108849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629684, 37.715706, 32.456467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854612, 0.184007, 0.485572,
		-0.260685, -0.960765, -0.094729,
		0.449090, -0.207538, 0.869049,
		38.764412, 37.653446, 32.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915985, 37.771564, 32.591511>,  <38.450047, 37.798721, 32.108849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915985, 37.771564, 32.591511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226643, 37.763439, 32.843357>,  <38.413036, 37.758564, 32.994465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226643, 37.763439, 32.843357>,  <37.915985, 37.771564, 32.591511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226643, 37.763439, 32.843357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598988, 0.285623, 0.748086,
		-0.195029, -0.958127, 0.209659,
		0.776644, -0.020315, 0.629612,
		38.459637, 37.757343, 33.032242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692993, 37.334118, 33.146400>,  <37.915985, 37.771564, 32.591511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692993, 37.334118, 33.146400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968914, 37.583817, 33.293095>,  <38.134464, 37.733635, 33.381111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.968914, 37.583817, 33.293095>,  <37.692993, 37.334118, 33.146400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968914, 37.583817, 33.293095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693553, 0.424385, 0.582135,
		0.207756, -0.655909, 0.725687,
		0.689798, 0.624244, 0.366738,
		38.175854, 37.771091, 33.403114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727196, 37.239552, 33.853531>,  <37.692993, 37.334118, 33.146400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727196, 37.239552, 33.853531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908676, 37.592041, 33.800461>,  <38.017567, 37.803535, 33.768620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.908676, 37.592041, 33.800461>,  <37.727196, 37.239552, 33.853531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908676, 37.592041, 33.800461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588708, 0.408149, 0.697737,
		0.669010, -0.238462, 0.703961,
		0.453705, 0.881221, -0.132671,
		38.044788, 37.856407, 33.760658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651649, 37.421753, 34.614792>,  <37.727196, 37.239552, 33.853531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651649, 37.421753, 34.614792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764832, 37.740700, 34.401573>,  <37.832741, 37.932068, 34.273640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764832, 37.740700, 34.401573>,  <37.651649, 37.421753, 34.614792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764832, 37.740700, 34.401573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243245, 0.597250, 0.764281,
		0.927775, -0.086599, 0.362952,
		0.282959, 0.797367, -0.533049,
		37.849720, 37.979908, 34.241657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239822, 37.842922, 34.988106>,  <37.651649, 37.421753, 34.614792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239822, 37.842922, 34.988106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019566, 38.067635, 34.741138>,  <37.887413, 38.202461, 34.592960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019566, 38.067635, 34.741138>,  <38.239822, 37.842922, 34.988106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019566, 38.067635, 34.741138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322595, 0.538968, 0.778104,
		0.769890, 0.627629, -0.115549,
		-0.550638, 0.561779, -0.617416,
		37.854374, 38.236168, 34.555912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.810684, 35.576111, 27.954620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483963, 35.777489, 27.841930>,  <41.287930, 35.898315, 27.774317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483963, 35.777489, 27.841930>,  <41.810684, 35.576111, 27.954620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483963, 35.777489, 27.841930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142826, 0.296663, 0.944241,
		0.558953, 0.811500, -0.170410,
		-0.816806, 0.503448, -0.281724,
		41.238922, 35.928524, 27.757414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850147, 36.331799, 28.127903>,  <41.810684, 35.576111, 27.954620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850147, 36.331799, 28.127903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457729, 36.261692, 28.094851>,  <41.222279, 36.219627, 28.075020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457729, 36.261692, 28.094851>,  <41.850147, 36.331799, 28.127903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457729, 36.261692, 28.094851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130720, 0.283861, 0.949913,
		-0.143035, 0.942711, -0.301392,
		-0.981047, -0.175269, -0.082629,
		41.163414, 36.209110, 28.070063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568611, 36.861286, 28.546124>,  <41.850147, 36.331799, 28.127903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568611, 36.861286, 28.546124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239990, 36.644073, 28.476648>,  <41.042816, 36.513744, 28.434963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239990, 36.644073, 28.476648>,  <41.568611, 36.861286, 28.546124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239990, 36.644073, 28.476648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390596, 0.314171, 0.865293,
		-0.415313, 0.778726, -0.470214,
		-0.821554, -0.543031, -0.173688,
		40.993523, 36.481163, 28.424541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038147, 37.266186, 28.670279>,  <41.568611, 36.861286, 28.546124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038147, 37.266186, 28.670279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891754, 36.895599, 28.705435>,  <40.803921, 36.673248, 28.726528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891754, 36.895599, 28.705435>,  <41.038147, 37.266186, 28.670279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891754, 36.895599, 28.705435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273083, 0.197195, 0.941562,
		-0.889655, 0.320590, -0.325170,
		-0.365977, -0.926464, 0.087888,
		40.781960, 36.617661, 28.731802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390484, 37.355663, 28.862061>,  <41.038147, 37.266186, 28.670279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390484, 37.355663, 28.862061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483921, 36.986431, 28.984276>,  <40.539986, 36.764893, 29.057606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483921, 36.986431, 28.984276>,  <40.390484, 37.355663, 28.862061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483921, 36.986431, 28.984276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423521, 0.186265, 0.886530,
		-0.875251, -0.336491, -0.347434,
		0.233595, -0.923082, 0.305540,
		40.554001, 36.709507, 29.075937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795410, 37.088657, 29.290623>,  <40.390484, 37.355663, 28.862061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795410, 37.088657, 29.290623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086243, 36.834095, 29.393642>,  <40.260742, 36.681358, 29.455454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086243, 36.834095, 29.393642>,  <39.795410, 37.088657, 29.290623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086243, 36.834095, 29.393642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280978, 0.066442, 0.957412,
		-0.626418, -0.768484, -0.130508,
		0.727084, -0.636410, 0.257547,
		40.304367, 36.643173, 29.470907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496811, 36.544487, 29.660919>,  <39.795410, 37.088657, 29.290623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496811, 36.544487, 29.660919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887665, 36.551758, 29.745649>,  <40.122177, 36.556122, 29.796488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887665, 36.551758, 29.745649>,  <39.496811, 36.544487, 29.660919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887665, 36.551758, 29.745649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210511, -0.056707, 0.975946,
		0.029756, -0.998225, -0.051583,
		0.977138, 0.018181, 0.211824,
		40.180805, 36.557209, 29.809196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501369, 35.923737, 30.031965>,  <39.496811, 36.544487, 29.660919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501369, 35.923737, 30.031965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820312, 36.149349, 30.117838>,  <40.011677, 36.284718, 30.169361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820312, 36.149349, 30.117838>,  <39.501369, 35.923737, 30.031965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820312, 36.149349, 30.117838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152144, -0.156372, 0.975910,
		0.584014, -0.810812, -0.038871,
		0.797358, 0.564031, 0.214683,
		40.059521, 36.318558, 30.182243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882488, 35.566933, 30.537518>,  <39.501369, 35.923737, 30.031965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882488, 35.566933, 30.537518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004307, 35.946297, 30.572790>,  <40.077400, 36.173916, 30.593954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004307, 35.946297, 30.572790>,  <39.882488, 35.566933, 30.537518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004307, 35.946297, 30.572790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112132, -0.056239, 0.992101,
		0.945873, -0.312031, 0.089219,
		0.304549, 0.948406, 0.088184,
		40.095673, 36.230820, 30.599245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591187, 35.478741, 30.787907>,  <39.882488, 35.566933, 30.537518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591187, 35.478741, 30.787907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898773, 35.311539, 30.981388>,  <41.083324, 35.211220, 31.097477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898773, 35.311539, 30.981388>,  <40.591187, 35.478741, 30.787907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898773, 35.311539, 30.981388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337907, -0.376538, -0.862576,
		0.542692, 0.826737, -0.148298,
		0.768964, -0.418002, 0.483704,
		41.129463, 35.186138, 31.126499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121975, 35.656540, 30.413691>,  <40.591187, 35.478741, 30.787907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121975, 35.656540, 30.413691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207508, 35.312542, 30.599026>,  <41.258827, 35.106144, 30.710226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207508, 35.312542, 30.599026>,  <41.121975, 35.656540, 30.413691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207508, 35.312542, 30.599026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373604, -0.366251, -0.852221,
		0.902604, 0.355340, 0.242980,
		0.213837, -0.859996, 0.463336,
		41.271660, 35.054543, 30.738026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868595, 35.450890, 30.256945>,  <41.121975, 35.656540, 30.413691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868595, 35.450890, 30.256945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698494, 35.113655, 30.388624>,  <41.596432, 34.911316, 30.467632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698494, 35.113655, 30.388624>,  <41.868595, 35.450890, 30.256945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698494, 35.113655, 30.388624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429350, -0.508110, -0.746648,
		0.796755, -0.176171, 0.578053,
		-0.425252, -0.843082, 0.329200,
		41.570919, 34.860729, 30.487385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367599, 34.982079, 30.191656>,  <41.868595, 35.450890, 30.256945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367599, 34.982079, 30.191656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044178, 34.747269, 30.207842>,  <41.850124, 34.606380, 30.217554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044178, 34.747269, 30.207842>,  <42.367599, 34.982079, 30.191656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044178, 34.747269, 30.207842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291072, -0.458786, -0.839520,
		0.511386, -0.667020, 0.541820,
		-0.808555, -0.587027, 0.040466,
		41.801613, 34.571159, 30.219982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669384, 34.395405, 30.166498>,  <42.367599, 34.982079, 30.191656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669384, 34.395405, 30.166498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283379, 34.357849, 30.068571>,  <42.051777, 34.335316, 30.009815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283379, 34.357849, 30.068571>,  <42.669384, 34.395405, 30.166498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283379, 34.357849, 30.068571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250763, -0.603258, -0.757098,
		-0.076603, -0.792000, 0.605696,
		-0.965013, -0.093890, -0.244816,
		41.993874, 34.329681, 29.995127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448856, 33.634541, 30.291281>,  <42.669384, 34.395405, 30.166498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448856, 33.634541, 30.291281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229118, 33.816772, 30.011091>,  <42.097275, 33.926113, 29.842978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229118, 33.816772, 30.011091>,  <42.448856, 33.634541, 30.291281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229118, 33.816772, 30.011091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311087, -0.666528, -0.677469,
		-0.775528, -0.590074, 0.224431,
		-0.549347, 0.455579, -0.700476,
		42.064316, 33.953445, 29.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194443, 33.055122, 29.951143>,  <42.448856, 33.634541, 30.291281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194443, 33.055122, 29.951143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120850, 33.361301, 29.704491>,  <42.076694, 33.545010, 29.556499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120850, 33.361301, 29.704491>,  <42.194443, 33.055122, 29.951143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120850, 33.361301, 29.704491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157398, -0.596303, -0.787177,
		-0.970246, -0.241882, -0.010772,
		-0.183981, 0.765451, -0.616633,
		42.065655, 33.590939, 29.519501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793598, 32.801689, 29.438255>,  <42.194443, 33.055122, 29.951143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793598, 32.801689, 29.438255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919266, 33.145451, 29.276901>,  <41.994667, 33.351707, 29.180090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919266, 33.145451, 29.276901>,  <41.793598, 32.801689, 29.438255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919266, 33.145451, 29.276901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217676, -0.478788, -0.850518,
		-0.924074, 0.179403, -0.337494,
		0.314173, 0.859405, -0.403383,
		42.013519, 33.403271, 29.155886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623581, 32.755962, 28.826754>,  <41.793598, 32.801689, 29.438255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623581, 32.755962, 28.826754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910206, 33.033401, 28.797207>,  <42.082180, 33.199863, 28.779478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910206, 33.033401, 28.797207>,  <41.623581, 32.755962, 28.826754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910206, 33.033401, 28.797207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359344, -0.457844, -0.813173,
		-0.597835, 0.556147, -0.577316,
		0.716565, 0.693598, -0.073867,
		42.125175, 33.241482, 28.775047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525486, 33.035656, 28.172323>,  <41.623581, 32.755962, 28.826754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525486, 33.035656, 28.172323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907829, 33.096325, 28.272987>,  <42.137234, 33.132729, 28.333385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907829, 33.096325, 28.272987>,  <41.525486, 33.035656, 28.172323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907829, 33.096325, 28.272987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293728, -0.516205, -0.804523,
		0.007881, 0.842928, -0.537969,
		0.955857, 0.151676, 0.251660,
		42.194588, 33.141827, 28.348486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816105, 33.170860, 27.550781>,  <41.525486, 33.035656, 28.172323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816105, 33.170860, 27.550781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148006, 33.085987, 27.757269>,  <42.347149, 33.035065, 27.881161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148006, 33.085987, 27.757269>,  <41.816105, 33.170860, 27.550781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148006, 33.085987, 27.757269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314790, -0.585846, -0.746787,
		0.460879, 0.782153, -0.419318,
		0.829758, -0.212182, 0.516218,
		42.396935, 33.022331, 27.912134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395191, 33.282879, 27.149336>,  <41.816105, 33.170860, 27.550781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395191, 33.282879, 27.149336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539913, 33.042889, 27.434750>,  <42.626747, 32.898895, 27.605997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539913, 33.042889, 27.434750>,  <42.395191, 33.282879, 27.149336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539913, 33.042889, 27.434750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501694, -0.519794, -0.691460,
		0.785747, 0.608151, 0.112936,
		0.361809, -0.599971, 0.713533,
		42.648457, 32.862896, 27.648809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181095, 33.277264, 27.132574>,  <42.395191, 33.282879, 27.149336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181095, 33.277264, 27.132574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053593, 32.948376, 27.321188>,  <42.977093, 32.751041, 27.434357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053593, 32.948376, 27.321188>,  <43.181095, 33.277264, 27.132574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053593, 32.948376, 27.321188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653524, -0.550978, -0.518970,
		0.686514, 0.142733, 0.712970,
		-0.318757, -0.822223, 0.471533,
		42.957966, 32.701710, 27.462648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699078, 32.888172, 27.007767>,  <43.181095, 33.277264, 27.132574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699078, 32.888172, 27.007767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411507, 32.629009, 27.108450>,  <43.238964, 32.473511, 27.168859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411507, 32.629009, 27.108450>,  <43.699078, 32.888172, 27.007767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411507, 32.629009, 27.108450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355032, -0.653614, -0.668387,
		0.597575, -0.391156, 0.699929,
		-0.718927, -0.647908, 0.251710,
		43.195827, 32.434635, 27.183964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.196579, 33.741982, 26.331709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588375, 33.777740, 26.403944>,  <35.823452, 33.799198, 26.447285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.588375, 33.777740, 26.403944>,  <35.196579, 33.741982, 26.331709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588375, 33.777740, 26.403944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191808, 0.138980, 0.971542,
		0.061756, -0.986252, 0.153276,
		0.979488, 0.089398, 0.180588,
		35.882221, 33.804562, 26.458120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354553, 33.391827, 27.000587>,  <35.196579, 33.741982, 26.331709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354553, 33.391827, 27.000587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686863, 33.611626, 26.965113>,  <35.886250, 33.743504, 26.943829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686863, 33.611626, 26.965113>,  <35.354553, 33.391827, 27.000587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686863, 33.611626, 26.965113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001835, 0.156628, 0.987656,
		0.556606, -0.820683, 0.129114,
		0.830775, 0.549498, -0.088686,
		35.936096, 33.776474, 26.938507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838646, 33.102726, 27.493071>,  <35.354553, 33.391827, 27.000587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838646, 33.102726, 27.493071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984974, 33.468472, 27.423653>,  <36.072773, 33.687920, 27.382002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.984974, 33.468472, 27.423653>,  <35.838646, 33.102726, 27.493071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984974, 33.468472, 27.423653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114129, 0.140989, 0.983410,
		0.923660, -0.379560, -0.052778,
		0.365822, 0.914361, -0.173545,
		36.094719, 33.742779, 27.371590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519421, 33.132038, 27.865770>,  <35.838646, 33.102726, 27.493071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519421, 33.132038, 27.865770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398449, 33.509621, 27.812878>,  <36.325867, 33.736172, 27.781141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398449, 33.509621, 27.812878>,  <36.519421, 33.132038, 27.865770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398449, 33.509621, 27.812878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079421, 0.163202, 0.983391,
		0.949858, 0.286900, -0.124327,
		-0.302426, 0.943956, -0.132233,
		36.307720, 33.792809, 27.773209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051254, 33.527321, 28.145752>,  <36.519421, 33.132038, 27.865770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051254, 33.527321, 28.145752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711838, 33.738949, 28.148968>,  <36.508186, 33.865925, 28.150898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.711838, 33.738949, 28.148968>,  <37.051254, 33.527321, 28.145752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711838, 33.738949, 28.148968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087405, 0.125163, 0.988279,
		0.521862, 0.839297, -0.152450,
		-0.848540, 0.529070, 0.008041,
		36.457275, 33.897671, 28.151381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259937, 34.087093, 28.633863>,  <37.051254, 33.527321, 28.145752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259937, 34.087093, 28.633863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860878, 34.089390, 28.606565>,  <36.621441, 34.090767, 28.590187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860878, 34.089390, 28.606565>,  <37.259937, 34.087093, 28.633863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860878, 34.089390, 28.606565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065907, 0.190411, 0.979490,
		0.018617, 0.981688, -0.189586,
		-0.997652, 0.005740, -0.068245,
		36.561581, 34.091110, 28.586092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028240, 34.856243, 28.897211>,  <37.259937, 34.087093, 28.633863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028240, 34.856243, 28.897211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745373, 34.576515, 28.938889>,  <36.575653, 34.408676, 28.963894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.745373, 34.576515, 28.938889>,  <37.028240, 34.856243, 28.897211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745373, 34.576515, 28.938889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037322, 0.184080, 0.982202,
		-0.706056, 0.690698, -0.156277,
		-0.707172, -0.699322, 0.104192,
		36.533222, 34.366718, 28.970146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624847, 35.176609, 29.319317>,  <37.028240, 34.856243, 28.897211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624847, 35.176609, 29.319317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471264, 34.807281, 29.316189>,  <36.379116, 34.585686, 29.314312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471264, 34.807281, 29.316189>,  <36.624847, 35.176609, 29.319317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471264, 34.807281, 29.316189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150019, 0.054022, 0.987206,
		-0.911083, 0.380218, -0.159258,
		-0.383956, -0.923318, -0.007822,
		36.356075, 34.530285, 29.313843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039497, 35.280659, 29.686420>,  <36.624847, 35.176609, 29.319317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039497, 35.280659, 29.686420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129906, 34.891022, 29.689594>,  <36.184151, 34.657242, 29.691498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.129906, 34.891022, 29.689594>,  <36.039497, 35.280659, 29.686420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129906, 34.891022, 29.689594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225819, -0.044472, 0.973154,
		-0.947586, -0.221745, -0.230020,
		0.226021, -0.974090, 0.007933,
		36.197712, 34.598793, 29.691975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495869, 34.938553, 30.055115>,  <36.039497, 35.280659, 29.686420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495869, 34.938553, 30.055115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816532, 34.700130, 30.073296>,  <36.008930, 34.557076, 30.084204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.816532, 34.700130, 30.073296>,  <35.495869, 34.938553, 30.055115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816532, 34.700130, 30.073296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098163, -0.056255, 0.993579,
		-0.589674, -0.800968, -0.103608,
		0.801654, -0.596058, 0.045453,
		36.057030, 34.521313, 30.086931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309658, 34.276989, 30.489273>,  <35.495869, 34.938553, 30.055115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309658, 34.276989, 30.489273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707787, 34.315346, 30.493845>,  <35.946663, 34.338360, 30.496588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.707787, 34.315346, 30.493845>,  <35.309658, 34.276989, 30.489273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707787, 34.315346, 30.493845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006356, -0.053041, 0.998572,
		0.096366, -0.993977, -0.052183,
		0.995326, 0.095897, 0.011429,
		36.006386, 34.344112, 30.497274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503685, 33.838329, 30.998854>,  <35.309658, 34.276989, 30.489273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503685, 33.838329, 30.998854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.794704, 34.107666, 30.946281>,  <35.969318, 34.269268, 30.914738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.794704, 34.107666, 30.946281>,  <35.503685, 33.838329, 30.998854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794704, 34.107666, 30.946281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150748, 0.029990, 0.988117,
		0.669285, -0.738721, -0.079686,
		0.727553, 0.673344, -0.131432,
		36.012970, 34.309669, 30.906853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044392, 33.702686, 31.477024>,  <35.503685, 33.838329, 30.998854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044392, 33.702686, 31.477024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130478, 34.083157, 31.388523>,  <36.182129, 34.311440, 31.335423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.130478, 34.083157, 31.388523>,  <36.044392, 33.702686, 31.477024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130478, 34.083157, 31.388523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011425, 0.228999, 0.973360,
		0.976499, -0.206959, 0.060152,
		0.215220, 0.951172, -0.221252,
		36.195045, 34.368507, 31.322147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642410, 33.928841, 32.000683>,  <36.044392, 33.702686, 31.477024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642410, 33.928841, 32.000683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491169, 34.272766, 31.863422>,  <36.400425, 34.479122, 31.781067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.491169, 34.272766, 31.863422>,  <36.642410, 33.928841, 32.000683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491169, 34.272766, 31.863422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093312, 0.404175, 0.909910,
		0.921049, 0.312020, -0.233051,
		-0.378103, 0.859818, -0.343149,
		36.377739, 34.530712, 31.760477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369839, 33.694889, 32.115974>,  <36.642410, 33.928841, 32.000683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369839, 33.694889, 32.115974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567966, 33.402706, 32.304054>,  <37.686844, 33.227394, 32.416901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567966, 33.402706, 32.304054>,  <37.369839, 33.694889, 32.115974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567966, 33.402706, 32.304054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196011, -0.433330, -0.879662,
		0.846311, 0.527875, -0.071457,
		0.495316, -0.730461, 0.470201,
		37.716560, 33.183567, 32.445114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075710, 33.595638, 31.748426>,  <37.369839, 33.694889, 32.115974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075710, 33.595638, 31.748426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038975, 33.248821, 31.944304>,  <38.016933, 33.040730, 32.061829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038975, 33.248821, 31.944304>,  <38.075710, 33.595638, 31.748426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038975, 33.248821, 31.944304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238296, -0.496619, -0.834617,
		0.966841, 0.040046, 0.252220,
		-0.091834, -0.867045, 0.489694,
		38.011425, 32.988708, 32.091213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536613, 33.157871, 31.422934>,  <38.075710, 33.595638, 31.748426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536613, 33.157871, 31.422934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317719, 32.903030, 31.640057>,  <38.186382, 32.750126, 31.770330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317719, 32.903030, 31.640057>,  <38.536613, 33.157871, 31.422934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317719, 32.903030, 31.640057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186919, -0.725179, -0.662704,
		0.815840, -0.261194, 0.515929,
		-0.547235, -0.637098, 0.542808,
		38.153549, 32.711903, 31.802898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882664, 32.542797, 31.253155>,  <38.536613, 33.157871, 31.422934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882664, 32.542797, 31.253155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515007, 32.461010, 31.387833>,  <38.294411, 32.411938, 31.468639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.515007, 32.461010, 31.387833>,  <38.882664, 32.542797, 31.253155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515007, 32.461010, 31.387833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022175, -0.826522, -0.562467,
		0.393294, -0.524455, 0.755160,
		-0.919145, -0.204469, 0.336696,
		38.239262, 32.399670, 31.488842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868843, 31.882481, 31.424143>,  <38.882664, 32.542797, 31.253155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868843, 31.882481, 31.424143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484322, 31.958450, 31.344326>,  <38.253609, 32.004032, 31.296436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484322, 31.958450, 31.344326>,  <38.868843, 31.882481, 31.424143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484322, 31.958450, 31.344326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024144, -0.663481, -0.747804,
		-0.274418, -0.723687, 0.633223,
		-0.961308, 0.189922, -0.199544,
		38.195930, 32.015427, 31.284462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560604, 31.188778, 31.194712>,  <38.868843, 31.882481, 31.424143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560604, 31.188778, 31.194712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293457, 31.465712, 31.085442>,  <38.133167, 31.631872, 31.019880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.293457, 31.465712, 31.085442>,  <38.560604, 31.188778, 31.194712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293457, 31.465712, 31.085442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059752, -0.415722, -0.907527,
		-0.741876, -0.589787, 0.319017,
		-0.667870, 0.692334, -0.273173,
		38.093098, 31.673412, 31.003490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062023, 30.805956, 30.935041>,  <38.560604, 31.188778, 31.194712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062023, 30.805956, 30.935041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000492, 31.172676, 30.787630>,  <37.963573, 31.392708, 30.699183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000492, 31.172676, 30.787630>,  <38.062023, 30.805956, 30.935041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000492, 31.172676, 30.787630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098725, -0.385362, -0.917469,
		-0.983154, -0.104747, 0.149790,
		-0.153826, 0.916801, -0.368529,
		37.954346, 31.447716, 30.677071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486115, 30.742472, 30.488050>,  <38.062023, 30.805956, 30.935041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486115, 30.742472, 30.488050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726868, 31.048712, 30.397188>,  <37.871319, 31.232456, 30.342670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726868, 31.048712, 30.397188>,  <37.486115, 30.742472, 30.488050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726868, 31.048712, 30.397188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130447, -0.186372, -0.973781,
		-0.787860, 0.615732, -0.012304,
		0.601881, 0.765598, -0.227155,
		37.907433, 31.278391, 30.329042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135090, 31.113955, 29.988649>,  <37.486115, 30.742472, 30.488050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135090, 31.113955, 29.988649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503124, 31.261421, 29.935688>,  <37.723946, 31.349901, 29.903912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503124, 31.261421, 29.935688>,  <37.135090, 31.113955, 29.988649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503124, 31.261421, 29.935688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114726, -0.069569, -0.990958,
		-0.374544, 0.926955, -0.021714,
		0.920084, 0.368666, -0.132402,
		37.779148, 31.372021, 29.895967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106022, 31.624979, 29.346006>,  <37.135090, 31.113955, 29.988649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106022, 31.624979, 29.346006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495029, 31.547523, 29.397718>,  <37.728436, 31.501049, 29.428745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.495029, 31.547523, 29.397718>,  <37.106022, 31.624979, 29.346006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495029, 31.547523, 29.397718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109033, -0.111845, -0.987726,
		0.205723, 0.974676, -0.087658,
		0.972517, -0.193640, 0.129280,
		37.786785, 31.489431, 29.436502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444324, 32.059723, 28.888561>,  <37.106022, 31.624979, 29.346006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444324, 32.059723, 28.888561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668972, 31.736134, 28.958008>,  <37.803761, 31.541979, 28.999676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.668972, 31.736134, 28.958008>,  <37.444324, 32.059723, 28.888561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668972, 31.736134, 28.958008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280145, -0.011517, -0.959889,
		0.778525, 0.587730, 0.220162,
		0.561620, -0.808975, 0.173616,
		37.837460, 31.493441, 29.010092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985180, 32.104012, 28.315842>,  <37.444324, 32.059723, 28.888561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985180, 32.104012, 28.315842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005730, 31.729538, 28.454935>,  <38.018059, 31.504854, 28.538391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.005730, 31.729538, 28.454935>,  <37.985180, 32.104012, 28.315842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005730, 31.729538, 28.454935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319149, -0.314546, -0.893982,
		0.946311, 0.156904, 0.282624,
		0.051371, -0.936185, 0.347734,
		38.021141, 31.448683, 28.559256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682400, 31.883272, 28.005096>,  <37.985180, 32.104012, 28.315842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682400, 31.883272, 28.005096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484032, 31.542192, 28.070778>,  <38.365009, 31.337543, 28.110188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.484032, 31.542192, 28.070778>,  <38.682400, 31.883272, 28.005096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484032, 31.542192, 28.070778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067259, -0.226245, -0.971746,
		0.865758, -0.470866, 0.169551,
		-0.495922, -0.852700, 0.164204,
		38.335255, 31.286383, 28.120039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093079, 31.372915, 27.758841>,  <38.682400, 31.883272, 28.005096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093079, 31.372915, 27.758841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728191, 31.213886, 27.798424>,  <38.509258, 31.118469, 27.822174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728191, 31.213886, 27.798424>,  <39.093079, 31.372915, 27.758841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728191, 31.213886, 27.798424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047341, -0.137629, -0.989352,
		0.406960, -0.907190, 0.106726,
		-0.912218, -0.397574, 0.098957,
		38.454525, 31.094614, 27.828112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498383, 30.752499, 27.919720>,  <39.093079, 31.372915, 27.758841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498383, 30.752499, 27.919720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.821079, 30.531271, 27.836498>,  <40.014698, 30.398535, 27.786566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.821079, 30.531271, 27.836498>,  <39.498383, 30.752499, 27.919720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821079, 30.531271, 27.836498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178535, -0.107503, 0.978043,
		-0.563293, -0.826170, 0.012016,
		0.806738, -0.553070, -0.208056,
		40.063099, 30.365351, 27.774082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466232, 30.130219, 28.312761>,  <39.498383, 30.752499, 27.919720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466232, 30.130219, 28.312761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855453, 30.205135, 28.258955>,  <40.088985, 30.250086, 28.226671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.855453, 30.205135, 28.258955>,  <39.466232, 30.130219, 28.312761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855453, 30.205135, 28.258955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157690, -0.114845, 0.980788,
		0.168248, -0.975567, -0.141284,
		0.973050, 0.187295, -0.134515,
		40.147369, 30.261324, 28.218601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743458, 29.971327, 28.901384>,  <39.466232, 30.130219, 28.312761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743458, 29.971327, 28.901384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053654, 30.156706, 28.729883>,  <40.239773, 30.267933, 28.626982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.053654, 30.156706, 28.729883>,  <39.743458, 29.971327, 28.901384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053654, 30.156706, 28.729883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439338, 0.091592, 0.893641,
		0.453425, -0.881379, -0.132581,
		0.775493, 0.463446, -0.428753,
		40.286301, 30.295740, 28.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292427, 29.600636, 29.271479>,  <39.743458, 29.971327, 28.901384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292427, 29.600636, 29.271479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.414158, 29.947237, 29.113211>,  <40.487198, 30.155197, 29.018250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.414158, 29.947237, 29.113211>,  <40.292427, 29.600636, 29.271479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414158, 29.947237, 29.113211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511484, 0.201766, 0.835269,
		0.803597, -0.456577, -0.381798,
		0.304331, 0.866503, -0.395670,
		40.505459, 30.207188, 28.994509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066727, 29.665808, 29.478937>,  <40.292427, 29.600636, 29.271479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066727, 29.665808, 29.478937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949154, 30.029018, 29.359541>,  <40.878609, 30.246944, 29.287903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949154, 30.029018, 29.359541>,  <41.066727, 29.665808, 29.478937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949154, 30.029018, 29.359541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241590, 0.372722, 0.895942,
		0.924791, 0.191232, -0.328924,
		-0.293931, 0.908024, -0.298490,
		40.860973, 30.301426, 29.269995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461037, 30.089800, 29.815821>,  <41.066727, 29.665808, 29.478937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461037, 30.089800, 29.815821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200909, 30.372540, 29.704506>,  <41.044830, 30.542183, 29.637718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200909, 30.372540, 29.704506>,  <41.461037, 30.089800, 29.815821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200909, 30.372540, 29.704506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238560, 0.537825, 0.808600,
		0.721228, 0.459463, -0.518386,
		-0.650323, 0.706851, -0.278285,
		41.005814, 30.584595, 29.621021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784092, 30.824821, 29.791126>,  <41.461037, 30.089800, 29.815821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784092, 30.824821, 29.791126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.392982, 30.854120, 29.869703>,  <41.158318, 30.871698, 29.916849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.392982, 30.854120, 29.869703>,  <41.784092, 30.824821, 29.791126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392982, 30.854120, 29.869703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208337, 0.234554, 0.949516,
		0.023471, 0.969340, -0.244601,
		-0.977775, 0.073246, 0.196444,
		41.099651, 30.876095, 29.928637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753601, 31.339401, 30.273298>,  <41.784092, 30.824821, 29.791126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753601, 31.339401, 30.273298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.384495, 31.194994, 30.327208>,  <41.163029, 31.108349, 30.359552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.384495, 31.194994, 30.327208>,  <41.753601, 31.339401, 30.273298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384495, 31.194994, 30.327208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020855, 0.396004, 0.918012,
		-0.384791, 0.844301, -0.372949,
		-0.922768, -0.361020, 0.134771,
		41.107666, 31.086687, 30.367640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453686, 31.840559, 30.592043>,  <41.753601, 31.339401, 30.273298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453686, 31.840559, 30.592043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.246895, 31.506033, 30.665052>,  <41.122822, 31.305317, 30.708858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.246895, 31.506033, 30.665052>,  <41.453686, 31.840559, 30.592043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246895, 31.506033, 30.665052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071388, 0.170362, 0.982792,
		-0.853017, 0.521111, -0.028371,
		-0.516977, -0.836313, 0.182523,
		41.091801, 31.255138, 30.719809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775089, 32.049572, 31.011303>,  <41.453686, 31.840559, 30.592043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775089, 32.049572, 31.011303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794754, 31.656958, 31.085249>,  <40.806553, 31.421389, 31.129616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.794754, 31.656958, 31.085249>,  <40.775089, 32.049572, 31.011303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794754, 31.656958, 31.085249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336382, 0.158005, 0.928376,
		-0.940441, -0.107826, -0.322403,
		0.049162, -0.981534, 0.184865,
		40.809502, 31.362497, 31.140709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255802, 31.969362, 31.436241>,  <40.775089, 32.049572, 31.011303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255802, 31.969362, 31.436241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.458389, 31.631760, 31.506830>,  <40.579941, 31.429197, 31.549183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.458389, 31.631760, 31.506830>,  <40.255802, 31.969362, 31.436241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458389, 31.631760, 31.506830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398270, -0.047460, 0.916040,
		-0.764769, -0.534228, -0.360179,
		0.506468, -0.844007, 0.176471,
		40.610329, 31.378557, 31.559771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853828, 31.533718, 31.790207>,  <40.255802, 31.969362, 31.436241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853828, 31.533718, 31.790207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220711, 31.401930, 31.879818>,  <40.440838, 31.322857, 31.933584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220711, 31.401930, 31.879818>,  <39.853828, 31.533718, 31.790207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220711, 31.401930, 31.879818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231430, 0.017136, 0.972701,
		-0.324315, -0.944010, -0.060532,
		0.917203, -0.329470, 0.224030,
		40.495872, 31.303089, 31.947027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753632, 30.984009, 32.333359>,  <39.853828, 31.533718, 31.790207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753632, 30.984009, 32.333359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127159, 31.126699, 32.344124>,  <40.351276, 31.212315, 32.350582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127159, 31.126699, 32.344124>,  <39.753632, 30.984009, 32.333359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127159, 31.126699, 32.344124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100166, 0.188517, 0.976948,
		0.343432, -0.914990, 0.211773,
		0.933821, 0.356728, 0.026908,
		40.407307, 31.233717, 32.352196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821037, 30.793446, 33.002316>,  <39.753632, 30.984009, 32.333359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821037, 30.793446, 33.002316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123775, 31.033112, 32.897865>,  <40.305420, 31.176910, 32.835194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.123775, 31.033112, 32.897865>,  <39.821037, 30.793446, 33.002316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123775, 31.033112, 32.897865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066639, 0.326706, 0.942774,
		0.650188, -0.730936, 0.207338,
		0.756846, 0.599163, -0.261129,
		40.350830, 31.212860, 32.819527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.011101, 31.998251, 26.868664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.612606, 32.026375, 26.888966>,  <43.373508, 32.043251, 26.901148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.612606, 32.026375, 26.888966>,  <44.011101, 31.998251, 26.868664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612606, 32.026375, 26.888966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080596, -0.534703, -0.841188,
		-0.032006, -0.842110, 0.538356,
		-0.996233, 0.070312, 0.050757,
		43.313736, 32.047470, 26.904192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832130, 31.384701, 26.706865>,  <44.011101, 31.998251, 26.868664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832130, 31.384701, 26.706865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.486729, 31.569901, 26.626877>,  <43.279488, 31.681021, 26.578884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.486729, 31.569901, 26.626877>,  <43.832130, 31.384701, 26.706865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486729, 31.569901, 26.626877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057353, -0.484075, -0.873145,
		-0.501079, -0.742490, 0.444553,
		-0.863499, 0.463011, -0.199976,
		43.227676, 31.708801, 26.566887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333794, 30.812607, 26.468458>,  <43.832130, 31.384701, 26.706865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333794, 30.812607, 26.468458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.163460, 31.151443, 26.341274>,  <43.061260, 31.354746, 26.264963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.163460, 31.151443, 26.341274>,  <43.333794, 30.812607, 26.468458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163460, 31.151443, 26.341274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086518, -0.387926, -0.917621,
		-0.900656, -0.363244, 0.238480,
		-0.425833, 0.847093, -0.317961,
		43.035709, 31.405571, 26.245886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684807, 30.611248, 26.049931>,  <43.333794, 30.812607, 26.468458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684807, 30.611248, 26.049931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.773197, 30.984922, 25.937881>,  <42.826233, 31.209127, 25.870651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.773197, 30.984922, 25.937881>,  <42.684807, 30.611248, 26.049931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773197, 30.984922, 25.937881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221591, -0.231618, -0.947233,
		-0.949771, 0.271393, 0.155823,
		0.220981, 0.934184, -0.280122,
		42.839493, 31.265177, 25.853846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196640, 30.839733, 25.542021>,  <42.684807, 30.611248, 26.049931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196640, 30.839733, 25.542021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.530411, 31.054380, 25.491789>,  <42.730675, 31.183168, 25.461649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.530411, 31.054380, 25.491789>,  <42.196640, 30.839733, 25.542021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530411, 31.054380, 25.491789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052388, -0.149602, -0.987357,
		-0.548619, 0.830459, -0.096720,
		0.834429, 0.536616, -0.125581,
		42.780739, 31.215364, 25.454115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002846, 31.312773, 25.026361>,  <42.196640, 30.839733, 25.542021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002846, 31.312773, 25.026361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401909, 31.285810, 25.031017>,  <42.641346, 31.269634, 25.033812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.401909, 31.285810, 25.031017>,  <42.002846, 31.312773, 25.026361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401909, 31.285810, 25.031017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013472, 0.026774, -0.999551,
		0.067063, 0.997366, 0.027619,
		0.997658, -0.067405, 0.011641,
		42.701206, 31.265589, 25.034510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236351, 31.791367, 24.479959>,  <42.002846, 31.312773, 25.026361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236351, 31.791367, 24.479959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.566570, 31.573418, 24.538733>,  <42.764702, 31.442648, 24.573996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.566570, 31.573418, 24.538733>,  <42.236351, 31.791367, 24.479959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566570, 31.573418, 24.538733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019329, -0.232911, -0.972306,
		0.564006, 0.805522, -0.181747,
		0.825544, -0.544874, 0.146933,
		42.814232, 31.409956, 24.582813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655666, 32.070755, 24.084768>,  <42.236351, 31.791367, 24.479959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655666, 32.070755, 24.084768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.778023, 31.695576, 24.150105>,  <42.851437, 31.470469, 24.189306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.778023, 31.695576, 24.150105>,  <42.655666, 32.070755, 24.084768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778023, 31.695576, 24.150105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027456, -0.162804, -0.986276,
		0.951670, 0.306181, -0.024048,
		0.305894, -0.937949, 0.163343,
		42.869789, 31.414190, 24.199108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325138, 32.023884, 23.683249>,  <42.655666, 32.070755, 24.084768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325138, 32.023884, 23.683249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.186680, 31.652826, 23.739332>,  <43.103603, 31.430191, 23.772982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.186680, 31.652826, 23.739332>,  <43.325138, 32.023884, 23.683249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186680, 31.652826, 23.739332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140663, -0.199072, -0.969837,
		0.927575, -0.315985, 0.199394,
		-0.346148, -0.927644, 0.140207,
		43.082836, 31.374533, 23.781395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922729, 31.539965, 23.347429>,  <43.325138, 32.023884, 23.683249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922729, 31.539965, 23.347429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.596264, 31.315823, 23.403824>,  <43.400383, 31.181337, 23.437660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.596264, 31.315823, 23.403824>,  <43.922729, 31.539965, 23.347429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596264, 31.315823, 23.403824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115419, -0.397182, -0.910453,
		0.566175, -0.726807, 0.388841,
		-0.816165, -0.560355, 0.140987,
		43.351414, 31.147717, 23.446119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102081, 30.949188, 23.102571>,  <43.922729, 31.539965, 23.347429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102081, 30.949188, 23.102571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.703793, 30.914728, 23.115990>,  <43.464821, 30.894053, 23.124041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.703793, 30.914728, 23.115990>,  <44.102081, 30.949188, 23.102571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703793, 30.914728, 23.115990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002880, -0.333770, -0.942650,
		0.092405, -0.938710, 0.332092,
		-0.995717, -0.086149, 0.033545,
		43.405079, 30.888884, 23.126053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897320, 30.275076, 22.832579>,  <44.102081, 30.949188, 23.102571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897320, 30.275076, 22.832579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571781, 30.501431, 22.779766>,  <43.376457, 30.637243, 22.748079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.571781, 30.501431, 22.779766>,  <43.897320, 30.275076, 22.832579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571781, 30.501431, 22.779766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037579, -0.277996, -0.959847,
		-0.579870, -0.776202, 0.247510,
		-0.813842, 0.565887, -0.132032,
		43.327629, 30.671196, 22.740156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.537640, 29.807629, 22.478792>,  <43.897320, 30.275076, 22.832579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.537640, 29.807629, 22.478792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.388718, 30.171139, 22.403404>,  <43.299366, 30.389244, 22.358171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.388718, 30.171139, 22.403404>,  <43.537640, 29.807629, 22.478792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.388718, 30.171139, 22.403404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068710, -0.229501, -0.970880,
		-0.925564, -0.348512, 0.147885,
		-0.372303, 0.908773, -0.188472,
		43.277027, 30.443771, 22.346863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874786, 29.685608, 22.306938>,  <43.537640, 29.807629, 22.478792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874786, 29.685608, 22.306938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.073605, 30.003376, 22.167313>,  <43.192894, 30.194036, 22.083538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.073605, 30.003376, 22.167313>,  <42.874786, 29.685608, 22.306938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073605, 30.003376, 22.167313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035741, -0.420676, -0.906507,
		-0.866989, 0.438097, -0.237488,
		0.497043, 0.794420, -0.349063,
		43.222717, 30.241701, 22.062593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215458, 29.397089, 22.695906>,  <42.874786, 29.685608, 22.306938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215458, 29.397089, 22.695906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841305, 29.280619, 22.615635>,  <41.616814, 29.210735, 22.567472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.841305, 29.280619, 22.615635>,  <42.215458, 29.397089, 22.695906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841305, 29.280619, 22.615635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308033, 0.392142, 0.866799,
		-0.173699, 0.872606, -0.456495,
		-0.935385, -0.291178, -0.200676,
		41.560688, 29.193266, 22.555431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700150, 29.938339, 22.553005>,  <42.215458, 29.397089, 22.695906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700150, 29.938339, 22.553005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.521534, 29.626583, 22.728802>,  <41.414364, 29.439529, 22.834280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.521534, 29.626583, 22.728802>,  <41.700150, 29.938339, 22.553005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521534, 29.626583, 22.728802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263159, 0.583855, 0.768024,
		-0.855191, 0.227296, -0.465817,
		-0.446538, -0.779390, 0.439493,
		41.387573, 29.392765, 22.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187801, 30.207052, 23.100210>,  <41.700150, 29.938339, 22.553005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187801, 30.207052, 23.100210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195454, 29.822081, 23.208551>,  <41.200047, 29.591097, 23.273556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195454, 29.822081, 23.208551>,  <41.187801, 30.207052, 23.100210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195454, 29.822081, 23.208551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455363, 0.232786, 0.859334,
		-0.890100, -0.139779, -0.433801,
		0.019134, -0.962431, 0.270853,
		41.201195, 29.533352, 23.289806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541443, 30.010921, 23.331142>,  <41.187801, 30.207052, 23.100210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541443, 30.010921, 23.331142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.772587, 29.741869, 23.516027>,  <40.911274, 29.580437, 23.626959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.772587, 29.741869, 23.516027>,  <40.541443, 30.010921, 23.331142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772587, 29.741869, 23.516027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387454, 0.272355, 0.880740,
		-0.718301, -0.688031, -0.103232,
		0.577861, -0.672634, 0.462213,
		40.945946, 29.540079, 23.654692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036037, 29.704939, 23.699131>,  <40.541443, 30.010921, 23.331142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036037, 29.704939, 23.699131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383717, 29.589291, 23.859583>,  <40.592323, 29.519901, 23.955854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383717, 29.589291, 23.859583>,  <40.036037, 29.704939, 23.699131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383717, 29.589291, 23.859583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418721, 0.001100, 0.908114,
		-0.262997, -0.957291, -0.120106,
		0.869198, -0.289122, 0.401128,
		40.644478, 29.502554, 23.979921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884472, 29.043423, 23.997400>,  <40.036037, 29.704939, 23.699131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884472, 29.043423, 23.997400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213051, 29.191877, 24.170599>,  <40.410198, 29.280951, 24.274517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.213051, 29.191877, 24.170599>,  <39.884472, 29.043423, 23.997400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213051, 29.191877, 24.170599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335894, -0.298720, 0.893276,
		0.460874, -0.879217, -0.120718,
		0.821444, 0.371139, 0.432995,
		40.459484, 29.303219, 24.300497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202396, 28.642647, 24.485479>,  <39.884472, 29.043423, 23.997400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202396, 28.642647, 24.485479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381203, 28.980608, 24.602999>,  <40.488487, 29.183384, 24.673510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.381203, 28.980608, 24.602999>,  <40.202396, 28.642647, 24.485479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381203, 28.980608, 24.602999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227106, -0.210484, 0.950852,
		0.865216, -0.491770, 0.097792,
		0.447017, 0.844901, 0.293798,
		40.515308, 29.234077, 24.691137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511669, 28.583954, 25.156408>,  <40.202396, 28.642647, 24.485479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511669, 28.583954, 25.156408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.492916, 28.982370, 25.126202>,  <40.481663, 29.221420, 25.108078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.492916, 28.982370, 25.126202>,  <40.511669, 28.583954, 25.156408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492916, 28.982370, 25.126202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065252, 0.072386, 0.995240,
		0.996767, 0.051591, 0.061600,
		-0.046887, 0.996042, -0.075519,
		40.478851, 29.281183, 25.103546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782909, 28.775097, 25.827120>,  <40.511669, 28.583954, 25.156408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782909, 28.775097, 25.827120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.636192, 29.112795, 25.670805>,  <40.548161, 29.315413, 25.577017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.636192, 29.112795, 25.670805>,  <40.782909, 28.775097, 25.827120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636192, 29.112795, 25.670805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065464, 0.395601, 0.916086,
		0.927996, 0.361598, -0.089837,
		-0.366794, 0.844243, -0.390788,
		40.526154, 29.366068, 25.553568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185249, 29.475719, 25.880566>,  <40.782909, 28.775097, 25.827120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185249, 29.475719, 25.880566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796108, 29.568001, 25.873360>,  <40.562622, 29.623369, 25.869036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.796108, 29.568001, 25.873360>,  <41.185249, 29.475719, 25.880566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796108, 29.568001, 25.873360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057700, 0.317226, 0.946593,
		0.224098, 0.919860, -0.321927,
		-0.972857, 0.230705, -0.018014,
		40.504250, 29.637213, 25.867956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180691, 29.982225, 26.250002>,  <41.185249, 29.475719, 25.880566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180691, 29.982225, 26.250002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.784718, 29.932011, 26.223829>,  <40.547134, 29.901882, 26.208126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.784718, 29.932011, 26.223829>,  <41.180691, 29.982225, 26.250002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784718, 29.932011, 26.223829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105018, 0.341265, 0.934082,
		-0.094930, 0.931547, -0.351012,
		-0.989929, -0.125535, -0.065433,
		40.487740, 29.894350, 26.204199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982014, 30.618349, 26.627373>,  <41.180691, 29.982225, 26.250002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982014, 30.618349, 26.627373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661892, 30.380802, 26.594309>,  <40.469818, 30.238274, 26.574471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661892, 30.380802, 26.594309>,  <40.982014, 30.618349, 26.627373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661892, 30.380802, 26.594309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327429, 0.317375, 0.889980,
		-0.502297, 0.739320, -0.448446,
		-0.800305, -0.593868, -0.082659,
		40.421799, 30.202642, 26.569511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361366, 31.024973, 26.845900>,  <40.982014, 30.618349, 26.627373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361366, 31.024973, 26.845900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294750, 30.635281, 26.906742>,  <40.254780, 30.401464, 26.943247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294750, 30.635281, 26.906742>,  <40.361366, 31.024973, 26.845900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294750, 30.635281, 26.906742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209347, 0.185680, 0.960051,
		-0.963554, 0.128048, -0.234876,
		-0.166544, -0.974231, 0.152106,
		40.244785, 30.343012, 26.952374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908627, 31.026848, 27.349373>,  <40.361366, 31.024973, 26.845900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908627, 31.026848, 27.349373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.050545, 30.653404, 27.369339>,  <40.135696, 30.429338, 27.381319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.050545, 30.653404, 27.369339>,  <39.908627, 31.026848, 27.349373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050545, 30.653404, 27.369339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059785, 0.030625, 0.997741,
		-0.933029, -0.356983, -0.044950,
		0.354800, -0.933609, 0.049916,
		40.156986, 30.373322, 27.384314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176460, 30.594044, 27.300964>,  <39.908627, 31.026848, 27.349373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176460, 30.594044, 27.300964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806362, 30.728054, 27.372168>,  <38.584305, 30.808460, 27.414890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806362, 30.728054, 27.372168>,  <39.176460, 30.594044, 27.300964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806362, 30.728054, 27.372168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193873, -0.014224, -0.980923,
		-0.326104, -0.942101, 0.078113,
		-0.925240, 0.335027, 0.178009,
		38.528790, 30.828562, 27.425570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799484, 30.336710, 26.757978>,  <39.176460, 30.594044, 27.300964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799484, 30.336710, 26.757978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541386, 30.611206, 26.892281>,  <38.386528, 30.775904, 26.972862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.541386, 30.611206, 26.892281>,  <38.799484, 30.336710, 26.757978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541386, 30.611206, 26.892281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276258, 0.200163, -0.940009,
		-0.712280, -0.699289, 0.060426,
		-0.645243, 0.686243, 0.335757,
		38.347813, 30.817080, 26.993008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149044, 30.108747, 26.506605>,  <38.799484, 30.336710, 26.757978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149044, 30.108747, 26.506605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134609, 30.503874, 26.567163>,  <38.125950, 30.740950, 26.603498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134609, 30.503874, 26.567163>,  <38.149044, 30.108747, 26.506605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134609, 30.503874, 26.567163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353498, 0.129085, -0.926486,
		-0.934739, -0.086948, 0.344533,
		-0.036082, 0.987814, 0.151397,
		38.123783, 30.800219, 26.612583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464645, 30.339231, 26.237272>,  <38.149044, 30.108747, 26.506605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464645, 30.339231, 26.237272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656403, 30.690090, 26.248552>,  <37.771458, 30.900606, 26.255320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.656403, 30.690090, 26.248552>,  <37.464645, 30.339231, 26.237272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656403, 30.690090, 26.248552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045224, 0.056779, -0.997362,
		-0.876434, 0.476853, 0.066887,
		0.479393, 0.877147, 0.028198,
		37.800220, 30.953234, 26.257011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055862, 30.737125, 25.896793>,  <37.464645, 30.339231, 26.237272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055862, 30.737125, 25.896793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408348, 30.923895, 25.867289>,  <37.619839, 31.035957, 25.849586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408348, 30.923895, 25.867289>,  <37.055862, 30.737125, 25.896793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408348, 30.923895, 25.867289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175560, 0.178382, -0.968173,
		-0.438907, 0.866118, 0.239167,
		0.881215, 0.466926, -0.073762,
		37.672714, 31.063972, 25.845160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896160, 31.276047, 25.426855>,  <37.055862, 30.737125, 25.896793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896160, 31.276047, 25.426855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285793, 31.185572, 25.426964>,  <37.519573, 31.131287, 25.427029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285793, 31.185572, 25.426964>,  <36.896160, 31.276047, 25.426855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285793, 31.185572, 25.426964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033760, 0.144193, -0.988974,
		0.223655, 0.963352, 0.148092,
		0.974084, -0.226188, 0.000274,
		37.578018, 31.117716, 25.427046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259171, 31.733608, 24.867416>,  <36.896160, 31.276047, 25.426855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259171, 31.733608, 24.867416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502323, 31.427139, 24.950806>,  <37.648216, 31.243259, 25.000839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.502323, 31.427139, 24.950806>,  <37.259171, 31.733608, 24.867416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502323, 31.427139, 24.950806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195229, -0.110277, -0.974538,
		0.769652, 0.633106, 0.082544,
		0.607883, -0.766170, 0.208475,
		37.684689, 31.197289, 25.013348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366226, 32.301533, 24.429787>,  <37.259171, 31.733608, 24.867416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366226, 32.301533, 24.429787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227581, 32.635899, 24.259560>,  <37.144394, 32.836517, 24.157423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.227581, 32.635899, 24.259560>,  <37.366226, 32.301533, 24.429787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227581, 32.635899, 24.259560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530916, 0.199195, 0.823680,
		0.773296, 0.511440, 0.374756,
		-0.346614, 0.835913, -0.425569,
		37.123596, 32.886673, 24.131889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664803, 32.827221, 24.825293>,  <37.366226, 32.301533, 24.429787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664803, 32.827221, 24.825293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338203, 32.978722, 24.650993>,  <37.142242, 33.069622, 24.546413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338203, 32.978722, 24.650993>,  <37.664803, 32.827221, 24.825293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338203, 32.978722, 24.650993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354218, 0.267370, 0.896127,
		0.455915, 0.886037, -0.084148,
		-0.816500, 0.378751, -0.435748,
		37.093254, 33.092346, 24.520269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564392, 33.474857, 25.053822>,  <37.664803, 32.827221, 24.825293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564392, 33.474857, 25.053822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193268, 33.398724, 24.925484>,  <36.970592, 33.353043, 24.848480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193268, 33.398724, 24.925484>,  <37.564392, 33.474857, 25.053822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193268, 33.398724, 24.925484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372303, 0.417862, 0.828723,
		-0.023668, 0.888348, -0.458560,
		-0.927809, -0.190338, -0.320844,
		36.914925, 33.341621, 24.829231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241589, 34.085190, 25.006746>,  <37.564392, 33.474857, 25.053822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241589, 34.085190, 25.006746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.941875, 33.821472, 25.031740>,  <36.762047, 33.663242, 25.046736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.941875, 33.821472, 25.031740>,  <37.241589, 34.085190, 25.006746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941875, 33.821472, 25.031740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400359, 0.526119, 0.750275,
		-0.527524, 0.537154, -0.658167,
		-0.749287, -0.659291, 0.062486,
		36.717091, 33.623684, 25.050486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622269, 34.509418, 25.080648>,  <37.241589, 34.085190, 25.006746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622269, 34.509418, 25.080648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544292, 34.138268, 25.207790>,  <36.497505, 33.915577, 25.284075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.544292, 34.138268, 25.207790>,  <36.622269, 34.509418, 25.080648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544292, 34.138268, 25.207790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382718, 0.370346, 0.846387,
		-0.903064, 0.043349, -0.427314,
		-0.194943, -0.927882, 0.317855,
		36.485809, 33.859901, 25.303146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999420, 34.509411, 25.411201>,  <36.622269, 34.509418, 25.080648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999420, 34.509411, 25.411201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127216, 34.169743, 25.579407>,  <36.203892, 33.965942, 25.680330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.127216, 34.169743, 25.579407>,  <35.999420, 34.509411, 25.411201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127216, 34.169743, 25.579407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464596, 0.246400, 0.850551,
		-0.825880, -0.467110, -0.315800,
		0.319488, -0.849173, 0.420514,
		36.223064, 33.914989, 25.705561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474678, 34.362236, 25.839521>,  <35.999420, 34.509411, 25.411201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474678, 34.362236, 25.839521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788136, 34.141953, 25.954500>,  <35.976208, 34.009781, 26.023487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788136, 34.141953, 25.954500>,  <35.474678, 34.362236, 25.839521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788136, 34.141953, 25.954500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241252, 0.156612, 0.957742,
		-0.572454, -0.819874, -0.010132,
		0.783642, -0.550708, 0.287449,
		36.023228, 33.976742, 26.040735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.326660, 33.318966, 21.295086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.156033, 33.037628, 21.522537>,  <42.053654, 32.868824, 21.659008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.156033, 33.037628, 21.522537>,  <42.326660, 33.318966, 21.295086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156033, 33.037628, 21.522537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395323, 0.710454, 0.582215,
		-0.813483, 0.023566, -0.581111,
		-0.426573, -0.703349, 0.568626,
		42.028061, 32.826622, 21.693125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693939, 33.605053, 21.438370>,  <42.326660, 33.318966, 21.295086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693939, 33.605053, 21.438370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836472, 33.348640, 21.710285>,  <41.921989, 33.194794, 21.873434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836472, 33.348640, 21.710285>,  <41.693939, 33.605053, 21.438370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836472, 33.348640, 21.710285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500066, 0.483740, 0.718282,
		-0.789280, -0.595884, -0.148186,
		0.356329, -0.641029, 0.679788,
		41.943371, 33.156330, 21.914221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097923, 33.537739, 21.861109>,  <41.693939, 33.605053, 21.438370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097923, 33.537739, 21.861109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390919, 33.395977, 22.093611>,  <41.566715, 33.310921, 22.233112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.390919, 33.395977, 22.093611>,  <41.097923, 33.537739, 21.861109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390919, 33.395977, 22.093611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423409, 0.431423, 0.796618,
		-0.533090, -0.829623, 0.165956,
		0.732489, -0.354401, 0.581256,
		41.610664, 33.289658, 22.267988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842899, 33.454166, 22.427235>,  <41.097923, 33.537739, 21.861109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842899, 33.454166, 22.427235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224697, 33.460220, 22.546370>,  <41.453777, 33.463852, 22.617851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.224697, 33.460220, 22.546370>,  <40.842899, 33.454166, 22.427235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224697, 33.460220, 22.546370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290898, 0.267238, 0.918674,
		-0.065687, -0.963511, 0.259482,
		0.954496, 0.015137, 0.297838,
		41.511047, 33.464764, 22.635721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840683, 33.119457, 23.129622>,  <40.842899, 33.454166, 22.427235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840683, 33.119457, 23.129622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176826, 33.332508, 23.089415>,  <41.378513, 33.460339, 23.065290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.176826, 33.332508, 23.089415>,  <40.840683, 33.119457, 23.129622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176826, 33.332508, 23.089415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277936, 0.582642, 0.763727,
		0.465350, -0.613867, 0.637665,
		0.840358, 0.532631, -0.100517,
		41.428932, 33.492298, 23.059259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066330, 33.147552, 23.780853>,  <40.840683, 33.119457, 23.129622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066330, 33.147552, 23.780853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254467, 33.455162, 23.607704>,  <41.367348, 33.639729, 23.503815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254467, 33.455162, 23.607704>,  <41.066330, 33.147552, 23.780853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254467, 33.455162, 23.607704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240355, 0.583606, 0.775650,
		0.849121, -0.260779, 0.459334,
		0.470344, 0.769024, -0.432873,
		41.395569, 33.685871, 23.477842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716320, 33.384296, 24.178463>,  <41.066330, 33.147552, 23.780853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716320, 33.384296, 24.178463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.583424, 33.694729, 23.964054>,  <41.503685, 33.880989, 23.835409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.583424, 33.694729, 23.964054>,  <41.716320, 33.384296, 24.178463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583424, 33.694729, 23.964054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064452, 0.548298, 0.833796,
		0.940990, 0.311568, -0.132147,
		-0.332240, 0.776077, -0.536024,
		41.483753, 33.927551, 23.803247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112930, 33.839558, 24.535122>,  <41.716320, 33.384296, 24.178463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112930, 33.839558, 24.535122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823547, 34.040928, 24.346157>,  <41.649918, 34.161751, 24.232779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.823547, 34.040928, 24.346157>,  <42.112930, 33.839558, 24.535122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823547, 34.040928, 24.346157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180735, 0.522308, 0.833384,
		0.666294, 0.688297, -0.286879,
		-0.723455, 0.503430, -0.472410,
		41.606510, 34.191956, 24.204433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168156, 34.454540, 24.778221>,  <42.112930, 33.839558, 24.535122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168156, 34.454540, 24.778221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800480, 34.480167, 24.622797>,  <41.579872, 34.495544, 24.529543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.800480, 34.480167, 24.622797>,  <42.168156, 34.454540, 24.778221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800480, 34.480167, 24.622797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287341, 0.565600, 0.773002,
		0.269295, 0.822188, -0.501486,
		-0.919193, 0.064068, -0.388562,
		41.524723, 34.499390, 24.506229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022419, 35.183250, 24.648502>,  <42.168156, 34.454540, 24.778221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022419, 35.183250, 24.648502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.666504, 35.004131, 24.683722>,  <41.452953, 34.896660, 24.704853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.666504, 35.004131, 24.683722>,  <42.022419, 35.183250, 24.648502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666504, 35.004131, 24.683722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254045, 0.646289, 0.719564,
		-0.379120, 0.617893, -0.688822,
		-0.889791, -0.447793, 0.088048,
		41.399567, 34.869793, 24.710136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504654, 35.730431, 24.748356>,  <42.022419, 35.183250, 24.648502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504654, 35.730431, 24.748356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.299488, 35.413029, 24.879366>,  <41.176388, 35.222588, 24.957972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.299488, 35.413029, 24.879366>,  <41.504654, 35.730431, 24.748356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299488, 35.413029, 24.879366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408063, 0.561044, 0.720219,
		-0.755250, 0.235761, -0.611567,
		-0.512915, -0.793503, 0.327523,
		41.145615, 35.174976, 24.977623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833164, 36.025215, 25.013134>,  <41.504654, 35.730431, 24.748356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833164, 36.025215, 25.013134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.895863, 35.658531, 25.160145>,  <40.933479, 35.438522, 25.248352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.895863, 35.658531, 25.160145>,  <40.833164, 36.025215, 25.013134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895863, 35.658531, 25.160145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199837, 0.334992, 0.920786,
		-0.967211, -0.217772, -0.130684,
		0.156743, -0.916709, 0.367526,
		40.942886, 35.383518, 25.270403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171268, 35.962379, 24.556396>,  <40.833164, 36.025215, 25.013134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171268, 35.962379, 24.556396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872116, 36.217339, 24.482220>,  <39.692623, 36.370316, 24.437714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.872116, 36.217339, 24.482220>,  <40.171268, 35.962379, 24.556396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872116, 36.217339, 24.482220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310233, -0.582566, -0.751247,
		-0.586881, -0.504313, 0.633434,
		-0.747881, 0.637405, -0.185442,
		39.647751, 36.408558, 24.426588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618088, 35.523872, 24.416021>,  <40.171268, 35.962379, 24.556396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618088, 35.523872, 24.416021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537819, 35.886547, 24.267622>,  <39.489658, 36.104153, 24.178581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537819, 35.886547, 24.267622>,  <39.618088, 35.523872, 24.416021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537819, 35.886547, 24.267622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279318, -0.415939, -0.865434,
		-0.938995, -0.070042, 0.336723,
		-0.200673, 0.906691, -0.371000,
		39.477615, 36.158554, 24.156322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890610, 35.547920, 24.195721>,  <39.618088, 35.523872, 24.416021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890610, 35.547920, 24.195721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082840, 35.829632, 23.986710>,  <39.198177, 35.998657, 23.861303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082840, 35.829632, 23.986710>,  <38.890610, 35.547920, 24.195721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082840, 35.829632, 23.986710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307762, -0.422498, -0.852513,
		-0.821174, 0.570514, 0.013706,
		0.480579, 0.704279, -0.522527,
		39.227013, 36.040916, 23.829952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443111, 35.712715, 23.711731>,  <38.890610, 35.547920, 24.195721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443111, 35.712715, 23.711731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.790413, 35.840816, 23.560167>,  <38.998795, 35.917675, 23.469229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.790413, 35.840816, 23.560167>,  <38.443111, 35.712715, 23.711731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790413, 35.840816, 23.560167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204937, -0.464020, -0.861792,
		-0.451811, 0.825908, -0.337257,
		0.868256, 0.320251, -0.378908,
		39.050888, 35.936893, 23.446495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252270, 35.725529, 23.060032>,  <38.443111, 35.712715, 23.711731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252270, 35.725529, 23.060032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650749, 35.754063, 23.040045>,  <38.889839, 35.771183, 23.028053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.650749, 35.754063, 23.040045>,  <38.252270, 35.725529, 23.060032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650749, 35.754063, 23.040045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007839, -0.497948, -0.867171,
		-0.086737, 0.864268, -0.495497,
		0.996200, 0.071332, -0.049966,
		38.949608, 35.775463, 23.025055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457058, 36.025780, 22.457808>,  <38.252270, 35.725529, 23.060032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457058, 36.025780, 22.457808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801476, 35.843670, 22.548433>,  <39.008125, 35.734402, 22.602810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.801476, 35.843670, 22.548433>,  <38.457058, 36.025780, 22.457808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801476, 35.843670, 22.548433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195420, -0.115090, -0.973943,
		0.469489, 0.882880, -0.010127,
		0.861041, -0.455277, 0.226566,
		39.059788, 35.707088, 22.616404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880257, 36.321701, 21.970217>,  <38.457058, 36.025780, 22.457808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880257, 36.321701, 21.970217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060726, 35.993687, 22.111067>,  <39.169006, 35.796879, 22.195576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.060726, 35.993687, 22.111067>,  <38.880257, 36.321701, 21.970217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060726, 35.993687, 22.111067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074980, -0.358338, -0.930576,
		0.889282, 0.446251, -0.100185,
		0.451171, -0.820033, 0.352124,
		39.196079, 35.747677, 22.216703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045551, 36.064938, 21.432405>,  <38.880257, 36.321701, 21.970217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045551, 36.064938, 21.432405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.154411, 35.766872, 21.675934>,  <39.219727, 35.588032, 21.822052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.154411, 35.766872, 21.675934>,  <39.045551, 36.064938, 21.432405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154411, 35.766872, 21.675934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185041, -0.580367, -0.793053,
		0.944296, 0.328485, -0.020060,
		0.272148, -0.745165, 0.608822,
		39.236057, 35.543324, 21.858580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729866, 35.630367, 21.118616>,  <39.045551, 36.064938, 21.432405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729866, 35.630367, 21.118616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.507236, 35.385906, 21.343729>,  <39.373661, 35.239231, 21.478796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.507236, 35.385906, 21.343729>,  <39.729866, 35.630367, 21.118616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507236, 35.385906, 21.343729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108198, -0.618309, -0.778452,
		0.823725, -0.494155, 0.278007,
		-0.556571, -0.611150, 0.562782,
		39.340263, 35.202560, 21.512564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063217, 34.952110, 21.103996>,  <39.729866, 35.630367, 21.118616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063217, 34.952110, 21.103996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669712, 34.899773, 21.153149>,  <39.433609, 34.868370, 21.182640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.669712, 34.899773, 21.153149>,  <40.063217, 34.952110, 21.103996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669712, 34.899773, 21.153149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004675, -0.703029, -0.711145,
		0.179437, -0.699021, 0.692223,
		-0.983758, -0.130842, 0.122881,
		39.374584, 34.860519, 21.190014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994804, 34.338699, 20.874834>,  <40.063217, 34.952110, 21.103996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994804, 34.338699, 20.874834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.606117, 34.432652, 20.884682>,  <39.372906, 34.489021, 20.890591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.606117, 34.432652, 20.884682>,  <39.994804, 34.338699, 20.874834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606117, 34.432652, 20.884682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135398, -0.468663, -0.872939,
		-0.193496, -0.851579, 0.487208,
		-0.971713, 0.234877, 0.024618,
		39.314602, 34.503117, 20.892067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654499, 33.702255, 20.833347>,  <39.994804, 34.338699, 20.874834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654499, 33.702255, 20.833347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.420128, 34.007858, 20.725283>,  <39.279507, 34.191219, 20.660444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.420128, 34.007858, 20.725283>,  <39.654499, 33.702255, 20.833347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420128, 34.007858, 20.725283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238651, -0.481281, -0.843453,
		-0.774428, -0.429724, 0.464325,
		-0.585923, 0.764006, -0.270164,
		39.244350, 34.237061, 20.644234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034557, 33.354462, 20.591137>,  <39.654499, 33.702255, 20.833347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034557, 33.354462, 20.591137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.035889, 33.712383, 20.412560>,  <39.036690, 33.927135, 20.305412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.035889, 33.712383, 20.412560>,  <39.034557, 33.354462, 20.591137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035889, 33.712383, 20.412560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202876, -0.436558, -0.876503,
		-0.979199, 0.093494, 0.180080,
		0.003333, 0.894805, -0.446445,
		39.036888, 33.980824, 20.278625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918072, 33.276527, 21.407070>,  <39.034557, 33.354462, 20.591137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918072, 33.276527, 21.407070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.631203, 33.062832, 21.228071>,  <38.459084, 32.934616, 21.120672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.631203, 33.062832, 21.228071>,  <38.918072, 33.276527, 21.407070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631203, 33.062832, 21.228071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522458, -0.012789, 0.852569,
		-0.461199, 0.845236, -0.269945,
		-0.717170, -0.534239, -0.447499,
		38.416050, 32.902561, 21.093821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238022, 33.631470, 21.451984>,  <38.918072, 33.276527, 21.407070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238022, 33.631470, 21.451984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116913, 33.257607, 21.377434>,  <38.044247, 33.033287, 21.332705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.116913, 33.257607, 21.377434>,  <38.238022, 33.631470, 21.451984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116913, 33.257607, 21.377434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374772, -0.063040, 0.924972,
		-0.876285, 0.349904, -0.331198,
		-0.302772, -0.934662, -0.186375,
		38.026081, 32.977207, 21.321522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473515, 33.678864, 21.598686>,  <38.238022, 33.631470, 21.451984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473515, 33.678864, 21.598686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555542, 33.287518, 21.609600>,  <37.604759, 33.052708, 21.616148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555542, 33.287518, 21.609600>,  <37.473515, 33.678864, 21.598686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555542, 33.287518, 21.609600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561762, -0.094830, 0.821846,
		-0.801480, -0.183862, -0.569056,
		0.205070, -0.978367, 0.027282,
		37.617062, 32.994007, 21.617785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884567, 33.293892, 21.634863>,  <37.473515, 33.678864, 21.598686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884567, 33.293892, 21.634863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162853, 33.061470, 21.803793>,  <37.329826, 32.922016, 21.905151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162853, 33.061470, 21.803793>,  <36.884567, 33.293892, 21.634863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162853, 33.061470, 21.803793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543773, -0.041861, 0.838187,
		-0.469352, -0.812789, -0.345084,
		0.695715, -0.581052, 0.422325,
		37.371567, 32.887154, 21.930490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520016, 32.917988, 22.157644>,  <36.884567, 33.293892, 21.634863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520016, 32.917988, 22.157644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.896549, 32.845459, 22.271498>,  <37.122467, 32.801941, 22.339809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.896549, 32.845459, 22.271498>,  <36.520016, 32.917988, 22.157644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896549, 32.845459, 22.271498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293373, -0.022770, 0.955727,
		-0.166818, -0.983159, -0.074630,
		0.941331, -0.181327, 0.284634,
		37.178947, 32.791061, 22.356888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494362, 32.385906, 22.622849>,  <36.520016, 32.917988, 22.157644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494362, 32.385906, 22.622849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.841164, 32.570377, 22.698341>,  <37.049244, 32.681061, 22.743637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.841164, 32.570377, 22.698341>,  <36.494362, 32.385906, 22.622849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841164, 32.570377, 22.698341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209535, -0.006226, 0.977781,
		0.452109, -0.887285, 0.091236,
		0.867003, 0.461181, 0.188732,
		37.101265, 32.708733, 22.754961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564358, 32.134029, 23.242687>,  <36.494362, 32.385906, 22.622849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564358, 32.134029, 23.242687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842236, 32.421749, 23.241972>,  <37.008965, 32.594383, 23.241543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.842236, 32.421749, 23.241972>,  <36.564358, 32.134029, 23.242687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842236, 32.421749, 23.241972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141768, 0.139357, 0.980041,
		0.705195, -0.680577, 0.198785,
		0.694695, 0.719301, -0.001790,
		37.050644, 32.637539, 23.241436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185345, 32.015095, 23.767559>,  <36.564358, 32.134029, 23.242687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185345, 32.015095, 23.767559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139786, 32.404137, 23.686506>,  <37.112450, 32.637562, 23.637875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.139786, 32.404137, 23.686506>,  <37.185345, 32.015095, 23.767559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139786, 32.404137, 23.686506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201875, 0.177047, 0.963276,
		0.972767, 0.150617, 0.176181,
		-0.113893, 0.972609, -0.202631,
		37.105618, 32.695919, 23.625717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756218, 31.716080, 24.282732>,  <37.185345, 32.015095, 23.767559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756218, 31.716080, 24.282732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.844402, 31.364418, 24.451723>,  <37.897312, 31.153421, 24.553118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.844402, 31.364418, 24.451723>,  <37.756218, 31.716080, 24.282732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844402, 31.364418, 24.451723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004227, -0.433990, -0.900908,
		0.975386, 0.196833, -0.099396,
		0.220465, -0.879153, 0.422476,
		37.910542, 31.100672, 24.578466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479450, 31.543392, 24.291721>,  <37.756218, 31.716080, 24.282732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479450, 31.543392, 24.291721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.255543, 31.217821, 24.229523>,  <38.121197, 31.022478, 24.192204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.255543, 31.217821, 24.229523>,  <38.479450, 31.543392, 24.291721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255543, 31.217821, 24.229523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347469, -0.060199, -0.935757,
		0.752277, -0.577840, 0.316512,
		-0.559772, -0.813927, -0.155495,
		38.087612, 30.973642, 24.182875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946079, 31.188114, 23.963932>,  <38.479450, 31.543392, 24.291721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946079, 31.188114, 23.963932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603798, 30.983887, 23.930258>,  <38.398430, 30.861351, 23.910053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.603798, 30.983887, 23.930258>,  <38.946079, 31.188114, 23.963932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603798, 30.983887, 23.930258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345093, -0.441840, -0.828063,
		0.385587, -0.737630, 0.554279,
		-0.855706, -0.510568, -0.084183,
		38.347084, 30.830717, 23.905003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134975, 30.458576, 23.814280>,  <38.946079, 31.188114, 23.963932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134975, 30.458576, 23.814280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.752480, 30.499514, 23.704634>,  <38.522984, 30.524076, 23.638847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.752480, 30.499514, 23.704634>,  <39.134975, 30.458576, 23.814280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752480, 30.499514, 23.704634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180414, -0.531316, -0.827740,
		-0.230353, -0.840969, 0.489600,
		-0.956236, 0.102342, -0.274112,
		38.465607, 30.530216, 23.622400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977890, 29.802668, 23.683355>,  <39.134975, 30.458576, 23.814280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977890, 29.802668, 23.683355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689808, 30.005245, 23.493696>,  <38.516956, 30.126793, 23.379900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.689808, 30.005245, 23.493696>,  <38.977890, 29.802668, 23.683355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689808, 30.005245, 23.493696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258486, -0.438347, -0.860835,
		-0.643807, -0.742539, 0.184792,
		-0.720207, 0.506445, -0.474147,
		38.473747, 30.157179, 23.351452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562908, 29.346210, 23.222265>,  <38.977890, 29.802668, 23.683355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562908, 29.346210, 23.222265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509327, 29.705811, 23.055483>,  <38.477177, 29.921572, 22.955414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509327, 29.705811, 23.055483>,  <38.562908, 29.346210, 23.222265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509327, 29.705811, 23.055483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121453, -0.402682, -0.907247,
		-0.983517, -0.172170, -0.055246,
		-0.133954, 0.899002, -0.416955,
		38.469139, 29.975512, 22.930397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035206, 29.245865, 22.704460>,  <38.562908, 29.346210, 23.222265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035206, 29.245865, 22.704460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.244099, 29.570602, 22.600014>,  <38.369434, 29.765444, 22.537346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.244099, 29.570602, 22.600014>,  <38.035206, 29.245865, 22.704460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244099, 29.570602, 22.600014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401912, -0.504350, -0.764263,
		-0.752154, 0.294181, -0.589679,
		0.522237, 0.811842, -0.261115,
		38.400768, 29.814156, 22.521679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931660, 29.269289, 21.896008>,  <38.035206, 29.245865, 22.704460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931660, 29.269289, 21.896008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263313, 29.468828, 21.996948>,  <38.462307, 29.588552, 22.057512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.263313, 29.468828, 21.996948>,  <37.931660, 29.269289, 21.896008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263313, 29.468828, 21.996948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530455, -0.559520, -0.636832,
		-0.176488, 0.661882, -0.728535,
		0.829138, 0.498848, 0.252350,
		38.512054, 29.618483, 22.072653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143703, 29.460443, 21.315306>,  <37.931660, 29.269289, 21.896008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143703, 29.460443, 21.315306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.454052, 29.460602, 21.567661>,  <38.640263, 29.460697, 21.719074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.454052, 29.460602, 21.567661>,  <38.143703, 29.460443, 21.315306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454052, 29.460602, 21.567661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574491, -0.413721, -0.706254,
		0.260732, 0.910403, -0.321224,
		0.775873, 0.000397, 0.630889,
		38.686813, 29.460720, 21.756927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.998493, 35.198662, 37.345352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354248, 35.118877, 37.180813>,  <38.567699, 35.071007, 37.082088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354248, 35.118877, 37.180813>,  <37.998493, 35.198662, 37.345352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354248, 35.118877, 37.180813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434231, -0.087245, -0.896567,
		0.142943, 0.976014, -0.164208,
		0.889388, -0.199462, -0.411344,
		38.621063, 35.059040, 37.057411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079323, 35.727787, 36.697674>,  <37.998493, 35.198662, 37.345352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079323, 35.727787, 36.697674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343266, 35.431919, 36.644798>,  <38.501629, 35.254398, 36.613071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343266, 35.431919, 36.644798>,  <38.079323, 35.727787, 36.697674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343266, 35.431919, 36.644798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261108, -0.060755, -0.963396,
		0.704568, 0.670217, -0.233224,
		0.659854, -0.739674, -0.132193,
		38.541222, 35.210018, 36.605141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533203, 35.936943, 36.182693>,  <38.079323, 35.727787, 36.697674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533203, 35.936943, 36.182693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542202, 35.537045, 36.182732>,  <38.547600, 35.297104, 36.182755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542202, 35.537045, 36.182732>,  <38.533203, 35.936943, 36.182693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542202, 35.537045, 36.182732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233451, -0.005344, -0.972354,
		0.972108, 0.021852, -0.233512,
		0.022496, -0.999747, 0.000094,
		38.548950, 35.237122, 36.182758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820087, 35.810383, 35.588478>,  <38.533203, 35.936943, 36.182693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820087, 35.810383, 35.588478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.616512, 35.481293, 35.689758>,  <38.494366, 35.283840, 35.750526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.616512, 35.481293, 35.689758>,  <38.820087, 35.810383, 35.588478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616512, 35.481293, 35.689758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028379, -0.277943, -0.960178,
		0.860336, -0.495855, 0.118107,
		-0.508936, -0.822724, 0.253197,
		38.463833, 35.234474, 35.765717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101475, 35.263916, 35.184219>,  <38.820087, 35.810383, 35.588478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101475, 35.263916, 35.184219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762478, 35.085320, 35.299046>,  <38.559078, 34.978161, 35.367943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.762478, 35.085320, 35.299046>,  <39.101475, 35.263916, 35.184219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762478, 35.085320, 35.299046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078228, -0.429842, -0.899509,
		0.525012, -0.784783, 0.329359,
		-0.847492, -0.446488, 0.287065,
		38.508232, 34.951374, 35.385166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146904, 34.521759, 35.129765>,  <39.101475, 35.263916, 35.184219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146904, 34.521759, 35.129765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.754803, 34.597214, 35.106018>,  <38.519543, 34.642487, 35.091770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.754803, 34.597214, 35.106018>,  <39.146904, 34.521759, 35.129765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754803, 34.597214, 35.106018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079719, -0.651663, -0.754308,
		-0.180981, -0.734678, 0.653831,
		-0.980250, 0.188638, -0.059371,
		38.460728, 34.653805, 35.088207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928402, 33.934792, 34.877026>,  <39.146904, 34.521759, 35.129765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928402, 33.934792, 34.877026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592869, 34.143654, 34.815430>,  <38.391548, 34.268970, 34.778473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592869, 34.143654, 34.815430>,  <38.928402, 33.934792, 34.877026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592869, 34.143654, 34.815430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144681, -0.486517, -0.861608,
		-0.524818, -0.700462, 0.483651,
		-0.838828, 0.522162, -0.153989,
		38.341221, 34.300301, 34.769234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508877, 33.418575, 34.720127>,  <38.928402, 33.934792, 34.877026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508877, 33.418575, 34.720127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354805, 33.739868, 34.538376>,  <38.262363, 33.932644, 34.429325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.354805, 33.739868, 34.538376>,  <38.508877, 33.418575, 34.720127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354805, 33.739868, 34.538376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111170, -0.529164, -0.841205,
		-0.916122, -0.273502, 0.293118,
		-0.385179, 0.803232, -0.454373,
		38.239250, 33.980839, 34.402065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913002, 33.186680, 34.528194>,  <38.508877, 33.418575, 34.720127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913002, 33.186680, 34.528194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976070, 33.508400, 34.299023>,  <38.013912, 33.701431, 34.161522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.976070, 33.508400, 34.299023>,  <37.913002, 33.186680, 34.528194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976070, 33.508400, 34.299023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295718, -0.515100, -0.804502,
		-0.942173, 0.296272, 0.156629,
		0.157672, 0.804298, -0.572926,
		38.023373, 33.749691, 34.127144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359070, 33.041607, 33.982117>,  <37.913002, 33.186680, 34.528194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359070, 33.041607, 33.982117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629494, 33.304928, 33.849705>,  <37.791748, 33.462921, 33.770260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629494, 33.304928, 33.849705>,  <37.359070, 33.041607, 33.982117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629494, 33.304928, 33.849705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047241, -0.409600, -0.911041,
		-0.735332, 0.631555, -0.245814,
		0.676058, 0.658305, -0.331028,
		37.832310, 33.502419, 33.750397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038010, 33.333900, 33.371780>,  <37.359070, 33.041607, 33.982117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038010, 33.333900, 33.371780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432552, 33.391037, 33.339054>,  <37.669277, 33.425320, 33.319420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432552, 33.391037, 33.339054>,  <37.038010, 33.333900, 33.371780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432552, 33.391037, 33.339054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009845, -0.444939, -0.895507,
		-0.164318, 0.884096, -0.437463,
		0.986358, 0.142841, -0.081815,
		37.728458, 33.433887, 33.314510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085049, 33.692131, 32.758099>,  <37.038010, 33.333900, 33.371780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085049, 33.692131, 32.758099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419113, 33.489391, 32.843529>,  <37.619553, 33.367748, 32.894787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419113, 33.489391, 32.843529>,  <37.085049, 33.692131, 32.758099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419113, 33.489391, 32.843529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109638, -0.533936, -0.838386,
		0.538974, 0.676768, -0.501491,
		0.835157, -0.506850, 0.213578,
		37.669659, 33.337337, 32.907600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780666, 34.477165, 32.603771>,  <37.085049, 33.692131, 32.758099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780666, 34.477165, 32.603771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541424, 34.671455, 32.348789>,  <36.397881, 34.788029, 32.195801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541424, 34.671455, 32.348789>,  <36.780666, 34.477165, 32.603771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541424, 34.671455, 32.348789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093185, 0.747859, 0.657285,
		0.795982, 0.452526, -0.402035,
		-0.598104, 0.485723, -0.637451,
		36.361992, 34.817173, 32.157555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937038, 35.153538, 32.603485>,  <36.780666, 34.477165, 32.603771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937038, 35.153538, 32.603485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.573204, 35.197914, 32.443314>,  <36.354904, 35.224541, 32.347210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.573204, 35.197914, 32.443314>,  <36.937038, 35.153538, 32.603485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573204, 35.197914, 32.443314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126902, 0.843477, 0.521961,
		0.395656, 0.525584, -0.753138,
		-0.909589, 0.110942, -0.400425,
		36.300327, 35.231197, 32.323185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867901, 35.771198, 32.344109>,  <36.937038, 35.153538, 32.603485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867901, 35.771198, 32.344109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489048, 35.664757, 32.415802>,  <36.261734, 35.600891, 32.458817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489048, 35.664757, 32.415802>,  <36.867901, 35.771198, 32.344109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489048, 35.664757, 32.415802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174456, 0.895992, 0.408366,
		-0.269255, 0.355511, -0.895050,
		-0.947136, -0.266102, 0.179230,
		36.204906, 35.584927, 32.469570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419807, 36.245548, 32.025223>,  <36.867901, 35.771198, 32.344109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419807, 36.245548, 32.025223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181522, 36.082829, 32.302246>,  <36.038551, 35.985199, 32.468460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181522, 36.082829, 32.302246>,  <36.419807, 36.245548, 32.025223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181522, 36.082829, 32.302246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248297, 0.913291, 0.322875,
		-0.763856, 0.020379, -0.645065,
		-0.595712, -0.406797, 0.692563,
		36.002808, 35.960789, 32.510014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838570, 36.644245, 31.969706>,  <36.419807, 36.245548, 32.025223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838570, 36.644245, 31.969706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796940, 36.446129, 32.314693>,  <35.771961, 36.327259, 32.521687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.796940, 36.446129, 32.314693>,  <35.838570, 36.644245, 31.969706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796940, 36.446129, 32.314693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382017, 0.820568, 0.425125,
		-0.918276, -0.285232, -0.274612,
		-0.104078, -0.495288, 0.862471,
		35.765717, 36.297543, 32.573437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133392, 36.771564, 32.231480>,  <35.838570, 36.644245, 31.969706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133392, 36.771564, 32.231480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369968, 36.684517, 32.542049>,  <35.511913, 36.632290, 32.728394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369968, 36.684517, 32.542049>,  <35.133392, 36.771564, 32.231480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369968, 36.684517, 32.542049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334261, 0.810096, 0.481678,
		-0.733803, -0.544414, 0.406384,
		0.591442, -0.217619, 0.776427,
		35.547401, 36.619232, 32.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658932, 36.816612, 32.876320>,  <35.133392, 36.771564, 32.231480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658932, 36.816612, 32.876320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037174, 36.850464, 33.001968>,  <35.264118, 36.870773, 33.077358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037174, 36.850464, 33.001968>,  <34.658932, 36.816612, 32.876320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037174, 36.850464, 33.001968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263436, 0.765745, 0.586716,
		-0.190887, -0.637552, 0.746385,
		0.945602, 0.084628, 0.314125,
		35.320854, 36.875851, 33.096207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625397, 36.883617, 33.591312>,  <34.658932, 36.816612, 32.876320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625397, 36.883617, 33.591312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002121, 37.006538, 33.536812>,  <35.228153, 37.080292, 33.504112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002121, 37.006538, 33.536812>,  <34.625397, 36.883617, 33.591312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002121, 37.006538, 33.536812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153082, 0.752929, 0.640050,
		0.299278, -0.581945, 0.756156,
		0.941806, 0.307306, -0.136250,
		35.284664, 37.098732, 33.495937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876720, 37.055225, 34.229874>,  <34.625397, 36.883617, 33.591312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876720, 37.055225, 34.229874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129486, 37.254700, 33.992554>,  <35.281143, 37.374386, 33.850163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129486, 37.254700, 33.992554>,  <34.876720, 37.055225, 34.229874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129486, 37.254700, 33.992554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189246, 0.841610, 0.505844,
		0.751583, -0.207369, 0.626196,
		0.631910, 0.498689, -0.593295,
		35.319057, 37.404305, 33.814564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359741, 37.589939, 34.647015>,  <34.876720, 37.055225, 34.229874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359741, 37.589939, 34.647015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393124, 37.750320, 34.282101>,  <35.413155, 37.846550, 34.063152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.393124, 37.750320, 34.282101>,  <35.359741, 37.589939, 34.647015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393124, 37.750320, 34.282101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097001, 0.914403, 0.393010,
		0.991779, 0.055694, 0.115206,
		0.083457, 0.400955, -0.912289,
		35.418159, 37.870605, 34.008415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825619, 38.073574, 34.664104>,  <35.359741, 37.589939, 34.647015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825619, 38.073574, 34.664104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630917, 38.195782, 34.336758>,  <35.514095, 38.269108, 34.140350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630917, 38.195782, 34.336758>,  <35.825619, 38.073574, 34.664104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630917, 38.195782, 34.336758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031328, 0.930136, 0.365877,
		0.872978, 0.203730, -0.443175,
		-0.486753, 0.305519, -0.818370,
		35.484890, 38.287437, 34.091248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216797, 38.580574, 34.302067>,  <35.825619, 38.073574, 34.664104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216797, 38.580574, 34.302067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.837837, 38.634922, 34.186150>,  <35.610462, 38.667530, 34.116600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.837837, 38.634922, 34.186150>,  <36.216797, 38.580574, 34.302067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837837, 38.634922, 34.186150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018930, 0.927623, 0.373039,
		0.319502, 0.347930, -0.881399,
		-0.947397, 0.135872, -0.289790,
		35.553619, 38.675682, 34.099213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199677, 39.387211, 34.140095>,  <36.216797, 38.580574, 34.302067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199677, 39.387211, 34.140095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813995, 39.281677, 34.150719>,  <35.582588, 39.218357, 34.157093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813995, 39.281677, 34.150719>,  <36.199677, 39.387211, 34.140095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813995, 39.281677, 34.150719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250240, 0.938475, 0.238001,
		-0.087722, 0.222834, -0.970902,
		-0.964202, -0.263836, 0.026563,
		35.524734, 39.202526, 34.158688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905273, 39.989471, 33.929962>,  <36.199677, 39.387211, 34.140095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905273, 39.989471, 33.929962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618549, 39.773197, 34.106071>,  <35.446514, 39.643433, 34.211735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.618549, 39.773197, 34.106071>,  <35.905273, 39.989471, 33.929962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618549, 39.773197, 34.106071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392412, 0.834761, 0.386248,
		-0.576359, 0.104100, -0.810539,
		-0.716815, -0.540683, 0.440272,
		35.403503, 39.610992, 34.238152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204338, 40.329723, 33.722660>,  <35.905273, 39.989471, 33.929962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204338, 40.329723, 33.722660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220734, 40.130207, 34.068962>,  <35.230572, 40.010498, 34.276741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220734, 40.130207, 34.068962>,  <35.204338, 40.329723, 33.722660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220734, 40.130207, 34.068962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103689, 0.859678, 0.500203,
		-0.993765, -0.110272, -0.016481,
		0.040990, -0.498793, 0.865751,
		35.233032, 39.980568, 34.328686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592400, 40.602684, 33.215385>,  <35.204338, 40.329723, 33.722660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592400, 40.602684, 33.215385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972916, 40.517685, 33.304726>,  <36.201225, 40.466686, 33.358330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972916, 40.517685, 33.304726>,  <35.592400, 40.602684, 33.215385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972916, 40.517685, 33.304726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252661, 0.122276, -0.959797,
		0.176641, 0.969482, 0.170010,
		0.951294, -0.212494, 0.223351,
		36.258305, 40.453938, 33.371731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921677, 41.081890, 32.883949>,  <35.592400, 40.602684, 33.215385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921677, 41.081890, 32.883949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194416, 40.798336, 32.956123>,  <36.358059, 40.628204, 32.999428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194416, 40.798336, 32.956123>,  <35.921677, 41.081890, 32.883949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194416, 40.798336, 32.956123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377945, 0.130216, -0.916625,
		0.626287, 0.693198, 0.356708,
		0.681852, -0.708886, 0.180438,
		36.398972, 40.585670, 33.010254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518547, 41.467735, 32.793503>,  <35.921677, 41.081890, 32.883949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518547, 41.467735, 32.793503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590580, 41.075027, 32.769169>,  <36.633801, 40.839401, 32.754570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590580, 41.075027, 32.769169>,  <36.518547, 41.467735, 32.793503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590580, 41.075027, 32.769169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315713, 0.116257, -0.941706,
		0.931610, 0.150378, 0.330893,
		0.180080, -0.981769, -0.060830,
		36.644604, 40.780499, 32.750919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178207, 41.414017, 32.524250>,  <36.518547, 41.467735, 32.793503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178207, 41.414017, 32.524250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018230, 41.050735, 32.474926>,  <36.922245, 40.832767, 32.445332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.018230, 41.050735, 32.474926>,  <37.178207, 41.414017, 32.524250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018230, 41.050735, 32.474926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446222, -0.075425, -0.891738,
		0.800582, -0.411669, 0.435428,
		-0.399943, -0.908207, -0.123312,
		36.898247, 40.778275, 32.437931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736599, 40.944637, 32.284950>,  <37.178207, 41.414017, 32.524250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736599, 40.944637, 32.284950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396454, 40.759609, 32.184620>,  <37.192368, 40.648594, 32.124424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396454, 40.759609, 32.184620>,  <37.736599, 40.944637, 32.284950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396454, 40.759609, 32.184620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388690, -0.230888, -0.891970,
		0.354684, -0.855992, 0.376134,
		-0.850364, -0.462567, -0.250824,
		37.141346, 40.620838, 32.109371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920208, 40.287434, 31.926512>,  <37.736599, 40.944637, 32.284950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920208, 40.287434, 31.926512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544151, 40.353825, 31.807463>,  <37.318516, 40.393658, 31.736032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544151, 40.353825, 31.807463>,  <37.920208, 40.287434, 31.926512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544151, 40.353825, 31.807463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201882, -0.432344, -0.878818,
		-0.274539, -0.886301, 0.372958,
		-0.940145, 0.165976, -0.297624,
		37.262108, 40.403618, 31.718176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773529, 39.677998, 31.607908>,  <37.920208, 40.287434, 31.926512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773529, 39.677998, 31.607908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.499863, 39.939690, 31.478971>,  <37.335663, 40.096703, 31.401609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.499863, 39.939690, 31.478971>,  <37.773529, 39.677998, 31.607908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499863, 39.939690, 31.478971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106610, -0.347516, -0.931594,
		-0.721495, -0.671727, 0.168011,
		-0.684163, 0.654228, -0.322344,
		37.294613, 40.135960, 31.382269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376427, 39.335129, 31.122017>,  <37.773529, 39.677998, 31.607908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376427, 39.335129, 31.122017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256329, 39.704155, 31.025080>,  <37.184269, 39.925571, 30.966917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.256329, 39.704155, 31.025080>,  <37.376427, 39.335129, 31.122017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256329, 39.704155, 31.025080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113447, -0.217722, -0.969395,
		-0.947093, -0.318546, -0.039293,
		-0.300241, 0.922565, -0.242341,
		37.166256, 39.980923, 30.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811024, 39.238438, 30.589737>,  <37.376427, 39.335129, 31.122017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811024, 39.238438, 30.589737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979549, 39.599739, 30.557184>,  <37.080666, 39.816521, 30.537653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.979549, 39.599739, 30.557184>,  <36.811024, 39.238438, 30.589737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979549, 39.599739, 30.557184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042117, -0.109127, -0.993135,
		-0.905938, 0.414992, -0.084019,
		0.421311, 0.903257, -0.081384,
		37.105942, 39.870716, 30.532768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385433, 39.657959, 30.104235>,  <36.811024, 39.238438, 30.589737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385433, 39.657959, 30.104235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758331, 39.801151, 30.125307>,  <36.982071, 39.887066, 30.137951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.758331, 39.801151, 30.125307>,  <36.385433, 39.657959, 30.104235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758331, 39.801151, 30.125307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110859, -0.143980, -0.983352,
		-0.344437, 0.922561, -0.173909,
		0.932241, 0.357982, 0.052682,
		37.038002, 39.908546, 30.141111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424084, 39.856323, 29.407232>,  <36.385433, 39.657959, 30.104235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424084, 39.856323, 29.407232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796921, 39.879215, 29.550297>,  <37.020622, 39.892952, 29.636135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.796921, 39.879215, 29.550297>,  <36.424084, 39.856323, 29.407232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796921, 39.879215, 29.550297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355491, -0.333891, -0.873008,
		0.069456, 0.940873, -0.331564,
		0.932095, 0.057232, 0.357662,
		37.076550, 39.896385, 29.657595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832699, 40.251339, 28.933792>,  <36.424084, 39.856323, 29.407232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832699, 40.251339, 28.933792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125648, 40.054058, 29.121571>,  <37.301418, 39.935688, 29.234238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125648, 40.054058, 29.121571>,  <36.832699, 40.251339, 28.933792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125648, 40.054058, 29.121571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333153, -0.341729, -0.878767,
		0.593832, 0.799984, -0.085962,
		0.732375, -0.493202, 0.469446,
		37.345360, 39.906097, 29.262405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378166, 40.372826, 28.549372>,  <36.832699, 40.251339, 28.933792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378166, 40.372826, 28.549372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445656, 40.038181, 28.757837>,  <37.486149, 39.837395, 28.882917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445656, 40.038181, 28.757837>,  <37.378166, 40.372826, 28.549372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445656, 40.038181, 28.757837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407589, -0.422201, -0.809702,
		0.897443, 0.349038, 0.269757,
		0.168725, -0.836611, 0.521165,
		37.496273, 39.787197, 28.914186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057369, 40.306427, 28.516945>,  <37.378166, 40.372826, 28.549372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057369, 40.306427, 28.516945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948685, 39.935055, 28.618290>,  <37.883472, 39.712231, 28.679098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948685, 39.935055, 28.618290>,  <38.057369, 40.306427, 28.516945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948685, 39.935055, 28.618290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566943, -0.367156, -0.737409,
		0.777656, -0.056719, 0.626126,
		-0.271711, -0.928428, 0.253365,
		37.867172, 39.656525, 28.694300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640862, 39.993687, 28.470524>,  <38.057369, 40.306427, 28.516945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640862, 39.993687, 28.470524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365707, 39.704151, 28.449064>,  <38.200615, 39.530430, 28.436188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.365707, 39.704151, 28.449064>,  <38.640862, 39.993687, 28.470524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365707, 39.704151, 28.449064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569414, -0.492339, -0.658308,
		0.450094, -0.483387, 0.750834,
		-0.687883, -0.723837, -0.053649,
		38.159344, 39.487000, 28.432970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876865, 39.327209, 28.500542>,  <38.640862, 39.993687, 28.470524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876865, 39.327209, 28.500542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.530197, 39.242764, 28.319738>,  <38.322197, 39.192097, 28.211256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.530197, 39.242764, 28.319738>,  <38.876865, 39.327209, 28.500542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530197, 39.242764, 28.319738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477243, -0.614795, -0.627907,
		-0.145332, -0.759907, 0.633577,
		-0.866671, -0.211115, -0.452009,
		38.270195, 39.179428, 28.184135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930805, 38.671116, 28.440605>,  <38.876865, 39.327209, 28.500542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930805, 38.671116, 28.440605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666622, 38.767757, 28.156233>,  <38.508110, 38.825741, 27.985609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.666622, 38.767757, 28.156233>,  <38.930805, 38.671116, 28.440605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666622, 38.767757, 28.156233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433321, -0.650601, -0.623660,
		-0.613207, -0.719964, 0.325007,
		-0.660462, 0.241600, -0.710928,
		38.468483, 38.840237, 27.942955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881554, 38.125706, 28.140881>,  <38.930805, 38.671116, 28.440605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881554, 38.125706, 28.140881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.716438, 38.355923, 27.858503>,  <38.617371, 38.494053, 27.689077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.716438, 38.355923, 27.858503>,  <38.881554, 38.125706, 28.140881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716438, 38.355923, 27.858503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343551, -0.619427, -0.705892,
		-0.843551, -0.533911, 0.057964,
		-0.412788, 0.575543, -0.705944,
		38.592602, 38.528584, 27.646721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415447, 37.728584, 27.730192>,  <38.881554, 38.125706, 28.140881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415447, 37.728584, 27.730192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503338, 38.056339, 27.518412>,  <38.556072, 38.252995, 27.391344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503338, 38.056339, 27.518412>,  <38.415447, 37.728584, 27.730192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503338, 38.056339, 27.518412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271973, -0.572649, -0.773372,
		-0.936883, 0.025935, -0.348679,
		0.219728, 0.819390, -0.529452,
		38.569256, 38.302155, 27.359575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995811, 37.714642, 27.119650>,  <38.415447, 37.728584, 27.730192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995811, 37.714642, 27.119650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270527, 37.985706, 27.014505>,  <38.435356, 38.148346, 26.951420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270527, 37.985706, 27.014505>,  <37.995811, 37.714642, 27.119650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270527, 37.985706, 27.014505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128094, -0.468822, -0.873955,
		-0.715479, 0.566554, -0.408787,
		0.686791, 0.677660, -0.262860,
		38.476562, 38.189003, 26.935648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933346, 37.801903, 26.396135>,  <37.995811, 37.714642, 27.119650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933346, 37.801903, 26.396135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298477, 37.957348, 26.446291>,  <38.517555, 38.050617, 26.476385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298477, 37.957348, 26.446291>,  <37.933346, 37.801903, 26.396135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298477, 37.957348, 26.446291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280681, -0.374101, -0.883893,
		-0.296587, 0.842036, -0.450567,
		0.912827, 0.388617, 0.125390,
		38.572327, 38.073933, 26.483908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124584, 38.109467, 25.792805>,  <37.933346, 37.801903, 26.396135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124584, 38.109467, 25.792805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.471130, 38.046429, 25.982363>,  <38.679058, 38.008606, 26.096098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.471130, 38.046429, 25.982363>,  <38.124584, 38.109467, 25.792805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471130, 38.046429, 25.982363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423469, -0.271202, -0.864363,
		0.264744, 0.949533, -0.168222,
		0.866363, -0.157598, 0.473896,
		38.731041, 37.999149, 26.124531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633831, 38.331654, 25.370005>,  <38.124584, 38.109467, 25.792805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633831, 38.331654, 25.370005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841736, 38.087086, 25.608671>,  <38.966480, 37.940346, 25.751871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.841736, 38.087086, 25.608671>,  <38.633831, 38.331654, 25.370005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841736, 38.087086, 25.608671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295254, -0.526824, -0.797045,
		0.801667, 0.590445, -0.093301,
		0.519765, -0.611417, 0.596669,
		38.997665, 37.903660, 25.787672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208164, 38.245312, 25.023188>,  <38.633831, 38.331654, 25.370005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208164, 38.245312, 25.023188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216278, 37.940491, 25.282068>,  <39.221146, 37.757599, 25.437397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216278, 37.940491, 25.282068>,  <39.208164, 38.245312, 25.023188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216278, 37.940491, 25.282068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420545, -0.580778, -0.697021,
		0.907045, 0.286313, 0.308698,
		0.020281, -0.762051, 0.647199,
		39.222363, 37.711876, 25.476229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885841, 38.005787, 25.060802>,  <39.208164, 38.245312, 25.023188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885841, 38.005787, 25.060802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.674206, 37.699936, 25.207989>,  <39.547222, 37.516426, 25.296301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.674206, 37.699936, 25.207989>,  <39.885841, 38.005787, 25.060802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674206, 37.699936, 25.207989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465140, -0.624019, -0.627889,
		0.709723, -0.161055, 0.685824,
		-0.529092, -0.764632, 0.367968,
		39.515480, 37.470547, 25.318378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370308, 37.381268, 24.956190>,  <39.885841, 38.005787, 25.060802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370308, 37.381268, 24.956190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.005920, 37.220074, 24.991390>,  <39.787289, 37.123356, 25.012510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.005920, 37.220074, 24.991390>,  <40.370308, 37.381268, 24.956190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.005920, 37.220074, 24.991390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189733, -0.598809, -0.778093,
		0.366256, -0.692119, 0.621954,
		-0.910966, -0.402986, 0.088000,
		39.732632, 37.099178, 25.017790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417091, 36.586048, 24.853601>,  <40.370308, 37.381268, 24.956190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417091, 36.586048, 24.853601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.034851, 36.695560, 24.810038>,  <39.805508, 36.761269, 24.783899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.034851, 36.695560, 24.810038>,  <40.417091, 36.586048, 24.853601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034851, 36.695560, 24.810038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107993, -0.669339, -0.735067,
		-0.274146, -0.690672, 0.669191,
		-0.955605, 0.273783, -0.108909,
		39.748169, 36.777695, 24.777365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341045, 36.068405, 25.533606>,  <40.417091, 36.586048, 24.853601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341045, 36.068405, 25.533606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593483, 35.765392, 25.600376>,  <40.744946, 35.583584, 25.640438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.593483, 35.765392, 25.600376>,  <40.341045, 36.068405, 25.533606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593483, 35.765392, 25.600376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144883, 0.096293, 0.984752,
		-0.762059, -0.645652, -0.048984,
		0.631090, -0.757536, 0.166925,
		40.782810, 35.538132, 25.650454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975048, 35.642796, 26.081570>,  <40.341045, 36.068405, 25.533606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975048, 35.642796, 26.081570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.362087, 35.543861, 26.101898>,  <40.594311, 35.484501, 26.114096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.362087, 35.543861, 26.101898>,  <39.975048, 35.642796, 26.081570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362087, 35.543861, 26.101898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029702, 0.088374, 0.995644,
		-0.250749, -0.964891, 0.078164,
		0.967597, -0.247336, 0.050819,
		40.652367, 35.469662, 26.117144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118057, 35.225224, 26.815639>,  <39.975048, 35.642796, 26.081570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118057, 35.225224, 26.815639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479588, 35.344723, 26.693104>,  <40.696507, 35.416420, 26.619583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.479588, 35.344723, 26.693104>,  <40.118057, 35.225224, 26.815639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479588, 35.344723, 26.693104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233796, 0.254823, 0.938299,
		0.358375, -0.919683, 0.160471,
		0.903829, 0.298746, -0.306340,
		40.750736, 35.434345, 26.601202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715160, 34.888912, 27.195494>,  <40.118057, 35.225224, 26.815639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715160, 34.888912, 27.195494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.877552, 35.236557, 27.082489>,  <40.974987, 35.445145, 27.014687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.877552, 35.236557, 27.082489>,  <40.715160, 34.888912, 27.195494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877552, 35.236557, 27.082489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156919, 0.238249, 0.958444,
		0.900308, -0.433444, -0.039656,
		0.405984, 0.869117, -0.282513,
		40.999348, 35.497292, 26.997736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253384, 35.073376, 27.673988>,  <40.715160, 34.888912, 27.195494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253384, 35.073376, 27.673988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.144672, 35.427944, 27.524113>,  <41.079445, 35.640686, 27.434187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.144672, 35.427944, 27.524113>,  <41.253384, 35.073376, 27.673988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144672, 35.427944, 27.524113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210353, 0.434644, 0.875691,
		0.939090, 0.159173, -0.304588,
		-0.271774, 0.886424, -0.374688,
		41.063141, 35.693871, 27.411707>
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
